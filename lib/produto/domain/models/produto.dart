import 'dart:convert';

class Produto {
  int? id;
  String? nome;
  double? preco;
  Produto({
    this.id,
    this.nome,
    this.preco,
  });

  Produto copyWith({
    int? id,
    String? nome,
    double? preco,
  }) {
    return Produto(
      id: id ?? this.id,
      nome: nome ?? this.nome,
      preco: preco ?? this.preco,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'id': id,
      'nome': nome,
      'preco': preco,
    };
  }

  factory Produto.fromMap(Map<String, dynamic> map) {
    return Produto(
      id: map['id']?.toInt(),
      nome: map['nome'],
      preco: map['preco']?.toDouble(),
    );
  }

  String toJson() => json.encode(toMap());

  factory Produto.fromJson(String source) =>
      Produto.fromMap(json.decode(source));

  @override
  String toString() => 'Produto(id: $id, nome: $nome, preco: $preco)';

  @override
  bool operator ==(Object other) {
    if (identical(this, other)) return true;

    return other is Produto &&
        other.id == id &&
        other.nome == nome &&
        other.preco == preco;
  }

  @override
  int get hashCode => id.hashCode ^ nome.hashCode ^ preco.hashCode;
}
