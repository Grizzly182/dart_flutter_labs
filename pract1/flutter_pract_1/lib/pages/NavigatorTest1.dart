import 'package:flutter/material.dart';
import 'package:flutter_pract_1/pages/NavigatorTest2.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Task 1"),
      ),
      body: Center(
        child: FloatingActionButton(onPressed: () {
          Navigator.push(context, MaterialPageRoute(builder: ((context) => const SecondPage())));
        },
        child: const Icon(Icons.arrow_forward_ios_rounded),
        )
      ),
    );
  }
}
