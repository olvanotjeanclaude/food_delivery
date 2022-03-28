import 'package:flutter/material.dart';

class CustomTitle extends StatelessWidget {
  const CustomTitle({Key? key, required this.title, this.size})
      : super(key: key);

  final String title;
  final double? size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: size ?? 20,
          letterSpacing: 1.2),
    );
  }
}
