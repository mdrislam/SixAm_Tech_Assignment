import 'package:flutter/material.dart';

class FilteringMenu extends StatefulWidget {
  const FilteringMenu({
    Key? key,
  }) : super(key: key);

  @override
  State<FilteringMenu> createState() => _FilteringMenuState();
}

class _FilteringMenuState extends State<FilteringMenu> {
  int selected = 0;

  @override
  Widget build(BuildContext context) {
    return PopupMenuButton<int>(
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'All',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: selected == 0 ? Colors.black : Colors.grey),
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey.withOpacity(0.4),
              ),
            ],
          ),
          value: 0,
        ),
        PopupMenuItem(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Take Away',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: selected == 1 ? Colors.black : Colors.grey),
                ),
              ),
              Container(
                height: 1,
                color: Colors.grey.withOpacity(0.4),
              ),
            ],
          ),
          value: 1,
        ),
        PopupMenuItem(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(bottom: 8.0),
                child: Text(
                  'Home Delivery',
                  style: TextStyle(
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      color: selected == 2 ? Colors.black : Colors.grey),
                ),
              ),
            ],
          ),
          value: 2,
        ),
      ],
      onSelected: (value) {
        switch (value) {
          case 0:
            setState(() {
              selected = 0;
              print('All');
            });
            break;

          case 1:
            setState(() {
              selected = 1;
              print('Take Away');
            });
            break;

          case 2:
            setState(() {
              selected = 2;
              print('Home Delivery');
            });
            break;
        }
      },
    );
  }
}
