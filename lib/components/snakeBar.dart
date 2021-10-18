
import 'package:flutter/material.dart';

class CustomSnakeBar {

  static void showSnakeBar(BuildContext context, String txtMessage) async {
    final snackBar = SnackBar(
      content: Text(txtMessage),
      action: SnackBarAction(
        label: 'Undo',
        onPressed: () {},
      ),
    );
    ScaffoldMessenger.of(context).showSnackBar(snackBar);
  }
}
