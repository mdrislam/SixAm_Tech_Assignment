import 'package:flutter/material.dart';

import 'icon_btn_with_notify.dart';
class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 20,
      ),
      child: Row(
        children: [
          const Icon(
            Icons.home,
            color: Colors.grey,
          ),
          const Text(
            ' 7A eighth evenue, New York, US',
            style: TextStyle(
              color: Colors.grey,
              fontFamily: 'Poppins',
              fontWeight: FontWeight.w500,
              fontSize: 14
            ),
          ),
          const Spacer(),
          IconBtnWithNotify(
            icon: 'assets/icons/bell.svg',
            press: () {
              print('Notify Click');
            },
          ),
          // Icon(
          //   Icons.notifications,
          //   color: Colors.grey,
          // ),
        ],
      ),
    );
  }
}