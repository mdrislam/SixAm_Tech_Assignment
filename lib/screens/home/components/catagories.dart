import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/components/section_tittle.dart';

class Catagories extends StatefulWidget {
  const Catagories({
    Key? key,
  }) : super(key: key);

  @override
  State<Catagories> createState() => _CatagoriesState();
}

class _CatagoriesState extends State<Catagories> {
  List<Map<String, dynamic>> catagories = [
    {"icon": "assets/images/food.png", "text": "All"},
    {"icon": "assets/images/Burger.png", "text": "Burger"},
    {"icon": "assets/images/Cake.png", "text": "Cake"},
    {"icon": "assets/images/cup.png", "text": "Coffee"},
    {"icon": "assets/images/drinks.png", "text": "Drink"},
    {"icon": "assets/images/Pizza.png", "text": "Pizza"},
    {"icon": "assets/images/Burger.png", "text": "Burger"},
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTittle(text: 'Categories', press: () {}),
        const SizedBox(
          height: 20.0,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                  catagories.length,
                  (index) => CatagoryCard(
                        press: () {},
                        singleCat: catagories[index],
                      ))
            ],
          ),
        ),
      ],
    );
  }
}

class CatagoryCard extends StatelessWidget {
  CatagoryCard({
    Key? key,
    required this.press,
    required this.singleCat,
  }) : super(key: key);
  final GestureTapCallback press;
  var singleCat;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: 60,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: .9,
                child: Container(
                  padding: const EdgeInsets.all(10),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Image.asset(singleCat['icon']),
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              Text(
                singleCat["text"],
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: 'Poppins', fontWeight: FontWeight.w600),
              )
            ],
          ),
        ),
      ),
    );
  }
}
