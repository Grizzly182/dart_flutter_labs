import 'package:flutter/material.dart';
import 'package:storage_sqlite_training/widgets/GridViewCardBuilder.dart';

import '../classes/DBMock.dart';
import '../classes/HouseCardData.dart';
import '../widgets/ListViewCardBuilder.dart';

class AdminPage extends StatefulWidget {
  const AdminPage({super.key});

  @override
  State<StatefulWidget> createState() => AdminPageState();
}

class AdminPageState extends State<AdminPage> with TickerProviderStateMixin {
  late TabController _tabController;

  late TextEditingController gridSearchController;
  late TextEditingController listSearchController;

  List<Widget> listViewItems = List<Widget>.generate(7, ((index) {
    return ListTile(
      leading: Text("It is $index element!!!"),
    );
  }));

  List<Widget> gridViewItems = List<Widget>.generate(
      6,
      (index) => Card(
            child: Text("It is $index element!"),
          ));

  final List<HouseCardData> cardData = DBMock.getAllData();

  late ListViewCardsBuilder _listBuilder;
  late GridViewCardsBuilder _gridBuilder;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
    gridSearchController = TextEditingController();
    listSearchController = TextEditingController();
    _listBuilder = ListViewCardsBuilder(cardData: cardData);
    _gridBuilder = GridViewCardsBuilder(cardData: cardData);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          bottom: TabBar(controller: _tabController, tabs: const [
            Tab(
              icon: Icon(Icons.grid_4x4),
            ),
            Tab(
              icon: Icon(Icons.list_alt_rounded),
            )
          ]),
        ),
        body: TabBarView(controller: _tabController, children: [
          Column(
            children: [
              TextField(
                controller: gridSearchController,
                decoration: InputDecoration(
                    label: const Text("Поиск"),
                    suffix: ElevatedButton.icon(
                        onPressed: () {
                          String query = gridSearchController.text;

                          List<HouseCardData> dummySearchList =
                              List<HouseCardData>.from(cardData);
                          if (query.isNotEmpty) {
                            List<HouseCardData> dummyListData =
                                List<HouseCardData>.empty(growable: true);
                            dummySearchList.forEach((element) {
                              if (element.address
                                      .toLowerCase()
                                      .contains(query.toLowerCase()) ||
                                  element.name.toLowerCase().contains(query)) {
                                dummyListData.add(element);
                              }
                            });
                            setState(() {
                              _gridBuilder =
                                  GridViewCardsBuilder(cardData: dummyListData);
                            });
                            return;
                          } else {
                            setState(() {
                              _gridBuilder =
                                  GridViewCardsBuilder(cardData: cardData);
                            });
                          }
                        },
                        icon: const Icon(Icons.search_outlined),
                        label: const Text(""))),
              ),
              Expanded(child: _gridBuilder),
            ],
          ),
          Column(
            children: [
              TextField(
                controller: listSearchController,
                decoration: InputDecoration(
                    label: const Text("Поиск"),
                    suffix: ElevatedButton.icon(
                        onPressed: () {
                          String query = listSearchController.text;

                          List<HouseCardData> dummySearchList =
                              List<HouseCardData>.from(cardData);
                          if (query.isNotEmpty) {
                            List<HouseCardData> dummyListData =
                                List<HouseCardData>.empty(growable: true);
                            dummySearchList.forEach((element) {
                              if (element.address
                                      .toLowerCase()
                                      .contains(query.toLowerCase()) ||
                                  element.name.toLowerCase().contains(query)) {
                                dummyListData.add(element);
                              }
                            });
                            setState(() {
                              _listBuilder =
                                  ListViewCardsBuilder(cardData: dummyListData);
                            });
                            return;
                          } else {
                            setState(() {
                              _listBuilder =
                                  ListViewCardsBuilder(cardData: cardData);
                            });
                          }
                        },
                        icon: const Icon(Icons.search_outlined),
                        label: const Text(""))),
              ),
              Expanded(child: _listBuilder),
            ],
          )
        ]));
  }
}
