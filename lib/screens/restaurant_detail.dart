import 'package:flutter/material.dart';
import 'package:food_delivery/models/food.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/widgets/custom_title.dart';
import 'package:food_delivery/widgets/stars.dart';

class RestaurantDetail extends StatefulWidget {
  const RestaurantDetail({Key? key, required this.restaurant})
      : super(key: key);
  final Restaurant restaurant;
  @override
  State<RestaurantDetail> createState() => _RestaurantDetailState();
}

class _RestaurantDetailState extends State<RestaurantDetail> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
          primarySwatch: Colors.deepOrange,
          primaryColor: Colors.deepOrangeAccent,
          scaffoldBackgroundColor: Colors.grey[50]),
      debugShowCheckedModeBanner: false,
      home: Scaffold(
          body: Column(
        children: [
          Stack(
            children: [
              Image.asset(
                widget.restaurant.imageUrl,
                height: 150,
                width: MediaQuery.of(context).size.width,
                fit: BoxFit.cover,
              ),
              Container(
                margin: const EdgeInsets.only(top: 15),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    IconButton(
                        onPressed: () => Navigator.pop(context),
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 40,
                          color: Colors.white,
                        )),
                    const IconButton(
                        onPressed: null,
                        icon: Icon(
                          Icons.favorite,
                          size: 40,
                          color: Colors.orange,
                        )),
                  ],
                ),
              ),
            ],
          ),
          Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 13.5, vertical: 10),
              child: Column(children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomTitle(
                      title: widget.restaurant.name,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Stars(
                      starNumber: widget.restaurant.rating,
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text(widget.restaurant.address),
                  ],
                ),
              ])),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              ElevatedButton(
                onPressed: () {},
                child: const Text('Review'),
              ),
              ElevatedButton(
                onPressed: () {},
                child: const Text('Contact'),
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          const Center(
              child: CustomTitle(
            title: "MENU",
          )),
          Expanded(
            child: GridView.count(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                crossAxisSpacing: 10,
                mainAxisSpacing: 10,
                crossAxisCount: 2,
                children:
                    List.generate(widget.restaurant.menu.length, _menuItem)),
          )
        ],
      )),
    );
  }

  Widget _menuItem(index) {
    Food food = widget.restaurant.menu[index];
    return Stack(
      children: [
        Container(
          width: 170.5,
          height: 170.5,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            image: DecorationImage(
              image: AssetImage(
                food.imageUrl,
              ),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                food.name,
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                food.price.toString() + " \$",
                style: const TextStyle(
                    color: Colors.white,
                    fontSize: 13,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
