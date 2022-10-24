class TaxaModel {
  int? id;
  String descricao;
  double valor;
  bool taxa_condominio;

  TaxaModel(this.descricao, this.valor, this.taxa_condominio);
}
