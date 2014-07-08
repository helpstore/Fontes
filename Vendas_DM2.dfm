object DmVendas2: TDmVendas2
  OldCreateOrder = False
  Left = 284
  Top = 69
  Height = 686
  Width = 978
  object qryGrafNF: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from pcd_imprime_nf_grafica(:cnpj,:venda,:pessoa,:dt_nf' +
        ',:num_nf)')
    Left = 88
    Top = 8
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_nf'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'num_nf'
        ParamType = ptUnknown
      end>
    object qryGrafNFCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_NOME"'
      Size = 50
    end
    object qryGrafNFCLI_PROPRIEDADE: TIBStringField
      FieldName = 'CLI_PROPRIEDADE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_PROPRIEDADE"'
      Size = 50
    end
    object qryGrafNFCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_CODIGO"'
    end
    object qryGrafNFCLI_IE_SUB: TIBStringField
      FieldName = 'CLI_IE_SUB'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_IE_SUB"'
      Size = 15
    end
    object qryGrafNFCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_IE"'
      Size = 15
    end
    object qryGrafNFCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_CNPJ"'
    end
    object qryGrafNFCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_BAIRRO"'
      Size = 50
    end
    object qryGrafNFCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_CEP"'
      Size = 10
    end
    object qryGrafNFCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_CIDADE"'
      Size = 50
    end
    object qryGrafNFCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_FONE"'
    end
    object qryGrafNFCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_UF"'
      FixedChar = True
      Size = 2
    end
    object qryGrafNFVD_NATUREZA: TIBStringField
      FieldName = 'VD_NATUREZA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_NATUREZA"'
      Size = 50
    end
    object qryGrafNFVD_MSG_ECF: TIBStringField
      FieldName = 'VD_MSG_ECF'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_MSG_ECF"'
      Size = 50
    end
    object qryGrafNFVD_OBS: TIBStringField
      FieldName = 'VD_OBS'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_OBS"'
      Size = 200
    end
    object qryGrafNFVD_CFOP: TIntegerField
      FieldName = 'VD_CFOP'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_CFOP"'
    end
    object qryGrafNFVD_CODIGO: TIntegerField
      FieldName = 'VD_CODIGO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_CODIGO"'
    end
    object qryGrafNFVD_DT_EMISSAO: TDateField
      FieldName = 'VD_DT_EMISSAO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_DT_EMISSAO"'
    end
    object qryGrafNFVD_DT_SAIDA: TDateField
      FieldName = 'VD_DT_SAIDA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_DT_SAIDA"'
    end
    object qryGrafNFVD_HORA_SAIDA: TTimeField
      FieldName = 'VD_HORA_SAIDA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_HORA_SAIDA"'
    end
    object qryGrafNFVD_TOTAL_PROD: TFloatField
      FieldName = 'VD_TOTAL_PROD'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_TOTAL_PROD"'
    end
    object qryGrafNFVD_TOTAL_LIQUIDO: TFloatField
      FieldName = 'VD_TOTAL_LIQUIDO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_TOTAL_LIQUIDO"'
    end
    object qryGrafNFVD_ICMS_DEBITADO: TFloatField
      FieldName = 'VD_ICMS_DEBITADO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_ICMS_DEBITADO"'
    end
    object qryGrafNFVD_TOTAL_NF: TFloatField
      FieldName = 'VD_TOTAL_NF'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_TOTAL_NF"'
    end
    object qryGrafNFVD_DESCONTO: TFloatField
      FieldName = 'VD_DESCONTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_DESCONTO"'
    end
    object qryGrafNFVD_VLR_FRETE: TFloatField
      FieldName = 'VD_VLR_FRETE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_VLR_FRETE"'
    end
    object qryGrafNFVD_VLR_SEGURO: TFloatField
      FieldName = 'VD_VLR_SEGURO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_VLR_SEGURO"'
    end
    object qryGrafNFVD_VLR_OUTRAS_DESP: TFloatField
      FieldName = 'VD_VLR_OUTRAS_DESP'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_VLR_OUTRAS_DESP"'
    end
    object qryGrafNFVD_BASE_CALC: TFloatField
      FieldName = 'VD_BASE_CALC'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_BASE_CALC"'
    end
    object qryGrafNFVD_VLR_ICM: TFloatField
      FieldName = 'VD_VLR_ICM'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_VLR_ICM"'
    end
    object qryGrafNFVD_BASE_CALC_SUB: TFloatField
      FieldName = 'VD_BASE_CALC_SUB'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_BASE_CALC_SUB"'
    end
    object qryGrafNFVD_VLR_ICM_SUB: TFloatField
      FieldName = 'VD_VLR_ICM_SUB'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_VLR_ICM_SUB"'
    end
    object qryGrafNFVD_VLR_IPI: TFloatField
      FieldName = 'VD_VLR_IPI'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_VLR_IPI"'
    end
    object qryGrafNFPRD_IPI: TFloatField
      FieldName = 'PRD_IPI'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_IPI"'
    end
    object qryGrafNFPRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_CODIGO"'
      Size = 15
    end
    object qryGrafNFPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_NOME"'
      Size = 400
    end
    object qryGrafNFPRD_UNIDADE: TIBStringField
      FieldName = 'PRD_UNIDADE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qryGrafNFPRD_SIT_TRIB: TIBStringField
      FieldName = 'PRD_SIT_TRIB'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_SIT_TRIB"'
      FixedChar = True
      Size = 6
    end
    object qryGrafNFPRD_CL_FIS: TIBStringField
      FieldName = 'PRD_CL_FIS'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_CL_FIS"'
      FixedChar = True
      Size = 2
    end
    object qryGrafNFPRD_QTDE: TFloatField
      FieldName = 'PRD_QTDE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_QTDE"'
    end
    object qryGrafNFPRD_VLR_UNIT: TFloatField
      FieldName = 'PRD_VLR_UNIT'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_VLR_UNIT"'
    end
    object qryGrafNFPRD_VLR_TTL_ITEM: TFloatField
      FieldName = 'PRD_VLR_TTL_ITEM'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_VLR_TTL_ITEM"'
    end
    object qryGrafNFPRD_ALIQ_ICM: TIBStringField
      FieldName = 'PRD_ALIQ_ICM'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_ALIQ_ICM"'
      Size = 10
    end
    object qryGrafNFPRD_COMPLEMENTO: TIBStringField
      FieldName = 'PRD_COMPLEMENTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_COMPLEMENTO"'
      Size = 100
    end
    object qryGrafNFPRD_REDUCAO: TIBStringField
      FieldName = 'PRD_REDUCAO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_REDUCAO"'
      Size = 80
    end
    object qryGrafNFVDI_COMPLEMENTO: TIBStringField
      FieldName = 'VDI_COMPLEMENTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VDI_COMPLEMENTO"'
      Size = 100
    end
    object qryGrafNFTRP_NOME: TIBStringField
      FieldName = 'TRP_NOME'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_NOME"'
      Size = 50
    end
    object qryGrafNFTRP_CNPJ: TIBStringField
      FieldName = 'TRP_CNPJ'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_CNPJ"'
      Size = 15
    end
    object qryGrafNFTRP_PLACA: TIBStringField
      FieldName = 'TRP_PLACA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_PLACA"'
      Size = 8
    end
    object qryGrafNFTRP_ENDERECO: TIBStringField
      FieldName = 'TRP_ENDERECO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_ENDERECO"'
      Size = 50
    end
    object qryGrafNFTRP_CIDADE: TIBStringField
      FieldName = 'TRP_CIDADE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_CIDADE"'
      Size = 50
    end
    object qryGrafNFTRP_UF: TIBStringField
      FieldName = 'TRP_UF'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_UF"'
      FixedChar = True
      Size = 2
    end
    object qryGrafNFTRP_UF_VEICULO: TIBStringField
      FieldName = 'TRP_UF_VEICULO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_UF_VEICULO"'
      FixedChar = True
      Size = 2
    end
    object qryGrafNFTRP_FRETE: TIntegerField
      FieldName = 'TRP_FRETE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_FRETE"'
    end
    object qryGrafNFTRP_IE: TIBStringField
      FieldName = 'TRP_IE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_IE"'
      Size = 15
    end
    object qryGrafNFTRP_PESO_LIQ: TFloatField
      FieldName = 'TRP_PESO_LIQ'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_PESO_LIQ"'
    end
    object qryGrafNFTRP_PESO_BRUTO: TFloatField
      FieldName = 'TRP_PESO_BRUTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_PESO_BRUTO"'
    end
    object qryGrafNFTRP_PESO_QTDE: TFloatField
      FieldName = 'TRP_PESO_QTDE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_PESO_QTDE"'
    end
    object qryGrafNFTRP_ESPECIE: TIBStringField
      FieldName = 'TRP_ESPECIE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_ESPECIE"'
      Size = 50
    end
    object qryGrafNFTRP_MARCA: TIBStringField
      FieldName = 'TRP_MARCA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_MARCA"'
      Size = 50
    end
    object qryGrafNFTRP_NUMERO: TIBStringField
      FieldName = 'TRP_NUMERO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."TRP_NUMERO"'
      Size = 50
    end
    object qryGrafNFPRD_OBSERVACAO: TIBStringField
      FieldName = 'PRD_OBSERVACAO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_OBSERVACAO"'
      Size = 200
    end
    object qryGrafNFGPR_OBS: TMemoField
      FieldName = 'GPR_OBS'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."GPR_OBS"'
      BlobType = ftMemo
      Size = 8
    end
    object qryGrafNFPC_PARCELAMENTO: TIBStringField
      FieldName = 'PC_PARCELAMENTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PC_PARCELAMENTO"'
      Size = 300
    end
    object qryGrafNFPRD_PRODUTO_LOTE: TIBStringField
      FieldName = 'PRD_PRODUTO_LOTE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_PRODUTO_LOTE"'
      Size = 250
    end
    object qryGrafNFVD_ENTRADA: TIBStringField
      FieldName = 'VD_ENTRADA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_ENTRADA"'
      FixedChar = True
      Size = 1
    end
    object qryGrafNFVD_SAIDA: TIBStringField
      FieldName = 'VD_SAIDA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_SAIDA"'
      FixedChar = True
      Size = 1
    end
    object qryGrafNFNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."NUM_NF"'
    end
    object qryGrafNFALT_DETALHE: TFloatField
      FieldName = 'ALT_DETALHE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."ALT_DETALHE"'
    end
    object qryGrafNFDESC_ICM_TTL_PROD: TFloatField
      FieldName = 'DESC_ICM_TTL_PROD'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_TTL_PROD"'
    end
    object qryGrafNFDESC_ICM_LBL_TTL_PROD: TIBStringField
      FieldName = 'DESC_ICM_LBL_TTL_PROD'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_LBL_TTL_PROD"'
      Size = 50
    end
    object qryGrafNFDESC_ICM_TTL_DESCTO: TFloatField
      FieldName = 'DESC_ICM_TTL_DESCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_TTL_DESCTO"'
    end
    object qryGrafNFDESC_ICM_LBL_TTL_DESCTO: TIBStringField
      FieldName = 'DESC_ICM_LBL_TTL_DESCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_LBL_TTL_DESCTO"'
      Size = 50
    end
    object qryGrafNFDESC_ICM_TTL_LIQ: TFloatField
      FieldName = 'DESC_ICM_TTL_LIQ'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_TTL_LIQ"'
    end
    object qryGrafNFDESC_ICM_LBL_TTL_LIQ: TIBStringField
      FieldName = 'DESC_ICM_LBL_TTL_LIQ'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_LBL_TTL_LIQ"'
      Size = 50
    end
    object qryGrafNFDESC_ICM_MSG_1: TIBStringField
      FieldName = 'DESC_ICM_MSG_1'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_MSG_1"'
      Size = 200
    end
    object qryGrafNFDESC_ICM_MSG_2: TIBStringField
      FieldName = 'DESC_ICM_MSG_2'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DESC_ICM_MSG_2"'
      Size = 200
    end
    object qryGrafNFCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_FAX"'
    end
    object qryGrafNFVEND_NOME: TIBStringField
      FieldName = 'VEND_NOME'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VEND_NOME"'
      Size = 50
    end
    object qryGrafNFVEND_COD: TIntegerField
      FieldName = 'VEND_COD'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VEND_COD"'
    end
    object qryGrafNFPRD_PORC_DESC: TFloatField
      FieldName = 'PRD_PORC_DESC'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_PORC_DESC"'
    end
    object qryGrafNFPRC_UNITARIO_LIQ: TFloatField
      FieldName = 'PRC_UNITARIO_LIQ'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRC_UNITARIO_LIQ"'
    end
    object qryGrafNFPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRC_UNITARIO"'
    end
    object qryGrafNFCOD_ORIGINADOR: TIBStringField
      FieldName = 'COD_ORIGINADOR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."COD_ORIGINADOR"'
      Size = 70
    end
    object qryGrafNFDT_IMP_NF: TDateField
      FieldName = 'DT_IMP_NF'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."DT_IMP_NF"'
    end
    object qryGrafNFVDI_CFOP: TIntegerField
      FieldName = 'VDI_CFOP'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VDI_CFOP"'
    end
    object qryGrafNFS_VD_TOTAL_NF: TIBStringField
      FieldName = 'S_VD_TOTAL_NF'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_TOTAL_NF"'
      Size = 30
    end
    object qryGrafNFS_VD_VLR_IPI: TIBStringField
      FieldName = 'S_VD_VLR_IPI'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_VLR_IPI"'
      Size = 30
    end
    object qryGrafNFS_VD_VLR_OUTRAS_DESP: TIBStringField
      FieldName = 'S_VD_VLR_OUTRAS_DESP'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_VLR_OUTRAS_DESP"'
      Size = 30
    end
    object qryGrafNFS_VD_VLR_SEGURO: TIBStringField
      FieldName = 'S_VD_VLR_SEGURO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_VLR_SEGURO"'
      Size = 30
    end
    object qryGrafNFS_VD_VLR_FRETE: TIBStringField
      FieldName = 'S_VD_VLR_FRETE'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_VLR_FRETE"'
      Size = 30
    end
    object qryGrafNFS_VD_TOTAL_PROD: TIBStringField
      FieldName = 'S_VD_TOTAL_PROD'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_TOTAL_PROD"'
      Size = 30
    end
    object qryGrafNFS_VD_VLR_ICM: TIBStringField
      FieldName = 'S_VD_VLR_ICM'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_VLR_ICM"'
      Size = 30
    end
    object qryGrafNFS_VD_VLR_ICM_SUB: TIBStringField
      FieldName = 'S_VD_VLR_ICM_SUB'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_VLR_ICM_SUB"'
      Size = 30
    end
    object qryGrafNFS_VD_BASE_CALC: TIBStringField
      FieldName = 'S_VD_BASE_CALC'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_BASE_CALC"'
      Size = 30
    end
    object qryGrafNFS_VD_BASE_CALC_SUB: TIBStringField
      FieldName = 'S_VD_BASE_CALC_SUB'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_BASE_CALC_SUB"'
      Size = 30
    end
    object qryGrafNFCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."CLI_ENDERECO"'
      Size = 130
    end
    object qryGrafNFPRD_DEFENSIVO: TIBStringField
      FieldName = 'PRD_DEFENSIVO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_DEFENSIVO"'
      Size = 300
    end
    object qryGrafNFPRD_CONCAT: TIBStringField
      FieldName = 'PRD_CONCAT'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PRD_CONCAT"'
      Size = 800
    end
    object qryGrafNFPARCELA_1_NUMERO: TIBStringField
      FieldName = 'PARCELA_1_NUMERO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_1_NUMERO"'
      Size = 6
    end
    object qryGrafNFPARCELA_1_VALOR: TFloatField
      FieldName = 'PARCELA_1_VALOR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_1_VALOR"'
    end
    object qryGrafNFPARCELA_1_VENCTO: TDateField
      FieldName = 'PARCELA_1_VENCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_1_VENCTO"'
    end
    object qryGrafNFPARCELA_1_EXTENSO: TIBStringField
      FieldName = 'PARCELA_1_EXTENSO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_1_EXTENSO"'
      Size = 200
    end
    object qryGrafNFPARCELA_2_NUMERO: TIBStringField
      FieldName = 'PARCELA_2_NUMERO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_2_NUMERO"'
      Size = 6
    end
    object qryGrafNFPARCELA_2_VALOR: TFloatField
      FieldName = 'PARCELA_2_VALOR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_2_VALOR"'
    end
    object qryGrafNFPARCELA_2_VENCTO: TDateField
      FieldName = 'PARCELA_2_VENCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_2_VENCTO"'
    end
    object qryGrafNFPARCELA_2_EXTENSO: TIBStringField
      FieldName = 'PARCELA_2_EXTENSO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_2_EXTENSO"'
      Size = 200
    end
    object qryGrafNFPARCELA_3_NUMERO: TIBStringField
      FieldName = 'PARCELA_3_NUMERO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_3_NUMERO"'
      Size = 6
    end
    object qryGrafNFPARCELA_3_VALOR: TFloatField
      FieldName = 'PARCELA_3_VALOR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_3_VALOR"'
    end
    object qryGrafNFPARCELA_3_VENCTO: TDateField
      FieldName = 'PARCELA_3_VENCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_3_VENCTO"'
    end
    object qryGrafNFPARCELA_3_EXTENSO: TIBStringField
      FieldName = 'PARCELA_3_EXTENSO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_3_EXTENSO"'
      Size = 200
    end
    object qryGrafNFPARCELA_4_NUMERO: TIBStringField
      FieldName = 'PARCELA_4_NUMERO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_4_NUMERO"'
      Size = 6
    end
    object qryGrafNFPARCELA_4_VALOR: TFloatField
      FieldName = 'PARCELA_4_VALOR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_4_VALOR"'
    end
    object qryGrafNFPARCELA_4_VENCTO: TDateField
      FieldName = 'PARCELA_4_VENCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_4_VENCTO"'
    end
    object qryGrafNFPARCELA_4_EXTENSO: TIBStringField
      FieldName = 'PARCELA_4_EXTENSO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_4_EXTENSO"'
      Size = 200
    end
    object qryGrafNFPARCELA_5_NUMERO: TIBStringField
      FieldName = 'PARCELA_5_NUMERO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_5_NUMERO"'
      Size = 6
    end
    object qryGrafNFPARCELA_5_VALOR: TFloatField
      FieldName = 'PARCELA_5_VALOR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_5_VALOR"'
    end
    object qryGrafNFPARCELA_5_VENCTO: TDateField
      FieldName = 'PARCELA_5_VENCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_5_VENCTO"'
    end
    object qryGrafNFPARCELA_5_EXTENSO: TIBStringField
      FieldName = 'PARCELA_5_EXTENSO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_5_EXTENSO"'
      Size = 200
    end
    object qryGrafNFPARCELA_6_NUMERO: TIBStringField
      FieldName = 'PARCELA_6_NUMERO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_6_NUMERO"'
      Size = 6
    end
    object qryGrafNFPARCELA_6_VALOR: TFloatField
      FieldName = 'PARCELA_6_VALOR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_6_VALOR"'
    end
    object qryGrafNFPARCELA_6_VENCTO: TDateField
      FieldName = 'PARCELA_6_VENCTO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_6_VENCTO"'
    end
    object qryGrafNFPARCELA_6_EXTENSO: TIBStringField
      FieldName = 'PARCELA_6_EXTENSO'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."PARCELA_6_EXTENSO"'
      Size = 200
    end
    object qryGrafNFVD_MSG_FISCAL: TMemoField
      FieldName = 'VD_MSG_FISCAL'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_MSG_FISCAL"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryGrafNFVD_VOLUME: TFloatField
      FieldName = 'VD_VOLUME'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_VOLUME"'
    end
    object qryGrafNFS_VD_VOLUME: TIBStringField
      FieldName = 'S_VD_VOLUME'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."S_VD_VOLUME"'
      Size = 30
    end
    object qryGrafNFVD_MSG_COMPLEMENTAR: TMemoField
      FieldName = 'VD_MSG_COMPLEMENTAR'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VD_MSG_COMPLEMENTAR"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryGrafNFLINHA: TIntegerField
      FieldName = 'LINHA'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."LINHA"'
    end
    object qryGrafNFVND_CODIGOS: TIBStringField
      FieldName = 'VND_CODIGOS'
      Origin = '"PCD_IMPRIME_NF_GRAFICA"."VND_CODIGOS"'
      Size = 180
    end
  end
  object edtGrafNF: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from sis_serienf'
      'where'
      '  INDICE = :OLD_INDICE and'
      '  CONFIG_NF_GRAF = :OLD_CONFIG_NF_GRAF')
    InsertSQL.Strings = (
      'insert into sis_serienf'
      '  (INDICE, CONFIG_NF_GRAF)'
      'values'
      '  (:INDICE, :CONFIG_NF_GRAF)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_serienf '
      'where'
      '  INDICE = :INDICE and'
      '  CONFIG_NF_GRAF = :CONFIG_NF_GRAF')
    SelectSQL.Strings = (
      'select indice, CONFIG_NF_GRAF from sis_serienf'
      'where indice = :indice')
    ModifySQL.Strings = (
      'update sis_serienf'
      'set'
      '  INDICE = :INDICE,'
      '  CONFIG_NF_GRAF = :CONFIG_NF_GRAF'
      'where'
      '  INDICE = :OLD_INDICE and'
      '  CONFIG_NF_GRAF = :OLD_CONFIG_NF_GRAF')
    Left = 256
    Top = 8
    object edtGrafNFCONFIG_NF_GRAF: TMemoField
      FieldName = 'CONFIG_NF_GRAF'
      Origin = '"SIS_SERIENF"."CONFIG_NF_GRAF"'
      BlobType = ftMemo
      Size = 8
    end
    object edtGrafNFINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = '"SIS_SERIENF"."INDICE"'
    end
  end
  object dsQryGrafNF: TDataSource
    DataSet = qryGrafNF
    Left = 24
    Top = 8
  end
  object dsEdtGrafNF: TDataSource
    DataSet = edtGrafNF
    Left = 176
    Top = 8
  end
  object dsFat: TDataSource
    DataSet = qryFaturamentos
    Left = 24
    Top = 64
  end
  object qryFaturamentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from pcd_lista_faturamentos(:cnpj, :pessoa_fj,:es, :cfo' +
        'p, :tipo)')
    Left = 88
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'es'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cfop'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qryFaturamentosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"PCD_LISTA_FATURAMENTOS"."CODIGO"'
    end
    object qryFaturamentosTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"PCD_LISTA_FATURAMENTOS"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryFaturamentosDESC_ACRESC: TIBBCDField
      DisplayLabel = 'Desc. Acresc'
      FieldName = 'DESC_ACRESC'
      Origin = '"PCD_LISTA_FATURAMENTOS"."DESC_ACRESC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryFaturamentosDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PCD_LISTA_FATURAMENTOS"."DATA"'
    end
    object qryFaturamentosDATA_CAIXA: TDateField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_LISTA_FATURAMENTOS"."DATA_CAIXA"'
    end
    object qryFaturamentosFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"PCD_LISTA_FATURAMENTOS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object qryFaturamentosVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"PCD_LISTA_FATURAMENTOS"."VENDEDOR"'
      Size = 50
    end
    object qryFaturamentosNATUREZA: TIBStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NATUREZA'
      Origin = '"PCD_LISTA_FATURAMENTOS"."NATUREZA"'
      Size = 80
    end
    object qryFaturamentosSALDO: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = '"PCD_LISTA_FATURAMENTOS"."SALDO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryFaturamentosNUM_NF: TIntegerField
      DisplayLabel = 'N'#186' NF'
      FieldName = 'NUM_NF'
      Origin = '"PCD_LISTA_FATURAMENTOS"."NUM_NF"'
    end
  end
  object qryFatItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select vdi.sequencia,'
      'coalesce(vdi.produto,'#39#39')||'#39'-'#39'||coalesce(prd.nome,'#39#39') produto,'
      
        '(coalesce(vdi.quantidade,0) - coalesce(vdi.qtde_entregue,0))  sa' +
        'ldo_item,'
      'vdi.quantidade, vdi.qtde_entregue, vdi.prc_unit_original,'
      'vdi.complemento, vdi.desconto, vdi.prc_unitario,'
      '(vdi.prc_unitario  * vdi.quantidade) total_item'
      'from fat_vendas_itens vdi'
      
        'inner join est_produtos prd on (vdi.produto = prd.codigo and prd' +
        '.cnpj = vdi.cnpj)'
      'where vdi.codigo = :codigo and vdi.cnpj = :cnpj')
    Left = 88
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryFatItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object qryFatItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Size = 66
    end
    object qryFatItensSALDO_ITEM: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO_ITEM'
      DisplayFormat = '###,##0.00'
    end
    object qryFatItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
    object qryFatItensQTDE_ENTREGUE: TFloatField
      DisplayLabel = 'Qtde Entregue'
      FieldName = 'QTDE_ENTREGUE'
      Origin = '"FAT_VENDAS_ITENS"."QTDE_ENTREGUE"'
      DisplayFormat = '###,##0.00'
    end
    object qryFatItensDESCONTO: TFloatField
      DisplayLabel = 'Descto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
      DisplayFormat = '###,##0.00'
    end
    object qryFatItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit. Liquido'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,##0.00'
    end
    object qryFatItensTOTAL_ITEM: TFloatField
      DisplayLabel = 'Ttl. Item'
      FieldName = 'TOTAL_ITEM'
      DisplayFormat = '###,##0.00'
    end
    object qryFatItensPRC_UNIT_ORIGINAL: TFloatField
      DisplayLabel = 'Pre'#231'o Unit'#225'rio'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,##0.00'
    end
    object qryFatItensCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"FAT_VENDAS_ITENS"."COMPLEMENTO"'
      Size = 100
    end
  end
  object dsFatItens: TDataSource
    DataSet = qryFatItens
    Left = 88
    Top = 128
  end
  object qryFatMovtos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select vd.codigo, vd.total, vd.desc_acres, vd.data, vd.data_caix' +
        'a, vd.fechada, vdd.nome vendedor,'
      'coalesce(nat.codigo,'#39#39')||'#39'-'#39'||coalesce(nat.nome,'#39#39') natureza'
      'from fat_vendas vd'
      
        'inner join fat_vendedor vdd on (vd.vendedor = vdd.codigo and vd.' +
        'cnpj = vdd.cnpj)'
      
        'inner join est_natureza nat on (nat.cnpj = vd.cnpj and vd.nature' +
        'za = nat.codigo)'
      'where  vd.id_agrupador = :codigo and vd.cnpj = :cnpj')
    Left = 256
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryFatMovtosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryFatMovtosTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
      DisplayFormat = '###,##0.00'
    end
    object qryFatMovtosDESC_ACRES: TFloatField
      DisplayLabel = 'Desc/Acresc'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,##0.00'
    end
    object qryFatMovtosDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object qryFatMovtosDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object qryFatMovtosFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object qryFatMovtosVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object qryFatMovtosNATUREZA: TIBStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NATUREZA'
      ProviderFlags = []
      Size = 62
    end
  end
  object dsFatMovimentos: TDataSource
    DataSet = qryFatMovtos
    Left = 176
    Top = 64
  end
  object dsFatDet: TDataSource
    DataSet = QryFatDet
    Left = 24
    Top = 192
  end
  object qryServico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      'select * from pcd_impreme_nf_serv(:cnpj,:venda,:pessoa)'
      '')
    Left = 256
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa'
        ParamType = ptUnknown
      end>
    object qryServicoCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_IMPREME_NF_SERV"."CLIENTE"'
      Size = 50
    end
    object qryServicoBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_IMPREME_NF_SERV"."BAIRRO"'
      Size = 50
    end
    object qryServicoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PCD_IMPREME_NF_SERV"."CIDADE"'
      Size = 50
    end
    object qryServicoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PCD_IMPREME_NF_SERV"."UF"'
      Size = 2
    end
    object qryServicoFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_IMPREME_NF_SERV"."FONE"'
    end
    object qryServicoINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"PCD_IMPREME_NF_SERV"."INSC_MUNIC"'
      Size = 15
    end
    object qryServicoFAT_FATURA1: TIBStringField
      FieldName = 'FAT_FATURA1'
      Origin = '"PCD_IMPREME_NF_SERV"."FAT_FATURA1"'
      Size = 10
    end
    object qryServicoFAT_VENCTO1: TIBStringField
      FieldName = 'FAT_VENCTO1'
      Origin = '"PCD_IMPREME_NF_SERV"."FAT_VENCTO1"'
      Size = 12
    end
    object qryServicoFAT_VLR1: TIBStringField
      FieldName = 'FAT_VLR1'
      Origin = '"PCD_IMPREME_NF_SERV"."FAT_VLR1"'
      Size = 12
    end
    object qryServicoFAT_FATURA2: TIBStringField
      FieldName = 'FAT_FATURA2'
      Origin = '"PCD_IMPREME_NF_SERV"."FAT_FATURA2"'
      Size = 10
    end
    object qryServicoFAT_VENCTO2: TIBStringField
      FieldName = 'FAT_VENCTO2'
      Origin = '"PCD_IMPREME_NF_SERV"."FAT_VENCTO2"'
      Size = 12
    end
    object qryServicoFAT_VLR2: TIBStringField
      FieldName = 'FAT_VLR2'
      Origin = '"PCD_IMPREME_NF_SERV"."FAT_VLR2"'
      Size = 12
    end
    object qryServicoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_IMPREME_NF_SERV"."PESSOA_FJ"'
    end
    object qryServicoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_IMPREME_NF_SERV"."PRODUTO"'
      Size = 50
    end
    object qryServicoQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"PCD_IMPREME_NF_SERV"."QTDE"'
      Precision = 18
      Size = 4
    end
    object qryServicoVLR_UNITARIO: TIBBCDField
      FieldName = 'VLR_UNITARIO'
      Origin = '"PCD_IMPREME_NF_SERV"."VLR_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object qryServicoVLR_TOTAL_UNIT: TIBBCDField
      FieldName = 'VLR_TOTAL_UNIT'
      Origin = '"PCD_IMPREME_NF_SERV"."VLR_TOTAL_UNIT"'
      Precision = 18
      Size = 4
    end
    object qryServicoPIS: TIBBCDField
      FieldName = 'PIS'
      Origin = '"PCD_IMPREME_NF_SERV"."PIS"'
      Precision = 18
      Size = 4
    end
    object qryServicoINSS: TIBBCDField
      FieldName = 'INSS'
      Origin = '"PCD_IMPREME_NF_SERV"."INSS"'
      Precision = 18
      Size = 4
    end
    object qryServicoVLR_PIS: TIBBCDField
      FieldName = 'VLR_PIS'
      Origin = '"PCD_IMPREME_NF_SERV"."VLR_PIS"'
      Precision = 18
      Size = 4
    end
    object qryServicoVLR_INSS: TIBBCDField
      FieldName = 'VLR_INSS'
      Origin = '"PCD_IMPREME_NF_SERV"."VLR_INSS"'
      Precision = 18
      Size = 4
    end
    object qryServicoTOTAL_VENDA: TIBBCDField
      FieldName = 'TOTAL_VENDA'
      Origin = '"PCD_IMPREME_NF_SERV"."TOTAL_VENDA"'
      Precision = 18
      Size = 4
    end
    object qryServicoDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"PCD_IMPREME_NF_SERV"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object qryServicoTEXTO_PIS: TIBStringField
      FieldName = 'TEXTO_PIS'
      Origin = '"PCD_IMPREME_NF_SERV"."TEXTO_PIS"'
      Size = 30
    end
    object qryServicoTEXTO_INSS: TIBStringField
      FieldName = 'TEXTO_INSS'
      Origin = '"PCD_IMPREME_NF_SERV"."TEXTO_INSS"'
      Size = 30
    end
    object qryServicoTEXTO_DESCONTO: TIBStringField
      FieldName = 'TEXTO_DESCONTO'
      Origin = '"PCD_IMPREME_NF_SERV"."TEXTO_DESCONTO"'
      Size = 30
    end
    object qryServicoBASE_CALC_ISS: TIBBCDField
      FieldName = 'BASE_CALC_ISS'
      Origin = '"PCD_IMPREME_NF_SERV"."BASE_CALC_ISS"'
      Precision = 18
      Size = 4
    end
    object qryServicoVLR_ISS: TIBBCDField
      FieldName = 'VLR_ISS'
      Origin = '"PCD_IMPREME_NF_SERV"."VLR_ISS"'
      Precision = 18
      Size = 4
    end
    object qryServicoVLR_ISS_SUB: TIBBCDField
      FieldName = 'VLR_ISS_SUB'
      Origin = '"PCD_IMPREME_NF_SERV"."VLR_ISS_SUB"'
      Precision = 18
      Size = 4
    end
    object qryServicoTOTAL_NF: TIBBCDField
      FieldName = 'TOTAL_NF'
      Origin = '"PCD_IMPREME_NF_SERV"."TOTAL_NF"'
      Precision = 18
      Size = 4
    end
    object qryServicoIRRF: TIBBCDField
      FieldName = 'IRRF'
      Origin = '"PCD_IMPREME_NF_SERV"."IRRF"'
      Precision = 18
      Size = 4
    end
    object qryServicoVLR_IRRF: TIBBCDField
      FieldName = 'VLR_IRRF'
      Origin = '"PCD_IMPREME_NF_SERV"."VLR_IRRF"'
      Precision = 18
      Size = 4
    end
    object qryServicoTEXTO_IRRF: TIBStringField
      FieldName = 'TEXTO_IRRF'
      Origin = '"PCD_IMPREME_NF_SERV"."TEXTO_IRRF"'
      Size = 30
    end
    object qryServicoFRETE_DESTINATARIO: TIBStringField
      FieldName = 'FRETE_DESTINATARIO'
      Origin = '"PCD_IMPREME_NF_SERV"."FRETE_DESTINATARIO"'
      FixedChar = True
      Size = 1
    end
    object qryServicoFRETE_EMITENTE: TIBStringField
      FieldName = 'FRETE_EMITENTE'
      Origin = '"PCD_IMPREME_NF_SERV"."FRETE_EMITENTE"'
      FixedChar = True
      Size = 1
    end
    object qryServicoCOMPLEMENTO: TBlobField
      FieldName = 'COMPLEMENTO'
      Origin = '"PCD_IMPREME_NF_SERV"."COMPLEMENTO"'
      Size = 8
    end
    object qryServicoCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"PCD_IMPREME_NF_SERV"."CPF_CGC"'
    end
    object qryServicoRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"PCD_IMPREME_NF_SERV"."RG_IE"'
      Size = 15
    end
    object qryServicoENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"PCD_IMPREME_NF_SERV"."ENDERECO"'
      Size = 130
    end
    object qryServicoCLI_PROPRIEDADE: TIBStringField
      FieldName = 'CLI_PROPRIEDADE'
      Origin = '"PCD_IMPREME_NF_SERV"."CLI_PROPRIEDADE"'
      Size = 50
    end
    object qryServicoCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"PCD_IMPREME_NF_SERV"."CLI_IE"'
      Size = 15
    end
    object qryServicoCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_IMPREME_NF_SERV"."CEP"'
      Size = 10
    end
  end
  object qryCT13: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryCT13CalcFields
    SQL.Strings = (
      'select * from pcd_rel_ct13(:cnpj,:venda,:pessoa_fj)')
    Left = 256
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end>
    object qryCT13INSC_ESTADUAL: TIBStringField
      FieldName = 'INSC_ESTADUAL'
      Origin = '"PCD_REL_CT13"."INSC_ESTADUAL"'
      Size = 15
    end
    object qryCT13CNPJ_PROPRIEDADE: TIBStringField
      FieldName = 'CNPJ_PROPRIEDADE'
      Origin = '"PCD_REL_CT13"."CNPJ_PROPRIEDADE"'
      Size = 14
    end
    object qryCT13PECUARISTA: TIBStringField
      FieldName = 'PECUARISTA'
      Origin = '"PCD_REL_CT13"."PECUARISTA"'
      Size = 50
    end
    object qryCT13PROPRIEDADE: TIBStringField
      FieldName = 'PROPRIEDADE'
      Origin = '"PCD_REL_CT13"."PROPRIEDADE"'
      Size = 50
    end
    object qryCT13CIDADE_PROPRIEDADE: TIBStringField
      FieldName = 'CIDADE_PROPRIEDADE'
      Origin = '"PCD_REL_CT13"."CIDADE_PROPRIEDADE"'
      Size = 50
    end
    object qryCT13CEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_REL_CT13"."CEP"'
      Size = 50
    end
    object qryCT13CELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"PCD_REL_CT13"."CELULAR"'
    end
    object qryCT13CIDADE_PECUARISTA: TIBStringField
      FieldName = 'CIDADE_PECUARISTA'
      Origin = '"PCD_REL_CT13"."CIDADE_PECUARISTA"'
      Size = 50
    end
    object qryCT13UF: TIBStringField
      FieldName = 'UF'
      Origin = '"PCD_REL_CT13"."UF"'
      Size = 2
    end
    object qryCT13FONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_REL_CT13"."FONE"'
    end
    object qryCT13EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"PCD_REL_CT13"."EMAIL"'
      Size = 80
    end
    object qryCT13FAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"PCD_REL_CT13"."FAX"'
    end
    object qryCT13NUM_DOSES: TIBBCDField
      FieldName = 'NUM_DOSES'
      Origin = '"PCD_REL_CT13"."NUM_DOSES"'
      Precision = 18
      Size = 4
    end
    object qryCT13PARTIDA: TIBStringField
      FieldName = 'PARTIDA'
      Origin = '"PCD_REL_CT13"."PARTIDA"'
      Size = 10
    end
    object qryCT13LABORATORIO: TIBStringField
      FieldName = 'LABORATORIO'
      Origin = '"PCD_REL_CT13"."LABORATORIO"'
      Size = 50
    end
    object qryCT13DATA_FABRICACAO: TDateField
      FieldName = 'DATA_FABRICACAO'
      Origin = '"PCD_REL_CT13"."DATA_FABRICACAO"'
    end
    object qryCT13NUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_REL_CT13"."NUM_NF"'
    end
    object qryCT13DATA_COMPRA: TDateField
      FieldName = 'DATA_COMPRA'
      Origin = '"PCD_REL_CT13"."DATA_COMPRA"'
    end
    object qryCT13ENDERECO_PROPRIEDADE: TIBStringField
      FieldName = 'ENDERECO_PROPRIEDADE'
      Origin = '"PCD_REL_CT13"."ENDERECO_PROPRIEDADE"'
      Size = 50
    end
    object qryCT13ENDERECO_PECUARISTA: TIBStringField
      FieldName = 'ENDERECO_PECUARISTA'
      Origin = '"PCD_REL_CT13"."ENDERECO_PECUARISTA"'
      Size = 50
    end
    object qryCT13DOSES_EXTENSO: TStringField
      FieldKind = fkCalculated
      FieldName = 'DOSES_EXTENSO'
      Size = 50
      Calculated = True
    end
  end
  object qrySeriesNF: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      'select * from PCD_IMPRIME_SERIE_NF(:venda,:cnpj)')
    Left = 256
    Top = 288
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qrySeriesNFCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CLIENTE"'
      Size = 50
    end
    object qrySeriesNFCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CIDADE"'
      Size = 60
    end
    object qrySeriesNFENDERECO_CLI: TIBStringField
      FieldName = 'ENDERECO_CLI'
      Origin = '"PCD_IMPRIME_SERIE_NF"."ENDERECO_CLI"'
      Size = 100
    end
    object qrySeriesNFCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."COD_VENDA"'
    end
    object qrySeriesNFDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."DT_VENDA"'
    end
    object qrySeriesNFDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."DATA_CAIXA"'
    end
    object qrySeriesNFDESC_ACRESC: TFloatField
      FieldName = 'DESC_ACRESC'
      Origin = '"PCD_IMPRIME_SERIE_NF"."DESC_ACRESC"'
    end
    object qrySeriesNFDESC_ITEM: TFloatField
      FieldName = 'DESC_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_NF"."DESC_ITEM"'
    end
    object qrySeriesNFTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TOTAL"'
    end
    object qrySeriesNFTOTAL_BRUTO: TFloatField
      FieldName = 'TOTAL_BRUTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TOTAL_BRUTO"'
    end
    object qrySeriesNFNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"PCD_IMPRIME_SERIE_NF"."NUM_CUPOM"'
    end
    object qrySeriesNFNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_IMPRIME_SERIE_NF"."NUM_NF"'
    end
    object qrySeriesNFNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"PCD_IMPRIME_SERIE_NF"."NOME_VENDEDOR"'
      Size = 50
    end
    object qrySeriesNFPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRODUTO"'
      Size = 50
    end
    object qrySeriesNFFORMA_PAGTO: TIBStringField
      FieldName = 'FORMA_PAGTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."FORMA_PAGTO"'
      Size = 50
    end
    object qrySeriesNFSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."SEQUENCIA"'
    end
    object qrySeriesNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."QUANTIDADE"'
    end
    object qrySeriesNFPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRC_UNITARIO"'
    end
    object qrySeriesNFPRC_UNITARIO_LIQ: TFloatField
      FieldName = 'PRC_UNITARIO_LIQ'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRC_UNITARIO_LIQ"'
    end
    object qrySeriesNFTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TOTAL_ITEM"'
    end
    object qrySeriesNFPARCELAMENTO: TIBStringField
      FieldName = 'PARCELAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PARCELAMENTO"'
      Size = 500
    end
    object qrySeriesNFCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."COD_PRODUTO"'
      Size = 15
    end
    object qrySeriesNFBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."BAIRRO"'
      Size = 50
    end
    object qrySeriesNFCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."COMPLEMENTO"'
      Size = 50
    end
    object qrySeriesNFPCT_ITEM_DESCTO: TFloatField
      FieldName = 'PCT_ITEM_DESCTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PCT_ITEM_DESCTO"'
    end
    object qrySeriesNFUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeriesNFPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PESSOA_FJ"'
    end
    object qrySeriesNFCGC_CPF_CLI: TIBStringField
      FieldName = 'CGC_CPF_CLI'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CGC_CPF_CLI"'
    end
    object qrySeriesNFTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TIPO_DOCTO"'
      Size = 3
    end
    object qrySeriesNFNOME_TIPO_DOCTO: TIBStringField
      FieldName = 'NOME_TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."NOME_TIPO_DOCTO"'
      Size = 50
    end
    object qrySeriesNFRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."RG_IE"'
      Size = 15
    end
    object qrySeriesNFHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."HORA"'
    end
    object qrySeriesNFPCT_DESCTO_VENDA: TFloatField
      FieldName = 'PCT_DESCTO_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PCT_DESCTO_VENDA"'
    end
    object qrySeriesNFCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CPF_CGC"'
      Size = 14
    end
    object qrySeriesNFCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CEP"'
    end
    object qrySeriesNFCEP_EMP: TIBStringField
      FieldName = 'CEP_EMP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CEP_EMP"'
    end
    object qrySeriesNFBAIRRO_EMP: TIBStringField
      FieldName = 'BAIRRO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."BAIRRO_EMP"'
      Size = 50
    end
    object qrySeriesNFFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."FONE"'
    end
    object qrySeriesNFFONE_CLIENTE: TIBStringField
      FieldName = 'FONE_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."FONE_CLIENTE"'
    end
    object qrySeriesNFENDERECO_EMP: TIBStringField
      FieldName = 'ENDERECO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."ENDERECO_EMP"'
      Size = 80
    end
    object qrySeriesNFFANTASIA_CLI: TIBStringField
      FieldName = 'FANTASIA_CLI'
      Origin = '"PCD_IMPRIME_SERIE_NF"."FANTASIA_CLI"'
      Size = 50
    end
    object qrySeriesNFEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."EMPRESA"'
      Size = 50
    end
    object qrySeriesNFCNPJ_EMP: TIBStringField
      FieldName = 'CNPJ_EMP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CNPJ_EMP"'
    end
    object qrySeriesNFOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."OBSERVACAO"'
      Size = 200
    end
    object qrySeriesNFCONT_ITENS: TIBBCDField
      FieldName = 'CONT_ITENS'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CONT_ITENS"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PESO"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFCIDADE_EMP: TIBStringField
      FieldName = 'CIDADE_EMP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CIDADE_EMP"'
      Size = 50
    end
    object qrySeriesNFMRC_CODIGO: TIntegerField
      FieldName = 'MRC_CODIGO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."MRC_CODIGO"'
    end
    object qrySeriesNFMRC_NOME: TIBStringField
      FieldName = 'MRC_NOME'
      Origin = '"PCD_IMPRIME_SERIE_NF"."MRC_NOME"'
      Size = 50
    end
    object qrySeriesNFPRO_NOME: TIBStringField
      FieldName = 'PRO_NOME'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_NOME"'
      Size = 50
    end
    object qrySeriesNFPRO_PROPRIETARIO: TIBStringField
      FieldName = 'PRO_PROPRIETARIO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_PROPRIETARIO"'
      Size = 50
    end
    object qrySeriesNFPRO_IE: TIBStringField
      FieldName = 'PRO_IE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_IE"'
      Size = 15
    end
    object qrySeriesNFPRO_PROPRIEDADE: TIntegerField
      FieldName = 'PRO_PROPRIEDADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_PROPRIEDADE"'
    end
    object qrySeriesNFPRO_ENDERECO: TIntegerField
      FieldName = 'PRO_ENDERECO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_ENDERECO"'
    end
    object qrySeriesNFPRO_COMPLEMENTO: TIBStringField
      FieldName = 'PRO_COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_COMPLEMENTO"'
      Size = 30
    end
    object qrySeriesNFPRO_CIDADE: TIntegerField
      FieldName = 'PRO_CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_CIDADE"'
    end
    object qrySeriesNFPRO_UF: TIBStringField
      FieldName = 'PRO_UF'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_UF"'
      FixedChar = True
      Size = 2
    end
    object qrySeriesNFPRO_CEP: TIBStringField
      FieldName = 'PRO_CEP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_CEP"'
      Size = 8
    end
    object qrySeriesNFPRO_AREA_TOTAL: TIBStringField
      FieldName = 'PRO_AREA_TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_AREA_TOTAL"'
      Size = 30
    end
    object qrySeriesNFPRO_ATIVA: TIBStringField
      FieldName = 'PRO_ATIVA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_ATIVA"'
      FixedChar = True
      Size = 1
    end
    object qrySeriesNFPRO_NUMERO: TIBStringField
      FieldName = 'PRO_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_NUMERO"'
      Size = 15
    end
    object qrySeriesNFPRO_CPF: TIBStringField
      FieldName = 'PRO_CPF'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_CPF"'
    end
    object qrySeriesNFPRO_TECNICO: TIntegerField
      FieldName = 'PRO_TECNICO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_TECNICO"'
    end
    object qrySeriesNFPSA_CELULAR: TIBStringField
      FieldName = 'PSA_CELULAR'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PSA_CELULAR"'
    end
    object qrySeriesNFPSA_FAX: TIBStringField
      FieldName = 'PSA_FAX'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PSA_FAX"'
    end
    object qrySeriesNFVDI_GRADE: TIBStringField
      FieldName = 'VDI_GRADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VDI_GRADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeriesNFVDI_NUMERO: TIBStringField
      FieldName = 'VDI_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VDI_NUMERO"'
      Size = 6
    end
    object qrySeriesNFGRD_GRADE: TIBStringField
      FieldName = 'GRD_GRADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_GRADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeriesNFGRD_MATERIAL: TIntegerField
      FieldName = 'GRD_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_MATERIAL"'
    end
    object qrySeriesNFGRD_COR: TIntegerField
      FieldName = 'GRD_COR'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_COR"'
    end
    object qrySeriesNFGRD_NOME_MATERIAL: TIBStringField
      FieldName = 'GRD_NOME_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_NOME_MATERIAL"'
      Size = 50
    end
    object qrySeriesNFGRD_NOME_COR: TIBStringField
      FieldName = 'GRD_NOME_COR'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_NOME_COR"'
      Size = 50
    end
    object qrySeriesNFGRD_PERFIL: TIntegerField
      FieldName = 'GRD_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_PERFIL"'
    end
    object qrySeriesNFGRD_NOME_PERFIL: TIBStringField
      FieldName = 'GRD_NOME_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_NOME_PERFIL"'
      Size = 50
    end
    object qrySeriesNFGRD_NUMERO: TIBStringField
      FieldName = 'GRD_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_NUMERO"'
      Size = 6
    end
    object qrySeriesNFGRD_ORDEM: TIntegerField
      FieldName = 'GRD_ORDEM'
      Origin = '"PCD_IMPRIME_SERIE_NF"."GRD_ORDEM"'
    end
    object qrySeriesNFCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."COD_CLIENTE"'
    end
    object qrySeriesNFPC_PARCELAMENTO: TIBStringField
      FieldName = 'PC_PARCELAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PC_PARCELAMENTO"'
      Size = 300
    end
    object qrySeriesNFPRO_RUA_NOME: TIBStringField
      FieldName = 'PRO_RUA_NOME'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_RUA_NOME"'
      Size = 50
    end
    object qrySeriesNFTROCO: TIBBCDField
      FieldName = 'TROCO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TROCO"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFTRP_NOME: TIBStringField
      FieldName = 'TRP_NOME'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_NOME"'
      Size = 50
    end
    object qrySeriesNFTRP_CNPJ: TIBStringField
      FieldName = 'TRP_CNPJ'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_CNPJ"'
      Size = 15
    end
    object qrySeriesNFTRP_PLACA: TIBStringField
      FieldName = 'TRP_PLACA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_PLACA"'
      Size = 8
    end
    object qrySeriesNFTRP_ENDERECO: TIBStringField
      FieldName = 'TRP_ENDERECO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_ENDERECO"'
      Size = 50
    end
    object qrySeriesNFTRP_CIDADE: TIBStringField
      FieldName = 'TRP_CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_CIDADE"'
      Size = 50
    end
    object qrySeriesNFTRP_UF: TIBStringField
      FieldName = 'TRP_UF'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_UF"'
      FixedChar = True
      Size = 2
    end
    object qrySeriesNFTRP_UF_VEICULO: TIBStringField
      FieldName = 'TRP_UF_VEICULO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_UF_VEICULO"'
      FixedChar = True
      Size = 2
    end
    object qrySeriesNFTRP_FRETE: TIntegerField
      FieldName = 'TRP_FRETE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_FRETE"'
    end
    object qrySeriesNFTRP_IE: TIBStringField
      FieldName = 'TRP_IE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_IE"'
      Size = 15
    end
    object qrySeriesNFTRP_PESO_LIQ: TFloatField
      FieldName = 'TRP_PESO_LIQ'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_PESO_LIQ"'
    end
    object qrySeriesNFTRP_PESO_BRUTO: TFloatField
      FieldName = 'TRP_PESO_BRUTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_PESO_BRUTO"'
    end
    object qrySeriesNFTRP_PESO_QTDE: TFloatField
      FieldName = 'TRP_PESO_QTDE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_PESO_QTDE"'
    end
    object qrySeriesNFTRP_ESPECIE: TIBStringField
      FieldName = 'TRP_ESPECIE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_ESPECIE"'
      Size = 50
    end
    object qrySeriesNFTRP_MARCA: TIBStringField
      FieldName = 'TRP_MARCA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_MARCA"'
      Size = 50
    end
    object qrySeriesNFTRP_NUMERO: TIBStringField
      FieldName = 'TRP_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TRP_NUMERO"'
      Size = 50
    end
    object qrySeriesNFVD_VLR_FRETE: TIBBCDField
      FieldName = 'VD_VLR_FRETE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_VLR_FRETE"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_BASE_CALC: TIBBCDField
      FieldName = 'VD_BASE_CALC'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_BASE_CALC"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_BASE_CALC_SUB: TIBBCDField
      FieldName = 'VD_BASE_CALC_SUB'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_BASE_CALC_SUB"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_VLR_ICM_SUB: TIBBCDField
      FieldName = 'VD_VLR_ICM_SUB'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_VLR_ICM_SUB"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_VLR_ICM: TIBBCDField
      FieldName = 'VD_VLR_ICM'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_VLR_ICM"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_TOTAL_PROD: TIBBCDField
      FieldName = 'VD_TOTAL_PROD'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_TOTAL_PROD"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_VLR_SEGURO: TIBBCDField
      FieldName = 'VD_VLR_SEGURO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_VLR_SEGURO"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_VLR_OUTRAS_DESP: TIBBCDField
      FieldName = 'VD_VLR_OUTRAS_DESP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_VLR_OUTRAS_DESP"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_VLR_IPI: TIBBCDField
      FieldName = 'VD_VLR_IPI'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_VLR_IPI"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFVD_TOTAL_NF: TIBBCDField
      FieldName = 'VD_TOTAL_NF'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_TOTAL_NF"'
      Precision = 18
      Size = 4
    end
    object qrySeriesNFS_VD_TOTAL_NF: TIBStringField
      FieldName = 'S_VD_TOTAL_NF'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_TOTAL_NF"'
      Size = 30
    end
    object qrySeriesNFS_VD_VLR_IPI: TIBStringField
      FieldName = 'S_VD_VLR_IPI'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_VLR_IPI"'
      Size = 30
    end
    object qrySeriesNFS_VD_VLR_OUTRAS_DESP: TIBStringField
      FieldName = 'S_VD_VLR_OUTRAS_DESP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_VLR_OUTRAS_DESP"'
      Size = 30
    end
    object qrySeriesNFS_VD_VLR_SEGURO: TIBStringField
      FieldName = 'S_VD_VLR_SEGURO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_VLR_SEGURO"'
      Size = 30
    end
    object qrySeriesNFS_VD_VLR_FRETE: TIBStringField
      FieldName = 'S_VD_VLR_FRETE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_VLR_FRETE"'
      Size = 30
    end
    object qrySeriesNFS_VD_TOTAL_PROD: TIBStringField
      FieldName = 'S_VD_TOTAL_PROD'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_TOTAL_PROD"'
      Size = 30
    end
    object qrySeriesNFS_VD_VLR_ICM: TIBStringField
      FieldName = 'S_VD_VLR_ICM'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_VLR_ICM"'
      Size = 30
    end
    object qrySeriesNFS_VD_VLR_ICM_SUB: TIBStringField
      FieldName = 'S_VD_VLR_ICM_SUB'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_VLR_ICM_SUB"'
      Size = 30
    end
    object qrySeriesNFS_VD_BASE_CALC: TIBStringField
      FieldName = 'S_VD_BASE_CALC'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_BASE_CALC"'
      Size = 30
    end
    object qrySeriesNFS_VD_BASE_CALC_SUB: TIBStringField
      FieldName = 'S_VD_BASE_CALC_SUB'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_VD_BASE_CALC_SUB"'
      Size = 30
    end
    object qrySeriesNFS_TOTAL_BRUTO: TIBStringField
      FieldName = 'S_TOTAL_BRUTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_TOTAL_BRUTO"'
      Size = 30
    end
    object qrySeriesNFS_DESC_ACRESC: TIBStringField
      FieldName = 'S_DESC_ACRESC'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_DESC_ACRESC"'
      Size = 30
    end
    object qrySeriesNFS_TOTAL: TIBStringField
      FieldName = 'S_TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_TOTAL"'
      Size = 30
    end
    object qrySeriesNFS_MSG_PROX_FOLHA: TIBStringField
      FieldName = 'S_MSG_PROX_FOLHA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."S_MSG_PROX_FOLHA"'
      Size = 100
    end
    object qrySeriesNFVD_CFOP: TIntegerField
      FieldName = 'VD_CFOP'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_CFOP"'
    end
    object qrySeriesNFVD_CFOP_DESC: TIBStringField
      FieldName = 'VD_CFOP_DESC'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_CFOP_DESC"'
      Size = 50
    end
    object qrySeriesNFPROD_COMPLEMENTO: TIBStringField
      FieldName = 'PROD_COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PROD_COMPLEMENTO"'
      Size = 120
    end
    object qrySeriesNFPESO_ITEN: TFloatField
      FieldName = 'PESO_ITEN'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PESO_ITEN"'
    end
    object qrySeriesNFVD_DATA_BASE: TDateField
      FieldName = 'VD_DATA_BASE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_DATA_BASE"'
    end
    object qrySeriesNFSERV_COMPLEMENTO: TBlobField
      FieldName = 'SERV_COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."SERV_COMPLEMENTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object qrySeriesNFTOTAL_DESC_ITEM: TFloatField
      FieldName = 'TOTAL_DESC_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_NF"."TOTAL_DESC_ITEM"'
    end
    object qrySeriesNFCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CONTATO"'
      Size = 50
    end
    object qrySeriesNFVD_DESC_CARREGAMENTO: TIBStringField
      FieldName = 'VD_DESC_CARREGAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."VD_DESC_CARREGAMENTO"'
      Size = 300
    end
    object qrySeriesNFCOD_INDICE: TIntegerField
      FieldName = 'COD_INDICE'
      Origin = '"PCD_IMPRIME_SERIE_NF"."COD_INDICE"'
    end
    object qrySeriesNFPRO_BAIRRO: TIBStringField
      FieldName = 'PRO_BAIRRO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."PRO_BAIRRO"'
      Size = 50
    end
    object qrySeriesNFLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"PCD_IMPRIME_SERIE_NF"."LOCALIZACAO_1"'
      Size = 30
    end
    object qrySeriesNFLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"PCD_IMPRIME_SERIE_NF"."LOCALIZACAO_2"'
      Size = 30
    end
    object qrySeriesNFLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"PCD_IMPRIME_SERIE_NF"."LOCALIZACAO_3"'
      Size = 30
    end
    object qrySeriesNFOFC_PLACA: TIBStringField
      FieldName = 'OFC_PLACA'
      Origin = '"PCD_IMPRIME_SERIE_NF"."OFC_PLACA"'
      Size = 10
    end
    object qrySeriesNFCTR_COD_CONTRATO: TIntegerField
      FieldName = 'CTR_COD_CONTRATO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CTR_COD_CONTRATO"'
    end
    object qrySeriesNFCTR_NOME_CONTRATO: TIBStringField
      FieldName = 'CTR_NOME_CONTRATO'
      Origin = '"PCD_IMPRIME_SERIE_NF"."CTR_NOME_CONTRATO"'
      Size = 50
    end
  end
  object dsQrySeriesNF: TDataSource
    DataSet = qrySeriesNF
    Enabled = False
    Left = 24
    Top = 288
  end
  object dsQryCT13: TDataSource
    DataSet = qryCT13
    Left = 176
    Top = 240
  end
  object qryNFAgrup: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from pcd_imp_nf_agrupada(:cnpj,:pessoa_fj,:dt_nf)')
    Left = 256
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa_fj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_nf'
        ParamType = ptUnknown
      end>
    object qryNFAgrupCLI_NOME: TIBStringField
      FieldName = 'CLI_NOME'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_NOME"'
      Size = 50
    end
    object qryNFAgrupCLI_PROPRIEDADE: TIBStringField
      FieldName = 'CLI_PROPRIEDADE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_PROPRIEDADE"'
      Size = 50
    end
    object qryNFAgrupCLI_CODIGO: TIntegerField
      FieldName = 'CLI_CODIGO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_CODIGO"'
    end
    object qryNFAgrupCLI_IE_SUB: TIBStringField
      FieldName = 'CLI_IE_SUB'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_IE_SUB"'
      Size = 15
    end
    object qryNFAgrupCLI_IE: TIBStringField
      FieldName = 'CLI_IE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_IE"'
      Size = 15
    end
    object qryNFAgrupCLI_CNPJ: TIBStringField
      FieldName = 'CLI_CNPJ'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_CNPJ"'
    end
    object qryNFAgrupCLI_ENDERECO: TIBStringField
      FieldName = 'CLI_ENDERECO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_ENDERECO"'
      Size = 70
    end
    object qryNFAgrupCLI_BAIRRO: TIBStringField
      FieldName = 'CLI_BAIRRO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_BAIRRO"'
      Size = 50
    end
    object qryNFAgrupCLI_CEP: TIBStringField
      FieldName = 'CLI_CEP'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_CEP"'
      Size = 10
    end
    object qryNFAgrupCLI_CIDADE: TIBStringField
      FieldName = 'CLI_CIDADE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_CIDADE"'
      Size = 50
    end
    object qryNFAgrupCLI_FONE: TIBStringField
      FieldName = 'CLI_FONE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_FONE"'
    end
    object qryNFAgrupCLI_UF: TIBStringField
      FieldName = 'CLI_UF'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_UF"'
      FixedChar = True
      Size = 2
    end
    object qryNFAgrupVD_NATUREZA: TIBStringField
      FieldName = 'VD_NATUREZA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_NATUREZA"'
      Size = 50
    end
    object qryNFAgrupVD_MSG_ECF: TIBStringField
      FieldName = 'VD_MSG_ECF'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_MSG_ECF"'
      Size = 50
    end
    object qryNFAgrupVD_OBS: TIBStringField
      FieldName = 'VD_OBS'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_OBS"'
      Size = 200
    end
    object qryNFAgrupVD_CFOP: TIntegerField
      FieldName = 'VD_CFOP'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_CFOP"'
    end
    object qryNFAgrupVD_CODIGO: TIntegerField
      FieldName = 'VD_CODIGO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_CODIGO"'
    end
    object qryNFAgrupVD_DT_EMISSAO: TDateField
      FieldName = 'VD_DT_EMISSAO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_DT_EMISSAO"'
    end
    object qryNFAgrupVD_DT_SAIDA: TDateField
      FieldName = 'VD_DT_SAIDA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_DT_SAIDA"'
    end
    object qryNFAgrupVD_HORA_SAIDA: TTimeField
      FieldName = 'VD_HORA_SAIDA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_HORA_SAIDA"'
    end
    object qryNFAgrupVD_TOTAL_PROD: TFloatField
      FieldName = 'VD_TOTAL_PROD'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_TOTAL_PROD"'
    end
    object qryNFAgrupVD_TOTAL_LIQUIDO: TFloatField
      FieldName = 'VD_TOTAL_LIQUIDO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_TOTAL_LIQUIDO"'
    end
    object qryNFAgrupVD_ICMS_DEBITADO: TFloatField
      FieldName = 'VD_ICMS_DEBITADO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_ICMS_DEBITADO"'
    end
    object qryNFAgrupVD_TOTAL_NF: TFloatField
      FieldName = 'VD_TOTAL_NF'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_TOTAL_NF"'
    end
    object qryNFAgrupVD_DESCONTO: TFloatField
      FieldName = 'VD_DESCONTO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_DESCONTO"'
    end
    object qryNFAgrupVD_VLR_FRETE: TFloatField
      FieldName = 'VD_VLR_FRETE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_VLR_FRETE"'
    end
    object qryNFAgrupVD_VLR_SEGURO: TFloatField
      FieldName = 'VD_VLR_SEGURO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_VLR_SEGURO"'
    end
    object qryNFAgrupVD_VLR_OUTRAS_DESP: TFloatField
      FieldName = 'VD_VLR_OUTRAS_DESP'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_VLR_OUTRAS_DESP"'
    end
    object qryNFAgrupVD_BASE_CALC: TFloatField
      FieldName = 'VD_BASE_CALC'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_BASE_CALC"'
    end
    object qryNFAgrupVD_VLR_ICM: TFloatField
      FieldName = 'VD_VLR_ICM'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_VLR_ICM"'
    end
    object qryNFAgrupVD_BASE_CALC_SUB: TFloatField
      FieldName = 'VD_BASE_CALC_SUB'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_BASE_CALC_SUB"'
    end
    object qryNFAgrupVD_VLR_ICM_SUB: TFloatField
      FieldName = 'VD_VLR_ICM_SUB'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_VLR_ICM_SUB"'
    end
    object qryNFAgrupVD_VLR_IPI: TFloatField
      FieldName = 'VD_VLR_IPI'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_VLR_IPI"'
    end
    object qryNFAgrupPRD_IPI: TFloatField
      FieldName = 'PRD_IPI'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_IPI"'
    end
    object qryNFAgrupPRD_CODIGO: TIBStringField
      FieldName = 'PRD_CODIGO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_CODIGO"'
      Size = 15
    end
    object qryNFAgrupPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_NOME"'
      Size = 400
    end
    object qryNFAgrupPRD_UNIDADE: TIBStringField
      FieldName = 'PRD_UNIDADE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qryNFAgrupPRD_SIT_TRIB: TIBStringField
      FieldName = 'PRD_SIT_TRIB'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_SIT_TRIB"'
      FixedChar = True
      Size = 6
    end
    object qryNFAgrupPRD_CL_FIS: TIBStringField
      FieldName = 'PRD_CL_FIS'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_CL_FIS"'
      FixedChar = True
      Size = 2
    end
    object qryNFAgrupPRD_QTDE: TFloatField
      FieldName = 'PRD_QTDE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_QTDE"'
    end
    object qryNFAgrupPRD_VLR_UNIT: TFloatField
      FieldName = 'PRD_VLR_UNIT'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_VLR_UNIT"'
    end
    object qryNFAgrupPRD_VLR_TTL_ITEM: TFloatField
      FieldName = 'PRD_VLR_TTL_ITEM'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_VLR_TTL_ITEM"'
    end
    object qryNFAgrupPRD_ALIQ_ICM: TIBStringField
      FieldName = 'PRD_ALIQ_ICM'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_ALIQ_ICM"'
      Size = 10
    end
    object qryNFAgrupPRD_COMPLEMENTO: TIBStringField
      FieldName = 'PRD_COMPLEMENTO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_COMPLEMENTO"'
      Size = 100
    end
    object qryNFAgrupPRD_REDUCAO: TIBStringField
      FieldName = 'PRD_REDUCAO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_REDUCAO"'
      Size = 80
    end
    object qryNFAgrupVDI_COMPLEMENTO: TIBStringField
      FieldName = 'VDI_COMPLEMENTO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VDI_COMPLEMENTO"'
      Size = 100
    end
    object qryNFAgrupTRP_NOME: TIBStringField
      FieldName = 'TRP_NOME'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_NOME"'
      Size = 50
    end
    object qryNFAgrupTRP_CNPJ: TIBStringField
      FieldName = 'TRP_CNPJ'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_CNPJ"'
      Size = 14
    end
    object qryNFAgrupTRP_PLACA: TIBStringField
      FieldName = 'TRP_PLACA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_PLACA"'
      Size = 8
    end
    object qryNFAgrupTRP_ENDERECO: TIBStringField
      FieldName = 'TRP_ENDERECO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_ENDERECO"'
      Size = 50
    end
    object qryNFAgrupTRP_CIDADE: TIBStringField
      FieldName = 'TRP_CIDADE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_CIDADE"'
      Size = 50
    end
    object qryNFAgrupTRP_UF: TIBStringField
      FieldName = 'TRP_UF'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_UF"'
      FixedChar = True
      Size = 2
    end
    object qryNFAgrupTRP_UF_VEICULO: TIBStringField
      FieldName = 'TRP_UF_VEICULO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_UF_VEICULO"'
      FixedChar = True
      Size = 2
    end
    object qryNFAgrupTRP_FRETE: TIntegerField
      FieldName = 'TRP_FRETE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_FRETE"'
    end
    object qryNFAgrupTRP_IE: TIBStringField
      FieldName = 'TRP_IE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_IE"'
      Size = 15
    end
    object qryNFAgrupTRP_PESO_LIQ: TFloatField
      FieldName = 'TRP_PESO_LIQ'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_PESO_LIQ"'
    end
    object qryNFAgrupTRP_PESO_BRUTO: TFloatField
      FieldName = 'TRP_PESO_BRUTO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_PESO_BRUTO"'
    end
    object qryNFAgrupTRP_PESO_QTDE: TFloatField
      FieldName = 'TRP_PESO_QTDE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_PESO_QTDE"'
    end
    object qryNFAgrupTRP_ESPECIE: TIBStringField
      FieldName = 'TRP_ESPECIE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_ESPECIE"'
      Size = 8
    end
    object qryNFAgrupTRP_MARCA: TIBStringField
      FieldName = 'TRP_MARCA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_MARCA"'
      Size = 8
    end
    object qryNFAgrupTRP_NUMERO: TIBStringField
      FieldName = 'TRP_NUMERO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."TRP_NUMERO"'
      Size = 8
    end
    object qryNFAgrupPRD_OBSERVACAO: TIBStringField
      FieldName = 'PRD_OBSERVACAO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_OBSERVACAO"'
      Size = 200
    end
    object qryNFAgrupGPR_OBS: TMemoField
      FieldName = 'GPR_OBS'
      Origin = '"PCD_IMP_NF_AGRUPADA"."GPR_OBS"'
      BlobType = ftMemo
      Size = 8
    end
    object qryNFAgrupPC_PARCELAMENTO: TIBStringField
      FieldName = 'PC_PARCELAMENTO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PC_PARCELAMENTO"'
      Size = 300
    end
    object qryNFAgrupPRD_PRODUTO_LOTE: TIBStringField
      FieldName = 'PRD_PRODUTO_LOTE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRD_PRODUTO_LOTE"'
      Size = 250
    end
    object qryNFAgrupVD_ENTRADA: TIBStringField
      FieldName = 'VD_ENTRADA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_ENTRADA"'
      FixedChar = True
      Size = 1
    end
    object qryNFAgrupVD_SAIDA: TIBStringField
      FieldName = 'VD_SAIDA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_SAIDA"'
      FixedChar = True
      Size = 1
    end
    object qryNFAgrupNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_IMP_NF_AGRUPADA"."NUM_NF"'
    end
    object qryNFAgrupALT_DETALHE: TFloatField
      FieldName = 'ALT_DETALHE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."ALT_DETALHE"'
    end
    object qryNFAgrupDESC_ICM_TTL_PROD: TFloatField
      FieldName = 'DESC_ICM_TTL_PROD'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_TTL_PROD"'
    end
    object qryNFAgrupDESC_ICM_LBL_TTL_PROD: TIBStringField
      FieldName = 'DESC_ICM_LBL_TTL_PROD'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_LBL_TTL_PROD"'
      Size = 50
    end
    object qryNFAgrupDESC_ICM_TTL_DESCTO: TFloatField
      FieldName = 'DESC_ICM_TTL_DESCTO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_TTL_DESCTO"'
    end
    object qryNFAgrupDESC_ICM_LBL_TTL_DESCTO: TIBStringField
      FieldName = 'DESC_ICM_LBL_TTL_DESCTO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_LBL_TTL_DESCTO"'
      Size = 50
    end
    object qryNFAgrupDESC_ICM_TTL_LIQ: TFloatField
      FieldName = 'DESC_ICM_TTL_LIQ'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_TTL_LIQ"'
    end
    object qryNFAgrupDESC_ICM_LBL_TTL_LIQ: TIBStringField
      FieldName = 'DESC_ICM_LBL_TTL_LIQ'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_LBL_TTL_LIQ"'
      Size = 50
    end
    object qryNFAgrupDESC_ICM_MSG_1: TIBStringField
      FieldName = 'DESC_ICM_MSG_1'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_MSG_1"'
      Size = 200
    end
    object qryNFAgrupDESC_ICM_MSG_2: TIBStringField
      FieldName = 'DESC_ICM_MSG_2'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DESC_ICM_MSG_2"'
      Size = 200
    end
    object qryNFAgrupCLI_FAX: TIBStringField
      FieldName = 'CLI_FAX'
      Origin = '"PCD_IMP_NF_AGRUPADA"."CLI_FAX"'
    end
    object qryNFAgrupDT_IMP_NF: TDateField
      FieldName = 'DT_IMP_NF'
      Origin = '"PCD_IMP_NF_AGRUPADA"."DT_IMP_NF"'
    end
    object qryNFAgrupVDI_CFOP: TIntegerField
      FieldName = 'VDI_CFOP'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VDI_CFOP"'
    end
    object qryNFAgrupS_VD_TOTAL_NF: TIBStringField
      FieldName = 'S_VD_TOTAL_NF'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_TOTAL_NF"'
      Size = 30
    end
    object qryNFAgrupS_VD_VLR_IPI: TIBStringField
      FieldName = 'S_VD_VLR_IPI'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_VLR_IPI"'
      Size = 30
    end
    object qryNFAgrupS_VD_VLR_OUTRAS_DESP: TIBStringField
      FieldName = 'S_VD_VLR_OUTRAS_DESP'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_VLR_OUTRAS_DESP"'
      Size = 30
    end
    object qryNFAgrupS_VD_VLR_SEGURO: TIBStringField
      FieldName = 'S_VD_VLR_SEGURO'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_VLR_SEGURO"'
      Size = 30
    end
    object qryNFAgrupS_VD_VLR_FRETE: TIBStringField
      FieldName = 'S_VD_VLR_FRETE'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_VLR_FRETE"'
      Size = 30
    end
    object qryNFAgrupS_VD_TOTAL_PROD: TIBStringField
      FieldName = 'S_VD_TOTAL_PROD'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_TOTAL_PROD"'
      Size = 30
    end
    object qryNFAgrupS_VD_VLR_ICM: TIBStringField
      FieldName = 'S_VD_VLR_ICM'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_VLR_ICM"'
      Size = 30
    end
    object qryNFAgrupS_VD_VLR_ICM_SUB: TIBStringField
      FieldName = 'S_VD_VLR_ICM_SUB'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_VLR_ICM_SUB"'
      Size = 30
    end
    object qryNFAgrupS_VD_BASE_CALC: TIBStringField
      FieldName = 'S_VD_BASE_CALC'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_BASE_CALC"'
      Size = 30
    end
    object qryNFAgrupS_VD_BASE_CALC_SUB: TIBStringField
      FieldName = 'S_VD_BASE_CALC_SUB'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_BASE_CALC_SUB"'
      Size = 30
    end
    object qryNFAgrupPRC_UNITARIO_LIQ: TFloatField
      FieldName = 'PRC_UNITARIO_LIQ'
      Origin = '"PCD_IMP_NF_AGRUPADA"."PRC_UNITARIO_LIQ"'
    end
    object qryNFAgrupVD_VOLUME: TFloatField
      FieldName = 'VD_VOLUME'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_VOLUME"'
    end
    object qryNFAgrupVD_MSG_FISCAL: TMemoField
      FieldName = 'VD_MSG_FISCAL'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_MSG_FISCAL"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryNFAgrupVD_MSG_COMPLEMENTAR: TMemoField
      FieldName = 'VD_MSG_COMPLEMENTAR'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VD_MSG_COMPLEMENTAR"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object qryNFAgrupS_VD_VOLUME: TIBStringField
      FieldName = 'S_VD_VOLUME'
      Origin = '"PCD_IMP_NF_AGRUPADA"."S_VD_VOLUME"'
      Size = 30
    end
    object qryNFAgrupLINHA: TIntegerField
      FieldName = 'LINHA'
      Origin = '"PCD_IMP_NF_AGRUPADA"."LINHA"'
    end
    object qryNFAgrupVND_CODIGOS: TIBStringField
      FieldName = 'VND_CODIGOS'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VND_CODIGOS"'
      Size = 180
    end
    object qryNFAgrupVEND_NOME: TIBStringField
      FieldName = 'VEND_NOME'
      Origin = '"PCD_IMP_NF_AGRUPADA"."VEND_NOME"'
      Size = 50
    end
  end
  object dsNFAgrup: TDataSource
    DataSet = qryNFAgrup
    Left = 176
    Top = 192
  end
  object qryParcItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from fat_vendas_itens vdi'
      'where vdi.codigo = :codigo and vdi.cnpj = :cnpj')
    Left = 24
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryParcItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryParcItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object qryParcItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object qryParcItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object qryParcItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object qryParcItensPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
    end
    object qryParcItensPRC_CUSTO: TFloatField
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_CUSTO"'
    end
    object qryParcItensICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
    end
    object qryParcItensICM_SUBS: TFloatField
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_VENDAS_ITENS"."ICM_SUBS"'
    end
    object qryParcItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS_ITENS"."IPI"'
    end
    object qryParcItensVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
    end
    object qryParcItensPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
    end
    object qryParcItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
    end
    object qryParcItensPORC_DESC: TFloatField
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
    end
    object qryParcItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryParcItensPRC_UNIT_ORIGINAL: TFloatField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
    end
    object qryParcItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object qryParcItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object qryParcItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object qryParcItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object qryParcItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object qryParcItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object qryParcItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object qryParcItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object qryParcItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."SUBUNIDADE"'
      Required = True
    end
    object qryParcItensTOTAL_DIGITADO: TFloatField
      FieldName = 'TOTAL_DIGITADO'
      Origin = '"FAT_VENDAS_ITENS"."TOTAL_DIGITADO"'
    end
    object qryParcItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."VENDEDOR"'
    end
    object qryParcItensFRACIONADO: TIBStringField
      FieldName = 'FRACIONADO'
      Origin = '"FAT_VENDAS_ITENS"."FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryParcItensMENSAGEM_REDUCAO: TIBStringField
      FieldName = 'MENSAGEM_REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."MENSAGEM_REDUCAO"'
      Size = 80
    end
    object qryParcItensBASECALCULOICM: TFloatField
      FieldName = 'BASECALCULOICM'
      Origin = '"FAT_VENDAS_ITENS"."BASECALCULOICM"'
    end
    object qryParcItensBASECALCULOSUBSTITUICAO: TFloatField
      FieldName = 'BASECALCULOSUBSTITUICAO'
      Origin = '"FAT_VENDAS_ITENS"."BASECALCULOSUBSTITUICAO"'
    end
    object qryParcItensALIQUOTA_EST: TFloatField
      FieldName = 'ALIQUOTA_EST'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA_EST"'
    end
    object qryParcItensALIQUOTA_INT: TFloatField
      FieldName = 'ALIQUOTA_INT'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA_INT"'
    end
    object qryParcItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"FAT_VENDAS_ITENS"."CFOP"'
    end
    object qryParcItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"FAT_VENDAS_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object qryParcItensNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."NOME_VENDEDOR"'
      Size = 15
    end
    object qryParcItensSERVICO: TBlobField
      FieldName = 'SERVICO'
      Origin = '"FAT_VENDAS_ITENS"."SERVICO"'
      Size = 8
    end
    object qryParcItensNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"FAT_VENDAS_ITENS"."NUMERO"'
      Size = 6
    end
    object qryParcItensLINHA_ABASTECIMENTO: TIntegerField
      FieldName = 'LINHA_ABASTECIMENTO'
      Origin = '"FAT_VENDAS_ITENS"."LINHA_ABASTECIMENTO"'
    end
    object qryParcItensCONTADOR_ARQUIVO: TIntegerField
      FieldName = 'CONTADOR_ARQUIVO'
      Origin = '"FAT_VENDAS_ITENS"."CONTADOR_ARQUIVO"'
    end
    object qryParcItensGRADE: TIBStringField
      FieldName = 'GRADE'
      Origin = '"FAT_VENDAS_ITENS"."GRADE"'
      Size = 4
    end
    object qryParcItensQUANTIDADE_FIS: TFloatField
      FieldName = 'QUANTIDADE_FIS'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE_FIS"'
    end
    object qryParcItensPRC_UNITARIO_FIS: TFloatField
      FieldName = 'PRC_UNITARIO_FIS'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO_FIS"'
    end
    object qryParcItensLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"FAT_VENDAS_ITENS"."LOTE"'
      Size = 10
    end
    object qryParcItensCODIGO_LOTE: TIntegerField
      FieldName = 'CODIGO_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO_LOTE"'
    end
    object qryParcItensUTILIZA_LOTE: TIBStringField
      FieldName = 'UTILIZA_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."UTILIZA_LOTE"'
      FixedChar = True
      Size = 1
    end
    object qryParcItensCOM_GERADA: TIBStringField
      FieldName = 'COM_GERADA'
      Origin = '"FAT_VENDAS_ITENS"."COM_GERADA"'
      FixedChar = True
      Size = 1
    end
    object qryParcItensQTDE_ENTREGUE: TFloatField
      FieldName = 'QTDE_ENTREGUE'
      Origin = '"FAT_VENDAS_ITENS"."QTDE_ENTREGUE"'
    end
  end
  object SelecionaVenda: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      'execute procedure pcd_seleciona_venda(:cnpj,:venda,:velho)')
    Transaction = DmApp.Transaction
    Left = 336
    Top = 240
  end
  object qrySeries_ORC_NF: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from PCD_IMPRIME_SERIE_ORC_NF(:orca,:cnpj)')
    Left = 24
    Top = 344
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'orca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qrySeries_ORC_NFCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CLIENTE"'
      Size = 50
    end
    object qrySeries_ORC_NFCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CIDADE"'
      Size = 60
    end
    object qrySeries_ORC_NFENDERECO_CLI: TIBStringField
      FieldName = 'ENDERECO_CLI'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."ENDERECO_CLI"'
      Size = 100
    end
    object qrySeries_ORC_NFCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."COD_VENDA"'
    end
    object qrySeries_ORC_NFDT_VENDA: TDateField
      FieldName = 'DT_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."DT_VENDA"'
    end
    object qrySeries_ORC_NFDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."DATA_CAIXA"'
    end
    object qrySeries_ORC_NFDESC_ACRESC: TFloatField
      FieldName = 'DESC_ACRESC'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."DESC_ACRESC"'
    end
    object qrySeries_ORC_NFDESC_ITEM: TFloatField
      FieldName = 'DESC_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."DESC_ITEM"'
    end
    object qrySeries_ORC_NFTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."TOTAL"'
    end
    object qrySeries_ORC_NFTOTAL_BRUTO: TFloatField
      FieldName = 'TOTAL_BRUTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."TOTAL_BRUTO"'
    end
    object qrySeries_ORC_NFNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."NUM_CUPOM"'
    end
    object qrySeries_ORC_NFNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."NUM_NF"'
    end
    object qrySeries_ORC_NFNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."NOME_VENDEDOR"'
      Size = 50
    end
    object qrySeries_ORC_NFPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PRODUTO"'
      Size = 50
    end
    object qrySeries_ORC_NFFORMA_PAGTO: TIBStringField
      FieldName = 'FORMA_PAGTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."FORMA_PAGTO"'
      Size = 50
    end
    object qrySeries_ORC_NFSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."SEQUENCIA"'
    end
    object qrySeries_ORC_NFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."QUANTIDADE"'
    end
    object qrySeries_ORC_NFPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PRC_UNITARIO"'
    end
    object qrySeries_ORC_NFPRC_UNITARIO_LIQ: TFloatField
      FieldName = 'PRC_UNITARIO_LIQ'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PRC_UNITARIO_LIQ"'
    end
    object qrySeries_ORC_NFTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."TOTAL_ITEM"'
    end
    object qrySeries_ORC_NFPARCELAMENTO: TIBStringField
      FieldName = 'PARCELAMENTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PARCELAMENTO"'
      Size = 500
    end
    object qrySeries_ORC_NFCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."COD_PRODUTO"'
      Size = 15
    end
    object qrySeries_ORC_NFBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."BAIRRO"'
      Size = 50
    end
    object qrySeries_ORC_NFCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."COMPLEMENTO"'
      Size = 50
    end
    object qrySeries_ORC_NFPCT_ITEM_DESCTO: TFloatField
      FieldName = 'PCT_ITEM_DESCTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PCT_ITEM_DESCTO"'
    end
    object qrySeries_ORC_NFUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeries_ORC_NFPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PESSOA_FJ"'
    end
    object qrySeries_ORC_NFCGC_CPF_CLI: TIBStringField
      FieldName = 'CGC_CPF_CLI'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CGC_CPF_CLI"'
    end
    object qrySeries_ORC_NFTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."TIPO_DOCTO"'
      Size = 3
    end
    object qrySeries_ORC_NFNOME_TIPO_DOCTO: TIBStringField
      FieldName = 'NOME_TIPO_DOCTO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."NOME_TIPO_DOCTO"'
      Size = 50
    end
    object qrySeries_ORC_NFRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."RG_IE"'
      Size = 15
    end
    object qrySeries_ORC_NFHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."HORA"'
    end
    object qrySeries_ORC_NFPCT_DESCTO_VENDA: TFloatField
      FieldName = 'PCT_DESCTO_VENDA'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PCT_DESCTO_VENDA"'
    end
    object qrySeries_ORC_NFCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CPF_CGC"'
      Size = 14
    end
    object qrySeries_ORC_NFCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CEP"'
    end
    object qrySeries_ORC_NFCEP_EMP: TIBStringField
      FieldName = 'CEP_EMP'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CEP_EMP"'
    end
    object qrySeries_ORC_NFBAIRRO_EMP: TIBStringField
      FieldName = 'BAIRRO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."BAIRRO_EMP"'
      Size = 50
    end
    object qrySeries_ORC_NFFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."FONE"'
    end
    object qrySeries_ORC_NFFONE_CLIENTE: TIBStringField
      FieldName = 'FONE_CLIENTE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."FONE_CLIENTE"'
    end
    object qrySeries_ORC_NFENDERECO_EMP: TIBStringField
      FieldName = 'ENDERECO_EMP'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."ENDERECO_EMP"'
      Size = 80
    end
    object qrySeries_ORC_NFFANTASIA_CLI: TIBStringField
      FieldName = 'FANTASIA_CLI'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."FANTASIA_CLI"'
      Size = 50
    end
    object qrySeries_ORC_NFEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."EMPRESA"'
      Size = 50
    end
    object qrySeries_ORC_NFCIDADE_EMP: TIBStringField
      FieldName = 'CIDADE_EMP'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CIDADE_EMP"'
      Size = 50
    end
    object qrySeries_ORC_NFCNPJ_EMP: TIBStringField
      FieldName = 'CNPJ_EMP'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CNPJ_EMP"'
    end
    object qrySeries_ORC_NFOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."OBSERVACAO"'
      Size = 200
    end
    object qrySeries_ORC_NFCONT_ITENS: TIBBCDField
      FieldName = 'CONT_ITENS'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."CONT_ITENS"'
      Precision = 18
      Size = 4
    end
    object qrySeries_ORC_NFVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object qrySeries_ORC_NFPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."PESO"'
      Precision = 18
      Size = 4
    end
    object qrySeries_ORC_NFDATA_VALIDADE: TDateField
      FieldName = 'DATA_VALIDADE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."DATA_VALIDADE"'
    end
    object qrySeries_ORC_NFMRC_CODIGO: TIntegerField
      FieldName = 'MRC_CODIGO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."MRC_CODIGO"'
    end
    object qrySeries_ORC_NFMRC_NOME: TIBStringField
      FieldName = 'MRC_NOME'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."MRC_NOME"'
      Size = 50
    end
    object qrySeries_ORC_NFGRD_GRADE: TIBStringField
      FieldName = 'GRD_GRADE'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_GRADE"'
      FixedChar = True
      Size = 4
    end
    object qrySeries_ORC_NFGRD_MATERIAL: TIntegerField
      FieldName = 'GRD_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_MATERIAL"'
    end
    object qrySeries_ORC_NFGRD_COR: TIntegerField
      FieldName = 'GRD_COR'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_COR"'
    end
    object qrySeries_ORC_NFGRD_NOME_MATERIAL: TIBStringField
      FieldName = 'GRD_NOME_MATERIAL'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_NOME_MATERIAL"'
      Size = 50
    end
    object qrySeries_ORC_NFGRD_NOME_COR: TIBStringField
      FieldName = 'GRD_NOME_COR'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_NOME_COR"'
      Size = 50
    end
    object qrySeries_ORC_NFGRD_PERFIL: TIntegerField
      FieldName = 'GRD_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_PERFIL"'
    end
    object qrySeries_ORC_NFGRD_NOME_PERFIL: TIBStringField
      FieldName = 'GRD_NOME_PERFIL'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_NOME_PERFIL"'
      Size = 50
    end
    object qrySeries_ORC_NFGRD_NUMERO: TIBStringField
      FieldName = 'GRD_NUMERO'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_NUMERO"'
      Size = 6
    end
    object qrySeries_ORC_NFGRD_ORDEM: TIntegerField
      FieldName = 'GRD_ORDEM'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."GRD_ORDEM"'
    end
    object qrySeries_ORC_NFLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."LOCALIZACAO_1"'
      Size = 30
    end
    object qrySeries_ORC_NFLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."LOCALIZACAO_2"'
      Size = 30
    end
    object qrySeries_ORC_NFLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"PCD_IMPRIME_SERIE_ORC_NF"."LOCALIZACAO_3"'
      Size = 30
    end
  end
  object dsSeries_ORC_NF: TDataSource
    DataSet = qrySeries_ORC_NF
    Left = 176
    Top = 344
  end
  object SelFaturaVendasFutura: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelFaturaVendasFuturaAfterClose
    BeforeOpen = SelFaturaVendasFuturaBeforeOpen
    RefreshSQL.Strings = (
      'SELECT selecionada,'
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    CODIGO ,'
      '    DATA ,'
      '    TOTAL ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    VENDEDOR ,'
      '    NOMEVENDEDOR ,'
      '    USUARIO ,'
      '    DATA_CAIXA,'
      '    CONTA_CAIXA,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    NATUREZA ,'
      '    NOMENATUREZA ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    VLR_TOTAL ,'
      '    DESC_ACRES ,'
      '    OBSERVACAO ,'
      '    ORCAMENTO ,'
      '    LOCAL,'
      '    CANCELADA ,'
      '    CARGA  ,'
      '    SERIE,'
      '    STATUS_CARREGAMENTO'
      'FROM VER_VENDAS ( :CNPJ, :TP )')
    SelectSQL.Strings = (
      'SELECT selecionada,'
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    CODIGO ,'
      '    DATA ,'
      '    TOTAL ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    VENDEDOR ,'
      '    NOMEVENDEDOR ,'
      '    USUARIO ,'
      '    DATA_CAIXA,'
      '    CONTA_CAIXA,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    NATUREZA ,'
      '    NOMENATUREZA ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    VLR_TOTAL ,'
      '    DESC_ACRES ,'
      '    OBSERVACAO ,'
      '    ORCAMENTO ,'
      '    LOCAL,'
      '    CANCELADA ,'
      '    CARGA  ,'
      '    SERIE,'
      '    STATUS_CARREGAMENTO,'
      '    ORDEM_CARGA,'
      '    ENTREGA_FUTURA'
      'FROM VER_VENDAS ( :CNPJ, :TP )')
    ModifySQL.Strings = (
      'update fat_vendas'
      'set'
      ' status_carregamento = :status_carregamento'
      'where'
      '  CNPJ = :OLD_CNPJ AND'
      '  CODIGO = :OLD_CODIGO')
    Left = 352
    Top = 8
    object SelFaturaVendasFuturaSELECIONADA: TIBStringField
      DisplayLabel = '[ x ] '
      FieldName = 'SELECIONADA'
      Origin = '"VER_VENDAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasFuturaPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_VENDAS"."PESSOA_FJ"'
    end
    object SelFaturaVendasFuturaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_VENDAS"."NOME"'
      Size = 50
    end
    object SelFaturaVendasFuturaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_VENDAS"."CODIGO"'
    end
    object SelFaturaVendasFuturaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_VENDAS"."DATA"'
    end
    object SelFaturaVendasFuturaTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasFuturaFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"VER_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasFuturaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_VENDAS"."HISTORICO"'
      Size = 100
    end
    object SelFaturaVendasFuturaVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_VENDAS"."VENDEDOR"'
    end
    object SelFaturaVendasFuturaNOMEVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOMEVENDEDOR'
      Origin = '"VER_VENDAS"."NOMEVENDEDOR"'
      Size = 50
    end
    object SelFaturaVendasFuturaUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"VER_VENDAS"."USUARIO"'
    end
    object SelFaturaVendasFuturaDATA_CAIXA: TDateField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_VENDAS"."DATA_CAIXA"'
    end
    object SelFaturaVendasFuturaCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_VENDAS"."CONTA_CAIXA"'
    end
    object SelFaturaVendasFuturaNUM_NF: TIntegerField
      DisplayLabel = 'Num. NF'
      FieldName = 'NUM_NF'
      Origin = '"VER_VENDAS"."NUM_NF"'
    end
    object SelFaturaVendasFuturaNUM_CUPOM: TIntegerField
      DisplayLabel = 'Num. Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_VENDAS"."NUM_CUPOM"'
    end
    object SelFaturaVendasFuturaNATUREZA: TIntegerField
      DisplayLabel = 'C'#243'd. Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_VENDAS"."NATUREZA"'
    end
    object SelFaturaVendasFuturaNOMENATUREZA: TIBStringField
      DisplayLabel = 'Nome Natureza'
      FieldName = 'NOMENATUREZA'
      Origin = '"VER_VENDAS"."NOMENATUREZA"'
      Size = 50
    end
    object SelFaturaVendasFuturaTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo Venda'
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelFaturaVendasFuturaNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelFaturaVendasFuturaVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Vlr. Total'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_VENDAS"."VLR_TOTAL"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasFuturaDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc./Acresc.'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      Precision = 18
      Size = 4
    end
    object SelFaturaVendasFuturaOBSERVACAO: TIBStringField
      DisplayLabel = 'Observa'#231#227'o'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 200
    end
    object SelFaturaVendasFuturaORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_VENDAS"."ORCAMENTO"'
    end
    object SelFaturaVendasFuturaLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"VER_VENDAS"."LOCAL"'
    end
    object SelFaturaVendasFuturaCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelFaturaVendasFuturaCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_VENDAS"."CARGA"'
    end
    object SelFaturaVendasFuturaSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"VER_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object SelFaturaVendasFuturaSTATUS_CARREGAMENTO: TIntegerField
      DisplayLabel = 'Status Carga'
      FieldName = 'STATUS_CARREGAMENTO'
      Origin = '"VER_VENDAS"."STATUS_CARREGAMENTO"'
    end
    object SelFaturaVendasFuturaORDEM_CARGA: TIntegerField
      DisplayLabel = 'Ordem Carga'
      FieldName = 'ORDEM_CARGA'
      Origin = '"VER_VENDAS"."ORDEM_CARGA"'
    end
    object SelFaturaVendasFuturaENTREGA_FUTURA: TIBStringField
      DisplayLabel = 'Entrega Futura'
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"VER_VENDAS"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
  end
  object CarregarItensFutura: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_ITENS'
      '  (CARREGADO, CARREGAR, ENTREGUE, DEVOLVIDO, DEVOLVER, ENTREGAR)'
      'values'
      '  (:CARREGADO, :CARREGAR, :ENTREGUE, :DEVOLVIDO, :DEVOLVER, '
      ':ENTREGAR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PRODUTO,'
      '  SEQUENCIA,'
      '  QUANTIDADE,'
      '  PRC_UNITARIO,'
      '  PRC_CUSTO,'
      '  ICM,'
      '  ICM_SUBS,'
      '  IPI,'
      '  VOLUME,'
      '  PESO,'
      '  DESCONTO,'
      '  PORC_DESC,'
      '  UNIDADE,'
      '  PRC_UNIT_ORIGINAL,'
      '  NOME_PRODUTO,'
      '  ALIQUOTA,'
      '  PRODUTOFIS,'
      '  NOME_FIS,'
      '  CTE,'
      '  CTIE,'
      '  ORIGEM,'
      '  REDUCAO,'
      '  SUBUNIDADE,'
      '  TOTAL_DIGITADO,'
      '  VENDEDOR,'
      '  FRACIONADO,'
      '  MENSAGEM_REDUCAO,'
      '  BASECALCULOICM,'
      '  BASECALCULOSUBSTITUICAO,'
      '  ALIQUOTA_EST,'
      '  ALIQUOTA_INT,'
      '  CFOP,'
      '  COMPLEMENTO,'
      '  NOME_VENDEDOR,'
      '  SERVICO,'
      '  NUMERO,'
      '  LINHA_ABASTECIMENTO,'
      '  CONTADOR_ARQUIVO,'
      '  GRADE,'
      '  QUANTIDADE_FIS,'
      '  PRC_UNITARIO_FIS,'
      '  LOTE,'
      '  CODIGO_LOTE,'
      '  UTILIZA_LOTE,'
      '  COM_GERADA,'
      '  QTDE_ENTREGUE,'
      '  CUSTO_MEDIO,'
      '  LUCRO_ITEM,'
      '  CARREGAR,'
      '  CARREGADO,'
      '  ENTREGUE,'
      '  ENTREGAR,'
      '  DEVOLVER,'
      '  DEVOLVIDO'
      'from FAT_VENDAS_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select '
      '    CNPJ,'
      '    CODIGO,'
      '    PRODUTO,'
      '    SEQUENCIA,'
      '    QUANTIDADE,'
      '    VOLUME,'
      '    PESO,'
      '    UNIDADE,'
      '    NOME_PRODUTO,'
      '    SUBUNIDADE,'
      '    FRACIONADO,'
      '    SERVICO,'
      '    GRADE,'
      '    NUMERO,'
      '    LOTE,'
      '    CODIGO_LOTE,'
      '    utiliza_lote,'
      '    coalesce(carregado,0) carregado, '
      '    coalesce(carregar,0) carregar,'
      '    coalesce(entregue,0) entregue,'
      '    coalesce(devolvido,0) devolvido,'
      '    coalesce(devolver,0) devolver,'
      '    coalesce(entregar,0) entregar'
      'from FAT_VENDAS_ITENS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'order by PRODUTO')
    ModifySQL.Strings = (
      'update FAT_VENDAS_ITENS'
      'set'
      '  CARREGADO = :CARREGADO,'
      '  CARREGAR = :CARREGAR,'
      '  ENTREGUE = :ENTREGUE,'
      '  DEVOLVIDO = :DEVOLVIDO,'
      '  DEVOLVER = :DEVOLVER,'
      '  ENTREGAR = :ENTREGAR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    Left = 336
    Top = 64
    object CarregarItensFuturaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CarregarItensFuturaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object CarregarItensFuturaPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object CarregarItensFuturaSEQUENCIA: TSmallintField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object CarregarItensFuturaQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object CarregarItensFuturaVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
    end
    object CarregarItensFuturaPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
    end
    object CarregarItensFuturaUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object CarregarItensFuturaNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object CarregarItensFuturaSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Unidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."SUBUNIDADE"'
      Required = True
    end
    object CarregarItensFuturaFRACIONADO: TIBStringField
      DisplayLabel = 'Fracionado'
      FieldName = 'FRACIONADO'
      Origin = '"FAT_VENDAS_ITENS"."FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object CarregarItensFuturaSERVICO: TBlobField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"FAT_VENDAS_ITENS"."SERVICO"'
      Size = 8
    end
    object CarregarItensFuturaGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"FAT_VENDAS_ITENS"."GRADE"'
      Size = 4
    end
    object CarregarItensFuturaNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"FAT_VENDAS_ITENS"."NUMERO"'
      Size = 6
    end
    object CarregarItensFuturaLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"FAT_VENDAS_ITENS"."LOTE"'
      Size = 10
    end
    object CarregarItensFuturaCODIGO_LOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Lote'
      FieldName = 'CODIGO_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO_LOTE"'
    end
    object CarregarItensFuturaUTILIZA_LOTE: TIBStringField
      DisplayLabel = 'Utiliza Lote'
      FieldName = 'UTILIZA_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."UTILIZA_LOTE"'
      FixedChar = True
      Size = 1
    end
    object CarregarItensFuturaCARREGADO: TFloatField
      DisplayLabel = 'Carregado'
      FieldName = 'CARREGADO'
      Origin = '"FAT_VENDAS_ITENS"."CARREGADO"'
    end
    object CarregarItensFuturaCARREGAR: TFloatField
      DisplayLabel = 'Carregar'
      FieldName = 'CARREGAR'
      Origin = '"FAT_VENDAS_ITENS"."CARREGAR"'
    end
    object CarregarItensFuturaENTREGUE: TFloatField
      DisplayLabel = 'Entregue'
      FieldName = 'ENTREGUE'
      Origin = '"FAT_VENDAS_ITENS"."ENTREGUE"'
    end
    object CarregarItensFuturaENTREGAR: TFloatField
      DisplayLabel = 'Entregar'
      FieldName = 'ENTREGAR'
    end
    object CarregarItensFuturaDEVOLVIDO: TFloatField
      DisplayLabel = 'Devolvido'
      FieldName = 'DEVOLVIDO'
    end
    object CarregarItensFuturaDEVOLVER: TFloatField
      DisplayLabel = 'Devolver'
      FieldName = 'DEVOLVER'
    end
  end
  object ImportaItens: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_IMP_ITENS_REM_DEV'
    Left = 336
    Top = 128
  end
  object SelFaturaVendasFuturaItens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelFaturaVendasFuturaAfterClose
    RefreshSQL.Strings = (
      'SELECT selecionada,'
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    CODIGO ,'
      '    DATA ,'
      '    TOTAL ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    VENDEDOR ,'
      '    NOMEVENDEDOR ,'
      '    USUARIO ,'
      '    DATA_CAIXA,'
      '    CONTA_CAIXA,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    NATUREZA ,'
      '    NOMENATUREZA ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    VLR_TOTAL ,'
      '    DESC_ACRES ,'
      '    OBSERVACAO ,'
      '    ORCAMENTO ,'
      '    LOCAL,'
      '    CANCELADA ,'
      '    CARGA  ,'
      '    SERIE,'
      '    STATUS_CARREGAMENTO'
      'FROM VER_VENDAS ( :CNPJ, :TP )')
    SelectSQL.Strings = (
      'select '
      '    fti.CODIGO,'
      '    fti.PRODUTO,'
      '    fti.SEQUENCIA,'
      '    fti.QUANTIDADE,'
      '    fti.PRC_UNITARIO,'
      '    fti.DESCONTO,'
      '    fti.PORC_DESC,'
      '    fti.UNIDADE,'
      '    fti.PRC_UNIT_ORIGINAL,'
      '    fti.NOME_PRODUTO,'
      '    fti.GRADE,'
      '    fti.NUMERO,'
      '    grd.grade,'
      '    grd.nome_cor,'
      '    grd.nome_material,'
      '    grd.nome_perfil,'
      '    FTI.carregar,'
      '    FTI.carregado,'
      '    FTI.entregue,'
      '    FTI.entregar,'
      '    FTI.devolvido,'
      '    FTI.devolver,'
      '    FTI.codigo_lote,'
      '    FTI.lote'
      'from FAT_VENDAS_ITENS fti'
      
        'left join EST_PRODUTOS_GRADES grd on (grd.produto = fti.produto ' +
        'and grd.grade = fti.grade)'
      'WHERE fti.CNPJ = :CNPJ AND fti.CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update fat_vendas'
      'set'
      ' status_carregamento = :status_carregamento'
      'where'
      '  CNPJ = :OLD_CNPJ AND'
      '  CODIGO = :OLD_CODIGO')
    Left = 336
    Top = 344
    object SelFaturaVendasFuturaItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object SelFaturaVendasFuturaItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object SelFaturaVendasFuturaItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object SelFaturaVendasFuturaItensQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object SelFaturaVendasFuturaItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
    end
    object SelFaturaVendasFuturaItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
    end
    object SelFaturaVendasFuturaItensPORC_DESC: TFloatField
      DisplayLabel = 'Desc. (%)'
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
    end
    object SelFaturaVendasFuturaItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SelFaturaVendasFuturaItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object SelFaturaVendasFuturaItensPRC_UNIT_ORIGINAL: TFloatField
      DisplayLabel = 'Vlr. Unit. Original'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
    end
    object SelFaturaVendasFuturaItensGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"FAT_VENDAS_ITENS"."GRADE"'
      Size = 4
    end
    object SelFaturaVendasFuturaItensNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"FAT_VENDAS_ITENS"."NUMERO"'
      Size = 6
    end
    object SelFaturaVendasFuturaItensGRADE1: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE1'
      Origin = '"EST_PRODUTOS_GRADES"."GRADE"'
      Size = 4
    end
    object SelFaturaVendasFuturaItensNOME_COR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'NOME_COR'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_COR"'
      Size = 50
    end
    object SelFaturaVendasFuturaItensNOME_MATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'NOME_MATERIAL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_MATERIAL"'
      Size = 50
    end
    object SelFaturaVendasFuturaItensNOME_PERFIL: TIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'NOME_PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object SelFaturaVendasFuturaItensENTREGUE: TFloatField
      DisplayLabel = 'Entregue'
      FieldName = 'ENTREGUE'
      Origin = '"FAT_VENDAS_ITENS"."ENTREGUE"'
    end
    object SelFaturaVendasFuturaItensDEVOLVIDO: TFloatField
      DisplayLabel = 'Devolvido'
      FieldName = 'DEVOLVIDO'
      Origin = '"FAT_VENDAS_ITENS"."DEVOLVIDO"'
    end
    object SelFaturaVendasFuturaItensCARREGAR: TFloatField
      DisplayLabel = 'Carregar'
      FieldName = 'CARREGAR'
      Origin = '"FAT_VENDAS_ITENS"."CARREGAR"'
    end
    object SelFaturaVendasFuturaItensCARREGADO: TFloatField
      DisplayLabel = 'Carregado'
      FieldName = 'CARREGADO'
      Origin = '"FAT_VENDAS_ITENS"."CARREGADO"'
    end
    object SelFaturaVendasFuturaItensENTREGAR: TFloatField
      DisplayLabel = 'Entregar'
      FieldName = 'ENTREGAR'
      Origin = '"FAT_VENDAS_ITENS"."ENTREGAR"'
    end
    object SelFaturaVendasFuturaItensDEVOLVER: TFloatField
      DisplayLabel = 'Devolver'
      FieldName = 'DEVOLVER'
      Origin = '"FAT_VENDAS_ITENS"."DEVOLVER"'
    end
    object SelFaturaVendasFuturaItensCODIGO_LOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Lote'
      FieldName = 'CODIGO_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO_LOTE"'
    end
    object SelFaturaVendasFuturaItensLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"FAT_VENDAS_ITENS"."LOTE"'
      Size = 10
    end
  end
  object qryAux: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 336
    Top = 192
  end
  object Valida_Produto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT   VENCTO_PRC_VENDA, '
      'PRC_CUSTO_MED,'
      '             PRC_REPOS, '
      '             PRC_VENDA, '
      '             Volume, '
      '             Peso_Liq,'
      '             Unidade, '
      '             NOME, '
      '             ATIVO, '
      '             ALIQUOTA_ECF, '
      '             QTDADE_1,'
      '             QTDADE_2,'
      '             NEG_QTDADE_2,'
      '             SUBUNIDADE,'
      '             COMPLEMENTO_NF,'
      '             ORIGEM,'
      '             CTE,'
      '             CTIE, '
      '             REDUCAO,'
      '             IPI,'
      '             VENDE_FRACIONADO,'
      '             POSSUI_LOTE,'
      '             MARCA,'
      '             MARGEM_BRUTA,'
      '             SERVICO,'
      '             COMPLEMENTO, qntde_minima_venda, '
      '             VALIDA_MULT_QTDE_MIN'
      'FROM VALIDA_PRODUTO (:CNPJ, :PRODUTO,:VENDEDOR)')
    Left = 448
    Top = 64
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        ParamType = ptUnknown
      end>
    object Valida_ProdutoPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VALIDA_PRODUTO"."PRC_REPOS"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VALIDA_PRODUTO"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VALIDA_PRODUTO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"VALIDA_PRODUTO"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VALIDA_PRODUTO"."UNIDADE"'
      Size = 4
    end
    object Valida_ProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_PRODUTO"."NOME"'
      Size = 50
    end
    object Valida_ProdutoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"VALIDA_PRODUTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"VALIDA_PRODUTO"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object Valida_ProdutoQTDADE_1: TIBBCDField
      FieldName = 'QTDADE_1'
      Origin = '"VALIDA_PRODUTO"."QTDADE_1"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."QTDADE_2"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VALIDA_PRODUTO"."SUBUNIDADE"'
    end
    object Valida_ProdutoCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VALIDA_PRODUTO"."ORIGEM"'
    end
    object Valida_ProdutoCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VALIDA_PRODUTO"."CTE"'
    end
    object Valida_ProdutoCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VALIDA_PRODUTO"."CTIE"'
    end
    object Valida_ProdutoREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VALIDA_PRODUTO"."REDUCAO"'
    end
    object Valida_ProdutoVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"VALIDA_PRODUTO"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"VALIDA_PRODUTO"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VALIDA_PRODUTO"."MARCA"'
      Size = 50
    end
    object Valida_ProdutoMARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"VALIDA_PRODUTO"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"VALIDA_PRODUTO"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO"'
      Size = 100
    end
    object Valida_ProdutoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VALIDA_PRODUTO"."IPI"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoQNTDE_MINIMA_VENDA: TIBBCDField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"VALIDA_PRODUTO"."QNTDE_MINIMA_VENDA"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"VALIDA_PRODUTO"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object Valida_ProdutoPRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VALIDA_PRODUTO"."PRC_CUSTO_MED"'
      Precision = 18
      Size = 4
    end
    object Valida_ProdutoVENCTO_PRC_VENDA: TDateField
      FieldName = 'VENCTO_PRC_VENDA'
      Origin = '"VALIDA_PRODUTO"."VENCTO_PRC_VENDA"'
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 648
    Top = 64
  end
  object Valida_Cliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select'
      '         Pessoa_Fj, '
      '         Nome,'
      '         Cod_Vend, '
      '         Cod_FPagto, '
      '         Requisicao,'
      '         Dia_Pref_Fat, '
      '         Limite_Tempo, '
      '         Limite_Credito,'
      '         Classif, '
      '         Bloqueado, '
      '         Obs, '
      '         Classificacao,'
      '         Obs2,'
      '         CPF_CNPJ,'
      '         Controla_Placa,'
      '         Controla_Km,'
      '         Assina_Nota,'
      '         Nao_Cobr_Jur_Ate,'
      '         Taxa_Juros,'
      '         Uf ,'
      '         VALOR_MAXIMO_RETIRADA,'
      '         LIMITE_DIARIO_RETIRADA,'
      '         ALIQUOTA_DESCONTO,'
      '         cons_rev'
      'from Valida_Cliente ( :CNPJ, :CODIGO )')
    Left = 448
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Valida_ClientePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VALIDA_CLIENTE"."PESSOA_FJ"'
    end
    object Valida_ClienteCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"VALIDA_CLIENTE"."COD_VEND"'
    end
    object Valida_ClienteCOD_FPAGTO: TIntegerField
      FieldName = 'COD_FPAGTO'
      Origin = '"VALIDA_CLIENTE"."COD_FPAGTO"'
    end
    object Valida_ClienteREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VALIDA_CLIENTE"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteDIA_PREF_FAT: TIntegerField
      FieldName = 'DIA_PREF_FAT'
      Origin = '"VALIDA_CLIENTE"."DIA_PREF_FAT"'
    end
    object Valida_ClienteLIMITE_TEMPO: TIntegerField
      FieldName = 'LIMITE_TEMPO'
      Origin = '"VALIDA_CLIENTE"."LIMITE_TEMPO"'
    end
    object Valida_ClienteLIMITE_CREDITO: TIBBCDField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"VALIDA_CLIENTE"."LIMITE_CREDITO"'
      Precision = 18
      Size = 4
    end
    object Valida_ClienteCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = '"VALIDA_CLIENTE"."CLASSIF"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VALIDA_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VALIDA_CLIENTE"."OBS"'
      Size = 8
    end
    object Valida_ClienteCLASSIFICACAO: TIntegerField
      FieldName = 'CLASSIFICACAO'
      Origin = '"VALIDA_CLIENTE"."CLASSIFICACAO"'
    end
    object Valida_ClienteNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_CLIENTE"."NOME"'
      Size = 50
    end
    object Valida_ClienteOBS2: TBlobField
      FieldName = 'OBS2'
      Origin = '"VALIDA_CLIENTE"."OBS2"'
      Size = 8
    end
    object Valida_ClienteCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"VALIDA_CLIENTE"."CPF_CNPJ"'
      Size = 15
    end
    object Valida_ClienteCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"VALIDA_CLIENTE"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"VALIDA_CLIENTE"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VALIDA_CLIENTE"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object Valida_ClienteNAO_COBR_JUR_ATE: TFloatField
      DisplayLabel = 'N'#227'o Cobr. Juros At'#233
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"VALIDA_CLIENTE"."NAO_COBR_JUR_ATE"'
    end
    object Valida_ClienteTAXA_JUROS: TFloatField
      DisplayLabel = 'Taxa Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VALIDA_CLIENTE"."TAXA_JUROS"'
    end
    object Valida_ClienteUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VALIDA_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object Valida_ClienteVALOR_MAXIMO_RETIRADA: TFloatField
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"VALIDA_CLIENTE"."VALOR_MAXIMO_RETIRADA"'
    end
    object Valida_ClienteLIMITE_DIARIO_RETIRADA: TFloatField
      FieldName = 'LIMITE_DIARIO_RETIRADA'
      Origin = '"VALIDA_CLIENTE"."LIMITE_DIARIO_RETIRADA"'
    end
    object Valida_ClienteALIQUOTA_DESCONTO: TFloatField
      FieldName = 'ALIQUOTA_DESCONTO'
      Origin = '"VALIDA_CLIENTE"."ALIQUOTA_DESCONTO"'
    end
    object Valida_ClienteCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"VALIDA_CLIENTE"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
  end
  object Valida_Forma: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '         * '
      'from FIN_FORMAS_PAGTO'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'AND ATIVO = '#39'S'#39)
    Left = 648
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Valida_FormaACRESCIMO: TFloatField
      FieldName = 'ACRESCIMO'
      Origin = '"FIN_FORMAS_PAGTO"."ACRESCIMO"'
      Required = True
    end
    object Valida_FormaAVISTA: TIBStringField
      FieldName = 'AVISTA'
      Origin = '"FIN_FORMAS_PAGTO"."AVISTA"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Valida_FormaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      Required = True
    end
    object Valida_FormaCOMENTRADA: TIBStringField
      FieldName = 'COMENTRADA'
      Origin = '"FIN_FORMAS_PAGTO"."COMENTRADA"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FIN_FORMAS_PAGTO"."DESCONTO"'
      Required = True
    end
    object Valida_FormaFATURA_FUTURA: TIBStringField
      FieldName = 'FATURA_FUTURA'
      Origin = '"FIN_FORMAS_PAGTO"."FATURA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaFORMA_ECF: TIBStringField
      FieldName = 'FORMA_ECF'
      Origin = '"FIN_FORMAS_PAGTO"."FORMA_ECF"'
      Size = 30
    end
    object Valida_FormaINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO"'
    end
    object Valida_FormaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Required = True
      Size = 50
    end
    object Valida_FormaNPARCELAS: TIntegerField
      FieldName = 'NPARCELAS'
      Origin = '"FIN_FORMAS_PAGTO"."NPARCELAS"'
      Required = True
    end
    object Valida_FormaTIPO_PAGAMENTO: TIBStringField
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"FIN_FORMAS_PAGTO"."TIPO_PAGAMENTO"'
      Size = 30
    end
    object Valida_FormaATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FIN_FORMAS_PAGTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaINTERVALO_PRE_DEFINIDO: TIBStringField
      FieldName = 'INTERVALO_PRE_DEFINIDO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO_PRE_DEFINIDO"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaVENCTO_FIXO: TIBStringField
      FieldName = 'VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."VENCTO_FIXO"'
      FixedChar = True
      Size = 1
    end
    object Valida_FormaDT_VENCTO_FIXO: TDateField
      FieldName = 'DT_VENCTO_FIXO'
      Origin = '"FIN_FORMAS_PAGTO"."DT_VENCTO_FIXO"'
    end
  end
  object DsOrcamentos: TDataSource
    AutoEdit = False
    Left = 518
    Top = 192
  end
  object Forma_Pagto_Parcelas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from fin_formas_pagto_parcelas pc'
      'where pc.cnpj = :cnpj and pc.cod_forma_pagto = :codigo')
    Left = 648
    Top = 240
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object Forma_Pagto_ParcelasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Forma_Pagto_ParcelasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Forma_Pagto_ParcelasCOD_FORMA_PAGTO: TIntegerField
      FieldName = 'COD_FORMA_PAGTO'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."COD_FORMA_PAGTO"'
    end
    object Forma_Pagto_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."PARCELA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Forma_Pagto_ParcelasDIAS_VENCIMENTO: TIntegerField
      FieldName = 'DIAS_VENCIMENTO'
      Origin = '"FIN_FORMAS_PAGTO_PARCELAS"."DIAS_VENCIMENTO"'
    end
  end
  object QryFatDet: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select vd.codigo, vd.total, vd.desc_acres,'
      'coalesce(vd.total,0) + coalesce(vd.desc_acres,0) total_liquido,'
      ''
      'vd.data, vd.data_caixa, vd.fechada, vdd.nome vendedor,'
      'coalesce(nat.codigo,'#39#39')||'#39'-'#39'||coalesce(nat.nome,'#39#39') natureza,'
      
        'coalesce(vd.forma_pgto,'#39#39')||'#39'-'#39'||coalesce(pgt.nome,'#39#39') forma_pag' +
        'to,'
      't.nome terceiro'
      'from fat_vendas vd'
      
        'inner join fat_vendedor vdd on (vd.vendedor = vdd.codigo and vd.' +
        'cnpj = vdd.cnpj)'
      
        'inner join est_natureza nat on (nat.cnpj = vd.cnpj and vd.nature' +
        'za = nat.codigo)'
      
        'inner join fin_formas_pagto pgt on (pgt.cnpj = vd.cnpj and pgt.c' +
        'odigo = vd.forma_pgto)'
      
        'left join FAT_TERCEIROS t on (vd.cnpj = t.cnpj and vd.terceiro =' +
        ' t.codigo)'
      'where  vd.codigo = :codigo and vd.cnpj = :cnpj'
      '')
    Left = 24
    Top = 128
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QryFatDetCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryFatDetTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
      DisplayFormat = '###,##0.00'
    end
    object QryFatDetDESC_ACRES: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object QryFatDetDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object QryFatDetDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Dt. Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object QryFatDetFECHADA: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object QryFatDetVENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object QryFatDetNATUREZA: TIBStringField
      DisplayLabel = 'CFOP'
      FieldName = 'NATUREZA'
      ProviderFlags = []
      Size = 62
    end
    object QryFatDetTOTAL_LIQUIDO: TFloatField
      DisplayLabel = 'Ttl. Liquido'
      FieldName = 'TOTAL_LIQUIDO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object QryFatDetFORMA_PAGTO: TIBStringField
      DisplayLabel = 'F. Pagto'
      FieldName = 'FORMA_PAGTO'
      ProviderFlags = []
      Size = 62
    end
    object QryFatDetTERCEIRO: TIBStringField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"FAT_TERCEIROS"."NOME"'
      Size = 50
    end
  end
  object SelPessoas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select codigo, nome_razao, cpf_cgc'
      'from glo_pessoas_fj'
      'where cnpj = :cnpj')
    Left = 648
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelPessoasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelPessoasNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelPessoasCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
  end
  object dsqryServico: TDataSource
    DataSet = qryServico
    Left = 176
    Top = 128
  end
  object VendasPdv_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = VendasPdv_ItensAfterInsert
    BeforeOpen = VendasPdv_ItensBeforeOpen
    BeforePost = VendasPdv_ItensBeforePost
    OnCalcFields = VendasPdv_ItensCalcFields
    OnNewRecord = VendasPdv_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_ITENS'
      
        '  (ALIQUOTA, CNPJ, CODIGO, COMPLEMENTO, CTE, CTIE, DESCONTO, FRA' +
        'CIONADO, '
      
        '   GRADE, ICM, ICM_SUBS, IPI, NOME_FIS, NOME_PRODUTO, NOME_VENDE' +
        'DOR, NUMERO, '
      
        '   ORIGEM, PESO, PORC_DESC, PRC_CUSTO, PRC_UNIT_ORIGINAL, PRC_UN' +
        'ITARIO, '
      
        '   PRODUTO, PRODUTOFIS, QUANTIDADE, REDUCAO, SEQUENCIA, SERVICO,' +
        ' SPRODUTO, '
      '   SUBUNIDADE, UNIDADE, VENDEDOR, VOLUME)'
      'values'
      
        '  (:ALIQUOTA, :CNPJ, :CODIGO, :COMPLEMENTO, :CTE, :CTIE, :DESCON' +
        'TO, :FRACIONADO, '
      
        '   :GRADE, :ICM, :ICM_SUBS, :IPI, :NOME_FIS, :NOME_PRODUTO, :NOM' +
        'E_VENDEDOR, '
      
        '   :NUMERO, :ORIGEM, :PESO, :PORC_DESC, :PRC_CUSTO, :PRC_UNIT_OR' +
        'IGINAL, '
      
        '   :PRC_UNITARIO, :PRODUTO, :PRODUTOFIS, :QUANTIDADE, :REDUCAO, ' +
        ':SEQUENCIA, '
      
        '   :SERVICO, :SPRODUTO, :SUBUNIDADE, :UNIDADE, :VENDEDOR, :VOLUM' +
        'E)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PRODUTO,'
      '  SEQUENCIA,'
      '  QUANTIDADE,'
      '  PRC_UNITARIO,'
      '  PRC_CUSTO,'
      '  ICM,'
      '  ICM_SUBS,'
      '  IPI,'
      '  VOLUME,'
      '  PESO,'
      '  DESCONTO,'
      '  PORC_DESC,'
      '  UNIDADE,'
      '  PRC_UNIT_ORIGINAL,'
      '  NOME_PRODUTO,'
      '  ALIQUOTA,'
      '  PRODUTOFIS,'
      '  NOME_FIS,'
      '  CTE,'
      '  CTIE,'
      '  ORIGEM,'
      '  REDUCAO,'
      '  SUBUNIDADE,'
      '  TOTAL_DIGITADO,'
      '  VENDEDOR,'
      '  FRACIONADO,'
      '  MENSAGEM_REDUCAO,'
      '  BASECALCULOICM,'
      '  BASECALCULOSUBSTITUICAO,'
      '  ALIQUOTA_EST,'
      '  ALIQUOTA_INT,'
      '  CFOP,'
      '  COMPLEMENTO,'
      '  NOME_VENDEDOR,'
      '  SERVICO,'
      '  NUMERO,'
      '  LINHA_ABASTECIMENTO,'
      '  CONTADOR_ARQUIVO,'
      '  GRADE,'
      '  QUANTIDADE_FIS,'
      '  PRC_UNITARIO_FIS,'
      '  LOTE,'
      '  CODIGO_LOTE,'
      '  UTILIZA_LOTE,'
      '  COM_GERADA,'
      '  QTDE_ENTREGUE,'
      '  CUSTO_MEDIO,'
      '  LUCRO_ITEM,'
      '  CARREGAR,'
      '  CARREGADO,'
      '  ENTREGUE,'
      '  ENTREGAR,'
      '  DEVOLVER,'
      '  DEVOLVIDO,'
      '  SPRODUTO'
      'from FAT_VENDAS_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select '
      '    CNPJ,'
      '    CODIGO,'
      '    PRODUTO,'
      '    SEQUENCIA,'
      '    QUANTIDADE,'
      '    PRC_UNITARIO,'
      '    PRC_CUSTO,'
      '    ICM,'
      '    ICM_SUBS,'
      '    IPI,'
      '    VOLUME,'
      '    PESO,'
      '    DESCONTO,'
      '    PORC_DESC,'
      '    UNIDADE,'
      '    PRC_UNIT_ORIGINAL,'
      '    NOME_PRODUTO,'
      '    ALIQUOTA,'
      '    PRODUTOFIS,'
      '    NOME_FIS,'
      '    SUBUNIDADE,'
      '    ORIGEM,'
      '    CTE,'
      '    CTIE,'
      '    REDUCAO,'
      '    FRACIONADO,'
      '    VENDEDOR,'
      '    NOME_VENDEDOR,'
      '    GRADE,'
      '    NUMERO,'
      '    SERVICO,'
      '    COMPLEMENTO,'
      '    SPRODUTO'
      'from FAT_VENDAS_ITENS'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS_ITENS'
      'set'
      '  ALIQUOTA = :ALIQUOTA,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  DESCONTO = :DESCONTO,'
      '  FRACIONADO = :FRACIONADO,'
      '  GRADE = :GRADE,'
      '  ICM = :ICM,'
      '  ICM_SUBS = :ICM_SUBS,'
      '  IPI = :IPI,'
      '  NOME_FIS = :NOME_FIS,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  NUMERO = :NUMERO,'
      '  ORIGEM = :ORIGEM,'
      '  PESO = :PESO,'
      '  PORC_DESC = :PORC_DESC,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  PRC_UNIT_ORIGINAL = :PRC_UNIT_ORIGINAL,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRODUTO = :PRODUTO,'
      '  PRODUTOFIS = :PRODUTOFIS,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  REDUCAO = :REDUCAO,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  SERVICO = :SERVICO,'
      '  SPRODUTO = :SPRODUTO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  VENDEDOR = :VENDEDOR,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    Left = 656
    Top = 304
    object VendasPdv_ItensCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VendasPdv_ItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object VendasPdv_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      OnSetText = VendasPdv_ItensPRODUTOSetText
      OnValidate = VendasPdv_ItensPRODUTOValidate
      Size = 15
    end
    object VendasPdv_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensICM: TFloatField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
    end
    object VendasPdv_ItensICM_SUBS: TFloatField
      DisplayLabel = 'Icm Subst'
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_VENDAS_ITENS"."ICM_SUBS"'
    end
    object VendasPdv_ItensIPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS_ITENS"."IPI"'
    end
    object VendasPdv_ItensVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasPdv_ItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdv_ItensPORC_DESC: TFloatField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
      DisplayFormat = '% ##0.00'
    end
    object VendasPdv_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object VendasPdv_ItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object VendasPdv_ItensPRC_UNIT_ORIGINAL: TFloatField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
    end
    object VendasPdv_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object VendasPdv_ItensALIQUOTA: TIBStringField
      DisplayLabel = 'Aliquota'
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object VendasPdv_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object VendasPdv_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object VendasPdv_ItensSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Unidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."SUBUNIDADE"'
    end
    object VendasPdv_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object VendasPdv_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object VendasPdv_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object VendasPdv_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object VendasPdv_ItensFRACIONADO: TIBStringField
      FieldName = 'FRACIONADO'
      Origin = '"FAT_VENDAS_ITENS"."FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdv_ItensVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."VENDEDOR"'
      OnValidate = VendasPdv_ItensVENDEDORValidate
    end
    object VendasPdv_ItensNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."NOME_VENDEDOR"'
      Size = 15
    end
    object VendasPdv_ItensSERVICO: TBlobField
      FieldName = 'SERVICO'
      Origin = '"FAT_VENDAS_ITENS"."SERVICO"'
      Size = 8
    end
    object VendasPdv_ItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"FAT_VENDAS_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object VendasPdv_ItensNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"FAT_VENDAS_ITENS"."NUMERO"'
      OnValidate = VendasPdv_ItensNUMEROValidate
      Size = 6
    end
    object VendasPdv_ItensGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"FAT_VENDAS_ITENS"."GRADE"'
      OnValidate = VendasPdv_ItensGRADEValidate
      FixedChar = True
      Size = 4
    end
    object VendasPdv_ItensSPRODUTO: TIBStringField
      FieldName = 'SPRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."SPRODUTO"'
      Size = 16
    end
  end
  object VendasPdv: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = VendaAfterInsert
    BeforeOpen = VendaBeforeOpen
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS'
      '  (CNPJ, CODIGO, DATA, FECHADA, HISTORICO, PESSOA_FJ, USUARIO, '
      'VENDEDOR, '
      '   NATUREZA, ENVIADA_CX, FORMA_PGTO, NUM_NF, NUM_CUPOM, '
      'PROPRIEDADE, CONVENIADO, '
      '   TIPO_DOCTO, LOCAL_COBRANCA, DESC_ACRES, ENTRADA, DINHEIRO, '
      'CHEQUE, CARTAO, '
      
        '   TICKET, TOTAL, OBSERVACAO, VLR_PARC_LC, TERCEIRO, CARGA, VOLU' +
        'ME, '
      'PESO, '
      '   REQUISICAO, DESCRICAO, TIPO_VENDA, NOME_CONSUMIDOR, '
      'ORCAMENTO, TROCO, '
      '   LOCAL, NOME, CANCELADA, SELECIONADA, DUPLICATA, RECEBIDAS, '
      'CONS_REV, '
      '   CENTRO_CUSTO, ES, GERA_FINANCEIRO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :FECHADA, :HISTORICO, :PESSOA_FJ, :USU' +
        'ARIO, '
      ':VENDEDOR, '
      '   :NATUREZA, :ENVIADA_CX, :FORMA_PGTO, :NUM_NF, :NUM_CUPOM, '
      ':PROPRIEDADE, '
      '   :CONVENIADO, :TIPO_DOCTO, :LOCAL_COBRANCA, :DESC_ACRES, '
      ':ENTRADA, :DINHEIRO, '
      
        '   :CHEQUE, :CARTAO, :TICKET, :TOTAL, :OBSERVACAO, :VLR_PARC_LC,' +
        ' '
      ':TERCEIRO, '
      
        '   :CARGA, :VOLUME, :PESO, :REQUISICAO, :DESCRICAO, :TIPO_VENDA,' +
        ' '
      ':NOME_CONSUMIDOR, '
      '   :ORCAMENTO, :TROCO, :LOCAL, :NOME, :CANCELADA, :SELECIONADA, '
      ':DUPLICATA, '
      '   :RECEBIDAS, :CONS_REV, :CENTRO_CUSTO, :ES, :GERA_FINANCEIRO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  FECHADA,'
      '  HISTORICO,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  VENDEDOR,'
      '  NATUREZA,'
      '  ENVIADA_CX,'
      '  FORMA_PGTO,'
      '  NUM_NF,'
      '  NUM_CUPOM,'
      '  PROPRIEDADE,'
      '  CONVENIADO,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  DESC_ACRES,'
      '  ENTRADA,'
      '  DINHEIRO,'
      '  CHEQUE,'
      '  CARTAO,'
      '  TICKET,'
      '  TOTAL,'
      '  OBSERVACAO,'
      '  VLR_PARC_LC,'
      '  TERCEIRO,'
      '  CARGA,'
      '  VOLUME,'
      '  PESO,'
      '  REQUISICAO,'
      '  DESCRICAO,'
      '  TIPO_VENDA,'
      '  NOME_CONSUMIDOR,'
      '  ORCAMENTO,'
      '  TROCO,'
      '  LOCAL,'
      '  NOME,'
      '  DATA_CAIXA,'
      '  CONTA_CAIXA,'
      '  CANCELADA,'
      '  TOTAL_NOTA,'
      '  BASE_ICM,'
      '  ICM,'
      '  BASE_ICM_SUBST,'
      '  VALOR_ICM_SUBST,'
      '  FRETE,'
      '  SEGURO,'
      '  DESPESAS,'
      '  IPI,'
      '  APRAZO,'
      '  SELECIONADA,'
      '  DUPLICATA,'
      '  BANCO,'
      '  RECEBIDAS,'
      '  CONTROLA_PLACA,'
      '  CONTROLA_KM,'
      '  ASSINA_NOTA,'
      '  KM_ATUAL,'
      '  NOME_PROPRIEDADE,'
      '  NOME_VENDEDOR,'
      '  NOME_NATUREZA,'
      '  NOME_TERCEIRO,'
      '  NOME_FORMA,'
      '  UF,'
      '  VALIDADE,'
      '  MEDIA_KM,'
      '  DOCUMENTOS_CONSUMIDOR,'
      '  ENDERECO_CONSUMIDOR,'
      '  TURNO,'
      '  HORA,'
      '  NAO_COBR_JUR_ATE,'
      '  SERIE,'
      '  DESCONTOS_CONCEDIDOS,'
      '  NOME_CONVENIO,'
      '  DT_EMISSAO_AGRUPADA,'
      '  TRANSPORTADORA,'
      '  DATA_CANCELAMENTO,'
      '  TOTAL_FISCAL,'
      '  CONS_REV,'
      '  IRRF,'
      '  INSS,'
      '  PIS_COFINS_CSLL,'
      '  ISS,'
      '  VALE_TROCO,'
      '  CIDADE_CONSUMIDOR,'
      '  PGTO_FRETE,'
      '  BAIRRO_CONSUMIDOR,'
      '  FONE_CONSUMIDOR,'
      '  MESA,'
      '  DESCTO_RES,'
      '  COMPROMETER_ESTOQUE,'
      '  ID_AGRUPADOR,'
      '  DESCTO_ICMS,'
      '  PCT_DESCTO_ICMS,'
      '  NF_AGRUPADA,'
      '  TRP_QTDE,'
      '  TRP_ESPECIE,'
      '  TRP_PESO_BRUTO,'
      '  TRP_PESO_LIQUIDO,'
      '  TRP_NUMERO,'
      '  TRP_MARCA,'
      '  TRP_NOME,'
      '  STATUS_CARREGAMENTO,'
      '  ORDEM_CARGA,'
      '  ENTREGA_FUTURA,'
      '  PCT_COMISSAO,'
      '  CENTRO_CUSTO,'
      '  ES,'
      '  GERA_FINANCEIRO'
      'from FAT_VENDAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  '
      '* '
      'from FAT_VENDAS'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO AND ENVIADA_CX <> '#39'S'#39
      'ORDER BY CNPJ, CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  FECHADA = :FECHADA,'
      '  HISTORICO = :HISTORICO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  USUARIO = :USUARIO,'
      '  VENDEDOR = :VENDEDOR,'
      '  NATUREZA = :NATUREZA,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  NUM_NF = :NUM_NF,'
      '  NUM_CUPOM = :NUM_CUPOM,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  CONVENIADO = :CONVENIADO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  DESC_ACRES = :DESC_ACRES,'
      '  ENTRADA = :ENTRADA,'
      '  DINHEIRO = :DINHEIRO,'
      '  CHEQUE = :CHEQUE,'
      '  CARTAO = :CARTAO,'
      '  TICKET = :TICKET,'
      '  TOTAL = :TOTAL,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  TERCEIRO = :TERCEIRO,'
      '  CARGA = :CARGA,'
      '  VOLUME = :VOLUME,'
      '  PESO = :PESO,'
      '  REQUISICAO = :REQUISICAO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TIPO_VENDA = :TIPO_VENDA,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  TROCO = :TROCO,'
      '  LOCAL = :LOCAL,'
      '  NOME = :NOME,'
      '  CANCELADA = :CANCELADA,'
      '  SELECIONADA = :SELECIONADA,'
      '  DUPLICATA = :DUPLICATA,'
      '  RECEBIDAS = :RECEBIDAS,'
      '  CONS_REV = :CONS_REV,'
      '  CENTRO_CUSTO = :CENTRO_CUSTO,'
      '  ES = :ES,'
      '  GERA_FINANCEIRO = :GERA_FINANCEIRO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FAT_VENDAS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 528
    Top = 280
    object VendasPdvCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VendasPdvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object VendasPdvFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDAS"."HISTORICO"'
      Size = 100
    end
    object VendasPdvPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object VendasPdvUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDAS"."USUARIO"'
      Required = True
    end
    object VendasPdvVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
    end
    object VendasPdvNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDAS"."NATUREZA"'
      Required = True
    end
    object VendasPdvENVIADA_CX: TIBStringField
      DisplayLabel = 'Enc. Caixa'
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_VENDAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pgto'
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_VENDAS"."FORMA_PGTO"'
    end
    object VendasPdvNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object VendasPdvNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object VendasPdvPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"FAT_VENDAS"."PROPRIEDADE"'
    end
    object VendasPdvCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"FAT_VENDAS"."CONVENIADO"'
    end
    object VendasPdvTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_VENDAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local Cobran'#231'a'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_VENDAS"."LOCAL_COBRANCA"'
    end
    object VendasPdvDESC_ACRES: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"FAT_VENDAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_VENDAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_VENDAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvCARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"FAT_VENDAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"FAT_VENDAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvVLR_PARC_LC: TFloatField
      DisplayLabel = 'Vlr Parcelado'
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_VENDAS"."VLR_PARC_LC"'
    end
    object VendasPdvTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Nome Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object VendasPdvOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_VENDAS"."OBSERVACAO"'
      Size = 80
    end
    object VendasPdvTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"FAT_VENDAS"."TERCEIRO"'
    end
    object VendasPdvCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"FAT_VENDAS"."CARGA"'
    end
    object VendasPdvVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS"."VOLUME"'
    end
    object VendasPdvPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS"."PESO"'
    end
    object VendasPdvREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"FAT_VENDAS"."REQUISICAO"'
      Size = 6
    end
    object VendasPdvDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"FAT_VENDAS"."DESCRICAO"'
      Size = 8
    end
    object VendasPdvORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object VendasPdvTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"FAT_VENDAS"."TROCO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasPdvLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object VendasPdvNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object VendasPdvCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"FAT_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvSELECIONADA: TIBStringField
      FieldName = 'SELECIONADA'
      Origin = '"FAT_VENDAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvDUPLICATA: TIntegerField
      FieldName = 'DUPLICATA'
      Origin = '"FAT_VENDAS"."DUPLICATA"'
    end
    object VendasPdvRECEBIDAS: TFloatField
      FieldName = 'RECEBIDAS'
      Origin = '"FAT_VENDAS"."RECEBIDAS"'
    end
    object VendasPdvTotal_Geral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Geral'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasPdvCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"FAT_VENDAS"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"FAT_VENDAS"."CONTA_CAIXA"'
    end
    object VendasPdvTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Origin = '"FAT_VENDAS"."TOTAL_NOTA"'
    end
    object VendasPdvBASE_ICM: TFloatField
      FieldName = 'BASE_ICM'
      Origin = '"FAT_VENDAS"."BASE_ICM"'
    end
    object VendasPdvICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS"."ICM"'
    end
    object VendasPdvBASE_ICM_SUBST: TFloatField
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"FAT_VENDAS"."BASE_ICM_SUBST"'
    end
    object VendasPdvVALOR_ICM_SUBST: TFloatField
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"FAT_VENDAS"."VALOR_ICM_SUBST"'
    end
    object VendasPdvFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = '"FAT_VENDAS"."FRETE"'
    end
    object VendasPdvSEGURO: TFloatField
      FieldName = 'SEGURO'
      Origin = '"FAT_VENDAS"."SEGURO"'
    end
    object VendasPdvDESPESAS: TFloatField
      FieldName = 'DESPESAS'
      Origin = '"FAT_VENDAS"."DESPESAS"'
    end
    object VendasPdvIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS"."IPI"'
    end
    object VendasPdvAPRAZO: TFloatField
      FieldName = 'APRAZO'
      Origin = '"FAT_VENDAS"."APRAZO"'
    end
    object VendasPdvBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FAT_VENDAS"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"FAT_VENDAS"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"FAT_VENDAS"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"FAT_VENDAS"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvKM_ATUAL: TFloatField
      FieldName = 'KM_ATUAL'
      Origin = '"FAT_VENDAS"."KM_ATUAL"'
    end
    object VendasPdvNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"FAT_VENDAS"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object VendasPdvNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object VendasPdvNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"FAT_VENDAS"."NOME_NATUREZA"'
      Size = 50
    end
    object VendasPdvNOME_TERCEIRO: TIBStringField
      FieldName = 'NOME_TERCEIRO'
      Origin = '"FAT_VENDAS"."NOME_TERCEIRO"'
      Size = 50
    end
    object VendasPdvNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_VENDAS"."NOME_FORMA"'
      Size = 50
    end
    object VendasPdvUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FAT_VENDAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object VendasPdvVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"FAT_VENDAS"."VALIDADE"'
    end
    object VendasPdvMEDIA_KM: TFloatField
      FieldName = 'MEDIA_KM'
      Origin = '"FAT_VENDAS"."MEDIA_KM"'
    end
    object VendasPdvDOCUMENTOS_CONSUMIDOR: TIBStringField
      FieldName = 'DOCUMENTOS_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."DOCUMENTOS_CONSUMIDOR"'
    end
    object VendasPdvENDERECO_CONSUMIDOR: TIBStringField
      FieldName = 'ENDERECO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."ENDERECO_CONSUMIDOR"'
      Size = 30
    end
    object VendasPdvTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_VENDAS"."TURNO"'
    end
    object VendasPdvHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"FAT_VENDAS"."HORA"'
    end
    object VendasPdvNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"FAT_VENDAS"."NAO_COBR_JUR_ATE"'
    end
    object VendasPdvSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"FAT_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvDESCONTOS_CONCEDIDOS: TFloatField
      FieldName = 'DESCONTOS_CONCEDIDOS'
      Origin = '"FAT_VENDAS"."DESCONTOS_CONCEDIDOS"'
    end
    object VendasPdvNOME_CONVENIO: TIBStringField
      FieldName = 'NOME_CONVENIO'
      Origin = '"FAT_VENDAS"."NOME_CONVENIO"'
      Size = 50
    end
    object VendasPdvDT_EMISSAO_AGRUPADA: TDateTimeField
      FieldName = 'DT_EMISSAO_AGRUPADA'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_AGRUPADA"'
    end
    object VendasPdvTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Origin = '"FAT_VENDAS"."TRANSPORTADORA"'
    end
    object VendasPdvDATA_CANCELAMENTO: TDateTimeField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = '"FAT_VENDAS"."DATA_CANCELAMENTO"'
    end
    object VendasPdvTOTAL_FISCAL: TFloatField
      FieldName = 'TOTAL_FISCAL'
      Origin = '"FAT_VENDAS"."TOTAL_FISCAL"'
    end
    object VendasPdvIRRF: TFloatField
      FieldName = 'IRRF'
      Origin = '"FAT_VENDAS"."IRRF"'
    end
    object VendasPdvINSS: TFloatField
      FieldName = 'INSS'
      Origin = '"FAT_VENDAS"."INSS"'
    end
    object VendasPdvPIS_COFINS_CSLL: TFloatField
      FieldName = 'PIS_COFINS_CSLL'
      Origin = '"FAT_VENDAS"."PIS_COFINS_CSLL"'
    end
    object VendasPdvISS: TFloatField
      FieldName = 'ISS'
      Origin = '"FAT_VENDAS"."ISS"'
    end
    object VendasPdvVALE_TROCO: TIBStringField
      FieldName = 'VALE_TROCO'
      Origin = '"FAT_VENDAS"."VALE_TROCO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvCIDADE_CONSUMIDOR: TIBStringField
      FieldName = 'CIDADE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."CIDADE_CONSUMIDOR"'
      Size = 50
    end
    object VendasPdvPGTO_FRETE: TIBStringField
      FieldName = 'PGTO_FRETE'
      Origin = '"FAT_VENDAS"."PGTO_FRETE"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvBAIRRO_CONSUMIDOR: TIBStringField
      FieldName = 'BAIRRO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."BAIRRO_CONSUMIDOR"'
      Size = 50
    end
    object VendasPdvFONE_CONSUMIDOR: TIBStringField
      FieldName = 'FONE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."FONE_CONSUMIDOR"'
    end
    object VendasPdvMESA: TIntegerField
      FieldName = 'MESA'
      Origin = '"FAT_VENDAS"."MESA"'
    end
    object VendasPdvDESCTO_RES: TFloatField
      FieldName = 'DESCTO_RES'
      Origin = '"FAT_VENDAS"."DESCTO_RES"'
    end
    object VendasPdvCOMPROMETER_ESTOQUE: TIBStringField
      FieldName = 'COMPROMETER_ESTOQUE'
      Origin = '"FAT_VENDAS"."COMPROMETER_ESTOQUE"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvID_AGRUPADOR: TIntegerField
      FieldName = 'ID_AGRUPADOR'
      Origin = '"FAT_VENDAS"."ID_AGRUPADOR"'
    end
    object VendasPdvDESCTO_ICMS: TFloatField
      FieldName = 'DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."DESCTO_ICMS"'
    end
    object VendasPdvPCT_DESCTO_ICMS: TFloatField
      FieldName = 'PCT_DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."PCT_DESCTO_ICMS"'
    end
    object VendasPdvNF_AGRUPADA: TIBStringField
      FieldName = 'NF_AGRUPADA'
      Origin = '"FAT_VENDAS"."NF_AGRUPADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvTRP_QTDE: TFloatField
      FieldName = 'TRP_QTDE'
      Origin = '"FAT_VENDAS"."TRP_QTDE"'
    end
    object VendasPdvTRP_ESPECIE: TIBStringField
      FieldName = 'TRP_ESPECIE'
      Origin = '"FAT_VENDAS"."TRP_ESPECIE"'
      Size = 50
    end
    object VendasPdvTRP_PESO_BRUTO: TFloatField
      FieldName = 'TRP_PESO_BRUTO'
      Origin = '"FAT_VENDAS"."TRP_PESO_BRUTO"'
    end
    object VendasPdvTRP_PESO_LIQUIDO: TFloatField
      FieldName = 'TRP_PESO_LIQUIDO'
      Origin = '"FAT_VENDAS"."TRP_PESO_LIQUIDO"'
    end
    object VendasPdvTRP_NUMERO: TIBStringField
      FieldName = 'TRP_NUMERO'
      Origin = '"FAT_VENDAS"."TRP_NUMERO"'
      Size = 50
    end
    object VendasPdvTRP_MARCA: TIntegerField
      FieldName = 'TRP_MARCA'
      Origin = '"FAT_VENDAS"."TRP_MARCA"'
    end
    object VendasPdvTRP_NOME: TIBStringField
      FieldName = 'TRP_NOME'
      Origin = '"FAT_VENDAS"."TRP_NOME"'
      Size = 50
    end
    object VendasPdvSTATUS_CARREGAMENTO: TIntegerField
      FieldName = 'STATUS_CARREGAMENTO'
      Origin = '"FAT_VENDAS"."STATUS_CARREGAMENTO"'
    end
    object VendasPdvORDEM_CARGA: TIntegerField
      FieldName = 'ORDEM_CARGA'
      Origin = '"FAT_VENDAS"."ORDEM_CARGA"'
    end
    object VendasPdvENTREGA_FUTURA: TIBStringField
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"FAT_VENDAS"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvPCT_COMISSAO: TFloatField
      FieldName = 'PCT_COMISSAO'
      Origin = '"FAT_VENDAS"."PCT_COMISSAO"'
    end
    object VendasPdvCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FAT_VENDAS"."CENTRO_CUSTO"'
    end
    object VendasPdvES: TIBStringField
      FieldName = 'ES'
      Origin = '"FAT_VENDAS"."ES"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvGERA_FINANCEIRO: TIBStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = '"FAT_VENDAS"."GERA_FINANCEIRO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object VendasPdvDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object VendasPdvNFE_CHAVE: TIBStringField
      FieldName = 'NFE_CHAVE'
      Origin = '"FAT_VENDAS"."NFE_CHAVE"'
      Size = 80
    end
    object VendasPdvNFE_SELECIONADO: TIBStringField
      FieldName = 'NFE_SELECIONADO'
      Origin = '"FAT_VENDAS"."NFE_SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvDT_PREV_ENTREGA: TDateField
      FieldName = 'DT_PREV_ENTREGA'
      Origin = '"FAT_VENDAS"."DT_PREV_ENTREGA"'
    end
    object VendasPdvCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"FAT_VENDAS"."COD_INDEXADOR"'
    end
    object VendasPdvIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"FAT_VENDAS"."IDX_DATABASE"'
    end
    object VendasPdvIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      Origin = '"FAT_VENDAS"."IDX_COTACAO"'
    end
    object VendasPdvIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      Origin = '"FAT_VENDAS"."IDX_QTDE"'
    end
    object VendasPdvCOD_CONFIGTITULO: TIntegerField
      FieldName = 'COD_CONFIGTITULO'
      Origin = '"FAT_VENDAS"."COD_CONFIGTITULO"'
    end
    object VendasPdvNFE_VALIDADA: TIBStringField
      FieldName = 'NFE_VALIDADA'
      Origin = '"FAT_VENDAS"."NFE_VALIDADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvNFE_ASSINADA: TIBStringField
      FieldName = 'NFE_ASSINADA'
      Origin = '"FAT_VENDAS"."NFE_ASSINADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvNFE_TRANSMITIDA: TIBStringField
      FieldName = 'NFE_TRANSMITIDA'
      Origin = '"FAT_VENDAS"."NFE_TRANSMITIDA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvNFE_AUTORIZADA: TIBStringField
      FieldName = 'NFE_AUTORIZADA'
      Origin = '"FAT_VENDAS"."NFE_AUTORIZADA"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvNFE_DANFE_IMPRESSO: TIBStringField
      FieldName = 'NFE_DANFE_IMPRESSO'
      Origin = '"FAT_VENDAS"."NFE_DANFE_IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvCLI_SUB_TRIBUTARIO: TIBStringField
      FieldName = 'CLI_SUB_TRIBUTARIO'
      Origin = '"FAT_VENDAS"."CLI_SUB_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object VendasPdvDT_EMISSAO_NF: TDateField
      FieldName = 'DT_EMISSAO_NF'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_NF"'
    end
    object VendasPdvDT_EMISSAO_CF: TDateField
      FieldName = 'DT_EMISSAO_CF'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_CF"'
    end
    object VendasPdvN_SEQ_ECF: TIBStringField
      FieldName = 'N_SEQ_ECF'
      Origin = '"FAT_VENDAS"."N_SEQ_ECF"'
      FixedChar = True
      Size = 3
    end
    object VendasPdvN_SERIE_ECF: TIBStringField
      FieldName = 'N_SERIE_ECF'
      Origin = '"FAT_VENDAS"."N_SERIE_ECF"'
    end
    object VendasPdvNFE_PROTOCOLO: TIBStringField
      FieldName = 'NFE_PROTOCOLO'
      Origin = '"FAT_VENDAS"."NFE_PROTOCOLO"'
      Size = 200
    end
    object VendasPdvNFE_RECIBO: TIBStringField
      FieldName = 'NFE_RECIBO'
      Origin = '"FAT_VENDAS"."NFE_RECIBO"'
      Size = 200
    end
    object VendasPdvNFE_XML: TMemoField
      FieldName = 'NFE_XML'
      Origin = '"FAT_VENDAS"."NFE_XML"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object VendasPdvNFE_CANC_MOTIVO: TIBStringField
      FieldName = 'NFE_CANC_MOTIVO'
      Origin = '"FAT_VENDAS"."NFE_CANC_MOTIVO"'
      Size = 200
    end
    object VendasPdvNFE_CANC_STATUS: TIBStringField
      FieldName = 'NFE_CANC_STATUS'
      Origin = '"FAT_VENDAS"."NFE_CANC_STATUS"'
      Size = 80
    end
    object VendasPdvNFE_CANC_PROTOCOLO: TIBStringField
      FieldName = 'NFE_CANC_PROTOCOLO'
      Origin = '"FAT_VENDAS"."NFE_CANC_PROTOCOLO"'
      Size = 80
    end
    object VendasPdvNFE_CANC_XML: TMemoField
      FieldName = 'NFE_CANC_XML'
      Origin = '"FAT_VENDAS"."NFE_CANC_XML"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object VendasPdvPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"FAT_VENDAS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object VendasPdvUF_PLACA: TIBStringField
      FieldName = 'UF_PLACA'
      Origin = '"FAT_VENDAS"."UF_PLACA"'
      FixedChar = True
      Size = 2
    end
    object VendasPdvBCH_COD_FILIAL: TIntegerField
      FieldName = 'BCH_COD_FILIAL'
      Origin = '"FAT_VENDAS"."BCH_COD_FILIAL"'
    end
    object VendasPdvDESCTO_SERVICO: TFloatField
      FieldName = 'DESCTO_SERVICO'
      Origin = '"FAT_VENDAS"."DESCTO_SERVICO"'
    end
  end
  object BCH_ITENS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select vd.codigo pedido,'
      '       (vdi.prc_unitario) prc_unitario,'
      '       vdi.quantidade , '
      '       cast('
      
        '       ((((((vdi.quantidade * vdi.prc_unitario) * 100)/vd.total)' +
        '* vd.desc_acres)/100)/vdi.quantidade) as numeric(18,4)) desconto' +
        ','
      '       vdi.vendedor,'
      '       vdi.produto,'
      '       vd.pessoa_fj,'
      '      (vd.total + vd.desc_acres) total_venda,'
      '       prd.bch_codigo'
      '       from fat_vendas vd'
      
        '       inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj an' +
        'd vd.codigo = vdi.codigo)'
      
        '       inner join est_produtos prd on (prd.cnpj = vdi.cnpj and v' +
        'di.produto = prd.codigo)'
      'where vd.cnpj = :cnpj and vd.codigo = :codigo')
    Left = 448
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object BCH_ITENSPEDIDO: TIntegerField
      FieldName = 'PEDIDO'
      Origin = '"FAT_VENDAS"."CODIGO"'
    end
    object BCH_ITENSPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
    end
    object BCH_ITENSQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object BCH_ITENSVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."VENDEDOR"'
    end
    object BCH_ITENSPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object BCH_ITENSPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
    end
    object BCH_ITENSTOTAL_VENDA: TFloatField
      FieldName = 'TOTAL_VENDA'
      ProviderFlags = []
    end
    object BCH_ITENSBCH_CODIGO: TIntegerField
      FieldName = 'BCH_CODIGO'
      Origin = '"EST_PRODUTOS"."BCH_CODIGO"'
    end
    object BCH_ITENSDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      ProviderFlags = []
      Precision = 18
      Size = 4
    end
  end
  object BCH_CARTAO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select crt.venda, crt.valor, crt.data from fin_movimento_cartao ' +
        'crt'
      'where crt.cnpj = :cnpj and crt.venda = :codigo')
    Left = 544
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object BCH_CARTAOVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VENDA"'
    end
    object BCH_CARTAOVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VALOR"'
    end
    object BCH_CARTAODATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA"'
    end
  end
  object qConsultaGrade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      'count(*)'
      'from EST_PRODUTOS_GRADES'
      'where CNPJ = :CNPJ and PRODUTO = :produto')
    Left = 88
    Top = 248
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    object qConsultaGradeCOUNT: TIntegerField
      FieldName = 'COUNT'
      Required = True
    end
  end
end
