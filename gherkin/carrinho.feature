Feature: Carrinho
  Como cliente
  Quero gerenciar produtos no carrinho
  Para controlar minha compra antes do checkout

  @smoke @critical
  Scenario: Adicionar produto ao carrinho
    Given que existe um produto disponível
    When adiciono o produto ao carrinho
    Then o produto deve ser exibido no carrinho
    And o total deve ser atualizado

  @regression
  Scenario: Alterar quantidade do produto
    Given que existe um produto no carrinho
    When altero a quantidade para 2
    Then o subtotal deve ser recalculado

  @regression
  Scenario: Remover produto do carrinho
    Given que existe um produto no carrinho
    When removo o produto
    Then o produto não deve mais aparecer no carrinho

  @regression
  Scenario: Acessar carrinho vazio
    Given que não existem produtos no carrinho
    When acesso a página do carrinho
    Then devo visualizar mensagem de carrinho vazio

  @regression
  Scenario Outline: Informar quantidade inválida
    Given que existe um produto no carrinho
    When altero a quantidade para "<quantidade>"
    Then o sistema deve bloquear a atualização

    Examples:
      | quantidade |
      | 0          |
      | -1         |
