import 'package:flutter/material.dart';
import 'package:sixam_tech_assignment/screens/home/home_screen.dart';

import 'components/nav_item.dart';

class BottomNavController extends StatefulWidget {
  const BottomNavController({Key? key}) : super(key: key);

  @override
  _BottomNavControllerState createState() => _BottomNavControllerState();
}

class _BottomNavControllerState extends State<BottomNavController> {
  int _currentIndex = 0;
  final _pages = [
    HomeScreen(),
    HomeScreen(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   leading: const Icon(
      //     Icons.home,
      //     color: Colors.grey,
      //   ),
      //   title: Text('7A eighth evenue, New York, USA'),
      // ),
      body: _pages[_currentIndex],
      bottomNavigationBar: Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        height: 70,
        color: Colors.white,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            NavItem(
              isCenter: false,
              icon: Icons.home,
              isSelected: true,
              press: () {
                setState(() {
                  _currentIndex = 0;
                });
              },
            ),
            NavItem(
              isCenter: false,
              icon: Icons.favorite,
              isSelected: false,
              press: () {
                print('Favourite Click');
              },
            ),
            NavItem(
              isCenter: true,
              icon: Icons.shopping_cart,
              isSelected: false,
              press: () {
                print('Shopping Cart Click');
              },
            ),
            NavItem(
              isCenter: false,
              icon: Icons.bookmark,
              isSelected: false,
              press: () {
                print('BookMark Click');
              },
            ),
            NavItem(
              isCenter: false,
              icon: Icons.menu,
              isSelected: false,
              press: () {
                print('Menu Click');
              },
            ),
          ],
        ),
      ),
    );
  }
}
