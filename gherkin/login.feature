Feature: Login
  Como usuário cadastrado
  Quero acessar minha conta
  Para realizar compras no e-commerce

  Background:
    Given que acesso a página de login

  @smoke @critical
  Scenario: Login com credenciais válidas
    When informo um e-mail válido
    And informo uma senha válida
    And clico em Entrar
    Then devo acessar minha conta
    And devo visualizar a área autenticada

  @regression
  Scenario: Senha inválida
    When informo um e-mail cadastrado
    And informo uma senha incorreta
    And clico em Entrar
    Then o sistema deve bloquear o login
    And deve exibir mensagem de erro

  @regression
  Scenario: Usuário inexistente
    When informo um e-mail não cadastrado
    And informo uma senha qualquer
    And clico em Entrar
    Then o sistema deve recusar a autenticação

  @regression
  Scenario: Campos obrigatórios vazios
    When clico em Entrar sem preencher os campos
    Then os campos obrigatórios devem ser sinalizados

  @regression
  Scenario Outline: E-mail em formato inválido
    When informo o e-mail "<email>"
    And informo uma senha válida
    And clico em Entrar
    Then o sistema deve validar o formato do e-mail

    Examples:
      | email       |
      | usuario.com |
      | usuario@    |
