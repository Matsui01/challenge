import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matsui/app_theme.dart';
import 'package:matsui/widgets/dropdown/dropdown_controller.dart';
import 'package:matsui/widgets/dropdown/dropdown_widget.dart';

class RoudedDropdown extends StatelessWidget {
  final DropdownController dropdownController;
  final String title;
  final double? fillWidth;

  const RoudedDropdown({
    required this.dropdownController,
    required this.title,
    this.fillWidth,
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget mainWidget() {
      return Container(
        width: fillWidth ?? fillWidth,
        margin: EdgeInsets.only(right: spacingSize, left: spacingSize),
        child: TextButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).backgroundColor),
            side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
            elevation: MaterialStateProperty.all<double>(2),
          ),
          onPressed: () {},
          child: Container(
            padding: EdgeInsets.only(top: spacingSize, bottom: spacingSize, left: spacingSize, right: spacingSize),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(title, style: Theme.of(context).textTheme.button),
                Icon(Icons.expand_more, size: smallIconSize, color: Theme.of(context).iconTheme.color),
              ],
            ),
          ),
        ),
      );
    }

    Widget renderBox() {
      return TextButton(
        // style: ButtonStyle(
        //   backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).backgroundColor),
        //   side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
        //   elevation: MaterialStateProperty.all<double>(2),
        // ),
        onPressed: () {},
        child: Container(
          color: Colors.red,
          padding: EdgeInsets.only(top: spacingSize, bottom: spacingSize, left: spacingSize, right: spacingSize),
          child: Text(title, style: Theme.of(context).textTheme.button),
        ),
      );
    }

    return Container(
      child: DropdownWidget(
        dropdownController: dropdownController,
        renderBox: renderBox(),
        mainWidget: mainWidget(),
      ),
    );
  }
}
