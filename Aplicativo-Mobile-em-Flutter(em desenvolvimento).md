<h2>Aplicativo Mobile em Flutter(em desenvolvimento)

<h3>Objetivos</h3>

O objetivo desse software é o consumo de uma API de produtos criada em Spring Boot em formato de CRUD, que pode ser conferida no link: https://github.com/MarhlonKorb/api-produtos-spring-boot

Também estou usando deste como aprendizado para entender o conceito de injeção de dependências e organização de projeto(divisão entre Controller, Repository e Service). 

<h2>Classe Produto e construtor</h2>

![](C:\Users\marhl\Desktop\classe.png)

<h2>Classe abstrata</h2>

![](C:\Users\marhl\Desktop\classe-repository.png)

<h2>Classe que recebe a implementação de IProdutoRepository</h2>

![](C:\Users\marhl\Desktop\produto-service.png)

<h2>Classe que implementará IProduto\Repository e métodos de comunicação com a API</h2>

![](C:\Users\marhl\Desktop\produto-repository-api.png)

<h2>Implementação dos métodos</h2>
Implementação dos métodos contruídos no Service, Repository, Infra e da classe Produto para retornar uma lista de produtos utilizando o metodo GET criado e mapeado na API do Spring Boot

![](C:\Users\marhl\Desktop\interface-flutter.png)

<h2>Resultado</h2>

![](C:\Users\marhl\Desktop\imagem-app.png)