import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/const/AppConstant.dart';
class FavouriteLebel extends StatelessWidget {
  const FavouriteLebel({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40.0,
      width: 40.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10),
        color: Colors.white,
      ),
      child: const Icon(
        Icons.favorite,
        color: AppColorsConst.primaryColor,
      ),
    );
  }
}
