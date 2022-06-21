import 'package:dio/dio.dart';
import 'package:listagem_produtos/produto/domain/models/produto.dart';
import 'package:listagem_produtos/produto/domain/repositories/i_produto_repository.dart';

class ProdutoRepositoryApi implements IProdutoRepository {
  final baseUrl = 'http://10.0.2.2:8080/api/produtos';

  final Dio dio;

  ProdutoRepositoryApi(this.dio);

  @override
  Future<List<Produto>> buscarTodos() async {
    final response = await dio.get(baseUrl);
    final resp =
        (response.data as List).map((map) => Produto.fromMap(map)).toList();
    return resp;
  }

  @override
  Future<Produto> criaProduto(Produto produto) async {
    final response =
        await dio.post('$baseUrl/novoProduto', data: produto.toMap());
    return Produto.fromMap(response.data);
  }
}
