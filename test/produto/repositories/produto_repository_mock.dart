import 'package:listagem_produtos/produto/domain/models/produto.dart';
import 'package:listagem_produtos/produto/domain/repositories/i_produto_repository.dart';

class ProdutoRepositoryMock implements IProdutoRepository {
  @override
  Future<List<Produto>> buscarTodos() async {
    return <Produto>[
      Produto(id: 1, nome: 'Xbox One', preco: 2.200),
      Produto(id: 2, nome: 'Play 4', preco: 2.500),
      Produto(id: 3, nome: 'Geladeira', preco: 3.000),
    ];
  }

  @override
  Future<Produto> criaProduto(Produto produto) async {
    return produto;
  }
}
