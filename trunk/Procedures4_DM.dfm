object DMProcs4: TDMProcs4
  OldCreateOrder = False
  Left = 285
  Top = 52
  Height = 708
  Width = 929
  object SOMA_CONCILIACAO_CARTAO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_CONCILIACAO_CARTAO'
    Left = 64
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
  object PROCESSA_CONCILIACAO_CARTAO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PROCESSA_CONCILIACAO_CARTAO'
    Left = 64
    Top = 56
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
        Name = 'DATA_CX'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
      end>
  end
  object IMPORTA_ORDEM_SERVICO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'IMPORTA_ORDEM_SERVICO'
    Left = 64
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDEM'
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
  object VALIDA_CONVENIO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VALIDA_CONVENIO'
    Left = 64
    Top = 168
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
        DataType = ftInteger
        Name = 'PESSOA_FJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptInput
      end>
  end
  object VERIFICA_FIN_CHEQUES: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VERIFICA_FIN_CHEQUES'
    Left = 64
    Top = 216
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
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CONTA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHEQUE'
        ParamType = ptInput
      end>
  end
  object MARCA_NUMNOTA_AGRUPADA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'MARCA_NUMNOTA_AGRUPADA'
    Left = 176
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
      end
      item
        DataType = ftInteger
        Name = 'PESSOA'
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
        Name = 'DATA_EMISSAO'
        ParamType = ptInput
      end>
  end
  object Seleciona_Venda_Agrupada: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_VENDA_SELECIONADA_AGRUPADA'
    Left = 176
    Top = 56
  end
  object Seleciona_Venda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SELECIONA_VENDA'
    Left = 176
    Top = 112
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
        Name = 'OPCAO'
        ParamType = ptInput
      end>
  end
  object Soma_Venda_Selecionada: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      '       SOMA,'
      '       NUMERO'
      'FROM '
      '          SOMA_VENDA_SELECIONADA_AGRUPADA '
      '          ('
      '          :CNPJ,'
      '          :PESSOA'
      '          )')
    Left = 176
    Top = 384
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object Soma_Venda_SelecionadaSOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"SOMA_VENDA_SELECIONADA"."SOMA"'
      Precision = 18
      Size = 4
    end
    object Soma_Venda_SelecionadaNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"SOMA_VENDA_SELECIONADA"."NUMERO"'
    end
  end
  object VERIFICA_IE_RG_AGRUPADA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VERIFICA_IE_RG_AGRUPADA'
    Left = 176
    Top = 216
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
  object VERIFICA_EST_FISCAL_AGRUPADA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VERIFICA_EST_FISCAL_AGRUPADA'
    Left = 264
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
        DataType = ftDateTime
        Name = 'DINI'
        ParamType = ptInput
      end
      item
        DataType = ftDateTime
        Name = 'DFIM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PESSOA'
        ParamType = ptInput
      end>
  end
  object QUANTIDADE_PRODUTO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'QUANTIDADE_PRODUTO'
    Left = 264
    Top = 56
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
        DataType = ftInteger
        Name = 'VENDA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
  end
  object TROCA_PRODUTO_FISCAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'TROCA_PRODUTO_FISCAL'
    Left = 264
    Top = 112
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
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'FISCAL'
        ParamType = ptInput
      end>
  end
  object INDEXA_CUSTOS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'INDEXA_CUSTOS'
    Left = 264
    Top = 168
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'INDEXADOR'
        ParamType = ptInput
      end>
  end
  object COTACAO_DOLAR: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'COTACAO_DOLAR'
    Left = 264
    Top = 216
    ParamData = <
      item
        DataType = ftBCD
        Name = 'VALOR'
        ParamType = ptOutput
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object SOMA_ENTRADA_PAG_REC_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_ENTRADA_PAGAR_CAIXA'
    Left = 344
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
  object SALDO_INICIAL_ESTOQUE_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDO_INICIAL_ESTOQUE_CAIXA'
    Left = 344
    Top = 56
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SALDO'
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
  object EXCLUI_ORDEM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUI_ORDEM'
    Left = 344
    Top = 112
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
  object APAGA_PARCELAS_GARANTIAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'APAGA_PARCELAS_GARANTIAS'
    Left = 344
    Top = 168
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
  object ENVIA_GARANTIA_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ENVIA_GARANTIA_CAIXA'
    Left = 344
    Top = 216
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
  object ENCERRA_GARANTIA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ENCERRA_GARANTIA'
    Left = 344
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
      end
      item
        DataType = ftDate
        Name = 'DATA_CAIXA'
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
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object SOMAS_FLUXO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_CHEQUE_LANCADOS_DATA'
    Left = 64
    Top = 272
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
  object PROCESSA_CONCILIACAO_CHEQUE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PROCESSA_CONCILIACAO_CHEQUE'
    Left = 176
    Top = 272
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
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'USUARIO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO'
        ParamType = ptInput
      end>
  end
  object SALDO_DRE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDOANT_CONTA_DRE'
    Left = 264
    Top = 272
  end
  object EXTORNA_NOTA_CANCELADA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXTORNA_NOTA_CANCELADA'
    Left = 64
    Top = 328
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
  object TRANSFERE_NOTA_ENTRE_CLIENTE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'TRANSFERE_NOTA_ENTRE_CLIENTE'
    Left = 176
    Top = 328
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
      end
      item
        DataType = ftInteger
        Name = 'DESTINO'
        ParamType = ptInput
      end>
  end
  object MARCA_NUMNOTA_OS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'MARCA_NUMNOTA_OS'
    Left = 264
    Top = 328
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
      end>
  end
  object ATUALIZA_ORCAMENTOS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ATUALIZA_ORCAMENTOS'
    Left = 344
    Top = 328
  end
  object DESVINCULA_RECEBER_FATURA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'DESVINCULA_RECEBER_FATURA'
    Left = 64
    Top = 384
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'RECEBER'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'ANO'
        ParamType = ptInput
      end>
  end
  object Lanca_Contabilidade_Movtos_Geral: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CX_MOVTOS_LANCA_CONTAB_GERAL'
    Left = 424
    Top = 56
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
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
      end>
  end
  object Lanca_Contabilidade_Prod_Caixa_Geral: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'LANCA_CONTAB_PROD_CAIXA_GERAL'
    Left = 424
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DATA_CAIXA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end>
  end
  object LANCA_RECEBER_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CONTA_RECEBER_CAIXA_GERAL'
    Left = 424
    Top = 168
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
  object LANCA_NOTAS_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_NOTAS_CAIXA_GERAL'
    Left = 424
    Top = 216
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
  object LANCA_CARTAO_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CARTAO_CAIXA_GERAL'
    Left = 264
    Top = 384
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
  object LANCA_DINHEIRO_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_DINHEIRO_CAIXA_GERAL'
    Left = 424
    Top = 272
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
  object LANCA_MOEDAS_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_MOEDAS_CAIXA_GERAL'
    Left = 424
    Top = 328
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
  object LANCA_CHQ_PRAZO_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CHQ_PRAZO_CAIXA_GERAL'
    Left = 424
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
  object LANCA_HAVER_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_HAVER_CAIXA_GERAL'
    Left = 504
    Top = 56
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
  object LANCA_BAIXA_HAVER_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_BAIXA_HAVER_CAIXA_GERAL'
    Left = 504
    Top = 112
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
  object LANCA_CONTA_RECEBER_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'LANCA_CONTA_RECEBER_CAIXA_GERAL'
    Left = 504
    Top = 168
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
  object APAGA_ETIQUETAS_IMPRESSAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'APAGA_ETIQUETAS_IMPRESSAS'
    Left = 504
    Top = 216
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
  end
  object APAGA_ETIQUETAS_MATRIZ: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'APAGA_ETIQUETAS_MATRIZ'
    Left = 504
    Top = 272
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
  end
  object INSERE_ETIQUETA_PRODUTO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'INSERE_ETIQUETA_PRODUTO'
    Left = 504
    Top = 328
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
        Name = 'NOME'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'QUANTIDADE'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SEQUENCIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NUMERO'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GRADE'
        ParamType = ptInput
      end>
  end
  object FATURA_OFC_ORDEM: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FATURA_OFC_ORDEM'
    Left = 504
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
  object EXCLUI_ORDEM_ORC: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUI_ORDEM_ORC'
    Left = 600
  end
  object SALDO_ANTERIOR_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDO_ANTERIOR_CAIXA'
    Left = 600
    Top = 168
    ParamData = <
      item
        DataType = ftBCD
        Name = 'SALDO'
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
      end
      item
        DataType = ftDate
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'TURNO'
        ParamType = ptInput
      end>
  end
  object POSSUI_GRADE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'POSSUI_GRADE'
    Left = 600
    Top = 216
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
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
  end
  object IMPORTA_ORDEM_SERVICO_EXISTENTE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'IMPORTA_ORDEM_SERVICO_EXISTENTE'
    Left = 600
    Top = 272
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ORDEM'
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
        Name = 'CODIGO_2'
        ParamType = ptInput
      end>
  end
  object BAIXA_ABASTECIMENTOS_AVULSOS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'BAIXA_ABASTECIMENTOS_AVULSOS'
    Left = 600
    Top = 328
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
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR'
        ParamType = ptInput
      end>
  end
  object CRIA_LOG_TRANSACOES: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CRIA_LOG_TRANSACOES'
    Left = 176
    Top = 168
  end
  object PCD_OS_GERA_VENDA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_OS_GERA_VENDA'
    Left = 344
    Top = 384
  end
end
