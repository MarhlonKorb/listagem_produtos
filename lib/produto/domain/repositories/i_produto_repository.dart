import '../models/produto.dart';

abstract class IProdutoRepository {
  Future<List<Produto>> buscarTodos();
  Future<Produto> criaProduto(Produto produto);
}
