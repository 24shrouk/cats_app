import 'package:cats_app/core/constants/app_routes.dart';
import 'package:cats_app/features/home/presentation/screens/pages/get_started_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.getStartedScreen:
        {
          return MaterialPageRoute(builder: (_) => GetStartedScreen());
        }

      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404 - Page not found'))),
        );
    }
  }
}
