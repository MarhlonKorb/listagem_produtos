import '../models/produto.dart';
import '../repositories/i_produto_repository.dart';

class ProdutoService {
  final IProdutoRepository produtoRepository;

  ProdutoService(this.produtoRepository);

  Future<List<Produto>> buscarTodos() async {
    return await produtoRepository.buscarTodos();
  }

  Future<Produto> criaProduto(Produto produto) async {
    return await produtoRepository.criaProduto(produto);
  }
}
