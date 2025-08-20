import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_item.dart';
import 'package:news_app/widgets/news_item_list_view.dart';
import 'package:news_app/widgets/category_news_card_list_views.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News",style: TextStyle(color: Colors.white ,fontSize: 20),),
            Text("Cloud",style: TextStyle(color: Colors.green ,fontSize: 20),)
          ],
        ),
      ),
      body: ListView(
        children :[
        CategoryNewsCardListViews(),
        NewsItemListView(),
      ])
    );
  }
}