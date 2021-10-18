import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/popup_filtering_menu.dart';
import 'package:sixam_tech_assignment/screens/home/components/all_restaurants_card.dart';

class AllRestaurants extends StatefulWidget {
  const AllRestaurants({Key? key}) : super(key: key);

  @override
  State<AllRestaurants> createState() => _AllRestaurantsState();
}

class _AllRestaurantsState extends State<AllRestaurants> {
  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _restaurants = [
      {
        "photo": "assets/images/mcdonalds.png",
        "name": "McDonalds",
        "address": "Mc Donald,\n New york, USA",
        "offer": "50%",
        "avg_review": "5",
        "isFavourite": "false",
      },
      {
        "photo": "assets/images/dominos.png",
        "name": "Dominos",
        "address": "Gulshan-1, Dhaka,\n Bangladesh",
        "offer": "20%",
        "avg_review": "4.5",
        "isFavourite": "true",
      },
      {
        "photo": "assets/images/pizza_hut.png",
        "name": "Pizza Hut",
        "address": "Mirpur-10, Dhaka,\n Bangladesh",
        "offer": "0",
        "avg_review": "2.4",
        "isFavourite": "false",
      },
      {
        "photo": "assets/images/starbucks.png",
        "name": "StarBucks",
        "address": "Danmondi-8A, Dhaka,\n Bangladesh",
        "offer": "20%",
        "avg_review": "3.5",
        "isFavourite": "true",
      },
    ];
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text(
                    'All Restaurants',
                    style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 18,
                        color: Colors.black,
                        fontWeight: FontWeight.w600),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 4.0),
                    child: Text(
                      '200+ Near you',
                      style: TextStyle(
                        fontFamily: 'Poppins',
                        fontSize: 14,
                        color: Colors.grey,
                      ),
                    ),
                  ),
                ],
              ),
              Container(
                height: 35,
                width: 35,
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    fit: BoxFit.fill,
                    image: AssetImage('assets/icons/filter.png'),
                  ),
                ),
                child:  FilteringMenu(),
              ),
            ],
          ),
        ),
        ListView.builder(
            itemCount: _restaurants.length,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            itemBuilder: (context, index) {
              return AllRestarantsCard(
                restaurant: _restaurants[index],
              );
            }),
      ],
    );
  }
}
