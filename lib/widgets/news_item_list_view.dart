import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_item.dart';

class NewsItemListView extends StatelessWidget {
   NewsItemListView({super.key, required this.newsList });
  final List<NewsModel> newsList;
  

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: AnimationLimiter(
        child: ListView.builder(
          physics: NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          itemCount: newsList.length,
          itemBuilder: (context, index) {
          return AnimationConfiguration.staggeredList(
          position: index,
          duration: const Duration(seconds: 1),
          child: SlideAnimation(
            verticalOffset: 50.0,
            child: FadeInAnimation(
              duration: Duration(seconds:1 ),
              child: NewsItem(news:newsList[index],)),));
              }
        ),
      ),
    );
  }
}
