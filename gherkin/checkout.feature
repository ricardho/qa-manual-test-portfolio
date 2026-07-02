Feature: Checkout
  Como cliente autenticado
  Quero preencher os dados de entrega
  Para avançar para a finalização do pedido

  Background:
    Given que estou autenticado
    And possuo produto no carrinho

  @smoke @critical
  Scenario: Checkout com dados válidos
    When preencho endereço e CEP válidos
    And avanço no checkout
    Then o resumo do pedido deve ser exibido

  @regression
  Scenario: CEP inválido
    When informo um CEP inválido
    And tento avançar no checkout
    Then o sistema deve exibir mensagem de CEP inválido

  @regression
  Scenario: Endereço obrigatório não preenchido
    When deixo o endereço vazio
    And tento avançar no checkout
    Then o sistema deve sinalizar o campo obrigatório

  @regression
  Scenario: Cupom inválido
    When informo um cupom inexistente
    And aplico o cupom
    Then o sistema deve recusar o cupom
    And o valor do pedido não deve receber desconto

  @regression @critical
  Scenario: Sessão expirada durante checkout
    Given que minha sessão expirou
    When tento avançar no checkout
    Then o sistema deve solicitar novo login
