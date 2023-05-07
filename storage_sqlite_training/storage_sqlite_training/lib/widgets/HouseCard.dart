import 'package:flutter/material.dart';
import 'package:storage_sqlite_training/classes/HouseCardData.dart';

class HouseCard extends StatefulWidget {
  HouseCard({super.key, this.cardData});

  HouseCardData? cardData;

  @override
  State<StatefulWidget> createState() => HouseCardState();
}

class HouseCardState extends State<HouseCard> {
  late double rating = (List<int> data) {
    double sum = 0;
    data.forEach((element) {
      sum += element;
    });
    return (sum / data.length);
  }(widget.cardData!.ratings);

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(15))),
      child:
      Expanded(

      child:Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
            child: ClipRRect(
              borderRadius: const BorderRadius.only(
                  topLeft: Radius.circular(15), topRight: Radius.circular(15)),
              child: Image.network(
                'https://i.imgur.com/FV9TdMC.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12,vertical: 2),
            child: Row(
              children: [
                Text(
                  widget.cardData!.name,
                  overflow: TextOverflow.ellipsis,
                  textScaleFactor: 0.7,
                  style: Theme.of(context).textTheme.titleLarge,
                )
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                  Expanded(
                    child: Text(
                      widget.cardData!.address,
                      textScaleFactor: 0.7,
                      overflow: TextOverflow.ellipsis,
                    ),
                  ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 2.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Icon(
                  Icons.star,
                  color: Colors.orange,
                ),
                Text(
                  "${rating.toStringAsFixed(2)} рейтинг",
                  textScaleFactor: 0.7,
                  style: const TextStyle(fontSize: 16),
                )
              ],
            ),
          )
        ],
      ),
    ),
    );
  }
}
