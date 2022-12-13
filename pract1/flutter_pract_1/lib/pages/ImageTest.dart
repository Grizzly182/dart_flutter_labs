import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Task 1"),
        ),
        body: Center(
            child: Column(
          children: [
            Image.network('https://i.imgur.com/4PponWC.jpeg', width: 500, height: 500),
            Image.asset('assets/123.png', width: 500, height: 500)
          ],
        )));
  }
}
