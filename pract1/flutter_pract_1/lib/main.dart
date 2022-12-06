import 'package:flutter/material.dart';
import 'package:flutter_pract_1/pages/task3.dart';

void main() {
  runApp(createWidgetForTesting(const HomePage()));
}

Widget createWidgetForTesting(Widget child) {
  return MaterialApp(home: child);
}
