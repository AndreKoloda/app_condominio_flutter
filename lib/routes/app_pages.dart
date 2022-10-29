import 'package:get/get.dart';
import 'package:mvc_app/app/views/assembleia_page.dart';
import 'package:mvc_app/app/views/condominios_page.dart';
import 'package:mvc_app/app/views/home_page.dart';
import 'package:mvc_app/app/views/vaga_page.dart';
import 'package:mvc_app/app/views/veiculo_page.dart';

import 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: Routes.HOME,
      page: () => HomePage(),
    ),
    GetPage(
      name: Routes.ASSEMBLEIA,
      page: () => AssembleiaPage(),
    ),
    GetPage(
      name: Routes.CONDOMINIO,
      page: () => CondominioPage(),
    ),
    GetPage(
      name: Routes.VAGA,
      page: () => VagaPage(),
    ),
    GetPage(
      name: Routes.VEICULO,
      page: () => VeiculoPage(),
    ),
  ];
}
