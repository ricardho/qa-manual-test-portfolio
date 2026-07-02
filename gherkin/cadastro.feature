Feature: Cadastro
  Como novo cliente
  Quero criar uma conta
  Para comprar produtos no e-commerce

  Background:
    Given que acesso a página de cadastro

  @smoke @critical
  Scenario: Cadastro com dados válidos
    When informo nome, e-mail e senha válidos
    And confirmo o cadastro
    Then a conta deve ser criada com sucesso

  @regression
  Scenario: Cadastro com e-mail já existente
    When informo um e-mail já cadastrado
    And confirmo o cadastro
    Then o sistema deve bloquear o cadastro duplicado

  @regression
  Scenario: Senhas divergentes
    When informo senha e confirmação diferentes
    And confirmo o cadastro
    Then o sistema deve exibir erro de confirmação de senha

  @regression
  Scenario: Campos obrigatórios vazios
    When confirmo o cadastro sem preencher os campos obrigatórios
    Then o sistema deve sinalizar os campos obrigatórios

  @regression
  Scenario Outline: Senha fora do padrão mínimo
    When informo uma senha "<senha>"
    And confirmo o cadastro
    Then o sistema deve bloquear a criação da conta

    Examples:
      | senha |
      | 123   |
      | abc   |
