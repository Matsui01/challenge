import 'package:flutter/material.dart';
import 'package:matsui/models/charts_model.dart';
import 'package:matsui/retrofit/rest_client.dart';
import 'package:mobx/mobx.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:logger/logger.dart';
import 'package:dio/dio.dart';

part '../../../../generated/profile_controller.g.dart';

class ProfileController = _ProfileController with _$ProfileController;

abstract class _ProfileController with Store {
  late List<SplineSeries<ChartsModel, String>> chartModelList = [];

  void teste() {
    final logger = Logger();
    final dio = Dio(); // Provide a dio instance
    dio.options.headers["Demo-Header"] = "demo header"; // config your dio headers globally
    final client = RestClient(dio);

    client.getJokes().then((it) => logger.i(it));
  }

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
