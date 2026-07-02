# Casos de Teste - Login

## CT-LOGIN-001 - Login com credenciais válidas

| Campo | Valor |
|---|---|
| Funcionalidade | Login |
| Prioridade | Alta |
| Severidade | Crítica |
| Tipo | Funcional |
| Técnica | Caixa Preta |
| Execução | Manual |

### Objetivo

Validar autenticação com usuário e senha válidos.

### Pré-condições

- Usuário cadastrado
- Sistema disponível

### Massa de dados

- E-mail: qa.usuario@teste.com
- Senha: Teste@123

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar a página de login |
| 2 | Informar e-mail válido |
| 3 | Informar senha válida |
| 4 | Clicar em Entrar |

### Resultado esperado

- Usuário autenticado com sucesso
- Área logada exibida
- Sessão iniciada

### Pós-condição

Usuário autenticado.

---

## CT-LOGIN-002 - Senha inválida

| Campo | Valor |
|---|---|
| Funcionalidade | Login |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Partição de Equivalência |
| Execução | Manual |

### Objetivo

Validar bloqueio de login com senha incorreta.

### Pré-condições

- Usuário cadastrado

### Massa de dados

- E-mail válido
- Senha incorreta

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar login |
| 2 | Informar e-mail válido |
| 3 | Informar senha incorreta |
| 4 | Clicar em Entrar |

### Resultado esperado

- Login não realizado
- Mensagem de erro exibida
- Usuário permanece na tela de login

### Pós-condição

Usuário não autenticado.

---

## CT-LOGIN-003 - Usuário inexistente

| Campo | Valor |
|---|---|
| Funcionalidade | Login |
| Prioridade | Média |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Partição de Equivalência |
| Execução | Manual |

### Objetivo

Validar tratamento para e-mail não cadastrado.

### Pré-condições

- Sistema disponível

### Massa de dados

- E-mail inexistente
- Senha qualquer

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar login |
| 2 | Informar e-mail inexistente |
| 3 | Informar senha |
| 4 | Clicar em Entrar |

### Resultado esperado

- Sistema informa credenciais inválidas ou usuário inexistente
- Sessão não é criada

### Pós-condição

Usuário não autenticado.

---

## CT-LOGIN-004 - Campos obrigatórios vazios

| Campo | Valor |
|---|---|
| Funcionalidade | Login |
| Prioridade | Alta |
| Severidade | Alta |
| Tipo | Funcional |
| Técnica | Validação de Campos |
| Execução | Manual |

### Objetivo

Validar obrigatoriedade dos campos de login.

### Pré-condições

- Sistema disponível

### Massa de dados

- Não aplicável

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar login |
| 2 | Não preencher e-mail |
| 3 | Não preencher senha |
| 4 | Clicar em Entrar |

### Resultado esperado

- Campos obrigatórios são sinalizados
- Login não é enviado

### Pós-condição

Usuário permanece na tela.

---

## CT-LOGIN-005 - Formato inválido de e-mail

| Campo | Valor |
|---|---|
| Funcionalidade | Login |
| Prioridade | Média |
| Severidade | Média |
| Tipo | Funcional |
| Técnica | Partição de Equivalência |
| Execução | Manual |

### Objetivo

Validar bloqueio de e-mail em formato inválido.

### Pré-condições

- Sistema disponível

### Massa de dados

- E-mail: usuario.com
- Senha: Teste@123

### Passos

| Passo | Ação |
|---:|---|
| 1 | Acessar login |
| 2 | Informar e-mail inválido |
| 3 | Informar senha |
| 4 | Clicar em Entrar |

### Resultado esperado

- Sistema valida formato do e-mail
- Login não é realizado

### Pós-condição

Usuário permanece na tela.

---

