import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/snakeBar.dart';
import 'package:sixam_tech_assignment/const/AppConstant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class CampaignFoodCard extends StatelessWidget {
  CampaignFoodCard({Key? key, required this.item}) : super(key: key);
  var item;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.6,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    color: Colors.white10.withOpacity(0),
                    spreadRadius: 5,
                    blurRadius: 8,
                    offset: Offset(0, 1),
                  )
                ]),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Container(
                  height: 180,
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: const BorderRadius.only(
                        topRight: Radius.circular(30),
                        topLeft: Radius.circular(30)),
                    image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(item['photo']),
                    ),
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        item['name'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                        maxLines: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 10.0),
                        child: Text(
                          item['description'],
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
                              '৳${item['new_price']}',
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 16,
                              ),
                              maxLines: 1,
                            ),
                            const SizedBox(
                              width: 10,
                            ),
                            Text(
                              '৳${item['old_price']}',
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
                ),
              ],
            ),
          ),
          Positioned(
            bottom: 15,
            right: 15,
            child: GestureDetector(
              onTap: () {
                 CustomSnakeBar.showSnakeBar(context, item['name']+' add to Cart');
              },
              child: Container(
                  width: 28.0,
                  height: 28.0,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage('assets/icons/plus.png')))),
            ),
          ),
        ],
      ),
    );
  }
}
