import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsItemListView extends StatelessWidget {
   NewsItemListView({super.key, required this.newsList, });
  final List<NewsModel> newsList;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        itemCount: newsList.length,
        itemBuilder: (context, index) => NewsItem(news:newsList[index],),
      ),
    );
  }
}
