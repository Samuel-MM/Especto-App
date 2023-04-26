import 'package:flutter/material.dart';

class Login extends StatelessWidget {
  const Login({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(40),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Teste Login'),
            const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Email',
                hintText: 'exemplo@gmail.com',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.emailAddress,
              //obscureText: true, --> COLOCAR NA SENHA
            ),
             const SizedBox(height: 20),
            TextField(
              decoration: InputDecoration(
                labelText: 'Senha',
                border: OutlineInputBorder(),
              ),
              keyboardType: TextInputType.visiblePassword,
              obscureText: true,
            ),
             const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                print('Entrar pressionado');
              },
              child: Text('Entrar'),
            )
          ],
        ),
      ),
    );
  }
}
