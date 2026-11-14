# QA Test Cases - Automation Practice / QAZANDO Shop

[English](README.md) | **Português**

Projeto de documentação de testes manuais e cenários em Gherkin para um e-commerce de prática, com foco nas funcionalidades de login, cadastro, carrinho, checkout e finalização de pedido.

## Objetivo

Demonstrar capacidade de análise de testes, escrita de casos de teste, cobertura de fluxos críticos, organização de documentação e uso de Gherkin em um contexto semelhante ao de ferramentas como Jira, Xray, Zephyr Scale, Azure Test Plans ou TestRail.

## Escopo funcional

- Login
- Cadastro de usuário
- Carrinho de compras
- Checkout
- Finalização de pedido

## Fora de escopo

- Automação de testes
- Testes de performance
- Testes de acessibilidade completos
- Validação real de gateway de pagamento
- Validação direta em banco de dados

## Estrutura do repositório

```text
qa-test-cases-automation-practice/
├── README.md
├── docs/
│   ├── Plano_de_Testes.md
│   ├── Estrategia_de_Testes.md
│   ├── Matriz_de_Rastreabilidade.md
│   └── Checklist_Regressao.md
├── traditional/
│   ├── login.md
│   ├── cadastro.md
│   ├── carrinho.md
│   ├── checkout.md
│   └── finalizar_pedido.md
├── gherkin/
│   ├── login.feature
│   ├── cadastro.feature
│   ├── carrinho.feature
│   ├── checkout.feature
│   └── finalizar_pedido.feature
├── test-data/
│   ├── usuarios.md
│   ├── produtos.md
│   └── cartoes.md
├── bug-report/
│   └── BUG-001.md
└── evidencias/
    └── README.md
```

## Critérios de priorização

| Prioridade | Critério |
|---|---|
| Alta | Fluxo crítico para autenticação, compra ou pagamento |
| Média | Fluxo relevante, mas com alternativa operacional |
| Baixa | Validação complementar ou cenário de menor impacto |

## Tipos de teste aplicados

- Teste funcional
- Teste negativo
- Teste exploratório estruturado
- Smoke test
- Regressão
- Partição de equivalência
- Valor limite
- Validação de campos obrigatórios
- Validação de regra de negócio

## Observação

Este projeto tem escopo reduzido de forma proposital. A intenção é mostrar qualidade de documentação e raciocínio de QA sem transformar o repositório em um volume excessivo de casos repetitivos.
