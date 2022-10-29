import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../componentes/menu.dart';
import '../controllers/veiculo_controller.dart';

class VeiculoPage extends StatelessWidget {
  final controller = Get.put(VeiculoController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: MenuItens(),
      appBar: AppBar(
        title: Text('Veiculos'),
      ),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Center(
              child: Obx(
                () => Text("teste4"),
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
