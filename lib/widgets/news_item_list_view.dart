import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsItemListView extends StatelessWidget {
  const NewsItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: 5,
        itemBuilder: (context, index) =>NewsItem() ,
        );
  }
}