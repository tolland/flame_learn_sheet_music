# Audio Strategy Audit

This document maps every audio/sound-playing strategy, library, and approach used across the codebase, including known platform limitations. It was written to help untangle the current state before any cleanup or consolidation work.

---

## Packages in Use

| Package | Version | Role |
|---------|---------|------|
| `audioplayers` | ^6.7.1 | Primary playback engine — music, SFX, piano notes |
| `flame_audio` | ^2.1.7 | Thin Flame wrapper around audioplayers; minimal use |
| `soundpool` | any | Low-latency pool for mobile note playback |
| `soundpool_web` | any | Web shim for soundpool (limited; disabled at runtime) |
| `flutter_midi` | ^1.1.0 | Native SoundFont2 MIDI synthesis (packages2/sf2_player only) |
| `dart_midi` | any | MIDI file parsing (no audio output itself) |
| `assets_audio_player` | ^3.1.1 | Listed as dependency inside sound_service; implementation is a stub |

---

## Audio Backends (Swappable Implementations)

The codebase defines a shared interface `IAudioController` (see `packages/sound_service/lib/src/interfaces/audio_controller.dart`) with three concrete backends. Only the `audioplayers` backend is wired up end-to-end.

### 1. `audioplayers` backend — `packages/audio_audioplayers/`

**Status: Active (primary backend)**

Key files:
- `lib/repositories/audio_controller.dart` — main implementation
  - Allocates a 88 × 16 matrix of `PlayerLocker` instances (88 keys × 16 MIDI channels)
  - Pre-loads MIDI notes 36–108 (73 piano notes) from MP3 assets in `packages/sound_service/assets/notes/`
  - Rotates through a pool of 24 AudioPlayers for polyphony
- `lib/repositories/audioplayer_pools.dart` — alternative pool-based approach using `AudioPool` per note; experimental/incomplete
- `lib/model/player_locker.dart` — thread-safe wrapper around a single `AudioPlayer`
  - Uses a `Lock` for synchronized access
  - Implements fade-out on note release (5 steps × 100 ms)

**Platform issues:**
- Medium-to-high latency (~50–100 ms) makes rapid MIDI sequences sound sluggish
- Web requires a user gesture before any audio plays (browser security model)
- Known `audioplayers` bug: `pause()` is ignored before an async `await` completes — workaround is a second pause check after the await ([upstream issue #1687](https://github.com/bluefireteam/audioplayers/issues/1687))

---

### 2. `soundpool` backend — `packages/audio_soundpool/`

**Status: Partial — mobile only, web disabled at runtime**

Key files:
- `lib/src/repositories/audioplayer_pools.dart`
  - Loads MIDI notes 36–84 (49 notes) from `packages/audio_soundpool/assets/notes/`
  - Implements fade-out over 500 ms with volume stepping
  - Metronome click on channel 1
- `lib/src/widgets/soundpool_widget.dart`
  - Guards initialization with `if (!kIsWeb)` — Soundpool is not supported on web

**Platform issues:**
- Not usable on web at all; `soundpool_web` dependency is present but the init is skipped
- Not wired into the main app's dependency injection — exists as a standalone demo

---

### 3. `assets_audio_player` backend — inside `packages/sound_service/`

**Status: Stub only — not functional**

- `lib/src/repositories/player.dart` contains an `AssetsAudioPlayerService` class that is largely empty
- The package is listed as a dependency of `sound_service` but nothing calls it

---

### 4. SoundFont2 / `flutter_midi` — `packages2/sf2_player/`

**Status: Experimental, separate mini-app, not integrated into main app**

Key files:
- `lib/main.dart`
  - Loads `assets/sf2/Piano.sf2` on init
  - Calls `FlutterMidi.playMidiNote(midi: noteNumber)` for each note
  - Web branch commented out (`// if (kIsWeb) { // WebMidi.play(midi); // }`) — web is disabled

**Platform issues:**
- iOS/Android only; no web support
- Not connected to `SoundServiceBloc` or the main app at all

---

## Main App Audio (Background Music & SFX)

Handled entirely by `lib/audio/audio_controller.dart` using `audioplayers` directly (not via `IAudioController`):

- One `AudioPlayer` for background music looping (`assets/music/*.mp3`)
- A configurable pool of SFX players (default 2) for UI/game sounds (`assets/sfx/*.mp3`)
- Web note: logs "music can only start after user interaction" when `kIsWeb`
- Known bug workaround at line ~254: `resume()` can throw "Unexpected" — falls back to replaying the full track

`lib/audio/managers/audio_manager.dart` is a Flame component that listens to `PianoBloc` pitch changes and calls `FlameAudio.play()` for individual notes. It has a TODO to make it a singleton (currently can be instantiated multiple times).

---

## MIDI File Playback

**Path:** `packages/sound_service/lib/src/bloc/midi_player/midi_player_bloc.dart`

- Uses `dart_midi` to parse `.mid` files picked via `file_picker`
- Extracts `NoteOnEvent` / `NoteOffEvent` with timing, dispatches to `SoundServiceBloc`
- Handles `SetTempoEvent` for dynamic BPM changes
- Tick rate: 12 ms polling loop

`SoundServiceBloc` (`packages/sound_service/lib/src/bloc/sound_service/`) translates these events into `playNote()` / `stopNote()` calls on whichever `IAudioController` is injected.

---

## Metronome

**Path:** `packages/sound_service/lib/src/bloc/metronome/metronome_coordinator.dart`

- Sends `NoteOn` / `NoteOff` events to `SoundServiceBloc` on quarter-beat / half-beat intervals
- Uses MIDI channel 1 for metronome sounds (piano is channel 0)
- Sound played: `assets/sfx/metronome-85688.mp3` (via the same audioplayers backend)

---

## Audio Assets

| Location | Format | Content | Used by |
|----------|--------|---------|---------|
| `packages/sound_service/assets/notes/` | MP3 | 73 piano notes, MIDI 0–127 | `audio_audioplayers` backend |
| `packages/audio_soundpool/assets/notes/` | MP3 | 49 piano notes, MIDI 36–84 | `audio_soundpool` backend |
| `packages2/sf2_player/assets/sf2/Piano.sf2` | SF2 | Full piano soundfont | `sf2_player` mini-app |
| `assets/music/` | MP3 | 6 background music tracks | Main app `AudioController` |
| `assets/sfx/` | MP3 | 44 UI/game sound effects | Main app `AudioController` |
| `assets/audio/` | WAV | 45+ individual piano samples | **Appears unused** (legacy) |

---

## Platform Compatibility Matrix

| Approach | Web | Linux/Windows | Android/iOS | Notes |
|----------|-----|---------------|-------------|-------|
| `audioplayers` (music/SFX) | ✅ (after gesture) | ✅ | ✅ | Active; latency acceptable for one-shot sounds |
| `audioplayers` (rapid MIDI notes) | ⚠️ laggy | ⚠️ laggy | ⚠️ laggy | Polyphony pool of 24 helps but latency is noticeable |
| `soundpool` (low-latency notes) | ❌ disabled | ❌ no support | ✅ | Better latency on mobile but not wired to main app |
| `flutter_midi` + SF2 | ❌ | ❌ | ✅ | Isolated mini-app; best quality but not integrated |
| `assets_audio_player` | — | — | — | Stub; non-functional |
| `flame_audio` | ✅ | ✅ | ✅ | Only used in `AudioManager` for single pitch events |

---

## Known Issues & TODOs (from code comments)

1. **`lib/audio/managers/audio_manager.dart` line 20** — `@TODO: figure out how to make this a singleton` — AudioManager can be instantiated multiple times, creating duplicate players.
2. **`lib/audio/audio_controller.dart` line ~206`** — `audioplayers` bug: `pause()` ignored before `await` completes. Workaround: double-check and re-pause after await.
3. **`lib/audio/audio_controller.dart` line ~254** — `resume()` sometimes throws "Unexpected". Workaround: fall back to replaying from scratch.
4. **`packages2/sf2_player/lib/main.dart` line 16** — Web MIDI branch commented out; only native synthesis active.
5. **`packages/simple_piano_waterfall/lib/src/widgets/piano_waterfall.dart` line ~40** — Web `AudioContext` requires an `onInit` callback triggered by mouse-enter before playback can begin.
6. **`assets/audio/` (WAV files)** — Not referenced in any current code; likely leftover from an earlier prototype.

---

## Summary

The dominant strategy is `audioplayers` throughout — music, SFX, and piano notes all flow through it. The `soundpool` and `flutter_midi` backends exist in side packages but are not connected to the main application. The `IAudioController` abstraction is in place and the injection point is `SoundServiceBloc`, so swapping backends should be feasible without large rewrites.

The main pain points are:
- **Latency for rapid note sequences** — `audioplayers` is not optimised for this; `soundpool` or `flutter_midi` would be better but need integration work
- **Web platform** — only `audioplayers` works there, and it needs a user gesture first
- **Linux/Windows desktop** — `soundpool` and `flutter_midi` do not support these platforms at all, so `audioplayers` is the only viable option
