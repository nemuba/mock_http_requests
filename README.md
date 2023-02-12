# Mock HTTP requests

Este projeto é uma API REST desenvolvida em Ruby on Rails com o objetivo de fornecer um ambiente para testes de requisições HTTP de todos os tipos (GET, POST, PUT, PATCH, DELETE, etc.). É como se fosse um Mock HTTP Request para que você possa desenvolver e testar suas aplicações de maneira mais eficiente.

## Demo

Link Demo para utilização [aqui](https://mock-http-requests.onrender.com/).

## Instalação

Para instalar e usar esta API, você precisará ter o Ruby e o Rails instalados em sua máquina.

Clone este repositório em sua máquina:

```bash
git clone <https://github.com/nemuba/mock_http_requests.git>
```

Entre na pasta do projeto e instale as dependências:

```bash
cd mock_http_requests
bundle install
```

Inicie o servidor de desenvolvimento:

```bash
rails server
```

A API estará disponível em <http://localhost:3000>.

## Uso

A API fornece uma série de rotas para realizar diferentes tipos de requisições HTTP. Aqui estão alguns exemplos:

### GET

Para realizar uma requisição GET, basta fazer uma requisição para a rota /get.

```bash
GET <http://localhost:3000/get>
```

### POST

Para realizar uma requisição POST, basta fazer uma requisição para a rota /post com o corpo da requisição no formato JSON.

```bash
POST <http://localhost:3000/post>

Params
{
  request: {
    dados: "teste"
  }
}
```

### PUT

Para realizar uma requisição PUT, basta fazer uma requisição para a rota /put com o corpo da requisição no formato JSON.

```bash
PUT <http://localhost:3000/put>

{
   request: {
    dados: "teste"
  }
}
```

### DELETE

Para realizar uma requisição DELETE, basta fazer uma requisição para a rota /delete.

```bash
DELETE <http://localhost:3000/delete>
```

## Status code [GET|POST|PUT|PATCH|DELETE]

Para testar qualquer tipo de status code em qualquer formato de requisição.

```bash
[GET|POST|PUT|PATCH|DELETE] <http://localhost:3000/:code>

Examples:

GET <http://localhost:3000/200>
POST <http://localhost:3000/404>
PUT <http://localhost:3000/500>
DELETE GET <http://localhost:3000/401>
```

## Contribuições

Este projeto é open-source e aceita contribuições. Se você deseja contribuir, basta abrir uma issue ou enviar um pull request.

## Licença

Este projeto está licenciado sob a licença MIT. Veja o arquivo LICENSE para mais detalhes.
