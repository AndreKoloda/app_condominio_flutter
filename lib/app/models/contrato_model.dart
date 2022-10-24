import 'package:mvc_app/app/models/condominio_model.dart';
import 'package:mvc_app/app/models/usuario_model.dart';

class ContratoModel {
  UsuarioModel usuario;
  CondominioModel condominio;
  DateTime data_inicio;
  DateTime data_fim;

  ContratoModel(this.usuario, this.condominio, this.data_inicio, this.data_fim);
}
