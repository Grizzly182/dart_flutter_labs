import 'package:flutter/material.dart';
import 'package:homework_1/classes/HouseCardData.dart';

class HouseCard extends StatelessWidget {
  HouseCard({super.key, required this.cardData});

  HouseCardData cardData;

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
        ],
      ),
    );
  }
}
