import 'package:cats_app/core/constants/app_routes.dart';
import 'package:cats_app/core/utils/app_routers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const CatsApp());
}

class CatsApp extends StatelessWidget {
  const CatsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      onGenerateRoute: AppRouters.onGenerateRoute,
      initialRoute: AppRoutes.splachScreen,
    );
  }
}
