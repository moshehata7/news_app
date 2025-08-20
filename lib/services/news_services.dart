import 'package:dio/dio.dart';

class NewsServices {
  final Dio dio;

  NewsServices(this.dio);
  Future<List<dynamic>> getNews() async {
    Response response = await dio.get("https://newsapi.org/v2/top-headlines?country=us&apiKey=077c7229d91f4b73af775bbdb8e9e110");
    return response.data["articles"];
    
  }
}
