// ignore_for_file: avoid_print
import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:listagem_produtos/produto/domain/models/produto.dart';
import 'package:listagem_produtos/produto/domain/services/produto_service.dart';
import 'package:listagem_produtos/produto/infra/repositories/produto_repository_api.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Listagem de produtos'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final _formKey = GlobalKey<FormState>();
  final produtoService = ProdutoService(ProdutoRepositoryApi(Dio()));
  final produto = Produto();

  void _onSave() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();
      try {
        await produtoService.criaProduto(produto);
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text('${produto.nome} cadastrado com sucesso')));
      } catch (e) {
        ScaffoldMessenger.of(context).showSnackBar(SnackBar(
            content: Text('Erro ao cadastrar o produto ${produto.nome}')));
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text(widget.title)),
      body: Column(
        children: [
          Expanded(
            child: FutureBuilder<List<Produto>>(
              // future: ProdutoService(ProdutoRepositoryMock()).buscarTodos(),
              future: produtoService.buscarTodos(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                }
                final produtos = snapshot.data;
                return ListView.builder(
                  itemCount: produtos?.length ?? 0,
                  itemBuilder: (context, index) {
                    final produto = produtos![index];
                    return ListTile(
                      title: Text(produto.nome!),
                      subtitle:
                          Text('R\$ ${produto.preco!.toStringAsFixed(2)}'),
                    );
                  },
                );
              },
            ),
          ),
          Form(
            key: _formKey,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                children: [
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Nome'),
                    ),
                    onSaved: (value) {
                      produto.nome = value;
                    },
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      label: Text('Preço'),
                    ),
                    onSaved: (value) {
                      produto.preco = double.tryParse(value!);
                    },
                  ),
                ],
              ),
            ),
          ),
          ElevatedButton(
            child: const Text('Criar'),
            onPressed: _onSave,
          ),
        ],
      ),
    );
  }
}
