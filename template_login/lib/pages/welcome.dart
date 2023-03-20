import 'package:flutter/material.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Welcome Back"),
      ),
      body: Center(
        child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              const Text('Welcome!', style: TextStyle(fontSize: 44)),
              FloatingActionButton(
                onPressed: (() => Navigator.pop(context)),
                child: const Icon(Icons.arrow_back_ios_rounded),
              )
            ]),
      ),
    );
  }
}
