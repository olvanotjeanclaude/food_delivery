import 'package:flutter/material.dart';
import "screens/home_screen.dart";

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Food deliver background',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.grey[50]),
      home: const HomeScreen(),
    );
  }
}
