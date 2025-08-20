import 'package:dio/dio.dart';
import 'package:news_app/models/news_model.dart';
import 'package:news_app/services/news_services.dart';

class NewsRepo {
  NewsServices newsServices;
  NewsRepo(this.newsServices);
  Future<List<NewsModel>> getNews({required String newsType}) async {
    List<dynamic> articles = await newsServices.getNews(newsType:newsType );
    return articles.map((article) => NewsModel.fromJson(article)).toList();
  }
}
