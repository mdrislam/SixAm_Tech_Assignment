import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/favourite_lebel.dart';
import 'package:sixam_tech_assignment/components/offer_lebel.dart';
import 'package:sixam_tech_assignment/const/AppConstant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class RestaurantsCard extends StatelessWidget {
  RestaurantsCard({Key? key, required this.restaurant, required this.status})
      : super(key: key);
  final bool? status;
  var restaurant;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 15.0),
      child: Stack(
        children: [
          Container(
            width: MediaQuery.of(context).size.width * 0.8,
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
                Stack(
                  children: [
                    Container(
                      height: 220,
                      decoration: BoxDecoration(
                        color: Colors.green,
                        borderRadius: const BorderRadius.only(
                            topRight: Radius.circular(30),
                            topLeft: Radius.circular(30)),
                        image: DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(restaurant['photo']),
                        ),
                      ),
                    ),
                    Positioned(
                        top: 40,
                        child: status == false
                            ? const Text('')
                            : restaurant['lebel_text'].toString().isEmpty
                                ? const Text('')
                                : OfferLebel(
                                    txt: restaurant['lebel_text'].toString(),
                                  ))
                  ],
                ),
                Padding(
                  padding:
                      const EdgeInsets.only(left: 10.0, top: 10, bottom: 10),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        restaurant['name'],
                        style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            fontFamily: 'Poppins'),
                        maxLines: 1,
                      ),
                      Padding(
                        padding: const EdgeInsets.only(top: 8.0, right: 10.0),
                        child: Text(
                          restaurant['address'],
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
                        child: Row(
                          children: [
                            SmoothStarRating(
                                allowHalfRating: false,
                                onRated: (v) {},
                                starCount: 5,
                                rating: double.parse(
                                    restaurant['avg_review'].toString()),
                                size: 20.0,
                                isReadOnly: true,
                                color: AppColorsConst.primaryColor,
                                borderColor: AppColorsConst.primaryColor,
                                spacing: 0.0),
                            Text(
                              '(${restaurant['total_review']})',
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 16,
                                  color: Colors.grey),
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
              top: 20,
              right: 20,
              child: status == false
                  ? const Text('')
                  : restaurant['isFavourite'].toString() == 'false'
                      ? const Text('')
                      : const FavouriteLebel())
        ],
      ),
    );
  }
}
