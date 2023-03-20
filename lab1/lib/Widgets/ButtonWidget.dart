import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {required this.color,
      required this.icon,
      required this.firstString,
      required this.secondString});
  final Color color;
  final IconData icon;
  final String firstString;
  final String secondString;

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: const EdgeInsets.symmetric(vertical: 10),
        padding: const EdgeInsets.all(8.0),
        width: 330,
        height: 100,
        decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            color: color,
            boxShadow: const [
              BoxShadow(
                  color: Colors.grey,
                  spreadRadius: 3,
                  blurRadius: 5,
                  offset: Offset(4, 3))
            ]),
        child: Expanded(
            child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
              Icon(
                icon,
                color: Colors.white,
                size: 70,
              ),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text(
                      firstString,
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
                          color: Colors.white),
                    ),
                    const Text(''),
                    Expanded(
                      child: Text(
                        secondString,
                        style: const TextStyle(
                            fontSize: 14,
                            color: Color.fromARGB(192, 255, 255, 255)),
                      ),
                    )
                  ],
                ),
              )
            ])));
  }
}