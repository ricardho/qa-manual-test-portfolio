# Casos de Teste - Carrinho

## CT-CAR-001 - Adicionar produto ao carrinho

| Campo | Valor |
|---|---|
| Funcionalidade | Carrinho |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Caixa Preta |
| Execução | Manual |

### Objetivo

Validar inclusão de produto no carrinho.

### Pré-condições

- Produto disponível

### Massa de dados

- Produto: Camiseta QA

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar página de produtos |
| 2 | Selecionar produto |
| 3 | Clicar em adicionar ao carrinho |
| 4 | Acessar carrinho |

### Resultado esperado

- Produto aparece no carrinho
- Quantidade inicial exibida
- Total atualizado

### Pós-condição

Carrinho contém o produto.

---

## CT-CAR-002 - Alterar quantidade do produto

| Campo | Valor |
|---|---|
| Funcionalidade | Carrinho |
| Prioridade | Média |
| Severidade | Média |
| Tipo | Funcional |
| Técnica | Valor Limite |
| Execução | Manual |

### Objetivo

Validar atualização de quantidade.

### Pré-condições

- Produto no carrinho

### Massa de dados

- Quantidade: 2

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar carrinho |
| 2 | Alterar quantidade para 2 |
| 3 | Atualizar carrinho |

### Resultado esperado

- Quantidade atualizada
- Subtotal recalculado

### Pós-condição

Carrinho atualizado.

---

## CT-CAR-003 - Remover produto do carrinho

| Campo | Valor |
|---|---|
| Funcionalidade | Carrinho |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Caixa Preta |
| Execução | Manual |

### Objetivo

Validar remoção de item.

### Pré-condições

- Produto no carrinho

### Massa de dados

- Produto existente no carrinho

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar carrinho |
| 2 | Clicar em remover produto |

### Resultado esperado

- Produto removido
- Total recalculado
- Carrinho vazio quando não houver outros itens

### Pós-condição

Produto removido.

---

## CT-CAR-004 - Carrinho vazio

| Campo | Valor |
|---|---|
| Funcionalidade | Carrinho |
| Prioridade | Média |
| Severidade | Média |
| Tipo | Funcional |
| Técnica | Estado do Sistema |
| Execução | Manual |

### Objetivo

Validar comportamento sem itens.

### Pré-condições

- Carrinho sem produtos

### Massa de dados

- Não aplicável

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar carrinho sem adicionar produtos |

### Resultado esperado

- Mensagem de carrinho vazio exibida
- Botão de checkout não deve permitir compra sem item

### Pós-condição

Carrinho permanece vazio.

---

## CT-CAR-005 - Quantidade inválida

| Campo | Valor |
|---|---|
| Funcionalidade | Carrinho |
| Prioridade | Média |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Valor Limite |
| Execução | Manual |

### Objetivo

Validar bloqueio para quantidade zero ou negativa.

### Pré-condições

- Produto no carrinho

### Massa de dados

- Quantidade: 0 ou -1

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar carrinho |
| 2 | Alterar quantidade para valor inválido |
| 3 | Atualizar carrinho |

### Resultado esperado

- Sistema bloqueia quantidade inválida
- Subtotal não deve ser calculado com valor inválido

### Pós-condição

Carrinho mantém valor válido anterior.

---

