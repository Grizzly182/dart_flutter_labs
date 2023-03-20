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
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: const [
              Icon(Icons.star, color: Colors.black, size: 40.0),
              Icon(Icons.star, color: Colors.grey, size: 40.0),
              Icon(Icons.star, color: Colors.pink, size: 40.0),
              Icon(Icons.star, color: Colors.lime, size: 40.0),
              Icon(Icons.star, color: Colors.red, size: 40.0)
            ]),
      ),
    );
  }
}
