import 'package:flutter/material.dart';
import 'package:lw_5/classes/HouseCardData.dart';
import 'HouseCard.dart';

class ListViewCardsBuilder extends StatelessWidget {
  ListViewCardsBuilder({super.key, count});

  final int count = 6;

  final List<HouseCardData> cardData = <HouseCardData>[
    HouseCardData(
        name: 'Юрино', address: 'Юрино, ул. Быковка', ratings: [5, 5, 1, 1, 4]),
    HouseCardData(
      name: 'Новый Торъял',
      address: 'Сернур, ул. Краснопёрых Армейцев',
      ratings: [5, 4, 4, 5, 3, 5, 5, 4, 2, 2, 5, 5, 1, 4, 4, 4, 1, 5, 5, 5, 5],
    ),
    HouseCardData(
        name: 'Патриарше',
        address: 'Йошкар-Ола, ул. Армейцев',
        ratings: [5, 5, 5, 5, 5, 5, 5, 5, 4, 4, 4, 3, 5, 5, 2]),
    HouseCardData(
        name: 'Отель Ривьера',
        address: 'Казань, ул. Валуева',
        ratings: [
          5,
          2,
          2,
          2,
          5,
          3,
          3,
          3,
          5,
          1,
          1,
          4,
          3,
          3,
          5,
          5,
          5,
          5,
          3,
          2,
          2
        ]),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        ratings: [
          1,
          1,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          5,
          4,
          4,
          3,
        ]),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: const EdgeInsets.all(8.0),
        physics: const BouncingScrollPhysics(),
        itemCount: cardData.length,
        itemBuilder: ((context, index) {
          return HouseCard(cardData: cardData[index]);
        }));
  }
}
