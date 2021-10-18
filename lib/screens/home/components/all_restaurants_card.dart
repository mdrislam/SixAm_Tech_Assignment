import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/offer_lebel.dart';
import 'package:sixam_tech_assignment/const/AppConstant.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class AllRestarantsCard extends StatefulWidget {
  AllRestarantsCard({Key? key, required this.restaurant}) : super(key: key);
  var restaurant;

  @override
  State<AllRestarantsCard> createState() => _AllRestarantsCardState();
}

class _AllRestarantsCardState extends State<AllRestarantsCard> {
  late IconData? _iconData;


  @override
  void initState() {
    // TODO: implement initState
    if (widget.restaurant['isFavourite'].toString() == 'true') {
      _iconData = Icons.favorite;
    } else {
      _iconData = Icons.favorite_border;
    }
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Stack(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    Stack(
                      overflow: Overflow.visible,
                      children: [
                        Container(
                          width: 120.0,
                          height: 100.0,
                          decoration: BoxDecoration(
                            image: DecorationImage(
                                fit: BoxFit.fill,
                                image: AssetImage(widget.restaurant['photo'])),
                            borderRadius:
                                const BorderRadius.all(Radius.circular(8.0)),
                            color: Colors.white,
                          ),
                        ),
                        Positioned(
                          top: 30,
                          child: widget.restaurant['offer'].toString() == '0'
                              ? const Text('')
                              : OfferLebel(
                                  txt: '${widget.restaurant['offer']} off'),
                        ),
                      ],
                    ),
                    Padding(
                      padding: const EdgeInsets.only(left: 10.0, top: 10),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            widget.restaurant['name'],
                            style: const TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                            maxLines: 1,
                          ),
                          Padding(
                            padding:
                                const EdgeInsets.only(top: 8.0, right: 10.0),
                            child: Text(
                              widget.restaurant['address'],
                              style: const TextStyle(
                                  fontWeight: FontWeight.normal,
                                  fontSize: 14,
                                  fontFamily: 'Poppins',
                                  color: Colors.grey),
                              maxLines: 2,
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
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                top: 50,
                right: 15,
                child: GestureDetector(
                  onTap: () {
                    setState(() {
                      if (widget.restaurant['isFavourite'].toString() ==
                          'true') {
                        _iconData = Icons.favorite_border;
                      } else {
                        _iconData = Icons.favorite;
                      }
                    });
                  },
                  child: Icon(
                    _iconData!,
                    size: 30,
                    color: AppColorsConst.primaryColor,
                  ),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Container(
            height: 1.5,
            color: Colors.grey.withOpacity(.5),
          ),
        )
      ],
    );
  }
}
