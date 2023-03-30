import 'package:flutter/material.dart';
import 'package:lw_5/widgets/HouseCard.dart';
import 'widgets/ListViewCardBuilder.dart';
import 'classes/HouseCardData.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),
      home: const MyHomePage(title: 'ListView Test'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
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

  late ListViewCardsBuilder _builder;

  TextEditingController searchController = TextEditingController();
  @override
  void initState() {
    setState(() {
      _builder = ListViewCardsBuilder(cardData: cardData);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: TextFormField(
            validator: (value) {
              if (value == null || value.isEmpty) {
                return "";
              }
              return null;
            },
            style: const TextStyle(color: Colors.white),
            controller: searchController,
            decoration: InputDecoration(
                hintStyle: const TextStyle(color: Colors.white),
                labelStyle: const TextStyle(color: Colors.white70),
                labelText: "Address, city, state...",
                hintText: "Type to search",
                prefixIcon: const Icon(Icons.search),
                suffix: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white,
                      backgroundColor: Colors.blue[800]),
                  onPressed: () {
                    String query = searchController.text;

                    List<HouseCardData> dummySearchList =
                        List<HouseCardData>.from(cardData);
                    if (query.isNotEmpty) {
                      List<HouseCardData> dummyListData =
                          List<HouseCardData>.empty(growable: true);
                      dummySearchList.forEach((element) {
                        if (element.address
                                .toLowerCase()
                                .contains(query.toLowerCase()) ||
                            element.name.contains(query)) {
                          dummyListData.add(element);
                        }
                      });
                      setState(() {
                        _builder =
                            ListViewCardsBuilder(cardData: dummyListData);
                      });
                      return;
                    } else {
                      _builder.cardData.clear();
                      _builder.cardData.addAll(cardData);
                    }
                  },
                  child: const Text("Поиск"),
                ))),
      ),
      body: Center(child: _builder),
    );
  }
}
