import 'package:flutter/material.dart';

class NavItem extends StatelessWidget {
  const NavItem({
    Key? key,
    required this.isCenter,
    required this.icon,
    required this.isSelected,
    required this.press,
  }) : super(key: key);
  final bool isCenter;
  final IconData icon;
  final isSelected;
  final GestureTapCallback? press;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: press,
      child: Container(
        height: 60.0,
        width: 60.0,
        decoration: BoxDecoration(
            color: isCenter ? Color(0xFFFF7643) : Colors.white,
            shape: BoxShape.circle),
        child: Icon(
          icon,
          color: isCenter
              ? Colors.white
              : isSelected
                  ? Color(0xFFFF7643)
                  : Colors.grey,
        ),
      ),
    );
  }
}
