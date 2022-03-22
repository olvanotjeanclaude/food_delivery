import "package:flutter/material.dart";
import 'package:food_delivery/data/data.dart';
import "package:food_delivery/widgets/food_category.dart";

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Button> initButtons() {
    List<Button> buttons = [];
    for (int i = 0; i < 20; i++) {
      buttons.add(Button(title: "button $i"));
    }
    return buttons;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(Icons.account_circle),
          iconSize: 30.0,
        ),
        title: const Text("Foor delivery"),
        centerTitle: true,
        actions: <Widget>[
          TextButton(
              onPressed: (() {}),
              child: Text(
                "Cart (${currentUser.cart.length})",
                style: const TextStyle(color: Colors.white, fontSize: 20),
              )),
        ],
      ),
      body: ListView(children: <Widget>[
        Padding(
          padding: const EdgeInsets.all(20),
          child: TextField(
            onTap: (() {
              debugPrint("ok");
            }),
            decoration: InputDecoration(
                prefixIcon: const Icon(
                  Icons.search,
                  size: 30,
                ),
                suffixIcon: IconButton(
                  icon: const Icon(Icons.clear),
                  onPressed: () {},
                ),
                hintText: "Search Food or Restaurants",
                border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(30.0),
                    borderSide: const BorderSide(width: 0.8))),
          ),
        ),
        const FoodCategories()
      ]),
    );
  }
}

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
