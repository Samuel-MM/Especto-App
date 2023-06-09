// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class Register extends StatefulWidget {
  const Register({super.key});
  @override
  RegisterState createState() => RegisterState();
}

class RegisterState extends State<Register> {
  // Register({super.key});
  final Color borderColor = Color(0xFF199A8E);
  final Color greyColor = Color(0xFFA1A8B0);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController nameController = TextEditingController();
  final TextEditingController passWordController = TextEditingController();
  final _formKey = GlobalKey<FormState>();
  bool isValidEmail = false;

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
        body: Form(
          key: _formKey,
          child: Center(
            child: Container(
              constraints: BoxConstraints(maxWidth: 300),
              child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.symmetric(vertical: 40.0),
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
                    child: TextFormField(
                      controller: nameController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor entre com seu nome';
                        }
                      },
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: emailController,
                      validator: (value) {
                        if (value == null || value.isEmpty || !isValidEmail) {
                          return 'Por favor entre com seu email';
                        }
                      },
                      onChanged: (value) {
                        setState(() {
                          isValidEmail = validateEmail(value);
                        });
                      },
                      decoration: InputDecoration(
                        labelText: 'Entre com seu email',
                        suffixIcon: isValidEmail
                            ? Icon(Icons.check, color: borderColor)
                            : null,
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
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.all(10),
                    child: TextFormField(
                      controller: passWordController,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return 'Por favor entre com sua senha';
                        }
                      },
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
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          print('Entrar pressionado');
                          sendUserData();
                        }
                      },
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
      ),
    );
  }

  void sendUserData() async {
    final response = await http.post(
      Uri.parse('http://localhost/api/test-data'),
      headers: <String, String>{
        'Content-Type': 'application/json; charset=UTF-8',
      },
      body: jsonEncode(<String, String>{
        'title': 'MIZAEL',
      }),
    );
    if (response.statusCode == 200) {
      print(jsonDecode(response.body));
    } else {
      throw Exception('Error');
    }
  }

  bool validateEmail(String value) {
    final emailRegex = RegExp(r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$');
    return emailRegex.hasMatch(value);
  }
}
