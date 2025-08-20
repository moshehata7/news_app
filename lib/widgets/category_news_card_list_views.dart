import 'package:flutter/material.dart';
import 'package:news_app/widgets/category_news_card.dart';

class CategoryNewsCardListViews extends StatelessWidget {
   CategoryNewsCardListViews({super.key});
  final List <String> categoryList = [
  "assets/images/business.avif",
  "assets/images/entertaiment.avif",
  "assets/images/general.avif",
  "assets/images/health.avif",
  "assets/images/science.avif",
  "assets/images/sports.avif",
  "assets/images/technology.jpeg",
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryNewsCard(image: categoryList[index]);
        },
      ),
    );
  }
}
