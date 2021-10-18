import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
class IconBtnWithNotify extends StatelessWidget {
  IconBtnWithNotify({Key? key, required this.press, required this.icon})
      : super(key: key);
  final VoidCallback press;
  var icon;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Stack(
        overflow: Overflow.visible,
        children: [
          Container(
            height: 40.0,
            width: 40.0,
            padding: EdgeInsets.all(7),
            // child: Icon(Icons.notifications),
            child: SvgPicture.asset(icon),
          ),
          Positioned(
            right: 8,
            top: 6,
            child: Container(
              height: 10,
              width: 10,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
            ),
          ),
        ],
      ),
    );
  }
}