import 'package:mvc_app/app/models/usuario_model.dart';
import 'assembleia_model.dart';

class VotacaoModel {
  UsuarioModel usuario;
  AssembleiaModel assembleia;
  bool voto;
  String observacao;

  VotacaoModel(this.usuario, this.assembleia, this.voto, this.observacao);
}
