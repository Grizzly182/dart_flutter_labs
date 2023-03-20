import 'package:flutter/material.dart';

class Button extends StatelessWidget {
  Button(
      {super.key, this.upperText, this.bottomText = '', this.backgoundColor});
  String? upperText;
  String bottomText;
  Color? backgoundColor;
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1.0,
      height: 1.0,
      child: FittedBox(
        child: FloatingActionButton(
            onPressed: () {},
            backgroundColor: backgoundColor,
            child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Text(
                    '$upperText',
                    textScaleFactor: 0.8,
                  ),
                  Text(
                    '$bottomText',
                    textScaleFactor: 0.8,
                  )
                ])),
      ),
    );
  }
}
