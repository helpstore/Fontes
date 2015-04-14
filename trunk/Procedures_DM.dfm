object DMProcs: TDMProcs
  OldCreateOrder = False
  Left = 65515
  Top = 109
  Height = 549
  Width = 883
  object GeraCodigo: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'GERAR_CODIGO'
    Left = 32
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'TABELA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TAG'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object VerificaModulo: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VERIFICA_MODULO'
    Left = 32
    Top = 64
  end
  object VerificaDireito: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VERIFICA_DIREITO'
    Left = 128
    Top = 64
    ParamData = <
      item
        DataType = ftString
        Name = 'EXECUTAVEL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'OBJETO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PERFIL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DIREITO'
        ParamType = ptOutput
      end>
  end
  object Relacs: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SIS_INF_RELACIONAMENTO'
    Left = 32
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'TABELA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CAMPO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TABELA_REL'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CAMPO_REL'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CAMPO_RES'
        ParamType = ptOutput
      end>
  end
  object CodigoSubGrupo: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'GERAR_CODIGO_SUBGRUPO'
    Left = 128
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'GRUPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end>
  end
  object CodigoPropriedade: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'GERAR_CODIGO_PROPRIEDADE'
    Left = 224
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end>
  end
  object NomeSimilar: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'NOME_SIMILAR'
    Left = 128
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'PRODUTO_A'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO_B'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptOutput
      end>
  end
  object VerifSimilares: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VERIFICA_SIMILARES'
    Left = 224
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'PRODUTO_A'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO_B'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RETORNO'
        ParamType = ptOutput
      end>
  end
  object Baixa_Receber: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER'
    Left = 32
    Top = 296
  end
  object Extorna_Receber_Parcial: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ESTORNA_RECEBER_PARCIAL'
    Left = 559
    Top = 286
  end
  object Baixa_Receber_Parcial: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER_PARCIAL'
    Left = 559
    Top = 230
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODREC'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ANOREC'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICOBX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_PARCIAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
      end>
  end
  object Soma_SelecionadoRec: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_RECEBER_LANCAMENTO'
    Left = 32
    Top = 232
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUANTIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA'
        ParamType = ptInput
      end>
  end
  object Seleciona_Receber: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SELECIONA_RECEBER'
    Left = 559
    Top = 342
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SEL'
        ParamType = ptInput
      end>
  end
  object Baixa_Receber_Selecao: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER_SELECAO'
    Left = 224
    Top = 64
  end
  object Soma_Receber_3Meses: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SOMA_RECEBER_3MESES'
    Left = 336
    Top = 64
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object Soma_Receber_2Meses: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SOMA_RECEBER_2MESES'
    Left = 448
    Top = 120
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FIM'
        ParamType = ptInput
      end>
  end
  object Soma_Receber: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_RECEBER'
    Left = 128
    Top = 288
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
  end
  object DataHora: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'DATA_HORA'
    Left = 36
    Top = 177
    ParamData = <
      item
        DataType = ftString
        Name = 'TP'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptOutput
      end>
  end
  object Cria_Recibo: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CRIA_RECIBO'
    Left = 32
    Top = 344
  end
  object Baixa_Pagar_Parcial: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_PAGAR_PARCIAL'
    Left = 678
    Top = 117
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODPAG'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ANOPAG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICOBX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_BX_PARCIAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
      end>
  end
  object Baixa_Pagar: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_PAGAR'
    Left = 559
    Top = 62
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODPAG'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ANOPAG'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICOBX'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_BX'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
      end>
  end
  object Extorna_Pagar: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXTORNA_PAGAR'
    Left = 448
    Top = 64
  end
  object Baixa_Pagar_Selecao: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_PAGAR_SELECAO'
    Left = 559
    Top = 110
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICOBX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CHEQUE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA_BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CAIXA'
        ParamType = ptInput
      end>
  end
  object Soma_Pagar: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_PAGAR'
    Left = 563
    Top = 175
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
  end
  object Seleciona_Pagar: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SELECIONA_PAGAR'
    Left = 559
    Top = 6
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SEL'
        ParamType = ptInput
      end>
  end
  object Soma_SelecionadoPgr: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SOMA_PAGAR_LANCAMENTO'
    Left = 452
    Top = 177
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUANTIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA'
        ParamType = ptInput
      end>
  end
  object Extorna_Pagar_Parcial: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXTORNA_PAGAR_PARCIAL'
    Left = 448
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODBX'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ANOBX'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_PARCIAL'
        ParamType = ptInput
      end>
  end
  object Concilia_Banco: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'CONCILIA_BANCO'
    Left = 682
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object Ultima_Conta: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'ULTIMA_CONTA'
    Left = 678
    Top = 229
    ParamData = <
      item
        DataType = ftString
        Name = 'ULTIMACONTA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object SaldoAntContabilidade: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDOANTCONTABILIDADE'
    Left = 678
    Top = 285
    ParamData = <
      item
        DataType = ftFloat
        Name = 'CREDITO'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'DEBITO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object Fecha_Alteracao: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FECHA_ALTPRECO'
    Left = 678
    Top = 5
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD'
        ParamType = ptInput
      end>
  end
  object Fecha_Contagem: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FECHA_CONTAGEM'
    Left = 678
    Top = 61
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COD'
        ParamType = ptInput
      end>
  end
  object Fatura_Receber: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FATURA_RECEBER'
    Left = 678
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUM_FATURA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CLIENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICOBX'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VENCIMENTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'TOTAL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'DESCONTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BANCO'
        ParamType = ptInput
      end>
  end
  object AtNfEntQtd: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'AT_NF_ENT_QTD'
    Left = 128
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NDOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TAG'
        ParamType = ptOutput
      end>
  end
  object AtNfEntCus: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'AT_NF_ENT_CUSTO'
    Left = 224
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NDOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TAG'
        ParamType = ptOutput
      end>
  end
  object AtNfEntFin: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'AT_NF_ENT_FINANCEIRO'
    Left = 336
    Top = 472
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TAG'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NDOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_CAIXA'
        ParamType = ptInput
      end>
  end
  object SOMA_RECEBER_CLIENTE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_RECEBER_CLIENTE'
    Left = 224
    Top = 472
    ParamData = <
      item
        DataType = ftBCD
        Name = 'RECEBER'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'DATARECEBER'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'FATURA'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'DATAFATURA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA'
        ParamType = ptInput
      end>
  end
  object Envia_Caixa: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ENVIA_CAIXA'
    Left = 224
    Top = 177
    ParamData = <
      item
        DataType = ftString
        Name = 'PROD'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Devolve_Balcao: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'DEVOLVE_BALCAO'
    Left = 224
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Encerra_Venda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ENCERRA_VENDA'
    Left = 224
    Top = 288
  end
  object Extorna_Venda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'EXTORNA_VENDA'
    Left = 336
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Apaga_Parcelas_Venda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'APAGA_PARCELAS_VENDA'
    Left = 128
    Top = 232
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Exclui_Venda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUI_VENDA'
    Left = 340
    Top = 177
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object CalcQtdProd: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'CALC_QTD_PROD'
    Left = 780
    Top = 5
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'QTD_UM'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'QTD_UNIT'
        ParamType = ptOutput
      end>
  end
  object Cheque_Venda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_CHEQUE_VENDA'
    Left = 448
    Top = 472
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Exclui_Orcamento: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUI_ORCAMENTO'
    Left = 780
    Top = 117
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Importa_Orcamento: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'IMPORTA_ORCAMENTO'
    Left = 784
    Top = 174
    ParamData = <
      item
        DataType = ftInteger
        Name = 'VENDA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CFOP'
        ParamType = ptInput
      end>
    object Importa_OrcamentoVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"IMPORTA_ORCAMENTO"."VENDA"'
    end
  end
  object Marca_NumNota: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'MARCA_NUMNOTA'
    Left = 780
    Top = 229
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ULTNUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_NF'
        ParamType = ptInput
      end>
  end
  object Marca_NumCupom: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'MARCA_NUMCUPOM'
    Left = 780
    Top = 285
  end
  object Nome_Produto: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'NOME_PRODUTO'
    Left = 780
    Top = 341
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
  end
  object Quantidade_Fiscal: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'QUANTIDADE_FISCAL'
    Left = 559
    Top = 406
    ParamData = <
      item
        DataType = ftBCD
        Name = 'QUANTIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
  end
  object Arredonda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'ARREDONDA'
    Left = 448
    Top = 232
    ParamData = <
      item
        DataType = ftFloat
        Name = 'RESULT'
        ParamType = ptOutput
      end
      item
        DataType = ftFloat
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CASAS'
        ParamType = ptInput
      end>
  end
  object ExtNfEntQtd: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXT_NF_ENT_QTD'
    Left = 128
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NDOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TAG'
        ParamType = ptOutput
      end>
  end
  object ExtNfEntFin: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXT_NF_ENT_FINANCEIRO'
    Left = 224
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NDOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TAG'
        ParamType = ptOutput
      end>
  end
  object Carregar: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CARREGAR_FATURA'
    Left = 448
    Top = 288
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CARGA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'FATURA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PESO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VOLUME'
        ParamType = ptInput
      end>
  end
  object Atualiza_Boleto: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ATUALIZA_BOLETO'
    Left = 448
    Top = 344
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUMERO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object Lanca_Convenio_Pdv: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CONVENIO_PDV'
    Left = 336
    Top = 408
  end
  object Verifica_Caixa: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VERIFICA_CAIXA'
    Left = 128
    Top = 177
  end
  object Agrupador: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'AGRUPADOR'
    Left = 32
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AGRUPADOR'
        ParamType = ptInput
      end>
  end
  object Cancela_Notas: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CANCELA_NOTAS'
    Left = 448
    Top = 408
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_CANCELAMENTO'
        ParamType = ptInput
      end>
  end
  object CodigoVeiculo: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'GERAR_CODIGO_VEICULO'
    Left = 678
    Top = 469
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end>
  end
  object CodigoDpl: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'GERAR_CODIGO_DUPLICATA'
    Left = 336
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
  end
  object Dia_Pref_Faturamento: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'DIA_PREF_FATURAMENTO'
    Left = 780
    Top = 405
    ParamData = <
      item
        DataType = ftInteger
        Name = 'DIA_PREF_FAT'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end>
  end
  object NomeUsuario: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'NOMEUSUARIO'
    Left = 678
    Top = 405
    ParamData = <
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end>
  end
  object Excluir_mensagem: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUIR_MENSAGEM'
    Left = 678
    Top = 405
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
  end
  object Exclui_Entrada: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUI_ENTRADA'
    Left = 336
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NDOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end>
  end
  object ExtNfEntCusto: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXT_NF_ENT_CUSTO'
    Left = 780
    Top = 61
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TAG'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NDOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end>
  end
  object Soma_SelecionadoRecLoja: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_RECEBER_LOJA_VENCIMENTO'
    Left = 336
    Top = 120
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUANTIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'SOMA'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'JUROS'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DINI'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA'
        ParamType = ptInput
      end>
  end
  object Extorna_Receber_Integral: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ESTORNA_RECEBER_INTEGRAL'
    Left = 128
    Top = 472
  end
  object VerificaLimite: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_VERIFICA_LIMITE'
    Left = 551
    Top = 470
  end
  object PCD_SET_NF_AGRUPADA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PCD_SET_NF_AGRUPADA'
    Left = 336
    Top = 344
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_NF'
        ParamType = ptInput
      end>
  end
end
