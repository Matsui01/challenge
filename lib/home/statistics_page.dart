import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matsui/app_theme.dart';
import 'package:matsui/widgets/dropdown/dropdown_controller.dart';
import 'package:matsui/widgets/dropdown/dropdown_model.dart';
import 'package:matsui/widgets/dropdown/dropdown_widget.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  DropdownController dropdownController = DropdownController(itens: []);
  int counter = 0;
  @override
  void initState() {
    super.initState();
    dropdownController.initDropDown([
      DropdownModel(id: 0, value: "Valor 1", model: 1),
      DropdownModel(id: 2, value: "Valor 2", model: 2),
    ]);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 65,
            child: Container(
              color: AppTheme.primaryColorDark[50],
              child: Column(
                children: [
                  Container(
                    margin: EdgeInsets.all(spacingSize),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          "Experience",
                          style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                        ),
                        Row(
                          children: [
                            Text("Last week", style: Theme.of(context).textTheme.bodyText2),
                            SizedBox(width: nanoSpacingSize),
                            Icon(Icons.expand_more, size: smallIconSize),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(top: spacingSize),
                    child: DropdownWidget(
                      dropdownController: dropdownController,
                      title: "All",
                      ancestorContext: context,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 35,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
