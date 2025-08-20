import 'package:flutter/material.dart';
import 'package:news_app/screens/news_page.dart';

void main() {
  runApp(const NewsApp());
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: NewsPage(),
       theme: ThemeData(brightness: Brightness.dark));
  }
}
