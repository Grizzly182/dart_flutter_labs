import 'package:flutter/material.dart';
import 'package:template_login/pages/welcome.dart';
import 'dart:ui';

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
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.indigo,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});

  // This widget is the home page of your application. It is stateful, meaning
  // that it has a State object (defined below) that contains fields that affect
  // how it looks.

  // This class is the configuration for the state. It holds the values (in this
  // case the title) provided by the parent (in this case the App widget) and
  // used by the build method of the State. Fields in a Widget subclass are
  // always marked "final".

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  final myController = TextEditingController();
  final myPasswordController = TextEditingController();
  final String email = 'norm@mail.ru';
  final String password = 'norm';
  bool showPassword = true;

  void _toggleObscure() {
    setState(() {
      showPassword = !showPassword;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: ImageFiltered(
            imageFilter: ImageFilter.blur(sigmaX: 9, sigmaY: 9),
            child: Image.network(
              'https://i.imgur.com/YS9LtIB.jpeg',
              fit: BoxFit.cover,
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                    width: MediaQuery.of(context).size.width * 0.50,
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: Image.network(
                      'https://i.imgur.com/FV9TdMC.jpeg',
                      fit: BoxFit.cover,
                    )),
                const FittedBox(
                  child: Text(
                    'Welcome back,',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 34),
                  ),
                ),
                const SizedBox(height: 15),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: TextFormField(
                      controller: myController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Введите значение';
                        }
                        if (value != email) {
                          return 'неверный емейл';
                        }
                        return null;
                      },
                      decoration: const InputDecoration(
                          fillColor: Colors.black,
                          focusColor: Colors.black,
                          hoverColor: Colors.black,
                          label: Text('Email Address'),
                          hintText: 'Enter your email here...',
                          border: OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          floatingLabelBehavior: FloatingLabelBehavior.always),
                    )),
                const SizedBox(height: 10),
                SizedBox(
                    width: MediaQuery.of(context).size.width,
                    height: MediaQuery.of(context).size.height * 0.10,
                    child: TextFormField(
                      obscureText: showPassword,
                      controller: myPasswordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Введите значение';
                        }
                        if (value != password) {
                          return 'Неверный логин или пароsль';
                        }
                        return null;
                      },
                      decoration: InputDecoration(
                          suffixIcon: IconButton(
                              onPressed: _toggleObscure,
                              icon: Icon(showPassword
                                  ? Icons.visibility_off
                                  : Icons.visibility)),
                          fillColor: Colors.black,
                          focusColor: Colors.black,
                          hoverColor: Colors.black,
                          label: const Text('Password'),
                          hintText: 'Enter your password here...',
                          border: const OutlineInputBorder(
                              borderRadius:
                                  BorderRadius.all(Radius.circular(12))),
                          floatingLabelBehavior: FloatingLabelBehavior.always),
                    )),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Expanded(child: Text('Forgot password?')),
                    SizedBox(
                      width: 100,
                      height: 45,
                      child: ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          const WelcomePage())));
                            } else if (myController.text != '' &&
                                myPasswordController.text != '') {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(
                                    content:
                                        Text('Неверные логин или пароль.')),
                              );
                            }
                          },
                          style: ButtonStyle(
                              shape: MaterialStateProperty.all(
                                  RoundedRectangleBorder(
                                      borderRadius:
                                          BorderRadius.circular(35)))),
                          child: const Text(
                            'Login',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 18),
                          )),
                    )
                  ],
                ),
                const SizedBox(height: 15),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Expanded(
                      child: Text('Don\'t have an account?',
                          style: TextStyle(
                            color: Colors.grey,
                          )),
                    ),
                    Text('Create account',
                        style: TextStyle(
                            color: Colors.green,
                            fontWeight: FontWeight.bold,
                            fontSize: 17)),
                  ],
                )
              ],
            ),
          ),
        ),
      ]),
    );
  }
}
