import "package:flutter/material.dart";
import "package:food_delivery/practice/navbar/navbar.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
        appBar: NavBar(title: "Food delivers app"),
        body: Padding(
          padding: EdgeInsets.all(20),
          child: TextField(
            decoration: InputDecoration(
                contentPadding:
                    EdgeInsets.symmetric(vertical: 10, horizontal: 5),
                fillColor: Colors.white,
                filled: true,
                enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(30)),
                    borderSide: BorderSide(width: 0.8, color: Colors.blue)),
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.all(Radius.circular(3)),
                    borderSide: BorderSide(width: 0.8)),
                hintText: "Search food",
                prefixIcon: Icon(Icons.search),
                suffixIcon: Icon(Icons.clear)),
          ),
        ));
  }
}
