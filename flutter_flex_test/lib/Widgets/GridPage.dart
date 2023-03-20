import 'package:flutter/material.dart';
import 'menu.dart';
import 'myGrid.dart';

class GridPage extends StatelessWidget {
  const GridPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: MediaQuery.of(context).size.width < 500
            ? MyGrid()
            : Row(
                children: [
                  const SizedBox(
                    width: 200,
                    child: Menu(),
                  ),
                  SizedBox(
                    width: MediaQuery.of(context).size.width - 200.0,
                    child: MyGrid(),
                  )
                ],
              ));
  }
}
