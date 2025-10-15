import 'package:cats_app/core/constants/app_color.dart';

import 'package:cats_app/core/constants/app_styles.dart';
import 'package:cats_app/features/favorite/presentation/screens/widgets/favorite_item_container.dart';
import 'package:cats_app/features/home/presentation/screens/widgets/category_container_widget.dart';
import 'package:flutter/material.dart';

class FavoriteScreen extends StatefulWidget {
  const FavoriteScreen({super.key});

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  final List categories = ['All', 'Cats', 'Dogs', 'Birds', 'Fish', 'Reptiles'];
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.whiteColor,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Find Your Forever Pet',
                style: AppStyles.font24Bold(
                  context,
                ).copyWith(color: AppColors.blackColor),
              ),
              SizedBox(height: 20),
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
              SizedBox(height: 25),
              GridView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: 3,

                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 19,
                  mainAxisSpacing: 16,
                  childAspectRatio: 0.85,
                ),
                itemBuilder: (context, index) =>
                    FavoriteItemContainer(location: '2.7 km away', name: 'Tom'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
