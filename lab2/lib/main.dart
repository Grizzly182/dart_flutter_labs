import 'package:flutter/material.dart';

void main() {
  runApp(createWidgetForTesting(const HomePage()));
}

Widget createWidgetForTesting(Widget child) {
  return MaterialApp(home: child);
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            color: Colors.brown,
            width: 150,
            height: 150,
          ),
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
            color: Colors.lightGreen,
            width: 150,
            height: 150,
          ),
          Container(
            color: Colors.red,
            width: 150,
            height: 150,
          ),
          Container(
            color: Colors.cyan,
            width: 150,
            height: 150,
          ),
            ],
          ),
          Container(
            color: Colors.black,
            width: 150,
            height: 150,
          ),
        ],
      )),
    );
  }
}
