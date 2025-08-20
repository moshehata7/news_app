import 'package:flutter/material.dart';

class CategoryNewsCard extends StatelessWidget {
  const CategoryNewsCard({super.key, required this.image});
  final String image;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 200,
        height: 150,
        child: Image.asset(image),
      ),
    );
  }
}
