import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_images.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:cats_app/core/widgets/custom_elevated_button_widget.dart';
import 'package:cats_app/features/home/presentation/screens/widgets/animal_info_container.dart';
import 'package:cats_app/features/home/presentation/screens/widgets/animal_info_widget.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatelessWidget {
  const DetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
              children: [
                Image.asset(
                  AppImages.animalImage,
                  width: double.infinity,
                  height: size.height * 0.4,
                  fit: BoxFit.fill,
                ),
                Positioned(
                  top: size.height * 0.055,
                  left: 16,
                  child: GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: Icon(
                      Icons.arrow_back_ios_new,
                      color: AppColors.primaryColor,
                    ),
                  ),
                ),
                Positioned(
                  top: size.height * 0.055,
                  right: 16,
                  child: GestureDetector(
                    onTap: () {},
                    child: Icon(Icons.favorite, color: AppColors.primaryColor),
                  ),
                ),
              ],
            ),
            AnimalInfoWidget(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                AnimleInfoContainer(title: 'Gender', value: 'Male'),
                AnimleInfoContainer(title: 'Age', value: '1 Year'),
                AnimleInfoContainer(title: 'Weight', value: '10 kg'),
              ],
            ),

            Padding(
              padding: EdgeInsets.only(left: 16.0, top: size.height * 0.025),
              child: Text('About:', style: AppStyles.font22SemiBold(context)),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 7.0, left: 16, bottom: 21),
              child: Text(
                'Tom is a playful and loyal Golden Retriever\n who loves being around people.\nHe’s 1 years old, full of energy, and always\n ready for a game of fetch.\nTom enjoys morning walks, belly rubs, and\n taking long naps after playtime.\nHe’s gentle with kids, gets along well with\n other pets, and makes the perfect family\n companion.',
                style: AppStyles.font16Regular(
                  context,
                ).copyWith(color: AppColors.grey464Color),
              ),
            ),
            CustomElevatedButton(title: 'Adopt me', onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
