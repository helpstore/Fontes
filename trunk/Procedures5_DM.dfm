object DMProcs5: TDMProcs5
  OldCreateOrder = False
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object LANCA_DESC_JUR_VND_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_DESC_JUR_VND_CAIXA_GERAL'
    Left = 88
    Top = 8
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end>
  end
  object LANCA_DIFERENCA_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_DIFERENCA_CAIXA_GERAL'
    Left = 88
    Top = 53
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end>
  end
  object SOMA_CHEQUE_VISTA_VENDA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_CHEQUE_VISTA_VENDA'
    Left = 88
    Top = 96
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
  object SOMA_CARTAO_FLUXO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_CARTAO_FLUXO'
    Left = 88
    Top = 141
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
  object ULTIMA_GRADE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ULTIMA_GRADE'
    Left = 216
    Top = 80
    ParamData = <
      item
        DataType = ftString
        Name = 'GRADE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
  end
  object VER_VENDAS_VENDEDOR_ABERTAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_VENDAS_VENDEDOR_ABERTAS'
    Left = 216
    Top = 128
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
        Name = 'VENDEDOR'
        ParamType = ptInput
      end>
  end
  object VERIFICA_CAIXA_ABERTO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VERIFICA_CAIXA_ABERTO'
    Left = 216
    Top = 176
    ParamData = <
      item
        DataType = ftInteger
        Name = 'QUANTIDADE'
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
  object ANALISA_CLIENTE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ANALISE_CLIENTE'
    Left = 96
    Top = 280
  end
  object VER_EST_PRODUTOS_TRIBUT_REVENDA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_EST_PRODUTOS_TRIBUT_REVENDA'
    Left = 216
    Top = 224
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CTE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CTIE'
        ParamType = ptOutput
      end>
  end
  object SETAR_IMP_NF_SERVICO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SETAR_IMP_NF_SERVICO'
    Left = 216
    Top = 288
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
        DataType = ftBCD
        Name = 'IRRF'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'ISS'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PIS_COFINS_CSLL'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'INSS'
        ParamType = ptInput
      end>
  end
  object VER_DADOS_BAIXA_VENDA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_DADOS_BAIXA_VENDA'
    Left = 88
    Top = 328
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA_BAIXA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'BANCO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VENDA'
        ParamType = ptInput
      end>
  end
  object VERIFICA_CPF: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VERIFICA_CPF'
    Left = 216
    Top = 336
    ParamData = <
      item
        DataType = ftString
        Name = 'VERIFICA'
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
  object SELECIONA_COBRANCA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SELECIONA_COBRANCAS'
    Left = 328
    Top = 8
  end
  object AGENDAR_COBRANCAS_AGRUPADA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'AGENDAR_COBRANCAS_AGRUPADA'
    Left = 328
    Top = 72
    ParamData = <
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
      end
      item
        DataType = ftDate
        Name = 'COBRAR_EM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COBRADOR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_SERVIDOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MOTIVO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end>
  end
  object INSERE_PRODUTO_PDV: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'INSERE_PRODUTO_PDV'
    Left = 328
    Top = 120
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO_2'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NEG_QTDADE_2'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PRC_VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ALIQUOTA_ECF'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PROD_PESAVEL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ATUALIZA_ARQ_EXTERNO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'VALIDADE'
        ParamType = ptInput
      end>
  end
  object Insere_Nota_Fatura: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'INSERE_NOTAFATURA'
    Left = 331
    Top = 184
  end
  object FECHA_ENTRADA_MANUAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'FECHA_ENTRADA_MANUAL'
    Left = 328
    Top = 272
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
  object SOMA_CHEQUE_DEVOLVIDOS_PESSOA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SOMA_CHEQUE_DEVOLVIDOS_PESSOA'
    Left = 328
    Top = 336
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
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end>
  end
  object SOMA_CARTAO_VISTA_VENDA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SOMA_CARTAO_VISTA_VENDA'
    Left = 432
    Top = 16
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
  object TRANSFERE_PRODUTOS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'TRANSFERIR_PRODUTO'
    Left = 80
    Top = 200
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESTINO'
        ParamType = ptInput
      end>
  end
  object CONFERE_DOCTO_PAGAR: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CONFERE_DOCTO_PAGAR'
    Left = 440
    Top = 104
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NUMERO'
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
      end
      item
        DataType = ftString
        Name = 'DOCTO'
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
      end>
  end
  object VER_VENDAS_MESAS_ABERTAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_VENDAS_MESAS_ABERTAS'
    Left = 224
    Top = 24
  end
end
