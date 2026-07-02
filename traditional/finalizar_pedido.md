# Casos de Teste - Finalizar Pedido

## CT-FIN-001 - Pedido aprovado

| Campo | Valor |
|---|---|
| Funcionalidade | Finalizar Pedido |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Tabela de Decisão |
| Execução | Manual |

### Objetivo

Validar finalização de pedido com pagamento aprovado.

### Pré-condições

- Usuário autenticado
- Checkout preenchido

### Massa de dados

- Cartão aprovado

### Passos

| Passo | Ação |
|---:|---|
| 1 | Revisar pedido |
| 2 | Informar dados de pagamento válidos |
| 3 | Clicar em finalizar pedido |

### Resultado esperado

- Pedido criado
- Mensagem de sucesso exibida
- Número do pedido apresentado

### Pós-condição

Pedido registrado.

---

## CT-FIN-002 - Cartão recusado

| Campo | Valor |
|---|---|
| Funcionalidade | Finalizar Pedido |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Tabela de Decisão |
| Execução | Manual |

### Objetivo

Validar tratamento para pagamento recusado.

### Pré-condições

- Usuário autenticado
- Checkout preenchido

### Massa de dados

- Cartão recusado

### Passos

| Passo | Ação |
|---:|---|
| 1 | Informar cartão recusado |
| 2 | Clicar em finalizar pedido |

### Resultado esperado

- Pedido não é confirmado
- Mensagem de pagamento recusado exibida

### Pós-condição

Pedido não confirmado.

---

## CT-FIN-003 - Produto indisponível ao finalizar

| Campo | Valor |
|---|---|
| Funcionalidade | Finalizar Pedido |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Regra de Negócio |
| Execução | Manual |

### Objetivo

Validar bloqueio quando produto fica sem estoque.

### Pré-condições

- Produto estava no carrinho

### Massa de dados

- Produto sem estoque

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar revisão do pedido |
| 2 | Tentar finalizar compra |

### Resultado esperado

- Sistema bloqueia finalização
- Mensagem de produto indisponível exibida

### Pós-condição

Pedido não criado.

---

## CT-FIN-004 - Timeout no pagamento

| Campo | Valor |
|---|---|
| Funcionalidade | Finalizar Pedido |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Exceção Técnica |
| Execução | Manual |

### Objetivo

Validar tratamento de indisponibilidade do pagamento.

### Pré-condições

- Checkout preenchido

### Massa de dados

- Gateway indisponível ou timeout

### Passos

| Passo | Ação |
|---:|---|
| 1 | Informar pagamento |
| 2 | Clicar em finalizar |
| 3 | Aguardar retorno |

### Resultado esperado

- Sistema exibe falha temporária
- Não deve criar pedido duplicado sem confirmação

### Pós-condição

Status do pedido permanece seguro.

---

## CT-FIN-005 - Duplo clique em finalizar pedido

| Campo | Valor |
|---|---|
| Funcionalidade | Finalizar Pedido |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Concorrência / Idempotência |
| Execução | Manual |

### Objetivo

Validar prevenção de pedido duplicado.

### Pré-condições

- Checkout preenchido
- Dados de pagamento válidos

### Massa de dados

- Cartão aprovado

### Passos

| Passo | Ação |
|---:|---|
| 1 | Clicar duas vezes rapidamente em finalizar pedido |

### Resultado esperado

- Apenas um pedido é criado
- Botão fica desabilitado após primeiro clique ou requisição duplicada é ignorada

### Pós-condição

Um único pedido registrado.

---

