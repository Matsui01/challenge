import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:matsui/app_theme.dart';
import 'package:matsui/models/charts_model.dart';
import 'package:matsui/widgets/dropdown/dropdown_controller.dart';
import 'package:matsui/widgets/dropdown/dropdown_model.dart';
import 'package:matsui/widgets/dropdown/dropdown_widget.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

import 'controllers/home.dart';

class StatisticsPage extends StatefulWidget {
  @override
  _StatisticsPageState createState() => _StatisticsPageState();
}

class _StatisticsPageState extends State<StatisticsPage> {
  DropdownController dropdownController = DropdownController(itens: []);
  DropdownController dropdownController1 = DropdownController(itens: []);
  int counter = 0;
  Home home = Home();
  @override
  void initState() {
    super.initState();
    dropdownController.initDropDown([
      DropdownModel(id: 0, value: "Valor 1", model: 1),
      DropdownModel(id: 2, value: "Valor 2", model: 2),
    ]);
    dropdownController1.initDropDown([
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
            flex: 70,
            child: Container(
              color: AppTheme.primaryColorDark[50],
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        margin: EdgeInsets.only(left: spacingSize),
                        child: Text(
                          "Experience",
                          style: Theme.of(context).textTheme.headline6!.copyWith(fontWeight: FontWeight.bold),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.only(top: spacingSize, left: spacingSize, bottom: spacingSize),
                        child: DropdownWidget(
                          dropdownController: dropdownController,
                          title: "Last week",
                          ancestorContext: context,
                          // fillWidth: false,
                          textStyle: Theme.of(context).textTheme.bodyText2,
                          buttonStyle: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(AppTheme.primaryColorDark[50]!),
                          ),
                        ),
                      ),
                    ],
                  ),
                  Container(
                    margin: EdgeInsets.only(top: spacingSize, left: spacingSize, right: spacingSize),
                    child: DropdownWidget(
                      dropdownController: dropdownController,
                      title: "All",
                      ancestorContext: context,
                      buttonStyle: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(Theme.of(context).backgroundColor),
                        side: MaterialStateProperty.all<BorderSide>(BorderSide.none),
                        elevation: MaterialStateProperty.all<double>(2),
                      ),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(right: spacingSize, left: spacingSize),
                    child: SfCartesianChart(
                      primaryYAxis: CategoryAxis(
                        interval: 10,
                        plotOffset: 0,
                        majorTickLines: MajorTickLines(color: Colors.red, width: 0, size: 0),
                        axisLine: AxisLine(width: 0),
                      ),
                      primaryXAxis: CategoryAxis(
                        majorGridLines: MajorGridLines(color: Colors.red, width: 0),
                        majorTickLines: MajorTickLines(color: Colors.red, width: 0, size: 0),
                        plotOffset: 0,
                        axisLine: AxisLine(width: 0),
                      ),
                      plotAreaBorderWidth: 0,
                      tooltipBehavior: TooltipBehavior(enable: false),
                      borderWidth: 0,
                      series: home.profileController.chartModelList,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            flex: 30,
            child: Container(),
          ),
        ],
      ),
    );
  }
}
