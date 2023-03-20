import 'package:flutter/material.dart';
import 'package:adaptive_design/classes/HouseCardData.dart';

class HouseCard extends StatelessWidget {
  HouseCard({super.key, required text});

  String text = '';
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(32)),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(4),
              child: Image.network(
                'https://i.imgur.com/FV9TdMC.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          const SizedBox(
            height: 13,
          ),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 16.0, vertical: 4.0),
                  child: Row(
                    children: [
                      Text(
                        "$text",
                        style: const TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
