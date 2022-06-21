import 'package:flutter_test/flutter_test.dart';
import 'package:listagem_produtos/produto/domain/services/produto_service.dart';

import '../repositories/produto_repository_mock.dart';

void main() {
  final produtoService = ProdutoService(ProdutoRepositoryMock());

  test('Deve retornar todos os produtos', () async {
    final produtos = await produtoService.buscarTodos();
    expect(produtos.length, 3);
    expect(produtos[1].preco, 2.500);
  });
}
