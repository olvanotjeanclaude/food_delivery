import "package:flutter/material.dart";
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/models/order.dart';

class FoodCategories extends StatelessWidget {
  const FoodCategories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 8.0),
          child: Text(
            "Recent Orders",
            style: TextStyle(
                fontWeight: FontWeight.w600, fontSize: 20, letterSpacing: 1.2),
          ),
        ),
        SizedBox(
          height: 120,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              physics: const BouncingScrollPhysics(),
              itemCount: currentUser.orders.length,
              itemBuilder: (BuildContext context, index) {
                final Order orders = currentUser.orders[index];
                return _recentOrderBuilders(orders, context);
              }),
        ),
      ],
    );
  }

  Container _recentOrderBuilders(Order orders, BuildContext context) {
    return Container(
      width: 300,
      margin: const EdgeInsets.all(10),
      decoration: BoxDecoration(
          border: Border.all(width: 1.5, color: Theme.of(context).primaryColor),
          borderRadius: BorderRadius.circular(15),
          color: Colors.white),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Expanded(
            child: Row(
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(10.0),
                  child: Image.asset(
                    orders.food.imageUrl,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                Expanded(
                  child: Container(
                    margin: const EdgeInsets.all(12),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          orders.food.name,
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.bold,
                              fontSize: 16),
                        ),
                        Text(
                          orders.restaurant.name,
                          style: const TextStyle(
                              overflow: TextOverflow.ellipsis,
                              fontWeight: FontWeight.w600,
                              fontSize: 13),
                        ),
                        Text(
                          orders.date,
                          style: const TextStyle(
                            overflow: TextOverflow.ellipsis,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                        )
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.only(right: 20),
            width: 50,
            child: const IconButton(
              icon: Icon(Icons.add, color: Colors.white),
              onPressed: null,
            ),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Theme.of(context).primaryColor),
          ),
        ],
      ),
    );
  }
}
