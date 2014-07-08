object DMProcsPosto: TDMProcsPosto
  OldCreateOrder = False
  Left = 214
  Top = 115
  Height = 375
  Width = 400
  object Emitir_Faturas: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EMITIR_FATURAS'
    Left = 40
    Top = 16
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
        Name = 'TOLERANCIA'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'TIPO_CLIENTE'
        ParamType = ptInput
      end>
  end
  object Fechamento_Diario: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FECHAMENTO_DIARIO'
    Left = 40
    Top = 72
  end
  object EMITIR_FATURAS_CLIENTE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EMITIR_FATURAS_CLIENTE'
    Left = 40
    Top = 128
  end
  object EXCLUIR_FECHAMENTO_DIARIO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'EXCLUIR_FECHAMENTO_DIARIO'
    Left = 40
    Top = 184
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'FINAL'
        ParamType = ptInput
      end>
  end
  object Verifica_Preco_Especial: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VERIFICA_PRECO_ESPECIAL'
    Left = 160
    Top = 16
    ParamData = <
      item
        DataType = ftBCD
        Name = 'PORCENTAGEM'
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
        Name = 'PRODUTO'
        ParamType = ptInput
      end>
  end
  object INCIA_LEITURA_TANQUE: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'INICIA_LEITURA_TANQUE'
    Left = 160
    Top = 72
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
      end>
  end
  object ULTIMA_DATA_CAIXA: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'ULTIMA_DATA_CAIXA'
    Left = 160
    Top = 128
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
        DataType = ftDate
        Name = 'D'
        ParamType = ptInput
      end>
  end
end
