import 'package:cats_app/core/constants/app_routes.dart';
import 'package:cats_app/features/splach_and_get_started/presentation/screens/pages/get_started_screen.dart';
import 'package:cats_app/features/splach_and_get_started/presentation/screens/pages/splach_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.getStartedScreen:
        {
          return MaterialPageRoute(builder: (_) => GetStartedScreen());
        }
      case AppRoutes.splachScreen:
        {
          return MaterialPageRoute(builder: (_) => SplachScreen());
        }

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404 - Page not found'))),
        );
    }
  }
}
