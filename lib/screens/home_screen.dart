import "package:flutter/material.dart";
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/screens/nearby_restaurants.dart';
import 'package:food_delivery/widgets/recent_orders.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: const IconButton(
          onPressed: null,
          icon: Icon(
            Icons.account_circle,
            color: Colors.white,
          ),
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
          child: _searchOrder(),
        ),
        const FoodCategories(),
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.0),
          child: Text(
            "Near By Restaurants",
            style: TextStyle(
                fontWeight: FontWeight.w600, letterSpacing: 1.2, fontSize: 20),
          ),
        ),
        const NearByRestaurants(),
      ]),
    );
  }

  TextField _searchOrder() {
    return TextField(
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
    );
  }
}
