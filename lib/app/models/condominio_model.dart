import 'dart:convert';

class CondominioModel {
  int id;
  double valor;
  int tamanhoM2;
  bool disponivel;

  CondominioModel(
      {this.id = 0,
      this.valor = 0.0,
      this.tamanhoM2 = 0,
      this.disponivel = false});

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'valor': valor,
      'tamanhoM2': tamanhoM2,
      'disponivel': disponivel,
    };
  }

  factory CondominioModel.fromMap(Map<String, dynamic> map) {
    return CondominioModel(
      id: map['id'],
      valor: map['valor'],
      tamanhoM2: map['tamanhoM2'],
      disponivel: map['disponivel'],
    );
  }

  String toJson() => json.encode(toMap());

  factory CondominioModel.fromJson(String source) =>
      CondominioModel.fromMap(json.decode(source));

  @override
  String toString() {
    return 'CondominioModel(id: $id, valor: $valor, tamanhoM2: $tamanhoM2, disponivel: $disponivel)';
  }

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is CondominioModel &&
        other.id == id &&
        other.valor == valor &&
        other.tamanhoM2 == tamanhoM2 &&
        other.disponivel == disponivel;
  }

  @override
  int get hashCode {
    return id.hashCode ^
        valor.hashCode ^
        tamanhoM2.hashCode ^
        disponivel.hashCode;
  }
}
