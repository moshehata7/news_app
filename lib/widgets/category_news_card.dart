import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class CategoryNewsCard extends StatelessWidget {
  const CategoryNewsCard({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        child: Center(
          child: Text(category.title ?? "" )),
        width: 200,
        height: 150,
        decoration: BoxDecoration(
          image: DecorationImage(image: AssetImage(category.image)),
        ),
      ),
    );
  }
}
