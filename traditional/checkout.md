# Casos de Teste - Checkout

## CT-CHK-001 - Checkout com dados válidos

| Campo | Valor |
|---|---|
| Funcionalidade | Checkout |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Caixa Preta |
| Execução | Manual |

### Objetivo

Validar preenchimento completo do checkout.

### Pré-condições

- Usuário autenticado
- Produto no carrinho

### Massa de dados

- Endereço válido
- CEP válido

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar carrinho |
| 2 | Clicar em checkout |
| 3 | Preencher dados de entrega |
| 4 | Selecionar forma de envio |
| 5 | Avançar |

### Resultado esperado

- Dados aceitos
- Resumo do pedido exibido
- Usuário pode seguir para pagamento

### Pós-condição

Checkout preenchido.

---

## CT-CHK-002 - CEP inválido

| Campo | Valor |
|---|---|
| Funcionalidade | Checkout |
| Prioridade | Média |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Partição de Equivalência |
| Execução | Manual |

### Objetivo

Validar bloqueio de CEP inválido.

### Pré-condições

- Usuário autenticado
- Produto no carrinho

### Massa de dados

- CEP: 00000-000

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar checkout |
| 2 | Informar CEP inválido |
| 3 | Avançar |

### Resultado esperado

- Sistema informa CEP inválido
- Checkout não avança

### Pós-condição

Usuário permanece no checkout.

---

## CT-CHK-003 - Endereço obrigatório não preenchido

| Campo | Valor |
|---|---|
| Funcionalidade | Checkout |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Validação de Campos |
| Execução | Manual |

### Objetivo

Validar obrigatoriedade de endereço.

### Pré-condições

- Usuário autenticado
- Produto no carrinho

### Massa de dados

- Não aplicável

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar checkout |
| 2 | Deixar endereço vazio |
| 3 | Avançar |

### Resultado esperado

- Campo obrigatório sinalizado
- Checkout não avança

### Pós-condição

Usuário permanece no formulário.

---

## CT-CHK-004 - Cupom inválido

| Campo | Valor |
|---|---|
| Funcionalidade | Checkout |
| Prioridade | Baixa |
| Severidade | Média |
| Tipo | Funcional |
| Técnica | Partição de Equivalência |
| Execução | Manual |

### Objetivo

Validar tratamento para cupom inexistente.

### Pré-condições

- Produto no carrinho

### Massa de dados

- Cupom: CUPOMINVALIDO

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar checkout |
| 2 | Informar cupom inválido |
| 3 | Aplicar cupom |

### Resultado esperado

- Cupom recusado
- Valor do pedido não recebe desconto indevido

### Pós-condição

Valor permanece sem desconto.

---

## CT-CHK-005 - Sessão expirada no checkout

| Campo | Valor |
|---|---|
| Funcionalidade | Checkout |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Transição de Estados |
| Execução | Manual |

### Objetivo

Validar comportamento quando sessão expira durante checkout.

### Pré-condições

- Usuário autenticado
- Produto no carrinho

### Massa de dados

- Sessão expirada

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar checkout |
| 2 | Simular expiração de sessão |
| 3 | Tentar avançar |

### Resultado esperado

- Sistema solicita novo login
- Dados sensíveis não são processados sem autenticação

### Pós-condição

Usuário redirecionado para login ou avisado.

---

