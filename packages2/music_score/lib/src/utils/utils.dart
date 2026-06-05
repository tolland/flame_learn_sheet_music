import 'package:flutter/material.dart';

import 'package:music_score/music_score.dart';

class Utils {
  static debugBoxDecoration() {
    if (isDebugMode) {
      return BoxDecoration(
        // border: Border.all(
        //   color: Colors.red,
        //   width: 1,
        // ),
      );
    } else {
      return BoxDecoration();
    }
  }
}
