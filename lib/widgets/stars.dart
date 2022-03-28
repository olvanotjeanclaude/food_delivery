import 'package:flutter/material.dart';

class Stars extends StatelessWidget {
  const Stars({Key? key, required this.starNumber}) : super(key: key);
  final int starNumber;
  @override
  Widget build(BuildContext context) {
    String stars = "";

    if (starNumber > 0) {
      for (var i = 0; i < starNumber; i++) {
        stars += "⭐ ";
        stars.trim();
      }
    }

    return Text(
      stars,
      style: const TextStyle(color: Colors.yellow, fontSize: 23.5),
    );
  }
}
