import 'package:flutter/material.dart';
import 'package:food_delivery/data/data.dart';
import 'package:food_delivery/models/restaurant.dart';
import 'package:food_delivery/screens/restaurant_detail.dart';

class NearByRestaurants extends StatelessWidget {
  const NearByRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> restaurantsList = [];

    for (var resto in restaurants) {
      restaurantsList.add(_buidRestaurant(resto, context));
    }

    return Column(children: restaurantsList);
  }

  Widget _buidRestaurant(Restaurant restaurant, context) {
    const imgSize = 80.0;
    return GestureDetector(
      onTap: () {
        Navigator.push(
            context,
            MaterialPageRoute(
                builder: ((context) => const RestaurantDetail())));
      },
      child: Container(
        margin: const EdgeInsets.all(10),
        child: Row(
          children: [
            SizedBox(
              width: imgSize,
              height: imgSize,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(24),
                child: Image.asset(restaurant.imageUrl,
                    width: imgSize, height: imgSize, fit: BoxFit.cover),
              ),
            ),
            Expanded(
              child: Container(
                margin: const EdgeInsets.only(left: 10),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      restaurant.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 18, fontWeight: FontWeight.bold),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      restaurant.address,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      restaurant.name,
                      overflow: TextOverflow.ellipsis,
                      style: const TextStyle(
                          fontSize: 14, fontWeight: FontWeight.w500),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
