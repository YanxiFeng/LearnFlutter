import 'package:flutter/material.dart';
import 'package:learnflutter/ui/pages/detail/detail.dart';
import 'package:learnflutter/ui/pages/filter/filter.dart';
import 'package:learnflutter/ui/pages/main/main.dart';
import 'package:learnflutter/ui/pages/meal/meal.dart';

class HYRouter {
  // 默认启动页面的路由
  static final String initialRoute = HYMainScreen.routeName;

  // 路由配置表
  static final Map<String, WidgetBuilder> routes = {
    HYMainScreen.routeName: (ctx) => HYMainScreen(),
    HYMealScreen.routeName: (ctx) => HYMealScreen(),
    HYDetailScreen.routeName: (ctx) => HYDetailScreen(),
    HYFilterScreen.routeName: (ctx) => HYFilterScreen(),
  };

  // 自己扩展
  static final RouteFactory generateRoute = (settings) {
    return null;
  };

  static final RouteFactory unknownRoute = (settings) {
    return null;
  };
}
