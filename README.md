# QA Test Cases - Automation Practice / QAZANDO Shop

**English** | [Português](README.pt-BR.md)

Manual test documentation and Gherkin scenarios for a practice e-commerce site, focused on the login, sign-up, cart, checkout and order completion features.

> The test artifacts (test plan, test cases, Gherkin scenarios, test data and bug report) are written in Portuguese.

## Goal

Demonstrate skills in test analysis, test case writing, coverage of critical flows, documentation organization and use of Gherkin, in a context similar to tools such as Jira, Xray, Zephyr Scale, Azure Test Plans or TestRail.

## Functional scope

- Login
- User sign-up
- Shopping cart
- Checkout
- Order completion

## Out of scope

- Test automation
- Performance testing
- Full accessibility testing
- Real payment gateway validation
- Direct database validation

## Repository structure

```text
qa-test-cases-automation-practice/
├── README.md
├── docs/
│   ├── Plano_de_Testes.md              (Test Plan)
│   ├── Estrategia_de_Testes.md         (Test Strategy)
│   ├── Matriz_de_Rastreabilidade.md    (Traceability Matrix)
│   └── Checklist_Regressao.md          (Regression Checklist)
├── traditional/                        (step-by-step test cases)
│   ├── login.md
│   ├── cadastro.md                     (sign-up)
│   ├── carrinho.md                     (cart)
│   ├── checkout.md
│   └── finalizar_pedido.md             (order completion)
├── gherkin/
│   ├── login.feature
│   ├── cadastro.feature
│   ├── carrinho.feature
│   ├── checkout.feature
│   └── finalizar_pedido.feature
├── test-data/
│   ├── usuarios.md                     (users)
│   ├── produtos.md                     (products)
│   └── cartoes.md                      (cards)
├── bug-report/
│   └── BUG-001.md
└── evidencias/                         (test evidence)
    └── README.md
```

## Prioritization criteria

| Priority | Criterion |
|---|---|
| High | Critical flow for authentication, purchase or payment |
| Medium | Relevant flow, but with an operational workaround |
| Low | Complementary validation or lower-impact scenario |

## Test types applied

- Functional testing
- Negative testing
- Structured exploratory testing
- Smoke testing
- Regression testing
- Equivalence partitioning
- Boundary value analysis
- Required field validation
- Business rule validation

## Note

This project has a deliberately reduced scope. The intention is to show documentation quality and QA reasoning without turning the repository into an excessive volume of repetitive test cases.
