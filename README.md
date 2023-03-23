## 📋 Projeto Books

Aplicação Web desenvolvida em Laravel, com acesso restrito, listagem de livros com as opções de visualizar detalhes do livro, editar, deletar e criar um livro e também mostramos o clima atual da região onde a aplicação foi desenvolvida, consumindo a API da OpenWaether, toda aplicação pode ser rodada com Docker.

* [Laravel 8](https://laravel.com/docs)
* [API OpenWaether](https://openweathermap.org/)
* [Docker](https://docker.com/)



## 🚨 Importante

Antes de iniciarmos temos algumas informações importantes que precisam ser mencionadas:

1. Podemos configurar a aplicação mais "braçal", pois precisamos acessar o container do banco de dados para exercutarmos o script do banco;
2. Ou podemos também configurar a apliacação utilizando as Migrates do Laravel para gerar as tabelas do banco de dados;
3. Ambas as configurações estaram descritas abaixo



## 🚀 Começando - com script

Passo 1: Clonar o repositório

```
git clone https://github.com/brunoruggero/books.git
```

Passo 2: Crie o arquivo **.env** a partir do arquivo **.env-copy**

Passo 3: Atualize as variáveis de ambiente do banco de dados do arquivo **.env**, mas se preferir deixe o arquivo nas configurações padrões.

Passo 4: Suba os containers do projeto

```
docker-compose up -d
```

Passo 5: Acessar o container app_books

```
sudo docker-compose exec app_books bash
```

Passo 6: Instalar as dependências do projeto

```
composer install
```

Passo 7: Gerar o key do projeto Laravel

```
php artisan key:generate
```

Passo 8: Acessar o container db_books

```
sudo docker-compose exec db_books bash
```

Passo 9: Acessar o MySql para rodar o script do banco de dados
```
mysql -u root -p 
```

Passo 10: Após acessar o MySql executar o seguinte comando.

```
source /docker-entrypoint-initdb.d/books.sql
```

Passo 11: Após executar o script de atualização do banco, acesse o sistema.

* [Acesso local](http://localhost:8180/)

> Extra: Os dados de acesso já estão definidos na página de login, apenas entre para utilizar a aplicação.



## 🚀 Começando - com migrates

Passo 1: Clonar o repositório
```
git clone https://github.com/brunoruggero/books.git
```

Passo 2: Crie o arquivo .env a partir do arquivo .env-copy

Passo 3: Atualize as variáveis de ambiente do banco de dados do arquivo **.env**, mas se preferir deixe o arquivo nas configurações padrões.

Passo 4: Suba os containers do projeto

```
docker-compose up -d
```

Passo 5: Acessar o container app_books

```
sudo docker-compose exec app_books bash
```

Passo 6: Rodar comando migrate para criar as tabelas no banco de dados

```
php artisan migrate
```

Passo 7: Rodar o Seeder para criar os usuários no banco de dados

```
php artisan db:seed
```

Passo 8: Acessar o container do banco de dados para copiar dados de algum usuário para poder acessar o sistema.

```
sudo docker-compose exec db_books bash
```

Passo 9: Acessar o MySql

```
mysql -u root -p 
```

Passo 10: Após acessar o Mysql executaremos os seguintes comandos
- Listar todos os bancos de dados: 

  ```
  show databases;
  ```

- Selecionar o banco de dados que iremos acessar:

  ```
  use books;
  ```

- Listar todas as tabelas do banco:

  ```
  show tables;
  ```

- Executar o select para listar usuários cadastrados: 

  ```
  SELECT * FROM users;
  ```

- Copie o e-mail de qualquer usuário listado, e a senha padrão para todos os usuários é **123456.**

Passo 11: Após copiar o e-mail, acesse o sistema.

* [Acesso local](http://localhost:8180/)



## ✒️ Author

[**Bruno Ruggero**](https://github.com/brunoruggero)



## 📋 License

The Laravel framework is open-sourced software licensed under the [MIT license](https://opensource.org/licenses/MIT).
