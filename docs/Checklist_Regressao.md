# Checklist de Regressão

## Login

- [ ] Login com usuário válido
- [ ] Login bloqueado com senha inválida
- [ ] Login bloqueado com usuário inexistente
- [ ] Validação de campos obrigatórios
- [ ] Validação de formato de e-mail

## Cadastro

- [ ] Cadastro de novo usuário
- [ ] Bloqueio de e-mail já cadastrado
- [ ] Validação de senha divergente
- [ ] Validação de campos obrigatórios
- [ ] Validação de senha fora do padrão

## Carrinho

- [ ] Produto adicionado ao carrinho
- [ ] Quantidade alterada
- [ ] Produto removido
- [ ] Carrinho vazio tratado corretamente
- [ ] Quantidade inválida bloqueada

## Checkout

- [ ] Checkout com dados válidos
- [ ] CEP inválido bloqueado
- [ ] Endereço obrigatório validado
- [ ] Cupom inválido tratado
- [ ] Sessão expirada tratada

## Finalizar pedido

- [ ] Pedido aprovado
- [ ] Cartão recusado tratado
- [ ] Produto indisponível bloqueado
- [ ] Timeout de pagamento tratado
- [ ] Duplo clique em finalizar não gera pedido duplicado
