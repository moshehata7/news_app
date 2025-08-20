import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/cubit/news_cubit.dart';
import 'package:news_app/repositry/news_repo.dart';
import 'package:news_app/screens/news_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:news_app/services/news_services.dart';

void main() {

  runApp(
     NewsApp());
}

class NewsApp extends StatelessWidget {
   NewsApp({super.key});
   final dio = Dio(); // Dio instance
  late final newsServices = NewsServices(dio); // service
  late final newsRepo = NewsRepo(newsServices); // repo

  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: BlocProvider(
          create: (context) => NewsCubit(newsRepo),
          child: NewsPage()),
         theme: ThemeData(brightness: Brightness.dark));
    
  }
}
