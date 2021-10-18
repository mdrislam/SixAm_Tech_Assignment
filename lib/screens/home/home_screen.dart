
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/screens/home/components/all_restaurants.dart';
import 'package:sixam_tech_assignment/screens/home/components/food_campaign.dart';
import 'package:sixam_tech_assignment/screens/home/components/new_restaurants.dart';
import 'package:sixam_tech_assignment/screens/home/components/popular_restaurants.dart';
import 'package:sixam_tech_assignment/screens/home/components/slider_images_widget.dart';
import 'components/catagories.dart';
import 'components/home_header.dart';
import 'components/home_search.dart';
import 'components/popular_food.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(
              height: 20.0,
            ),
            const HomeHeader(),
            const SizedBox(
              height: 30.0,
            ),
            HomeSearch(),
            const SizedBox(
              height: 25.0,
            ),
            SliderImagesWidget(),
            const SizedBox(
              height: 30.0,
            ),
            const Catagories(),
            const SizedBox(
              height: 30.0,
            ),
            const PopularFood(),
            const SizedBox(
              height: 20,
            ),
            const FoodCampaign(),
            const SizedBox(
              height: 20,
            ),
            const PopularRestaurants(),
            const SizedBox(
              height: 20,
            ),
            const NewRestaurants(),
            const SizedBox(
              height: 20,
            ),
            AllRestaurants()
            //  Flexible(child: AllRestaurants())
          ],
        ),
      ),
    );
  }
}
