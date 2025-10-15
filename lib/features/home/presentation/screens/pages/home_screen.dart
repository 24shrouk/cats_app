import 'package:cats_app/core/constants/app_color.dart';
import 'package:cats_app/core/constants/app_icons.dart';
import 'package:cats_app/core/constants/app_styles.dart';
import 'package:cats_app/core/widgets/custom_text_box_widget.dart';
import 'package:cats_app/features/home/presentation/screens/widgets/animal_container_widget.dart';
import 'package:cats_app/features/home/presentation/screens/widgets/category_container_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final List categories = ['All', 'Cats', 'Dogs', 'Birds', 'Fish', 'Reptiles'];

  int selectedIndex = 0;
  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: EdgeInsets.only(left: 16, top: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Find Your Forever Pet',
                    style: AppStyles.font24Bold(
                      context,
                    ).copyWith(color: AppColors.blackColor),
                  ),
                  SvgPicture.asset(AppIcons.notificationIcon),
                ],
              ),
              SizedBox(height: size.height * 0.035),
              CustomTextFormFeild(
                hint: 'Search',
                hintStyle: AppStyles.font16Regular(
                  context,
                ).copyWith(color: AppColors.greyF8FColor),
                fillColor: AppColors.grey6F6Color,
                suffixIcon: SvgPicture.asset(AppIcons.fiterationIcon),

                prefixIcon: SvgPicture.asset(AppIcons.searchIcon),
              ),
              SizedBox(height: size.height * 0.035),
              Text('Categories', style: AppStyles.font20Bold(context)),
              SizedBox(height: size.height * 0.028),
              SizedBox(
                height: 35,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: categories.length,
                  itemBuilder: (context, index) {
                    return CategoryContainerWidget(
                      isSelected: selectedIndex == index,
                      onTap: () {
                        setState(() => selectedIndex = index);
                      },
                      text: categories[index],
                    );
                  },
                ),
              ),
              SizedBox(height: 15),
              ListView.builder(
                shrinkWrap: true,
                physics: NeverScrollableScrollPhysics(),
                scrollDirection: Axis.vertical,
                itemCount: 5,
                itemBuilder: (context, _) => AnimalContainerWidget(
                  name: 'Joli',
                  location: '1.6 km away',
                  gender: 'Female',
                  age: '5 Months Old',
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
