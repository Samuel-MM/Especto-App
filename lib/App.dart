import 'package:especto_app/pages/login.dart';
import 'package:especto_app/pages/register.dart';
import 'package:especto_app/pages/homePage.dart';
import 'package:flutter/material.dart';
import 'package:especto_app/controllers/Brightness_Controller.dart';

class App extends StatelessWidget {
  const App({super.key});
  final homePage = '/';
  final login = '/login';
  final register = '/register';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        // animation: BrightnessController.getInstance().getTheme(),
        builder: (context, child) {
      return MaterialApp(
        theme: ThemeData(
            // primarySwatch: Colors.purple,
            // brightness: BrightnessController.getInstance().getTheme()
            ),
        initialRoute: homePage,
        routes: {
          login: (context) => Login(),
          register: (context) => Register()
        },
        home: HomePage(),
      );
    });
  }
}
