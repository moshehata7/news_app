import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.news});
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        child: Column(
          children: [
            Image.asset(news.image),
            Text(news.title, style: TextStyle(fontSize: 30)),
            Text(news.subTitle, style: TextStyle(fontSize: 15)),
          ],
        ),
      ),
    );
  }
}
