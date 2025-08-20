import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/screens/category_news_page.dart';

class CategoryNewsCard extends StatelessWidget {
  const CategoryNewsCard({super.key, required this.category, this.newsList });
  final CategoryModel category;
    final List<NewsModel>? newsList;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) {
                return CategoryNewsPage(
                  category: category,
                   newsList: newsList ??[]) ;
              },
            ),
          );
        },
        child: Container(
          child: Center(child: Text(category.title ?? "")),
          width: 200,
          height: 150,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            image: DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage(category.image)),
          ),
        ),
      ),
    );
  }
}
