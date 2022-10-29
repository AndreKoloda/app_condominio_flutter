import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mvc_app/app/controllers/home_controller.dart';

class MenuItens extends StatelessWidget {
  final controller = Get.put(HomeController());
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(children: [
        ListTile(
          title: Text('Inicio'),
          subtitle: Text('Tela inicial'),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/');
          },
        ),
        ListTile(
          title: Text('Condominios'),
          subtitle: Text(''),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/condominios/');
          },
        ),
        ListTile(
          title: Text('Assembleias'),
          subtitle: Text(''),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/assembleias');
          },
        ),
        ListTile(
          title: Text('Vagas'),
          subtitle: Text(''),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/vagas');
          },
        ),
        ListTile(
          title: Text('Veiculos'),
          subtitle: Text(''),
          onTap: () {
            Navigator.of(context).pushReplacementNamed('/veiculos');
          },
        ),
      ]),
    );
  }
}
