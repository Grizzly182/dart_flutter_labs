import 'package:flutter/material.dart';
import 'package:adaptive_design/classes/HouseCardData.dart';
import 'HouseCard.dart';

class ListViewCardsBuilder extends StatelessWidget {
  ListViewCardsBuilder({super.key});

  int count = 2;
  int length = 12;
  bool imageVisibility = true;

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
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
    HouseCardData(
        name: 'ФК Монако',
        address: 'Монако, ул. им. А. Головина',
        price: 16000,
        lastUpdate: 56),
  ];

  @override
  Widget build(BuildContext context) {
    Orientation orientation = MediaQuery.of(context).orientation;
    Size screenSize = MediaQuery.of(context).size;
    imageVisibility = true;
    if (orientation == Orientation.landscape) {
      count = 4;
      length = 12;
    } else {
      count = 2;
      length = 6;
    }
    if (screenSize.width < 400) {
      imageVisibility = false;
    }
    return GridView.count(
      crossAxisCount: count,
      mainAxisSpacing: 5,
      crossAxisSpacing: 5,
      padding: const EdgeInsets.all(8.0),
      children: List.generate(length, (index) {
        return Card(
          child: Column(children: [
            Visibility(
              visible: imageVisibility,
              child: Image.network(
                'https://i.imgur.com/FV9TdMC.jpeg',
                fit: BoxFit.scaleDown,
              ),
            ),
            Text(
              "$index LETS GOOOOOOOOOOOOOOOOOOOOOOOOOO",
              overflow: TextOverflow.ellipsis,
              style: TextStyle(fontSize: 24),
            )
          ]),
        );
      }),
    );
  }
}
