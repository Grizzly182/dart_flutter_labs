import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Good Morning!!",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontFamily: 'Raleway'),
            textAlign: TextAlign.left,
          ),
          Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              padding: const EdgeInsets.all(8.0),
              width: 300,
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 22, 194, 194),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(4, 3))
                  ]),
              child: Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    const Icon(
                      Icons.calendar_month_sharp,
                      color: Colors.white,
                      size: 70,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Expanded(
                            child: Text(
                              "Записаться",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Давай быстрее запишемся на стрижку.",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(192, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    )
                  ]))),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              padding: const EdgeInsets.all(8.0),
              width: 300,
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 85, 75, 213),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(4, 3))
                  ]),
              child: Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    const Icon(
                      Icons.phone_rounded,
                      color: Colors.white,
                      size: 70,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Expanded(
                            child: Text(
                              "Позвонить в салон",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Ну-ка давай позвоним, уточним, когда там запись.",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(192, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    )
                  ]))),
          Container(
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
              padding: const EdgeInsets.all(8.0),
              width: 300,
              height: 100,
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(10)),
                  color: Color.fromARGB(255, 219, 161, 60),
                  boxShadow: [
                    BoxShadow(
                        color: Colors.grey,
                        spreadRadius: 3,
                        blurRadius: 5,
                        offset: Offset(4, 3))
                  ]),
              child: Expanded(
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                    const Icon(
                      Icons.mail_outline_rounded,
                      color: Colors.white,
                      size: 70,
                    ),
                    Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: const [
                          Expanded(
                            child: Text(
                              "Написать нам на почту",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 18,
                                  color: Colors.white),
                            ),
                          ),
                          Expanded(
                            child: Text(
                              "Попробуй написать нам, может и запишем.",
                              style: TextStyle(
                                  fontSize: 14,
                                  color: Color.fromARGB(192, 255, 255, 255)),
                            ),
                          )
                        ],
                      ),
                    )
                  ]))),
        ],
      )),
    );
  }
}
