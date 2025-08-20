import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/widgets/news_item_list_view.dart';

class CategoryNewsPage extends StatefulWidget {
  const CategoryNewsPage({
    super.key,
    required this.newsList, required this.category,
  });

  final List<NewsModel> newsList;
  final CategoryModel  category;


  @override
  State<CategoryNewsPage> createState() => _CategoryNewsPageState();
}

class _CategoryNewsPageState extends State<CategoryNewsPage> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<NewsCubit>(context).getNews(newsType: widget.category.title ??"sports");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.category.title ?? "Sport News")),
      body: BlocBuilder<NewsCubit, NewsState>(
        builder: (context, state) {
          if (state is NewsLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is NewsSuccess) {
            return ListView
            (children:[ NewsItemListView(newsList: state.newsList)]);
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
