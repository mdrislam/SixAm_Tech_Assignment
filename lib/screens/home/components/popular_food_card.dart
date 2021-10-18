import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/offer_lebel.dart';
import 'package:sixam_tech_assignment/components/snakeBar.dart';
import 'package:sixam_tech_assignment/const/AppConstant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class PopularFoodCard extends StatelessWidget {
  PopularFoodCard({
    Key? key,
    required this.food_item,
  }) : super(key: key);
  var food_item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 18.0),
      child: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10), color: Colors.white),
            child: Row(
              children: [
                Stack(
                  overflow: Overflow.visible,
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        width: 120.0,
                        height: 120.0,
                        decoration: BoxDecoration(
                          image: DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(food_item['photo'])),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.white,
                        ),
                      ),
                    ),
                    Positioned(
                      top: 30,
                      child: food_item['offer'].toString() == '0'
                          ? const Text('')
                          : OfferLebel(txt: '${food_item['offer']} off'),
                    ),
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 10.0, top: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        food_item['name'],
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                        ),
                        maxLines: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 10.0),
                        child: Text(
                          food_item['description'],
                          style: const TextStyle(
                              fontWeight: FontWeight.normal,
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              color: Colors.grey),
                          maxLines: 1,
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0),
                        child: SmoothStarRating(
                            allowHalfRating: false,
                            onRated: (v) {},
                            starCount: 5,
                            rating: 5,
                            size: 20.0,
                            isReadOnly: true,
                            color: AppColorsConst.primaryColor,
                            borderColor: AppColorsConst.primaryColor,
                            spacing: 0.0),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 8.0),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '৳${food_item['new_price']}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            food_item['old_price'].toString() == '0'
                                ? const Text('')
                                : Text(
                                    '৳${food_item['old_price']}',
                                    style: const TextStyle(
                                        fontWeight: FontWeight.normal,
                                        fontSize: 16,
                                        decoration: TextDecoration.lineThrough,
                                        color: Colors.grey),
                                    maxLines: 1,
                                  ),
                          ],
                        ),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: GestureDetector(
              onTap: (){
                CustomSnakeBar.showSnakeBar(context, food_item['name']+' add to Cart');
              },
              child: Container(
                  width: 28.0,
                  height: 28.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/icons/plus.png'),),),),
            ),
          ),
        ],
      ),
    );
  }
}
