# NOTEBOOK API

## O Projeto

Projeto desenvolvido durante o curso [**Desenvolvendo REST / RESTful APIs com Ruby on Rails**](https://www.udemy.com/rubyonrails-api/learn/v4/overview). 
O projeto consistiu no desenvolvimento de uma API para armazenar informações de contatos (agenda). Foi desenvolvido utilizando [*Ruby on Rails*](https://rubyonrails.org) e as especificações [*JSON API*](http://jsonapi.org).

## Requisitos

Para executar o projeto é necessário ter instalado:

* [Ruby on Rails](https://rubyonrails.org)


## Executando a api

Após fazer o clone do repositório para um diretório local, entre na pasta ***notebook-api*** através do terminal e instale as dependências:

```$ bundle```

Crie a base de dados e execute as migrações:

```$ rails db:create db:migrate```

Execute a task a seguir para definir as informações iniciais e de testes para a api:

```$ rails dev:setup```

*As rotas não serão detalhadas por ser uma API desenvolvida apenas com fins acadêmicos, mas para visualizar as mesmas, basta executar o comando:

```$ rails routes```

Para executar a api, basta executar o comando:

```$ foreman start```