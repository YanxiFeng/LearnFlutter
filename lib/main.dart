import 'package:event_bus/event_bus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:learnflutter/core/viewmodel/favor_view_model.dart';
import 'package:learnflutter/core/viewmodel/filter_view_model.dart';
import 'package:learnflutter/core/viewmodel/meal_view_model.dart';
import 'package:learnflutter/generated/l10n.dart';
import 'package:learnflutter/i18n/localizations_delegate.dart';
import 'package:learnflutter/ui/shared/app_theme.dart';
import 'package:learnflutter/core/router/route.dart';
import 'package:provider/provider.dart';

final eventBus = EventBus();

void main() {
  runApp(MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (ctx) => HYFilterViewModel()),
      ChangeNotifierProxyProvider<HYFilterViewModel, HYMealViewModel>(
          create: (ctx) => HYMealViewModel(),
          update: (ctx, filterVM, mealVM) {
            mealVM!.updateFilterVM(filterVM);
            return mealVM;
          }),
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
      //国际化
      supportedLocales: S.delegate.supportedLocales,
      localizationsDelegates: [
        GlobalMaterialLocalizations.delegate,
        GlobalCupertinoLocalizations.delegate,
        GlobalWidgetsLocalizations.delegate,
        HYLocalizationDelagate.delagate,
        S.delegate
      ],
      //路由
      initialRoute: HYRouter.initialRoute,
      routes: HYRouter.routes,
      onGenerateRoute: HYRouter.generateRoute,
      onUnknownRoute: HYRouter.unknownRoute,
    );
  }
}
