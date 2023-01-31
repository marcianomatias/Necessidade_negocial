# TESTE

## TESTE NOBE - Necessidade Negocial
A aplicação trata as movimentações que um cliente pode fazer ao chegar no caixa de um banco.

### O cliente pode fazer:
    • Cadastrar, Editar e Encerrar sua Conta
    • Realizar Depósitos
    • Realizar Saques
    • Realizar Transferências entre Contas
    • Solicitar Saldo
    • Solicitar Extrato Filtrando por Data Início e Final

### Regras:
    • Uma conta não pode ser excluída
    • Para realizar saques e transferências é necessário autenticar o usuário
    • O saldo de uma conta nunca pode ficar negativo
    • Taxa de transferência:
        ◦ De segunda a sexta das 9 às 18 horas a taxa é 5 reais por transferência
        ◦ Fora desse horário a taxa é 7 reais
        ◦ Acima de 1000 reais há um adicional de 10 reais na taxa
### Necessidade Técnica
    • Hospedar a aplicação no Heroku
    • Versionar o código com Git
    • Fazer testes unitários e de aceitação com Rspec
    • Técnicas de refactoring e clean code
    • Boas práticas em Ruby e Rails
### O que será analisado
    • Será verificado:
        ◦ Os requisitos pedidos nos testes
        ◦ O layout
        ◦ A qualidade do código
        ◦ Os testes automatizados
### A Entrega
    • Enviar o código por email em um arquivo zip (contendo os arquivos de versionamento do git)
    • Favor enviar o linkedin e Github



# Models

# Cliente

```shell
rails g model Client name cpf password
```

{
  id:
  status:
  nome:
  cpf:
  senha:
}

# Movimentacoes

```shell
rails g model Movement role client:references value date client_to:references
```

{
  id:
  role:
  cliente:
  valor:
  data:
  cliente_origin:
  created_at: 31/01/2023 06:47:32
  updated_at: 31/01/2023 06:50:32
}

# Atividades

1. Cadastrar (criar conta)
2. Editar conta (cadastro)
3. Encerrar conta (cadastro)
4. Fazer deposito (cadastro)
5. Fazer saque (saldo)
6. Fazer transferencia (saldo)
7. Saldo (cadastro)
8. Extrato (cadastro)


Realizado por Marciano Matias