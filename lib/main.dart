import 'package:flutter/material.dart';
import 'package:learnflutter/core/viewmodel/favor_view_model.dart';
import 'package:learnflutter/core/viewmodel/meal_view_model.dart';
import 'package:learnflutter/ui/shared/app_theme.dart';
import 'package:learnflutter/core/router/route.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => HYMealViewModel()),
      ChangeNotifierProvider(create: (ctx) => HYFavorViewModel()),
    ],
    child: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '美食广场',
      theme: HYAppTheme.norTheme,
      //路由
      initialRoute: HYRouter.initialRoute,
      routes: HYRouter.routes,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}
