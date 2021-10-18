import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/section_tittle.dart';
import 'package:sixam_tech_assignment/screens/home/components/restaurants_card.dart';

class NewRestaurants extends StatelessWidget {
  const NewRestaurants({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _restaurants = [
      {
        "photo": "assets/images/popular_res4.jpg",
        "name": "Doominos",
        "address": "Danmondi-8A, Dhaka, Bangladesh",
        "total_review": "20",
        "avg_review": "4",
        'isFavourite': 'false',
        'lebel_text':''
      },
      {
        "photo": "assets/images/popular_res2.jpg",
        "name": "Pizza Hut",
        "address": "Mirpur-10, Dhaka, Bangladesh",
        "total_review": "35",
        "avg_review": "5",
        'isFavourite': 'true',
        'lebel_text':'Free Delivery'
      },
      {
        "photo": "assets/images/popular_res4.jpg",
        "name": "Hungry Naki",
        "address": "Gulshan-1, Dhaka, Bangladesh",
        "total_review": "20",
        "avg_review": "2",
        'isFavourite': 'false',
        'lebel_text':'Free Delivery'
      },
      {
        "photo": "assets/images/popular_res1.jpg",
        "name": "Hungry Puppets",
        "address": "Mc Donald, New york, USA",
        "total_review": "52",
        "avg_review": "5",
        'isFavourite': 'true',
        'lebel_text':'Free Delivery'
      },
    ];
    return Column(
      children: [
        SectionTittle(
          text: 'New on App Name',
          press: () {},
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                _restaurants.length,
                (index) => RestaurantsCard(
                  status: true,
                  restaurant: _restaurants[index],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
