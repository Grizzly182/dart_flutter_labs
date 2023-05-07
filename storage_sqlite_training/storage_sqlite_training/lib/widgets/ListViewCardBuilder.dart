import 'package:flutter/material.dart';
import 'package:storage_sqlite_training/classes/HouseCardData.dart';
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
        shrinkWrap: true,
        physics: const BouncingScrollPhysics(),
        itemCount: widget.cardData.length,
        itemBuilder: ((context, index) {
          return HouseCard(cardData: widget.cardData[index]);
        }));
  }
}
