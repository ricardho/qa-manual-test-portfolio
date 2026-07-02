# Estratégia de Testes

## Abordagem geral

A estratégia prioriza os fluxos de maior impacto para o negócio: autenticação, cadastro, carrinho, checkout e pedido. O foco é validar se o usuário consegue concluir uma jornada de compra e se o sistema trata corretamente entradas inválidas.

## Camadas de validação

| Camada | Objetivo |
|---|---|
| Smoke | Validar se os fluxos essenciais estão disponíveis |
| Funcional | Validar regras e comportamento esperado |
| Negativo | Validar tratamento de erros e bloqueios |
| Regressão | Garantir que alterações não quebrem fluxos críticos |

## Técnicas utilizadas

- Partição de equivalência: dados válidos e inválidos
- Valor limite: quantidade mínima e máxima no carrinho
- Tabela de decisão: pagamento aprovado, recusado ou indisponível
- Teste baseado em risco: prioridade para login, checkout e pagamento

## Critérios de severidade

| Severidade | Descrição |
|---|---|
| Crítica | Impede login, compra ou pagamento |
| Alta | Impacta fluxo principal, mas possui contorno parcial |
| Média | Afeta usabilidade ou validação secundária |
| Baixa | Problema visual ou ajuste de menor impacto |
