import 'dart:math';

import 'package:flutter/material.dart';
import 'package:counter/core/constant/kcolors.dart';

class CounterViewModel with ChangeNotifier {
  int counter = 0;
  int colorIndex = 0;

  increment() {
    if (counter < 10) {
      counter += 1;
      if (counter == 10) {
        colorGenerate();
      }
    } else if (counter >= 10 && counter < 100) {
      counter += 10;
      if (counter == 100) {
        colorGenerate();
      }
    } else if (counter >= 100 && counter < 1000) {
      counter += 100;
      if (counter == 1000) {
        colorGenerate();
      }
    } else if (counter >= 1000 && counter < 10000) {
      counter += 1000;
      if (counter == 10000) {
        colorGenerate();
      }
    } else if (counter >= 10000 && counter < 100000) {
      counter += 10000;
      if (counter == 100000) {
        colorGenerate();
      }
    } else if (counter >= 100000 && counter < 1000000) {
      counter += 100000;
      if (counter == 1000000) {
        colorGenerate();
      }
    } else if (counter >= 1000000 && counter < 10000000) {
      counter += 1000000;
      if (counter == 10000000) {
        colorGenerate();
      }
    } else {
      counter = 0;
      if (counter == 0) {
        colorGenerate();
      }
    }

    notifyListeners();
  }

  void colorGenerate() {
    int colorChange = Random().nextInt(10);
    while (colorIndex == colorChange) {
      colorChange = Random().nextInt(10);
    }
    colorIndex = colorChange;
  }

  Color backGroundColor() {
    final kColors = KColors();
    return kColors.colors[colorIndex];
  }
}
