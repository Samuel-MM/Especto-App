// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'package:flutter/material.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});
  final Color borderColor = Color(0xFF199A8E);
  final Color greyColor = Color(0xFFA1A8B0);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent, // Remove the background color
          elevation: 0, // Remove the shadow
          centerTitle: true, // Center the title
          title: Text(
            'Cadastro',
            style: TextStyle(
              color: Colors.black, // Customize the text color
              fontSize: 20, // Customize the text size
            ),
          ),
          leading: IconButton(
            icon: Icon(Icons.arrow_back),
            color: Colors.black,
            onPressed: () {
              // Handle back button press
              Navigator.pop(context);
            },
          ),
        ),
        body: Center(
          child: Container(
            constraints: BoxConstraints(maxWidth: 300),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 10.0),
                  child: Center(
                    child: Image.asset(
                      'health.png',
                      width: 100,
                      height: 100,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: nameController,
                    decoration: InputDecoration(
                      labelText: 'Entre com seu nome',
                      labelStyle: TextStyle(
                        color: greyColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: borderColor,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.person,
                        color: greyColor,
                      ),
                    ),
                    cursorColor: greyColor,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: emailController,
                    decoration: InputDecoration(
                      labelText: 'Entre com seu email',
                      labelStyle: TextStyle(
                        color: greyColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: borderColor,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.email,
                        color: greyColor,
                      ),
                    ),
                    cursorColor: greyColor,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(10),
                  child: TextField(
                    controller: passWordController,
                    decoration: InputDecoration(
                      labelText: 'Entre com sua senha',
                      labelStyle: TextStyle(
                        color: greyColor,
                      ),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(20.0),
                        borderSide: BorderSide(
                          color: borderColor,
                        ),
                      ),
                      prefixIcon: Icon(
                        Icons.lock,
                        color: greyColor,
                      ),
                    ),
                    cursorColor: greyColor,
                    keyboardType: TextInputType.text,
                    obscureText: true,
                    enableSuggestions: false,
                    autocorrect: false,
                  ),
                ),
                Container(
                  width: 280,
                  margin: EdgeInsets.symmetric(vertical: 10),
                  child: ElevatedButton(
                    onPressed: () {},
                    child: Padding(
                      padding: const EdgeInsets.all(14.0),
                      child: Text(
                        'Finalizar Cadastro',
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
              ],
            ),
          ),
        ),
      ),
    );
  }

  void login() {}
}
