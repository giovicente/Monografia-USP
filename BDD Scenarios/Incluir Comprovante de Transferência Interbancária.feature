Cenário: Incluir comprovante de transferência interbancária (conta origem e destino pertencem à instituições diferentes)

    Dado que o cliente realizou as etapas para realizar uma Transferência Interbancária
    E a tela de confirmação da transferência é apresentada ao cliente

    Quando o cliente autoriza a realização de uma transferência bancária ao clicar em "Efetuar Operação"

    Então o comprovante da operação é armazenado e apresentado ao cliente conforme regras especificadas abaixo (todos os campos são obrigatórios e a ordem de campos deve ser respeitada):
    | Dados da Conta Origem                                                                                                                              |
    | Label do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) | Máscara de Formatação                | Exemplo           |
    | Nome                    | nome_cliente                   | Alfanumérico           | 256                     | Não se Aplica                        | Giovanni Vicente  |
    | Agência                 | agencia_origem                 | Alfanumerico           | 4                       | Não se Aplica                        | 9999              |
    | Conta                   | conta_origem                   | Alfanumérico           | 12                      | 999999999-9                          | 0000999999-9      |

    | Dados da Conta Destino                                                                                                                                                 |
    | Label do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) | Máscara de Formatação                | Exemplo           |
    | Nome Favorecido         | nome_favorecido                | Alfanumérico           | 256                     | Não se Aplica                        | Giovanni Vicente  |
    | * Não se Aplica *       | tipo_pessoa                    | Alfanumérico           | 1                       | "F" para física ou "J" para jurídica | F                 |
    | CPF / CNPJ              | numero_documento               | Alfanumérico           | 18                      | XXX.XXX.XXX-XX ou XX.XXX.XXX/XXXX-XX | 999-999-999-99    |
    | Instituição             | nome_insituicao_financeira     | Alfanumérico           | 256                     | Não se Aplica                        | Banco Fictício SA |
    | Agência                 | agencia_destino                | Alfanumérico           | 4                       | Não se Aplica                        | 9999              |
    | Conta                   | conta_destino                  | Alfanumérico           | 12                      | 9999999999-9                         | 0000999999-9      |
    | Valor                   | simbolo_moeda + valor_operacao | Alfanumérico + Decimal | 4 + 13                  | XXXX9999999999,99 (XXXX = moeda)     | R$150,00          |
    | Finalidade              | finanlidade_transferencia      | Alfanumérico           | 256                     | Não se Aplica                        | Crédito em Conta  |

    | Dados de Rodapé                                                                                                                                                        |
    | Label do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) | Máscara de Formatação                | Exemplo           |
    | Operação efetuada em    | data_operacao                  | Alfanumérico           | 10                      | DD/MM/AAAA                           | 10/09/2020        |
    | às                      | hora_operacao                  | Alfanumérico           | 8                       | HH:MM:SS                             | 08:00:00          |