import 'package:flutter/material.dart';
import 'package:storage_sqlite_training/classes/HouseCardData.dart';
import 'HouseCard.dart';

class GridViewCardsBuilder extends StatefulWidget {
  GridViewCardsBuilder({super.key, count, required this.cardData});

  late List<HouseCardData> cardData;

  @override
  State<StatefulWidget> createState() => GridViewCardsBuilderState();
}

class GridViewCardsBuilderState extends State<GridViewCardsBuilder> {
  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.all(8.0),
      shrinkWrap: true,
      physics: const BouncingScrollPhysics(),
      itemCount: widget.cardData.length,
      itemBuilder: ((context, index) {
        return HouseCard(cardData: widget.cardData[index]);
      }),
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    );
  }
}
