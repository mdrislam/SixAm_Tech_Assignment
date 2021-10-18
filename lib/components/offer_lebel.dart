import 'package:flutter/material.dart';
class OfferLebel extends StatelessWidget {
  const OfferLebel({
    Key? key,
    required this.txt,
  }) : super(key: key);
  final String? txt;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          borderRadius: BorderRadius.only(
            topRight: Radius.circular(10),
            bottomRight: Radius.circular(10),
          ),
          color: Colors.green),
      child: Center(
        child: Padding(
          padding: EdgeInsets.all(8.0),
          child: Text(
            txt!,
            style: TextStyle(
                fontWeight: FontWeight.bold, fontSize: 12, color: Colors.white),
            maxLines: 1,
          ),
        ),
      ),
    );
  }
}