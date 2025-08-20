import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsItemListView extends StatelessWidget {
  const NewsItemListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: 5,
        itemBuilder: (context, index) => NewsItem(),
      ),
    );
  }
}
