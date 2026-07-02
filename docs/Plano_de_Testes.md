# Plano de Testes

## 1. Objetivo

Validar os principais fluxos funcionais de um e-commerce de prática, cobrindo autenticação, cadastro, carrinho, checkout e finalização de pedido.

## 2. Escopo

### Funcionalidades cobertas

- Login de usuário
- Cadastro de novo usuário
- Inclusão, alteração e remoção de produtos no carrinho
- Preenchimento de dados de checkout
- Finalização do pedido

### Funcionalidades não cobertas

- Integração real com gateway de pagamento
- Validação de antifraude
- Cálculo fiscal
- Integração logística real
- Testes automatizados
- Testes de carga

## 3. Critérios de entrada

- Ambiente disponível
- Navegador atualizado
- Massa de dados definida
- Funcionalidades publicadas no ambiente de teste
- Acesso à aplicação validado

## 4. Critérios de saída

- Casos críticos executados
- Bugs críticos bloqueantes corrigidos ou formalmente aceitos
- Evidências registradas
- Resultado final documentado
- Riscos residuais comunicados

## 5. Riscos

| Risco | Impacto | Mitigação |
|---|---:|---|
| Instabilidade do ambiente | Alto | Reexecução controlada e registro de evidência |
| Dados de teste indisponíveis | Médio | Uso de massa alternativa documentada |
| Comportamento visual diferente por navegador | Médio | Validação em navegador principal e registro de divergências |
| Fluxo de pagamento simulado | Alto | Validar comportamento funcional até confirmação exibida |

## 6. Navegadores sugeridos

- Google Chrome
- Microsoft Edge

## 7. Abordagem

A execução será manual, com registro de evidências para fluxos críticos e abertura de bug report para desvios relevantes.
