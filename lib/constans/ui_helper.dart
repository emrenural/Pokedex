import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter/material.dart';
class UIHelper {
  UIHelper._();

  static double getAppTitleWidgetHeight() {
    return ScreenUtil().orientation == Orientation.portrait ? 0.15.sh : 0.15.sw;
  }

  static final Map<String, Color> _typeColorMap ={
    "Grass": Colors.green,
    "Fire": Colors.red,
    "Water": Colors.blue,
    "Electric": Colors.yellow,
    "Rock": Colors.brown,
    "Ground": Colors.orange,
    "Bug": Colors.lightGreen,
    "Pyshic": Colors.purple,
    "Fighting": Colors.pink,
    "Ghost": Colors.deepPurple,
    "Normal": Colors.black26,
    "Poison": Colors.purpleAccent,
  };
  static Color getColorFromType(String type) {
    if (_typeColorMap.containsKey(type)) {
      return _typeColorMap[type] ?? Colors.pink.shade300;
    } else {
      return Colors.pink.shade300;
    }
  }



  static EdgeInsets getDefaultPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(12.h);
    } else {
      return EdgeInsets.all(8.w);
    }
  }

  static EdgeInsets getIconPadding() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return EdgeInsets.all(10.h);
    } else {
      return EdgeInsets.all(4.w);
    }
  }

  static double calculatePokeImageAndBallSize() {
    if (ScreenUtil().orientation == Orientation.portrait) {
      return 0.2.sh;
    } else {
      return 0.3.sh;
    }
  }
}
