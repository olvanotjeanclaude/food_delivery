import "package:flutter/material.dart";

class Button extends StatelessWidget {
  const Button({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: const TextStyle(
          color: Colors.white, fontSize: 20, backgroundColor: Colors.amber),
    );
  }
}
