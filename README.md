 
# Mockito_test

Este projeto é um exemplo simples de como utilizar o **Mockito** para criar testes unitários em **Dart**, simulando o comportamento de um serviço de autenticação.

## 📋 Descrição

Este exemplo simula um serviço de autenticação (`AuthService`) utilizando o Mockito para criar um mock da classe `AuthService`. O teste verifica se o método `login` retorna `true` quando o login é bem‑sucedido.

## 🛠 Tecnologias Utilizadas

- Dart  
- Mockito  
- test  

## ▶️ Como Rodar o Projeto

### ✅ Pré‑requisitos

- Dart SDK (versão `>=2.17.0 <4.0.0`)  
- Dependências definidas no arquivo `pubspec.yaml`

### 📦 Passos

1. Clone este repositório em seu diretório local:  
   `git clone https://seu-repositorio-url.git`

2. Navegue até o diretório do projeto:  
   `cd Mockito_test`

3. Instale as dependências:  
   `dart pub get`

4. Gere os mocks utilizando o build_runner:
 #### ⚠️ Isso gera automaticamente o arquivo auth_service_test.mocks.dart, baseado na anotação @GenerateMocks([AuthService]).
   `dart run build_runner build`

6. Execute os testes:  
   `dart test`

## 📁 Dependências

O arquivo `pubspec.yaml` do projeto contém as seguintes dependências:

**dev_dependencies:**  
- test: ^1.24.0  
- mockito: ^5.4.2  
- build_runner: ^2.4.8  

## 🗂 Estrutura do Projeto

- `lib/auth_service.dart`: Contém a definição do serviço de autenticação (`AuthService`).  
- `test/auth_service_test.dart`: Contém o código de teste que utiliza o Mockito.  
- `test/auth_service_test.mocks.dart`: Arquivo gerado automaticamente pelo Mockito para criar mocks da classe `AuthService`.  

## ❓ O Que o Mockito Está Fazendo?

O **Mockito** é uma biblioteca de mocking usada para simular o comportamento de objetos em testes unitários. No código deste projeto, ele está sendo usado para:

- **Gerar o Mock da Classe:**  
  O decorator `@GenerateMocks([AuthService])` gera automaticamente uma implementação de mock da classe `AuthService`.

- **Simulação do Método `login`:**  
  O código `when(mockAuthService.login('user', 'pass'))` configura o mock para que ele retorne `true` quando `login` for chamado com `'user'` e `'pass'`.

- **Verificação do Resultado:**  
  `expect(result, isTrue)` verifica se o resultado do login simulado é `true`.

- **Controle do Comportamento do Mock:**  
  Com `thenAnswer()`, é possível definir respostas controladas para métodos simulados, evitando o uso de serviços reais.

## ✅ Conclusão

Este exemplo simples demonstra como usar o **Mockito** para criar testes unitários no Dart e simular o comportamento de serviços. O uso de mocks é especialmente útil quando não queremos interagir com recursos reais, como bancos de dados ou APIs, durante os testes.
