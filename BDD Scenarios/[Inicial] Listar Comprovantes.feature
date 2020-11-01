Cenário: Consultar lista de comprovantes

  Dado o funcionário da área de operações vai realizar uma consulta no portal corporativo

  Quando o menu "Consultar Comprovantes" for acessado
  E os dados da consulta são informados no formato abaixo
  | Nome do campo no canal | Nome do campo no sistema | Tipo Campo   | Tamanho (em caracteres) | 
  | Agência                | agencia_origem           | Alfanumerico | 4                       |
  | Conta                  | conta_origem             | Alfanumérico | 12                      | 
  | Período Inicial        | data_inicio_consulta     | Alfanumérico | 10                      |
  | Período Final          | data_fim_consulta        | Alfanumérico | 10                      |

  Então a listagem dos comprovantes é apresentada de acordo com o filtro:
  | Nome do campo no canal | Nome do campo no sistema       | Tipo Campo             | Tamanho (em caracteres) |
  | Data                   | data_operacao                  | Alfanumerico           | 10                      | 
  | Tipo Operação          | tipo_operacao                  | Alfanumerico           | 60                      | 
  | Canal Origem           | canal_origem                   | Alfanumerico           | 30                      | 
  | Valor                  | simbolo_moeda + valor_operacao | Alfanumérico + Decimal | 4 + 13                  | 
  | Link para visualizar   | identificador_comprovante      | Alfanumerico           | 36                      | 