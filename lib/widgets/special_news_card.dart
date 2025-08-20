import 'package:flutter/material.dart';

class SpecialNewsCard extends StatelessWidget {
  const SpecialNewsCard({super.key});

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