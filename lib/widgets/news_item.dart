import 'package:flutter/material.dart';

class NewsItem extends StatelessWidget {
  const NewsItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10)
        ),
        child: Column(
          children: [
            Image.asset("assets/images/0_YdpLnadyR0p-rtYH.jpg"),
            Text("title",style: TextStyle(fontSize: 30),),
            Text("content",style: TextStyle(fontSize: 15))
          ],
        ),
      ),
    );
  }
}