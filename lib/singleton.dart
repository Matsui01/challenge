import 'package:flutter/material.dart';

class Singleton {
  Singleton._internal();

  static final Singleton _singleton = Singleton._internal();

  factory Singleton() {
    return _singleton;
  }
  
  final GlobalKey<NavigatorState> navigatorKey = new GlobalKey<NavigatorState>();
}
