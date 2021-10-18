import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';
class SliderImagesWidget extends StatefulWidget {

  SliderImagesWidget({
    Key? key,
  }) : super(key: key);


  @override
  State<SliderImagesWidget> createState() => _SliderImagesWidgetState();
}

class _SliderImagesWidgetState extends State<SliderImagesWidget> {
  int dotPosition = 0;
  List<Map<String, dynamic>> _bannars = [
    {
      "icon": "assets/images/bannar_1.jpg",
    },
    {
      "icon": "assets/images/bannar_2.jpg",
    },
    {
      "icon": "assets/images/bannar_3.jpg",
    },
    {
      "icon": "assets/images/bannar_4.jpg",
    },
    {
      "icon": "assets/images/bannar_5.jpg",
    },
    {
      "icon": "assets/images/bannar_6.jpg",
    },
  ];


  @override
  Widget build(BuildContext context) {
    return Column(children: [
      AspectRatio(
        aspectRatio: 3.5,
        child: CarouselSlider(
          items: _bannars
              .map((item) => Padding(
            padding: EdgeInsets.only(left: 3, right: 3),
            child: Container(
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(item['icon']),
                      fit: BoxFit.cover),
                  borderRadius: BorderRadius.circular(10)),
            ),
          ))
              .toList(),
          options: CarouselOptions(
              autoPlay: true,
              enlargeCenterPage: true,
              viewportFraction: 0.9,
              initialPage: 0,
              enlargeStrategy: CenterPageEnlargeStrategy.height,
              autoPlayInterval: Duration(seconds: 3),
              autoPlayAnimationDuration: Duration(milliseconds: 800),
              scrollDirection: Axis.horizontal,
              onPageChanged: (val, carsouselPageReason) {
                setState(() {
                  dotPosition = val;
                });
                print(val.toString());
              }),
        ),
      ),
      const SizedBox(
        height: 10,
      ),
      DotsIndicator(
        dotsCount: _bannars.length == 0 ? 1 : _bannars.length,
        position: dotPosition.toDouble(),
        decorator: DotsDecorator(
            activeColor: Colors.deepOrange,
            color: Colors.deepOrange.withOpacity(.4),
            spacing: EdgeInsets.all(2)),
      ),
    ],);
  }
}