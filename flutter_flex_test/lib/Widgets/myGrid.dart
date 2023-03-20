import 'package:flutter/material.dart';

class MyGrid extends StatelessWidget {
  MyGrid({super.key});
  final List<String> elements = [
    "Zero",
    "One",
    "Two",
    "Three",
    "Four",
    "Five",
    "Six",
    "Seven",
    "Eight",
    "Nine",
    "Ten",
    "Million Billion Trillion",
    "Very very very very very very very very very very very very very very long text."
  ];
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: elements.length,
        gridDelegate: const SliverGridDelegateWithMaxCrossAxisExtent(
            maxCrossAxisExtent: 130, crossAxisSpacing: 20, mainAxisSpacing: 20),
        itemBuilder: (context, index) => Card(
            child: Center(
                child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(elements[index])))));
  }
}
