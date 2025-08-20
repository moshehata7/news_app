import 'package:flutter/material.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Text("News",style: TextStyle(color: Colors.black ,fontSize: 20),),
            Text("Cloud",style: TextStyle(color: Colors.green ,fontSize: 20),)
          ],
        ),
      ),
    );
  }
}