import 'package:mvc_app/app/models/usuario_model.dart';

class UsuarioController {
  int id = 0;
  String nome = "";
  String email = "";
  String senha = "";
  bool admin = false;

  UsuarioController() {}

  UsuarioModel usuarioModel = UsuarioModel();

  void validarLogin() {
    usuarioModel.validarLogin(email, senha);
  }

  void imprime() {
    print('nome $senha, email $email');
  }
}
