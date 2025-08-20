import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/data/cubit/news_cubit.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';
import 'package:news_app/widgets/news_item.dart';
import 'package:news_app/widgets/news_item_list_view.dart';
import 'package:news_app/widgets/category_news_card_list_views.dart';
import 'package:news_app/cubit/news_cubit.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
  
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("News", style: TextStyle(color: Colors.white, fontSize: 20)),
            Text("Cloud", style: TextStyle(color: Colors.green, fontSize: 20)),
          ],
        ),
      ),
      body: ListView(
        children: [
          CategoryNewsCardListViews(),
          NewsItemListView(newsList: []),
        ],
      ),
    );
  }
}
