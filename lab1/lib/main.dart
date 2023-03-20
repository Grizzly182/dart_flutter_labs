import 'package:flutter/material.dart';
import 'package:lw1/Widgets/ButtonWidget.dart';

void main() {
  runApp(createWidgetForTesting(const HomePage()));
}

Widget createWidgetForTesting(Widget child) {
  return MaterialApp(home: child);
}

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
            "Good Morning",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 40,
                fontFamily: 'Raleway'),
            textAlign: TextAlign.right,
          ),
          Container(
              width: 300,
              height: 50,
              margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 10)),
          const ButtonWidget(
              color: Color.fromARGB(255, 22, 194, 194),
              icon: Icons.calendar_month_sharp,
              firstString: "Book Appointment",
              secondString:
                  "Schedule an appointment with our licensed professional."),
          const ButtonWidget(
              color: Color.fromARGB(255, 85, 75, 213),
              icon: Icons.phone_rounded,
              firstString: "Call the Office",
              secondString:
                  "Give us a call in order to schedule your appointment."),
          const ButtonWidget(
              color: Color.fromARGB(255, 219, 161, 60),
              icon: Icons.mail_outline_rounded,
              firstString: "Email Us",
              secondString:
                  "Send us an email and we will get back to you within 2 days"),
        ],
      )),
    );
  }
}
