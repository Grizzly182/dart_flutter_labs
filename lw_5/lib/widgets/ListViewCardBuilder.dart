import 'package:flutter/material.dart';
import 'package:lw_5/classes/HouseCardData.dart';
import 'HouseCard.dart';

class ListViewCardsBuilder extends StatefulWidget {
  ListViewCardsBuilder({super.key, count, required this.cardData});

  late List<HouseCardData> cardData;

  @override
  State<StatefulWidget> createState() => ListViewCardBuilderState();
}

class ListViewCardBuilderState extends State<ListViewCardsBuilder> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        physics: const BouncingScrollPhysics(),
        itemCount: widget.cardData.length,
        itemBuilder: ((context, index) {
          return HouseCard(cardData: widget.cardData[index]);
        }));
  }
}
