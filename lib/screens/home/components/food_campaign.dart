import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/section_tittle.dart';
import 'package:sixam_tech_assignment/components/snakeBar.dart';


import 'campaign_food_card.dart';

class FoodCampaign extends StatelessWidget {
  const FoodCampaign({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> _foodList = [
      {
        "photo": "assets/images/burgar_img.jpg",
        "name": "Burger",
        "description": "Mc Donald, New york, USA",
        "new_price": "500",
        "old_price": "550",
        "offer": "30%",
      },
      {
        "photo": "assets/images/senduis.jpg",
        "name": "Senduis",
        "description": "Mc Donald, New york, USA",
        "new_price": "400",
        "old_price": "470",
        "offer": "20%",
      },
      {
        "photo": "assets/images/popular_res1.jpg",
        "name": "Pizza",
        "description": "Mc Donald, New york, USA",
        "new_price": "900",
        "old_price": "0",
        "offer": "0",
      },
      {
        "photo": "assets/images/pasta.jpg",
        "name": "Pasta",
        "description": "Mc Donald, New york, USA",
        "new_price": "200",
        "old_price": "290",
        "offer": "15%",
      },
    ];
    return Column(
      children: [
        SectionTittle(
          text: 'Food Campaign',
          press: () {
            CustomSnakeBar.showSnakeBar(context, 'View All Food Campaign ');
          },
        ),
        const SizedBox(
          height: 20,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(_foodList.length, (index) =>  CampaignFoodCard(item: _foodList[index],))
            ],
          ),
        ),

      ],
    );
  }
}


