import 'package:mvc_app/app/models/usuario_model.dart';

class VeiculoModel {
  String placa;
  String marca;
  String modelo;
  int ano;
  UsuarioModel usuario;

  VeiculoModel(this.placa, this.marca, this.modelo, this.ano, this.usuario);
}
