Cenário: Consultar lista de comprovantes

  Dado o funcionário da área de operações vai realizar uma consulta no portal corporativo

  Quando o menu "Consultar Comprovantes" for acessado
  E os dados da consulta são informados no formato abaixo
  | Nome do campo no canal | Nome do campo no sistema | Tipo Campo   | Tamanho (em caracteres) | Máscara de Formatação | Exemplo      |
  | Agência                | agencia_origem           | Alfanumerico | 4                       | Não se Aplica         | 9999         |
  | Conta                  | conta_origem             | Alfanumérico | 12                      | 9999999999-9          | 0000999999-9 |
  | Período Inicial        | data_inicio_consulta     | Alfanumérico | 10                      | DD.MM.AAAA            | 10.10.2020   |
  | Período Final          | data_fim_consulta        | Alfanumérico | 10                      | DD.MM.AAAA            | 10.10.2020   |

  Então a listagem dos comprovantes é apresentada de acordo com o filtro:
  | Nome do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) | Máscara de Formatação            | Exemplo                              |
  | Data                   | data_operacao                  | Alfanumerico           | 10                      | DD.MM.AAAA                       | 10.10.2020                           |
  | Tipo Operação          | tipo_operacao                  | Alfanumerico           | 60                      | N/A                              | Transferência Interbancária          |
  | Canal Origem           | canal_origem                   | Alfanumerico           | 30                      | N/A                              | Internet                             |
  | Valor                  | simbolo_moeda + valor_operacao | Alfanumérico + Decimal | 4 + 13                  | XXXX9999999999,99 (XXXX = moeda) | R$420,00                             |
  | Link para visualizar   | identificador_comprovante      | Alfanumerico           | 36                      | UUID                             | 897e7fb1-1b38-4381-996c-fbddb3c23298 |