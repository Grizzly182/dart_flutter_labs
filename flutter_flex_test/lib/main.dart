import 'package:flutter/material.dart';
import 'Widgets/menu.dart';
import 'Widgets/myGrid.dart';
import 'Widgets/loginWidget.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).size.width < 500
            ? Padding(
                padding: const EdgeInsets.all(8.0),
                child: Login(),
              )
            : Stack(
                children: [
                  Expanded(
                    child: Container(
                      decoration: BoxDecoration(color: Colors.blue[200]),
                    ),
                  ),
                  Center(
                    child: Container(
                      width: 500,
                      height: 500,
                      decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10)),
                      child: Padding(
                        padding: const EdgeInsets.all(16.0),
                        child: Login(),
                      ),
                    ),
                  )
                ],
              ));
  }
}
