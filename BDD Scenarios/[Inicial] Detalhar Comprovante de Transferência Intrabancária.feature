Cenário: Consultar comprovante de transferência intrabancária (conta origem e destino pertencem à mesma instituição)

    Dado que o funcionário da área de operações realizou a listagem de comprovantes (cenário "Consultar lista de comprovantes")
    E clicar em "Link para visualizar" em um comprovante de transferência intrabancária

    Então o comprovante da operação é armazenado e apresentado ao cliente conforme regras especificadas abaixo (todos os campos são obrigatórios e a ordem de campos deve ser respeitada):
    | Dados da Conta Origem                                                                                       |
    | Label do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) |
    | Nome                    | nome_cliente                   | Alfanumérico           | 256                     |
    | Agência                 | agencia_origem                 | Alfanumerico           | 4                       |
    | Conta                   | conta_origem                   | Alfanumérico           | 12                      |

    | Dados da Conta Destino                                                                                      |
    | Label do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) | 
    | Nome Favorecido         | nome_favorecido                | Alfanumérico           | 256                     | 
    | Agência                 | agencia_destino                | Alfanumérico           | 4                       | 
    | Conta                   | conta_destino                  | Alfanumérico           | 12                      | 
    | Valor                   | simbolo_moeda + valor_operacao | Alfanumérico + Decimal | 4 + 13                  | 

    | Dados de Rodapé                                                                                             |
    | Label do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) | 
    | Operação efetuada em    | data_operacao                  | Alfanumérico           | 10                      | 
    | às                      | hora_operacao                  | Alfanumérico           | 8                       | 