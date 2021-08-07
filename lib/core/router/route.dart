import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/detail/detail.dart';
import 'package:learnflutter/ui/pages/dine/dine.dart';
import 'package:learnflutter/ui/pages/filter/filter.dart';
import 'package:learnflutter/ui/pages/main/main.dart';
import 'package:learnflutter/ui/pages/meal/meal.dart';
import 'package:learnflutter/ui/pages/native/battery.dart';
import 'package:learnflutter/ui/pages/native/select_image.dart';

class HYRouter {
  // 默认启动页面的路由
  static final String initialRoute = HYMainScreen.routeName;

  // 路由配置表
  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYMealScreen.routeName: (ctx) => HYMealScreen(),
    HYDetailScreen.routeName: (ctx) => HYDetailScreen(),
    HYBatteryScreen.routeName: (ctx) => HYBatteryScreen(),
  };

  // 自己扩展
  static final RouteFactory generateRoute = (settings) {
    if (settings.name == HYFilterScreen.routeName) {
      return MaterialPageRoute(
          builder: (ctx) => HYFilterScreen(), fullscreenDialog: true);
    }
    if (settings.name == HYDineScreen.routeName) {
      return MaterialPageRoute(
          builder: (ctx) => HYDineScreen(), fullscreenDialog: true);
    }
    if (settings.name == HYSelectImagePage.routeName) {
      return MaterialPageRoute(
          builder: (ctx) => HYSelectImagePage(), fullscreenDialog: true);
    }
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
