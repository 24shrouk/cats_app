import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_icons.dart';
import 'package:cats_app/core/constants/app_images.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class AnimalContainerWidget extends StatelessWidget {
  const AnimalContainerWidget({
    super.key,
    required this.name,
    required this.gender,
    required this.age,
    required this.location,
  });
  final String name;
  final String gender;
  final String age;
  final String location;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(8),
      padding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      decoration: BoxDecoration(
        color: AppColors.whiteColor,
        borderRadius: BorderRadius.circular(8),
        boxShadow: [
          BoxShadow(
            color: const Color.fromARGB(255, 232, 231, 231),
            blurRadius: 2,
          ),
        ],
      ),
      child: Row(
        spacing: 16,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadiusGeometry.circular(8),
            child: Image.asset(AppImages.animalImage),
          ),
          Column(
            spacing: 4,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                name,
                style: AppStyles.font18Bold(
                  context,
                ).copyWith(color: AppColors.blackColor),
              ),
              Text(
                gender,
                style: AppStyles.font14Regular(
                  context,
                ).copyWith(color: AppColors.grey464Color),
              ),
              Text(
                age,
                style: AppStyles.font14Regular(
                  context,
                ).copyWith(color: AppColors.grey464Color),
              ),
              SizedBox(height: 5),
              Row(
                spacing: 4,
                children: [
                  SvgPicture.asset(AppIcons.locationIcon),
                  Text(
                    location,
                    style: AppStyles.font14Regular(
                      context,
                    ).copyWith(color: AppColors.grey464Color),
                  ),
                ],
              ),
            ],
          ),
          Spacer(),
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.favorite_border, color: AppColors.primaryColor),
          ),
        ],
      ),
    );
  }
}
