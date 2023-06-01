// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});
  final Color borderColor = Color(0xFF199A8E);
  final Color greyColor = Color(0xFFA1A8B0);
  final Color whiteColor = Color(0xffffffff);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  final homePage = '/';
  final login = '/login';
  final register = '/register';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          centerTitle: true,
        ),
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 300),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 80.0),
                  child: Center(
                    child: Image.asset(
                      'health.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                Container(
                  width: 280,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, login);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        'Login',
                        style: TextStyle(fontSize: 16),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      backgroundColor: borderColor,
                    ),
                  ),
                ),
                Container(
                  width: 280,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, register);
                    },
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        'Cadastrar',
                        style: TextStyle(fontSize: 16, color: borderColor),
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(20.0),
                          side: BorderSide(width: 0.5, color: borderColor)),
                      backgroundColor: whiteColor,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  // void login() {}
}
