import 'package:flutter/material.dart';
import 'package:news_app/widgets/special_news_card.dart';

class SpecialNewsCardListViews extends StatelessWidget {
  const SpecialNewsCardListViews({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 150,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: 5,
        itemBuilder: (context, index) {
          return SpecialNewsCard();
        },
      ),
    );
  }
}
