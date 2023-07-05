import 'package:bloc_initial_app/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:bloc_initial_app/presentation/screen_one_screen/screen_one_screen.dart';
import 'package:bloc_initial_app/presentation/screen_two_screen/screen_two_screen.dart';
import 'package:flutter/material.dart';

class AppRoutes {
  
  AppRoutes();

  static const String screenOneScreen = '/screen_one_screen';

  static const String screenTwoScreen = '/screen_two_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        screenOneScreen: ScreenOneScreen.builder,
        screenTwoScreen: ScreenTwoScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: ScreenOneScreen.builder
      };

}
