import 'package:flutter/material.dart';
import 'GridPage.dart';

class Login extends StatelessWidget {
  Login({super.key});

  final loginController = TextEditingController();
  final passwordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TextFormField(
            controller: loginController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите текст';
              }
              return null;
            },
            decoration: const InputDecoration(hintText: 'Username')),
        TextFormField(
            controller: passwordController,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return 'Введите текст';
              }
              return null;
            },
            obscureText: true,
            decoration: const InputDecoration(hintText: 'Password')),
        SizedBox(
          height: 40,
          width: 100,
          child: ElevatedButton(
            onPressed: () {
              if (loginController.text != "" && passwordController.text != "") {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: ((context) => const GridPage())));
              }
            },
            child: const Text('Log in'),
          ),
        )
      ],
    );
  }
}
