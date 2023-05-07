import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:storage_sqlite_training/pages/AdminPage.dart';
import 'package:storage_sqlite_training/pages/UserPage.dart';
import 'classes/SecureStorage.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox('admin');
  await Hive.openBox('users');
  await Hive.openBox('user');
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        '/userpage': (context) => const UserPage(),
        '/adminpage': (context) => const AdminPage()
      },
      title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key, required this.title});
  final String title;
  TextEditingController passwordController = TextEditingController();
  TextEditingController loginController = TextEditingController();
  Color backgroundColor = Colors.white;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  late int _selectedIndex;
  static const TextStyle _style =
      TextStyle(fontWeight: FontWeight.bold, fontSize: 30);
  static const List<Widget> formTexts = [
    Text(
      "Admin Login",
      style: _style,
    ),
    Text(
      "User Login",
      style: _style,
    )
  ];

  Future<void> _loadBackground() async {
    final color = await SecureStorage.readData("bgColor");
    setState(() {
      switch (color) {
        case "purple":
          widget.backgroundColor = Colors.deepPurple;
          break;
        case "white":
          widget.backgroundColor = Colors.white;
          break;
        case "red":
          widget.backgroundColor = Colors.redAccent;
          break;
      }
    });
    var box = Hive.box('users');
    if (box.get('login') == 'mishanya' && box.get('password') == 'normas') {
      widget.loginController.text = 'mishanya';
      widget.passwordController.text = 'normas';
    }
  }

  @override
  void initState() {
    super.initState();
    _selectedIndex = 0;
    _loadBackground();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: widget.backgroundColor,
        bottomNavigationBar: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(
                icon: Icon(Icons.admin_panel_settings_sharp), label: "Admin"),
            BottomNavigationBarItem(
                icon: Icon(Icons.supervised_user_circle), label: "User")
          ],
          onTap: (index) {
            setState(() {
              _selectedIndex = index;
              widget.loginController.text = "";
              widget.passwordController.text = "";
            });
          },
          currentIndex: _selectedIndex,
        ),
        appBar: AppBar(
          title: Text(widget.title),
          actions: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    SecureStorage.saveData("bgColor", "purple");
                    widget.backgroundColor = Colors.deepPurple;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.deepPurple,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                child: const Text(""),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    SecureStorage.saveData("bgColor", "white");
                    widget.backgroundColor = Colors.white;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.white,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                child: const Text(""),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    SecureStorage.saveData("bgColor", "red");
                    widget.backgroundColor = Colors.redAccent;
                  });
                },
                style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.redAccent,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(100))),
                child: const Text(""),
              ),
            ),
          ],
        ),
        body: Container(
          decoration: BoxDecoration(color: widget.backgroundColor),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.all(80.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  formTexts[_selectedIndex],
                  TextFormField(
                    controller: widget.loginController,
                    decoration: const InputDecoration(hintText: "Логин"),
                  ),
                  TextFormField(
                    controller: widget.passwordController,
                    obscureText: true,
                    decoration: const InputDecoration(hintText: "Пароль"),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 30.0, vertical: 16.0),
                    child: ElevatedButton(
                      onPressed: () async {
                        switch (_selectedIndex) {
                          case 0:
                            if (widget.loginController.text == "admin" &&
                                widget.passwordController.text == "admin") {
                              var box = Hive.box('admin');
                              box.putAll({
                                'login': widget.loginController.text,
                                'password': widget.passwordController.text
                              });

                              widget.loginController.text = "";
                              widget.passwordController.text = "";
                              /*Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: ((context) =>
                                          SecondPage(data: ""))));*/
                            }
                            break;
                          case 1:
                            if (widget.loginController.text == "miha" &&
                                widget.passwordController.text == "normas") {
                              var box = Hive.box('user');
                              box.putAll({
                                'login': widget.loginController.text,
                                'password': widget.passwordController.text
                              });

                              widget.loginController.text = "";
                              widget.passwordController.text = "";
                              Navigator.pushNamed(context, '/userpage');
                            }
                            break;
                        }
                      },
                      child: const Text(
                        "Войти",
                        style: TextStyle(fontSize: 14),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ));
  }
}
