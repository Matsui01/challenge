import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MyAvatar extends StatelessWidget {
  // final Image image;
  // final Color backgroundColor;
  // const MyAvatar({
    // required this.image,
    // required this.backgroundColor,
  // });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      foregroundImage: AssetImage("assets/avatar.png"),
    );
  }
}
