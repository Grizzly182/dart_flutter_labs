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
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                color: const Color.fromARGB(255, 255, 0, 0),
                width: 50,
                height: 100,
              ),
              Container(
                color: const Color.fromARGB(255, 255, 0, 0),
                width: 50,
                height: 50,
              ),
              Container(
                color: const Color.fromARGB(255, 255, 0, 0),
                width: 50,
                height: 25,
              )
            ]),
      ),
    );
  }
}
