import 'package:flutter/material.dart';
import 'package:homework_1/classes/HouseCardData.dart';
import 'HouseCard.dart';

class ListViewCardsBuilder extends StatelessWidget {
  ListViewCardsBuilder({super.key, count});

  final int count = 6;

  final List<HouseCardData> cardData = <HouseCardData>[
    HouseCardData(
        name: 'Юрино',
        address: 'Юрино, ул. Быковка',
        price: 4500,
        lastUpdate: 14),
    HouseCardData(
        name: 'Новый Торъял',
        address: 'Сернур, ул. Краснопёрых Армейцев',
        price: 3200,
        lastUpdate: 3),
    HouseCardData(
        name: 'Патриарше',
        address: 'Йошкар-Ола, ул.  Армейцев',
        price: 7400,
        lastUpdate: 5),
    HouseCardData(
        name: 'Отель Ривьера',
        address: 'Казань, ул. Валуева',
        price: 3200,
        lastUpdate: 3),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        padding: EdgeInsets.all(8.0),
        itemCount: cardData.length,
        itemBuilder: ((context, index) {
          return HouseCard(cardData: cardData[index]);
        }));
  }
}
