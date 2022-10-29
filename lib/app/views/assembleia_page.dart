import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../componentes/menu.dart';
import '../controllers/assembleia_controller.dart';

class AssembleiaPage extends StatelessWidget {
  final controller = Get.put(AssembleiaController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuItens(),
      appBar: AppBar(
        title: Text('Assembleias'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Obx(
                () => Text("teste1"),
              ),
            ),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Container(
                  color: Colors.grey,
                  child: IconButton(
                    icon: Icon(Icons.add),
                    onPressed: () => {},
                  ),
                ),
                SizedBox(width: 10),
                Container(
                  color: Colors.grey,
                  child: IconButton(
                    icon: Icon(Icons.remove),
                    onPressed: () => {},
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
