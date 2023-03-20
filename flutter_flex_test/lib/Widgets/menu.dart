import 'package:flutter/material.dart';
import '/main.dart';

class Menu extends StatelessWidget {
  const Menu({Key? key}) : super(key: key);

  @override
  Widget build(context) => ListView(children: [
        TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.looks_one),
              title: Text("First Link"),
            )),
        TextButton(
            onPressed: () {},
            child: const ListTile(
              leading: Icon(Icons.looks_two),
              title: Text("Second Link"),
            )),
        ElevatedButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: ((context) => const MyHomePage())));
            },
            child: const ListTile(
              leading: Icon(Icons.exit_to_app),
              title: Text("Log out"),
            ))
      ]);
}
