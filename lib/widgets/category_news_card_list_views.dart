import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/category_news_card.dart';

class CategoryNewsCardListViews extends StatelessWidget {
   CategoryNewsCardListViews({super.key});
  final List <CategoryModel> categoryList = [
   CategoryModel(image: "assets/images/0_YdpLnadyR0p-rtYH.jpg"),
   CategoryModel(image: "assets/images/download.jpg", title: "business"),
   CategoryModel(image: "assets/images/entertaiment.avif", title: "entertainment"),
   CategoryModel(image: "assets/images/health.avif", title: "health"),
   CategoryModel(image: "assets/images/science.avif", title: "science"),
   CategoryModel(image: "assets/images/technology.jpeg", title: "technology"),
  ];
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: categoryList.length,
        itemBuilder: (context, index) {
          return CategoryNewsCard( 
          category: categoryList[index],
          );
        },
      ),
    );
  }
}
