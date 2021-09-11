import 'package:flutter/material.dart';
import 'package:matsui/models/charts_model.dart';
import 'package:mobx/mobx.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

part 'profile_controller.g.dart';

class ProfileController = _ProfileController with _$ProfileController;

abstract class _ProfileController with Store {
  late List<SplineSeries<ChartsModel, String>> chartModelList = [];

  void init() {
    chartModelList = [
      SplineSeries<ChartsModel, String>(
        dataSource: <ChartsModel>[
          ChartsModel('Jan', 35),
          ChartsModel('Feb', 28),
          ChartsModel('Mar', 34),
          ChartsModel('Apr', 32),
          ChartsModel('May', 38),
          ChartsModel('Jun', 32),
          ChartsModel('Jul', 24),
        ],
        color: Colors.pinkAccent,
        xValueMapper: (ChartsModel value, _) => value.month,
        yValueMapper: (ChartsModel value, _) => value.value,
      ),
      SplineSeries<ChartsModel, String>(
        dataSource: <ChartsModel>[
          ChartsModel('Jan', 10),
          ChartsModel('Feb', 18),
          ChartsModel('Mar', 24),
          ChartsModel('Apr', 22),
        ],
        color: Colors.purpleAccent,
        xValueMapper: (ChartsModel value, _) => value.month,
        yValueMapper: (ChartsModel value, _) => value.value,
      ),
      SplineSeries<ChartsModel, String>(
        dataSource: <ChartsModel>[
          ChartsModel('Jan', 0),
          ChartsModel('Feb', 25),
          ChartsModel('Mar', 8),
        ],
        color: Colors.cyanAccent,
        xValueMapper: (ChartsModel value, _) => value.month,
        yValueMapper: (ChartsModel value, _) => value.value,
      ),
    ];
  }
}
