<h2>Aplicativo Mobile em Flutter(em desenvolvimento)


<h3>Objetivos</h3>

O objetivo desse software é o consumo de uma API de produtos criada em Spring Boot em formato de CRUD, que pode ser conferida no link: https://github.com/MarhlonKorb/api-produtos-spring-boot

Também estou usando deste como aprendizado para entender o conceito de injeção de dependências e organização de projeto(divisão entre Controller, Repository e Service). 

<h2>Classe Produto e construtor</h2>

![](https://github.com/MarhlonKorb/listagem_produtos/blob/master/imgs/classe.png)

<h2>Classe abstrata</h2>

![](https://github.com/MarhlonKorb/listagem_produtos/blob/master/imgs/classe-repository.png)

<h2>Classe que recebe a implementação de IProdutoRepository</h2>

![](https://github.com/MarhlonKorb/listagem_produtos/blob/master/imgs/produto-service.png)

<h2>Classe que implementará IProduto\Repository e métodos de comunicação com a API</h2>

![](https://github.com/MarhlonKorb/listagem_produtos/blob/master/imgs/produto-repository-api.png)

<h2>Implementação dos métodos</h2>

Implementação dos métodos contruídos no Service, Repository, Infra e da classe Produto para retornar uma lista de produtos utilizando o metodo GET criado e mapeado na API do Spring Boot

![](https://github.com/MarhlonKorb/listagem_produtos/blob/master/imgs/interface-flutter.png)

<h2>Resultado</h2>

![](https://github.com/MarhlonKorb/listagem_produtos/blob/master/imgs/imagem-app.png)

