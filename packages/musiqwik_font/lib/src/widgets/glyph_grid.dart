import 'package:flutter/material.dart';

import 'package:musiqwik_font/musiqwik_font.dart';

class GlyphGrid extends StatelessWidget {
  const GlyphGrid({super.key});

  List<Widget> createTable() {
    List<Widget> items = [];

    for (var item in MusiQwik.values) {
      items.add(
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              Text(
                item.name,
                style: const TextStyle(
                  fontSize: 12,
                ),
              ),
              RichText(
                text: TextSpan(
                  children: <TextSpan>[
                    MusiQwik.spacer.span(),
                    item.span(),
                    MusiQwik.spacer.span(),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
    }

    return items;
  }

  @override
  Widget build(BuildContext context) {
    return Directionality(
      textDirection: TextDirection.ltr,
      child: Wrap(
        children: [
          ...createTable(),
        ],
      ),
    );
  }
}
