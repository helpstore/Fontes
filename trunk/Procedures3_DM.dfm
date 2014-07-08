object DMProcs3: TDMProcs3
  OldCreateOrder = False
  Left = 257
  Top = 105
  Height = 591
  Width = 956
  object ULTIMA_DUPLICATA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ULTIMA_DUPLICATA'
    Left = 77
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
      end>
  end
  object CANCELA_PEDIDO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CANCELA_PEDIDO'
    Left = 77
    Top = 128
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
  object SALDO_VENDAS_VISTA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDO_VENDAS_VISTA'
    Left = 206
    Top = 10
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SOMAC'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'SOMAD'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object SALDO_VENDAS_PRAZO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDO_VENDAS_PRAZO'
    Left = 77
    Top = 64
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SOMAC'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'SOMAD'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object LANCA_HAVER_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_HAVER_CAIXA'
    Left = 206
    Top = 130
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
        Name = 'USUARIO'
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
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object LANCA_BAIXA_HAVER_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_BAIXA_HAVER_CAIXA'
    Left = 206
    Top = 178
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
        Name = 'USUARIO'
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
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object LANCA_NOTAS_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_NOTAS_CAIXA'
    Left = 294
    Top = 10
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
        Name = 'USUARIO'
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
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object LANCA_MOEDAS_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_MOEDAS_CAIXA'
    Left = 206
    Top = 66
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
        Name = 'USUARIO'
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
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object LANCA_CARTAO_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CARTAO_CAIXA'
    Left = 294
    Top = 130
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
        Name = 'USUARIO'
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
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object LANCA_CHQ_PRAZO_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CHQ_PRAZO_CAIXA'
    Left = 294
    Top = 178
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
        Name = 'USUARIO'
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
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object LANCA_DINHEIRO_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_DINHEIRO_CAIXA'
    Left = 294
    Top = 242
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
        Name = 'USUARIO'
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
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object SEQUENCIA_ETIQUETA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SEQUENCIA_ETIQUETA'
    Left = 77
    Top = 176
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
  object SOMA_CHEQUES_ABERTOS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_CHEQUE_ABERTOS'
    Left = 390
    Top = 10
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
  object SOMA_CHEQUE_CONCILIADOS_DATA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_CHEQUE_CONCILIADOS_DATA'
    Left = 294
    Top = 66
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
  object ULTIMO_CAIXA_FECHADO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ULTIMO_CAIXA_FECHADO'
    Left = 390
    Top = 130
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object EXTORNA_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXTORNA_CAIXA'
    Left = 390
    Top = 178
  end
  object LANCA_CONTABILIDADE_ESTOQUE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CONTABILIDADE_ESTOQUE'
    Left = 390
    Top = 242
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
        Name = 'PLANILHA'
        ParamType = ptInput
      end>
  end
  object APAGA_PARCELAS_ORDEM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'APAGA_PARCELAS_ORDEM'
    Left = 478
    Top = 10
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
  object MARCA_RECEBER_BAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'MARCA_RECEBER_VENCIMENTO_BAIXA'
    Left = 478
    Top = 130
  end
  object VER_PESSOA_CONTA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_PESSOA_CONTA'
    Left = 478
    Top = 178
    ParamData = <
      item
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'AGENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end>
  end
  object VER_CPF_CNPJ: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_CPF_CNPJ'
    Left = 478
    Top = 242
    ParamData = <
      item
        DataType = ftString
        Name = 'CPF_CNPJ'
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
  object CONFERE_DOCTO_RECEBER: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CONFERE_DOCTO_RECEBER'
    Left = 478
    Top = 314
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
        DataType = ftString
        Name = 'TIPO_DOCTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DOCTO'
        ParamType = ptInput
      end>
  end
  object BAIXA_RECEBER_SELECAO_LOJA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER_SELECAO_LOJA'
    Left = 78
    Top = 447
  end
  object TROCA_CENTRO_PAGAR: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'TROCA_CENTRO_PAGAR'
    Left = 294
    Top = 314
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
        DataType = ftInteger
        Name = 'CENTRO'
        ParamType = ptInput
      end>
  end
  object RESPONDER_MENSAGEM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'RESPONDER_MENSAGEN'
    Left = 206
    Top = 242
    ParamData = <
      item
        DataType = ftString
        Name = 'REMETENTE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'DESTINATARIO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'RESERVADO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'ASSUNTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'MENSAGEM'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DT_ENVIO'
        ParamType = ptInput
      end>
  end
  object CANCELA_TROCA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CANCELA_TROCA'
    Left = 478
    Top = 378
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
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object EXCLUI_TROCA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUI_TROCA'
    Left = 390
    Top = 314
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
  object CRIA_SIS_MENU: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CRIA_SIS_MENU'
    Left = 294
    Top = 378
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CATEGORIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMPUTADOR'
        ParamType = ptInput
      end>
  end
  object CRIA_SIS_MENU_ITEM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CRIA_SIS_MENU_ITEM'
    Left = 206
    Top = 314
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CATEGORIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'COMPUTADOR'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CAPTION'
        ParamType = ptInput
      end>
  end
  object MIGRAR_FAT_CUPOM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'MIGRAR_FAT_CUPOM'
    Left = 206
    Top = 378
    ParamData = <
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
      end>
  end
  object DATA_SERVIDOR: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'DATA_SERVIDOR'
    Left = 77
    Top = 240
    ParamData = <
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptOutput
      end>
  end
  object VERIFICA_IE_RG: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VERIFICA_IE_RG'
    Left = 77
    Top = 312
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
        Name = 'VENDA'
        ParamType = ptInput
      end>
  end
  object ANALISE_CUSTOS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ANALISE_CUSTOS'
    Left = 704
    Top = 5
    ParamData = <
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
  object ULTIMO_TURNO_BOMBA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ULTIMO_TURNO_BOMBA'
    Left = 390
    Top = 66
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TURNO'
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
  object FECHAMENTO_MES: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FECHAMENTO_MES'
    Left = 582
    Top = 130
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
        DataType = ftDate
        Name = 'DATAINICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATAFINAL'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'MES'
        ParamType = ptInput
      end
      item
        DataType = ftSmallint
        Name = 'ANO'
        ParamType = ptInput
      end>
  end
  object AGENDAR_COBRANCAS_PESSOA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'AGENDAR_COBRANCAS_PESSOA'
    Left = 582
    Top = 178
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
        DataType = ftInteger
        Name = 'PESSOA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'MOTIVO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_SERVIDOR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'COBRAR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'COBRADOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RECEBER'
        ParamType = ptInput
      end>
  end
  object INSERIR_NUMERO_GRADE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'INSERIR_NUMERO_GRADE'
    Left = 582
    Top = 242
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
        Name = 'GRADE'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
      end>
  end
  object PROMOCAO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_EST_PROMOCAO'
    Left = 206
    Top = 450
    ParamData = <
      item
        DataType = ftBCD
        Name = 'VALOR'
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
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object CORRIGE_VENDAS_ITENS_PROMOCAO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CORRIGE_VENDAS_ITENS_PROMOCAO'
    Left = 582
    Top = 314
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
  object VER_NFCF_VENDA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_NFCF_VENDA'
    Left = 582
    Top = 378
    ParamData = <
      item
        DataType = ftInteger
        Name = 'NF'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'CF'
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
        DataType = ftString
        Name = 'SERIE'
        ParamType = ptInput
      end>
  end
  object VER_VENDA_CF: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VER_VENDA_CF'
    Left = 704
    Top = 66
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
      end>
  end
  object FECHAR_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FECHAR_CAIXA_GERAL'
    Left = 478
    Top = 66
  end
  object VER_FAT_VENDAS_COR: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'INSERE_FAT_VENDAS_COR'
    Left = 582
    Top = 66
  end
  object TRANSFERE_NOTAFATURA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'TRANSFERE_NOTAFATURA'
    Left = 704
    Top = 178
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
        DataType = ftInteger
        Name = 'FATURA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DESTINO'
        ParamType = ptInput
      end>
  end
  object INSERE_SANGRIAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'INSERE_SANGRIAS'
    Left = 704
    Top = 242
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR'
        ParamType = ptInput
      end>
  end
  object TRANSFERE_CADASTROS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'TRANSFERIR_ATIVIDADE'
    Left = 704
    Top = 130
  end
  object Lanca_Pagar_Pdv: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_PAGAR_PDV'
    Left = 704
    Top = 314
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
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'VENCTO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'HISTORICO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODPGR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
  end
  object LANCA_MOVIMENTO_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_MOVIMENTO_CAIXA'
    Left = 704
    Top = 378
  end
  object CONCILIA_CARTAO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'CONCILIA_CARTAO'
    Left = 582
    Top = 10
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
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object BAIXA_RECEBER_SELECAO_PDV: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER_SELECAO_PDV'
    Left = 390
    Top = 378
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
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
        DataType = ftString
        Name = 'PDV'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
      end>
  end
  object SEQUENCIA_ETIQUETA_IMP: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SEQUENCIA_ETIQUETA_IMPRIME'
    Left = 77
    Top = 376
  end
  object BAIXA_RECEBER_SELECAO_ADM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER_SELECAO_ADM'
    Left = 397
    Top = 443
  end
  object BAIXA_RECEBER_SELECAO_LOJA_ADM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_RECEBER_SELECAO_LOJA_ADM'
    Left = 702
    Top = 442
  end
  object TRANSFERE_PROPRIEDADE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'TRANSFERIR_PROPRIEDADE'
    Left = 80
    Top = 498
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'DESTINO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PORIGEM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PDESTINO'
        ParamType = ptInput
      end>
  end
end
