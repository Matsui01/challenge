import 'package:flutter/material.dart';

import '../app_theme.dart';

class BorderButton extends StatelessWidget {
  final String text;
  final Function foo;
  const BorderButton({
    required this.text,
    required this.foo,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(right: spacingSize, left: spacingSize, top: spacingSize),
      child: TextButton(
        onPressed: () {},
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).backgroundColor),
          side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
        ),
        child: Container(
          padding: EdgeInsets.only(top: smallSpacingSize, bottom: smallSpacingSize),
          child: Text(
            "Revive",
            style: Theme.of(context).textTheme.button!.copyWith(fontWeight: FontWeight.w400),
          ),
        ),
      ),
    );
  }
}
