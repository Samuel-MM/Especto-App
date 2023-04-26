import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  HomePage({super.key});

  final TextEditingController emailController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(40),
          child: Column(
            children: [
              TextField(
                controller: emailController,
                decoration: InputDecoration(
                  labelText: 'Email',
                  hintText: 'exemplo@gmail.com',
                  border: OutlineInputBorder(),
                ),
                keyboardType: TextInputType.emailAddress,
                //obscureText: true, --> COLOCAR NA SENHA
              ),
              const SizedBox(height: 20),

              ElevatedButton(
                onPressed: login,
                child: Text('Enviar'),
              ),
            ],
          ),
        ),
      ),
    );
  }

  void login (){

  }
}
