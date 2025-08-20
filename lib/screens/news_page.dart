import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_item_list_view.dart';
import 'package:news_app/widgets/category_news_card_list_views.dart';

class NewsPage extends StatefulWidget {
  const NewsPage({super.key});

  @override
  State<NewsPage> createState() => _NewsPageState();
}

class _NewsPageState extends State<NewsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NewsCubit>(context).getNews(newsType: "general");
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
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          if (state is NewsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is NewsSuccess) {
            return Padding(
              padding: const EdgeInsets.all(8.0),
              child: ListView(
                children: [
                  CategoryNewsCardListViews(),
                  NewsItemListView(newsList: state.newsList),
                ],
              ),
            );
          } else if (state is NewsFailure) {
            return Text("Error ${state.errorMessage}");
          } else {
            return Text("Error.... ");
          }
        },
      ),
    );
  }
}
