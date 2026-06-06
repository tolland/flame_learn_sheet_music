"""Filter flutter pub deps --json output to show only audio/sound related packages and their relationships."""

import json
import sys
import re
from typing import Optional


def load_deps(json_str: str) -> dict:
    return json.loads(json_str)


def build_index(packages: list[dict]) -> dict[str, dict]:
    return {p["name"]: p for p in packages}


def matches_filter(name: str, patterns: list[str]) -> bool:
    return any(re.search(p, name, re.IGNORECASE) for p in patterns)


def find_relevant_packages(
        index: dict[str, dict],
        patterns: list[str],
) -> set[str]:
    """Find all packages that either match the filter or depend on something that does."""
    matching = {name for name in index if matches_filter(name, patterns)}

    # Also find packages that directly depend on matching ones
    relevant: set[str] = set(matching)
    for name, pkg in index.items():
        if any(dep in matching for dep in pkg.get("dependencies", [])):
            relevant.add(name)

    return relevant


def print_tree(
        name: str,
        index: dict[str, dict],
        relevant: set[str],
        patterns: list[str],
        prefix: str = "",
        visited: Optional[set[str]] = None,
        depth: int = 0,
        max_depth: int = 6,
) -> None:
    if visited is None:
        visited = set()

    is_match = matches_filter(name, patterns)
    marker = " *" if is_match else ""
    print(f"{prefix}{name}{marker}")

    if name in visited or depth >= max_depth:
        if name in visited and index.get(name, {}).get("dependencies"):
            print(f"{prefix}  (already shown)")
        return

    visited.add(name)
    pkg = index.get(name)
    if not pkg:
        return

    deps = pkg.get("dependencies", [])
    # Only show deps that are in relevant set or match filter
    filtered_deps = [d for d in deps if d in relevant or matches_filter(d, patterns)]

    for i, dep in enumerate(filtered_deps):
        is_last = i == len(filtered_deps) - 1
        connector = "└── " if is_last else "├── "
        extension = "    " if is_last else "│   "
        print_tree(
            dep,
            index,
            relevant,
            patterns,
            prefix=prefix + connector,
            visited=visited,
            depth=depth + 1,
            max_depth=max_depth,
        )


def main() -> None:
    patterns = sys.argv[1:] if len(sys.argv) > 1 else ["audio", "sound", "midi", "music"]

    raw = sys.stdin.read()
    data = load_deps(raw)
    index = build_index(data["packages"])
    root = data["root"]
    relevant = find_relevant_packages(index, patterns)

    print(f"Dependency tree for: {root}")
    print(f"Filtering for: {patterns}")
    print(f"* = direct pattern match\n")

    print_tree(root, index, relevant, patterns)


if __name__ == "__main__":
    main()