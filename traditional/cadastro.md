# Casos de Teste - Cadastro

## CT-CAD-001 - Cadastro com dados válidos

| Campo | Valor |
|---|---|
| Funcionalidade | Cadastro |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Caixa Preta |
| Execução | Manual |

### Objetivo

Validar criação de conta com dados válidos.

### Pré-condições

- E-mail ainda não cadastrado

### Massa de dados

- Nome: Usuário QA
- E-mail novo
- Senha: Teste@123

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar cadastro |
| 2 | Preencher nome |
| 3 | Preencher e-mail |
| 4 | Preencher senha |
| 5 | Confirmar cadastro |

### Resultado esperado

- Conta criada com sucesso
- Usuário recebe confirmação ou acesso à conta

### Pós-condição

Usuário cadastrado.

---

## CT-CAD-002 - E-mail já cadastrado

| Campo | Valor |
|---|---|
| Funcionalidade | Cadastro |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Partição de Equivalência |
| Execução | Manual |

### Objetivo

Validar bloqueio de cadastro duplicado.

### Pré-condições

- E-mail já cadastrado

### Massa de dados

- E-mail existente

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar cadastro |
| 2 | Informar dados válidos com e-mail já existente |
| 3 | Confirmar cadastro |

### Resultado esperado

- Cadastro não é criado
- Sistema informa e-mail já utilizado

### Pós-condição

Nenhuma conta duplicada criada.

---

## CT-CAD-003 - Senhas divergentes

| Campo | Valor |
|---|---|
| Funcionalidade | Cadastro |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Validação de Regra |
| Execução | Manual |

### Objetivo

Validar bloqueio quando senha e confirmação não conferem.

### Pré-condições

- Sistema disponível

### Massa de dados

- Senha: Teste@123
- Confirmação: Teste@456

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar cadastro |
| 2 | Preencher dados |
| 3 | Informar senhas diferentes |
| 4 | Confirmar cadastro |

### Resultado esperado

- Sistema exibe erro de senhas divergentes
- Cadastro não é concluído

### Pós-condição

Usuário não cadastrado.

---

## CT-CAD-004 - Campos obrigatórios vazios

| Campo | Valor |
|---|---|
| Funcionalidade | Cadastro |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Validação de Campos |
| Execução | Manual |

### Objetivo

Validar campos obrigatórios do cadastro.

### Pré-condições

- Sistema disponível

### Massa de dados

- Não aplicável

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar cadastro |
| 2 | Deixar campos obrigatórios vazios |
| 3 | Confirmar cadastro |

### Resultado esperado

- Campos obrigatórios são sinalizados
- Cadastro não é enviado

### Pós-condição

Usuário permanece no formulário.

---

## CT-CAD-005 - Senha fora do padrão mínimo

| Campo | Valor |
|---|---|
| Funcionalidade | Cadastro |
| Prioridade | Média |
| Severidade | Média |
| Tipo | Funcional |
| Técnica | Valor Limite |
| Execução | Manual |

### Objetivo

Validar bloqueio de senha fraca ou abaixo do mínimo.

### Pré-condições

- Sistema disponível

### Massa de dados

- Senha: 123

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar cadastro |
| 2 | Preencher dados válidos |
| 3 | Informar senha curta |
| 4 | Confirmar cadastro |

### Resultado esperado

- Sistema bloqueia cadastro
- Mensagem de senha inválida exibida

### Pós-condição

Usuário não cadastrado.

---

