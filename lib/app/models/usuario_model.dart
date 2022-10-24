import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:mvc_app/app/global.dart';

class UsuarioModel {
  int id;
  String nome;
  String email;
  String senha;
  bool admin;

  UsuarioModel(
      {this.id = 0,
      this.nome = "",
      this.email = "",
      this.senha = "",
      this.admin = false});

  void setEmail(String email) {
    this.email = email;
  }

  void setSenha(String senha) {
    this.senha = senha;
  }

  void validarLogin(String email, String senha) async {
    Uri uri = Uri.parse('http://localhost:3000/api/usuario/getone?id=1');
    print(uri);
    var response = await http.get(uri);
    print(response);
    var dados = json.decode(response.body) as List;
    print(dados);
  }

  bool ValidarLogin(usuario, senha) {
    return true;
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'email': email,
      'senha': senha,
      'admin': admin,
    };
  }

  factory UsuarioModel.fromMap(Map<String, dynamic> map) {
    return UsuarioModel(
      id: map['id'],
      nome: map['nome'],
      email: map['email'],
      senha: map['senha'],
      admin: map['admin'],
    );
  }

  String toJson() => json.encode(toMap());

  factory UsuarioModel.fromJson(String source) =>
      UsuarioModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'UsuarioModel(id: $id, nome: $nome, email: $email, senha: $senha, admin: $admin)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is UsuarioModel &&
        other.id == id &&
        other.nome == nome &&
        other.email == email &&
        other.senha == senha &&
        other.admin == admin;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        nome.hashCode ^
        email.hashCode ^
        senha.hashCode ^
        admin.hashCode;
  }
}
