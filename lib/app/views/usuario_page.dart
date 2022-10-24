import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_app/app/controllers/usuario_controller.dart';

class UsuarioPage extends StatelessWidget {
  final controller = Get.put(UsuarioController());
  @override
  Widget build(BuildContext context) {
    String email = '';
    String senha = '';

    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Usuario')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              TextField(
                decoration: InputDecoration(label: Text('E-mail')),
                onChanged: (text) {
                  if (text.contains('@')) {
                    print('Email válido');
                  } else {
                    print('Email inválido');
                  }
                  controller.email = text;
                },
              ),
              SizedBox(height: 10),
              TextField(
                  decoration: InputDecoration(label: Text('Senha')),
                  obscureText: true,
                  onChanged: (text) {
                    controller.senha = text;
                  }),
              SizedBox(height: 50),
              ElevatedButton(
                  onPressed: () {
                    controller.validarLogin();
                  },
                  child: Text('Entrar'))
            ]),
      ),
    );
  }
}
