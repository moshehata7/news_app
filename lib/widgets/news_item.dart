import 'package:flutter/material.dart';
import 'package:news_app/models/news_model.dart';
import 'package:cached_network_image/cached_network_image.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key, required this.news});
  final NewsModel news;

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
          child: Column(
            children: [
              CachedNetworkImage(
                fit: BoxFit.cover,
                imageUrl: news.image.isNotEmpty
                    ? news.image
                    : "https://via.placeholder.com/150",
                placeholder: (context, url) => CircularProgressIndicator(),
                errorWidget: (context, url, error) =>
                    Icon(Icons.broken_image, size: 100),
              ),
              Text(maxLines:2, 
               news.title, style: TextStyle(fontFamily:"Roboto Slab" , fontSize: 25)),
              Text(news.subTitle, style: TextStyle( fontSize: 13)),
            ],
          ),
        ),
      ),
    );
  }
}
