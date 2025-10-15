import 'package:cats_app/core/constants/app_routes.dart';
import 'package:cats_app/core/widgets/bottom_navigation_bar.dart';
import 'package:cats_app/features/favorite/presentation/screens/pages/favorite_screen.dart';
import 'package:cats_app/features/home/presentation/screens/pages/details_screen.dart';
import 'package:cats_app/features/home/presentation/screens/pages/home_screen.dart';
import 'package:cats_app/features/splach_and_get_started/presentation/screens/pages/get_started_screen.dart';
import 'package:cats_app/features/splach_and_get_started/presentation/screens/pages/splach_screen.dart';
import 'package:flutter/material.dart';

class AppRouters {
  static Route<dynamic> onGenerateRoute(RouteSettings settings) {
    switch (settings.name) {
      case AppRoutes.splachScreen:
        {
          return MaterialPageRoute(builder: (_) => SplachScreen());
        }
      case AppRoutes.getStartedScreen:
        {
          return MaterialPageRoute(builder: (_) => GetStartedScreen());
        }
      case AppRoutes.homeScreen:
        {
          return MaterialPageRoute(builder: (_) => HomeScreen());
        }
      case AppRoutes.detailsScreen:
        {
          return MaterialPageRoute(builder: (_) => const DetailsScreen());
        }
      case AppRoutes.favoriteScreen:
        {
          return MaterialPageRoute(builder: (_) => const FavoriteScreen());
        }
      case AppRoutes.mainScreen:
        {
          return MaterialPageRoute(builder: (_) => const MainScreen());
        }
      default:
        return MaterialPageRoute(
          builder: (_) =>
              const Scaffold(body: Center(child: Text('404 - Page not found'))),
        );
    }
  }
}
