Feature: Finalizar pedido
  Como cliente
  Quero concluir o pagamento
  Para receber a confirmação da compra

  Background:
    Given que estou autenticado
    And concluí o checkout

  @smoke @critical
  Scenario: Pedido aprovado
    When informo dados de pagamento válidos
    And clico em finalizar pedido
    Then o pedido deve ser criado
    And devo visualizar a confirmação da compra

  @regression @critical
  Scenario: Cartão recusado
    When informo um cartão recusado
    And clico em finalizar pedido
    Then o pagamento deve ser recusado
    And o pedido não deve ser confirmado

  @regression @critical
  Scenario: Produto indisponível ao finalizar
    Given que o produto ficou sem estoque
    When tento finalizar o pedido
    Then o sistema deve bloquear a compra

  @regression
  Scenario: Timeout no pagamento
    Given que o serviço de pagamento não responde
    When clico em finalizar pedido
    Then o sistema deve exibir falha temporária
    And não deve criar pedido duplicado

  @regression @critical
  Scenario: Duplo clique em finalizar pedido
    When clico duas vezes rapidamente em finalizar pedido
    Then apenas um pedido deve ser criado
