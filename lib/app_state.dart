import 'dart:async';

import 'package:flutter/material.dart';

class Appstate extends ChangeNotifier {
  int temp = 20;

  void updateTemp(int temp) {
    this.temp = temp;
    notifyListeners();
  }

  int start = 0;

  void updateStart(int start) {
    this.start = start;
    notifyListeners();
  }

  void getTimer() {
    Timer.periodic(Duration(seconds: 1), (timer) {
      updateStart(timer.tick);
    });
  }

  String name = 'Code of Flutter';
  void updateName(String name) {
    this.name = name;
    notifyListeners();
  }

  Future<void> getName(String name) async {
    Future.delayed(Duration(seconds: 5), () {
      updateName(name);
    });
  }

  bool change = false;

  void updateWidget() {
    change = !change;
    notifyListeners();
  }
}
