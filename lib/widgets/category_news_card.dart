import 'package:flutter/material.dart';

class CategoryNewsCard extends StatelessWidget {
  const CategoryNewsCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 150,
        child: Image.asset("assets/images/0_YdpLnadyR0p-rtYH.jpg"),
      ),
    );
  }
}