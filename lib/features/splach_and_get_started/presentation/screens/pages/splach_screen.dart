import 'package:animate_do/animate_do.dart';
import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_images.dart';
import 'package:cats_app/core/constants/app_routes.dart';
import 'package:flutter/material.dart';

class SplachScreen extends StatefulWidget {
  const SplachScreen({super.key});

  @override
  State<SplachScreen> createState() => _SplachScreenState();
}

class _SplachScreenState extends State<SplachScreen> {
  @override
  void initState() {
    super.initState();

    Future.delayed(const Duration(milliseconds: 4000), () {
      Navigator.pushReplacementNamed(context, AppRoutes.getStartedScreen);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: FadeInDown(
        duration: Duration(milliseconds: 3000),
        delay: Duration(milliseconds: 500),
        child: Center(child: Image.asset(AppImages.heartImage)),
      ),
    );
  }
}
