import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/const/AppConstant.dart';


class SectionTittle extends StatelessWidget {
  const SectionTittle({
    Key? key,
    required this.text,
    required this.press,
  }) : super(key: key);
  final String text;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: const TextStyle(
                fontFamily: 'Poppins', fontSize: 18, color: Colors.black,fontWeight: FontWeight.w600),
          ),
          GestureDetector(
              onTap: press,
              child: const Text(
                "View All",
                style: TextStyle(
                    fontFamily: 'Poppins',
                    color: AppColorsConst.primaryColor,
                    decoration: TextDecoration.underline),
              )),
        ],
      ),
    );
  }
}
