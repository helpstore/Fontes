object DMCaixaFrentista: TDMCaixaFrentista
  OldCreateOrder = False
  Left = 32
  Top = 112
  Height = 708
  Width = 1032
  object Caixa_Frentista: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    AfterInsert = Caixa_FrentistaAfterInsert
    BeforeOpen = Caixa_FrentistaBeforeOpen
    BeforePost = Caixa_FrentistaBeforePost
    OnCalcFields = Caixa_FrentistaCalcFields
    OnNewRecord = Caixa_FrentistaNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_CAIXAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  USUARIO = :OLD_USUARIO and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  TURNO = :OLD_TURNO')
    InsertSQL.Strings = (
      'insert into FAT_CAIXAS'
      
        '  (CNPJ, USUARIO, CONTA, DATA, DINHEIRO, TICKET, CHEQUE, CHEQUE_' +
        'PRAZO, '
      
        '   SALDO_ANTERIOR, SALDO, FECHADO, TROCO, SANGRIA, BOMBAS, NOTAS' +
        ', PRODUTOS, '
      
        '   CARTAO, RECEBIMENTOS, AFERICAO, MOEDAS, OUTRAS_ENTRADAS, OUTR' +
        'AS_SAIDAS, '
      
        '   TROCO_INICIAL, HAVER, BAIXA_HAVER, PLANILHA, DESCONTOS, JUROS' +
        ', ACRESCIMOS, '
      
        '   TROCO_VENDAS, JUROS_RECEBER, DESCONTOS_RECEBER, TURNO, DESCON' +
        'TOS_PRODUTOS_BOMBA)'
      'values'
      
        '  (:CNPJ, :USUARIO, :CONTA, :DATA, :DINHEIRO, :TICKET, :CHEQUE, ' +
        ':CHEQUE_PRAZO, '
      
        '   :SALDO_ANTERIOR, :SALDO, :FECHADO, :TROCO, :SANGRIA, :BOMBAS,' +
        ' :NOTAS, '
      
        '   :PRODUTOS, :CARTAO, :RECEBIMENTOS, :AFERICAO, :MOEDAS, :OUTRA' +
        'S_ENTRADAS, '
      
        '   :OUTRAS_SAIDAS, :TROCO_INICIAL, :HAVER, :BAIXA_HAVER, :PLANIL' +
        'HA, :DESCONTOS, '
      
        '   :JUROS, :ACRESCIMOS, :TROCO_VENDAS, :JUROS_RECEBER, :DESCONTO' +
        'S_RECEBER, '
      '   :TURNO, :DESCONTOS_PRODUTOS_BOMBA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  DATA,'
      '  DINHEIRO,'
      '  TICKET,'
      '  CHEQUE,'
      '  SALDO_ANTERIOR,'
      '  SALDO,'
      '  FECHADO,'
      '  TROCO,'
      '  SANGRIA,'
      '  BOMBAS,'
      '  NOTAS,'
      '  PRODUTOS,'
      '  CARTAO,'
      '  RECEBIMENTOS,'
      '  AFERICAO,'
      '  MOEDAS,'
      '  CHEQUE_PRAZO,'
      '  OUTRAS_ENTRADAS,'
      '  OUTRAS_SAIDAS,'
      '  TROCO_INICIAL,'
      '  HAVER,'
      '  BAIXA_HAVER,'
      '  PLANILHA,'
      '  DESCONTOS,'
      '  JUROS,'
      '  ACRESCIMOS,'
      '  TROCO_VENDAS,'
      '  VENDAS_VISTA,'
      '  VENDAS_PRAZO,'
      '  SALDO_PRAZO,'
      '  SALDO_VISTA,'
      '  PAGAMENTOS,'
      '  SALDO_CHEQUE,'
      '  SALDO_CHEQUE_CONC_DATA,'
      '  SALDO_CONTAS_BANCARIAS,'
      '  SALDO_RECEBER,'
      '  SALDO_PAGAR,'
      '  TURNO,'
      '  JUROS_RECEBER,'
      '  DESCONTOS_RECEBER,'
      '  DESCONTOS_PRODUTOS_BOMBA'
      'from FAT_CAIXAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  USUARIO = :USUARIO and'
      '  CONTA = :CONTA and'
      '  DATA = :DATA and'
      '  TURNO = :TURNO')
    SelectSQL.Strings = (
      'select '
      '    CNPJ ,'
      '    USUARIO ,'
      '    CONTA ,'
      '    DATA ,'
      '    DINHEIRO ,'
      '    TICKET ,'
      '    CHEQUE ,'
      '    CHEQUE_PRAZO,'
      '    SALDO_ANTERIOR ,'
      '    SALDO ,'
      '    FECHADO ,'
      '    TROCO ,'
      '    SANGRIA ,'
      '    BOMBAS ,'
      '    NOTAS ,'
      '    PRODUTOS ,'
      '    CARTAO ,'
      '    RECEBIMENTOS ,'
      '    AFERICAO,'
      '    MOEDAS,'
      '    OUTRAS_ENTRADAS,'
      '    OUTRAS_SAIDAS,'
      '    TROCO_INICIAL,'
      '    HAVER,'
      '    BAIXA_HAVER,'
      '    PLANILHA,'
      '    DESCONTOS,'
      '    JUROS,'
      '    ACRESCIMOS,'
      '    TROCO_VENDAS,'
      '    JUROS_RECEBER,'
      '    DESCONTOS_RECEBER,'
      '    TURNO,'
      '    DESCONTOS_PRODUTOS_BOMBA     '
      'from FAT_CAIXAS'
      'where '
      'CNPJ = :CNPJ AND '
      'USUARIO = :USUARIO AND '
      'CONTA = :CONTA AND '
      'DATA = :DATA AND '
      'TURNO = :TURNO')
    ModifySQL.Strings = (
      'update FAT_CAIXAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  USUARIO = :USUARIO,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DINHEIRO = :DINHEIRO,'
      '  TICKET = :TICKET,'
      '  CHEQUE = :CHEQUE,'
      '  CHEQUE_PRAZO = :CHEQUE_PRAZO,'
      '  SALDO_ANTERIOR = :SALDO_ANTERIOR,'
      '  SALDO = :SALDO,'
      '  FECHADO = :FECHADO,'
      '  TROCO = :TROCO,'
      '  SANGRIA = :SANGRIA,'
      '  BOMBAS = :BOMBAS,'
      '  NOTAS = :NOTAS,'
      '  PRODUTOS = :PRODUTOS,'
      '  CARTAO = :CARTAO,'
      '  RECEBIMENTOS = :RECEBIMENTOS,'
      '  AFERICAO = :AFERICAO,'
      '  MOEDAS = :MOEDAS,'
      '  OUTRAS_ENTRADAS = :OUTRAS_ENTRADAS,'
      '  OUTRAS_SAIDAS = :OUTRAS_SAIDAS,'
      '  TROCO_INICIAL = :TROCO_INICIAL,'
      '  HAVER = :HAVER,'
      '  BAIXA_HAVER = :BAIXA_HAVER,'
      '  PLANILHA = :PLANILHA,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROS = :JUROS,'
      '  ACRESCIMOS = :ACRESCIMOS,'
      '  TROCO_VENDAS = :TROCO_VENDAS,'
      '  JUROS_RECEBER = :JUROS_RECEBER,'
      '  DESCONTOS_RECEBER = :DESCONTOS_RECEBER,'
      '  TURNO = :TURNO,'
      '  DESCONTOS_PRODUTOS_BOMBA = :DESCONTOS_PRODUTOS_BOMBA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  USUARIO = :OLD_USUARIO and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  TURNO = :OLD_TURNO')
    Left = 48
    object Caixa_FrentistaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"PST_CAIXAFRENTISTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Caixa_FrentistaAFERICAO: TFloatField
      DisplayLabel = 'Aferi'#231#227'o'
      FieldName = 'AFERICAO'
      Origin = '"PST_CAIXAFRENTISTA"."AFERICAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaBOMBAS: TFloatField
      DisplayLabel = 'Bombas'
      FieldName = 'BOMBAS'
      Origin = '"PST_CAIXAFRENTISTA"."BOMBAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaCARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"PST_CAIXAFRENTISTA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PST_CAIXAFRENTISTA"."DATA"'
    end
    object Caixa_FrentistaDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"PST_CAIXAFRENTISTA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"PST_CAIXAFRENTISTA"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Caixa_FrentistaNOTAS: TFloatField
      DisplayLabel = 'Notas'
      FieldName = 'NOTAS'
      Origin = '"PST_CAIXAFRENTISTA"."NOTAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaPRODUTOS: TFloatField
      DisplayLabel = 'Produtos'
      FieldName = 'PRODUTOS'
      Origin = '"PST_CAIXAFRENTISTA"."PRODUTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaRECEBIMENTOS: TFloatField
      DisplayLabel = 'Recebimentos'
      FieldName = 'RECEBIMENTOS'
      Origin = '"PST_CAIXAFRENTISTA"."RECEBIMENTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaSANGRIA: TFloatField
      DisplayLabel = 'Sangria'
      FieldName = 'SANGRIA'
      Origin = '"PST_CAIXAFRENTISTA"."SANGRIA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"PST_CAIXAFRENTISTA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaTROCO: TFloatField
      DisplayLabel = 'Tr'#244'co'
      FieldName = 'TROCO'
      Origin = '"PST_CAIXAFRENTISTA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXAS"."USUARIO"'
      Required = True
    end
    object Caixa_FrentistaCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXAS"."CONTA"'
      Required = True
    end
    object Caixa_FrentistaCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaSALDO_ANTERIOR: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"FAT_CAIXAS"."SALDO_ANTERIOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = '"FAT_CAIXAS"."SALDO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaMOEDAS: TFloatField
      DisplayLabel = 'Moedas'
      FieldName = 'MOEDAS'
      Origin = '"FAT_CAIXAS"."MOEDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaSAIDAS: TFloatField
      DisplayLabel = 'Sa'#237'das'
      FieldKind = fkCalculated
      FieldName = 'SAIDAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Caixa_FrentistaCHEQUE_PRAZO: TFloatField
      DisplayLabel = 'Chq. Prazo'
      FieldName = 'CHEQUE_PRAZO'
      Origin = '"FAT_CAIXAS"."CHEQUE_PRAZO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaOUTRAS_ENTRADAS: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'OUTRAS_ENTRADAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_ENTRADAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaOUTRAS_SAIDAS: TFloatField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'OUTRAS_SAIDAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_SAIDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaENTRADAS: TFloatField
      DisplayLabel = 'Tot. Entradas'
      FieldKind = fkCalculated
      FieldName = 'ENTRADAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Caixa_FrentistaResultado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Resultado'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Caixa_FrentistaTROCO_INICIAL: TFloatField
      DisplayLabel = 'Troco Inicial'
      FieldName = 'TROCO_INICIAL'
      Origin = '"FAT_CAIXAS"."TROCO_INICIAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaHAVER: TFloatField
      DisplayLabel = 'Haver'
      FieldName = 'HAVER'
      Origin = '"FAT_CAIXAS"."HAVER"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaBAIXA_HAVER: TFloatField
      DisplayLabel = 'Haver Baixa'
      FieldName = 'BAIXA_HAVER'
      Origin = '"FAT_CAIXAS"."BAIXA_HAVER"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FAT_CAIXAS"."PLANILHA"'
    end
    object Caixa_FrentistaDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"FAT_CAIXAS"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FAT_CAIXAS"."JUROS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaACRESCIMOS: TFloatField
      DisplayLabel = 'Acr'#233'scimos'
      FieldName = 'ACRESCIMOS'
      Origin = '"FAT_CAIXAS"."ACRESCIMOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaTROCO_VENDAS: TFloatField
      DisplayLabel = 'Tr'#244'co Vendas'
      FieldName = 'TROCO_VENDAS'
      Origin = '"FAT_CAIXAS"."TROCO_VENDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_FrentistaJUROS_RECEBER: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS_RECEBER'
      Origin = '"FAT_CAIXAS"."JUROS_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_FrentistaDESCONTOS_RECEBER: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_RECEBER'
      Origin = '"FAT_CAIXAS"."DESCONTOS_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_FrentistaTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_CAIXAS"."TURNO"'
      Required = True
    end
    object Caixa_FrentistaDESCONTOS_PRODUTOS_BOMBA: TFloatField
      FieldName = 'DESCONTOS_PRODUTOS_BOMBA'
      Origin = '"FAT_CAIXAS"."DESCONTOS_PRODUTOS_BOMBA"'
      DisplayFormat = '###,##0.00'
    end
  end
  object DsCaixa: TDataSource
    DataSet = Caixa_Frentista
    Left = 128
  end
  object Produtos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    AfterPost = ProdutosAfterPost
    OnNewRecord = ProdutosNewRecord
    DeleteSQL.Strings = (
      'delete from PST_PRODUTOCAIXA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  USUARIO = :OLD_USUARIO')
    InsertSQL.Strings = (
      'insert into PST_PRODUTOCAIXA'
      
        '  (CNPJ, CONTA, DATA, PRODUTO, QUANTIDADE, USUARIO, VALOR_TOTAL,' +
        ' VALOR_UNIT, '
      '   NOME, UNIDADE, SUBUNIDADE)'
      'values'
      
        '  (:CNPJ, :CONTA, :DATA, :PRODUTO, :QUANTIDADE, :USUARIO, :VALOR' +
        '_TOTAL, '
      '   :VALOR_UNIT, :NOME, :UNIDADE, :SUBUNIDADE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  DATA,'
      '  USUARIO,'
      '  CONTA,'
      '  PRODUTO,'
      '  QUANTIDADE,'
      '  VALOR_UNIT,'
      '  VALOR_TOTAL,'
      '  NOME,'
      '  UNIDADE,'
      '  SUBUNIDADE'
      'from PST_PRODUTOCAIXA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  DATA = :DATA and'
      '  PRODUTO = :PRODUTO and'
      '  USUARIO = :USUARIO')
    SelectSQL.Strings = (
      'select'
      '         CNPJ, '
      '         CONTA, '
      '         DATA, '
      '         PRODUTO, '
      '         QUANTIDADE, '
      '         USUARIO,  '
      '         VALOR_TOTAL, '
      '         VALOR_UNIT,'
      '         NOME,'
      '         UNIDADE,'
      '         SUBUNIDADE'
      'from PST_PRODUTOCAIXA'
      'WHERE CNPJ = :CNPJ AND DATA = :DATA AND'
      'USUARIO = :USUARIO AND CONTA = :CONTA')
    ModifySQL.Strings = (
      'update PST_PRODUTOCAIXA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  USUARIO = :USUARIO,'
      '  VALOR_TOTAL = :VALOR_TOTAL,'
      '  VALOR_UNIT = :VALOR_UNIT,'
      '  NOME = :NOME,'
      '  UNIDADE = :UNIDADE,'
      '  SUBUNIDADE = :SUBUNIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  USUARIO = :OLD_USUARIO')
    DataSource = DsCaixa
    Left = 48
    Top = 87
    object ProdutosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"PST_PRODUTOCAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ProdutosCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"PST_PRODUTOCAIXA"."CONTA"'
      Required = True
    end
    object ProdutosDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PST_PRODUTOCAIXA"."DATA"'
    end
    object ProdutosPRODUTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"PST_PRODUTOCAIXA"."PRODUTO"'
      Required = True
      OnValidate = ProdutosPRODUTOValidate
      Size = 15
    end
    object ProdutosQUANTIDADE: TFloatField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"PST_PRODUTOCAIXA"."QUANTIDADE"'
      OnValidate = ProdutosQUANTIDADEValidate
      DisplayFormat = '###,###,##0.000'
    end
    object ProdutosUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"PST_PRODUTOCAIXA"."USUARIO"'
      Required = True
    end
    object ProdutosVALOR_TOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'VALOR_TOTAL'
      Origin = '"PST_PRODUTOCAIXA"."VALOR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object ProdutosVALOR_UNIT: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'VALOR_UNIT'
      Origin = '"PST_PRODUTOCAIXA"."VALOR_UNIT"'
      OnValidate = ProdutosVALOR_UNITValidate
      DisplayFormat = '###,###,##0.00'
    end
    object ProdutosNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"PST_PRODUTOCAIXA"."NOME"'
      Size = 50
    end
    object ProdutosUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"PST_PRODUTOCAIXA"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object ProdutosSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Unidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"PST_PRODUTOCAIXA"."SUBUNIDADE"'
    end
  end
  object Valida_Produto: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VALIDA_PRODUTO'
    Left = 128
    Top = 87
    ParamData = <
      item
        DataType = ftBCD
        Name = 'PRC_REPOS'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'PRC_VENDA'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'VOLUME'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'PESO_LIQ'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'UNIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'NOME'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ATIVO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'ALIQUOTA_ECF'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'QTDADE_1'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SUBUNIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'ORIGEM'
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
      end
      item
        DataType = ftInteger
        Name = 'REDUCAO'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'IPI'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'VENDE_FRACIONADO'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'MARGEM_BRUTA'
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
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 206
  end
  object VerLeitura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '          AFERICAO, '
      '          BOMBA, '
      '          CNPJ, '
      '          PRODUTO, '
      '          CONTA, '
      '          DATA, '
      '          LEITURAFINAL, '
      '          LEITURAINICIAL, '
      '          NOME, '
      '          USUARIO, '
      '          VALORTOTAL, '
      '          VALORUNITARIO '
      'from PST_LEITURADEBOMBAS'
      'WHERE CNPJ = :CNPJ AND BOMBA = :BOMBA AND'
      'CONTA = :CONTA AND DATA = :DATA AND USUARIO = :USUARIO'
      'AND TURNO = :TURNO')
    Left = 206
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BOMBA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object VerLeituraAFERICAO: TFloatField
      DisplayLabel = 'Aferi'#231#227'o'
      FieldName = 'AFERICAO'
      Origin = '"PST_LEITURADEBOMBAS"."AFERICAO"'
    end
    object VerLeituraBOMBA: TIntegerField
      DisplayLabel = 'Bomba'
      FieldName = 'BOMBA'
      Origin = '"PST_LEITURADEBOMBAS"."BOMBA"'
      Required = True
    end
    object VerLeituraCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"PST_LEITURADEBOMBAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VerLeituraCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"PST_LEITURADEBOMBAS"."CONTA"'
      Required = True
    end
    object VerLeituraDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PST_LEITURADEBOMBAS"."DATA"'
    end
    object VerLeituraLEITURAFINAL: TFloatField
      DisplayLabel = 'Leitura Final'
      FieldName = 'LEITURAFINAL'
      Origin = '"PST_LEITURADEBOMBAS"."LEITURAFINAL"'
      DisplayFormat = '###,###,##0.000'
    end
    object VerLeituraLEITURAINICIAL: TFloatField
      DisplayLabel = 'Leitura Inicial'
      FieldName = 'LEITURAINICIAL'
      Origin = '"PST_LEITURADEBOMBAS"."LEITURAINICIAL"'
      DisplayFormat = '###,###,##0.000'
    end
    object VerLeituraNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"PST_LEITURADEBOMBAS"."NOME"'
      Size = 50
    end
    object VerLeituraUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"PST_LEITURADEBOMBAS"."USUARIO"'
      Required = True
    end
    object VerLeituraVALORTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'VALORTOTAL'
      Origin = '"PST_LEITURADEBOMBAS"."VALORTOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object VerLeituraVALORUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'VALORUNITARIO'
      Origin = '"PST_LEITURADEBOMBAS"."VALORUNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object VerLeituraPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"PST_LEITURADEBOMBAS"."PRODUTO"'
      Required = True
      Size = 15
    end
  end
  object CriaLeitura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 206
    Top = 87
  end
  object Cartao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    AfterDelete = CartaoAfterDelete
    AfterInsert = CartaoAfterInsert
    AfterPost = CartaoAfterPost
    BeforePost = CartaoBeforePost
    OnNewRecord = CartaoNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_MOVIMENTO_CARTAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_MOVIMENTO_CARTAO'
      
        '  (CNPJ, CODIGO, DATA, USUARIO, CONTA, CPF_CNPJ, CLIENTE, REEMBO' +
        'LSO, '
      'ADMINISTRADORA, '
      
        '   VALOR, NUM_CARTAO, NUM_BANCO, NUM_CONTA, CONCILIADO, TIPO_DOC' +
        ', '
      'DOCUMENTO, '
      '   VENDA, PESSOA_FJ, TIPO, NUM_PARCELAS, TAXA, TURNO, '
      'DATA_CONCILIACAO, '
      '   PROCESSADO, CTR_CODIGO, TROCA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :USUARIO, :CONTA, :CPF_CNPJ, :CLIENTE,' +
        ' '
      ':REEMBOLSO, '
      
        '   :ADMINISTRADORA, :VALOR, :NUM_CARTAO, :NUM_BANCO, :NUM_CONTA,' +
        ' '
      ':CONCILIADO, '
      
        '   :TIPO_DOC, :DOCUMENTO, :VENDA, :PESSOA_FJ, :TIPO, :NUM_PARCEL' +
        'AS, '
      ':TAXA, '
      '   :TURNO, :DATA_CONCILIACAO, :PROCESSADO, :CTR_CODIGO, :TROCA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  USUARIO,'
      '  CONTA,'
      '  CPF_CNPJ,'
      '  CLIENTE,'
      '  REEMBOLSO,'
      '  ADMINISTRADORA,'
      '  VALOR,'
      '  NUM_CARTAO,'
      '  NUM_BANCO,'
      '  NUM_CONTA,'
      '  CONCILIADO,'
      '  TIPO_DOC,'
      '  DOCUMENTO,'
      '  VENDA,'
      '  PESSOA_FJ,'
      '  TIPO,'
      '  NUM_PARCELAS,'
      '  TAXA,'
      '  TURNO,'
      '  DATA_CONCILIACAO,'
      '  PROCESSADO,'
      '  CTR_CODIGO,'
      '  TROCA'
      'from FIN_MOVIMENTO_CARTAO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from FIN_MOVIMENTO_CARTAO'
      'WHERE CNPJ = :CNPJ AND CONTA = :CONTA AND'
      'DATA = :DATA AND USUARIO = :USUARIO '
      'AND TURNO = :TURNO'
      '')
    ModifySQL.Strings = (
      'update FIN_MOVIMENTO_CARTAO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  USUARIO = :USUARIO,'
      '  CONTA = :CONTA,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  CLIENTE = :CLIENTE,'
      '  REEMBOLSO = :REEMBOLSO,'
      '  ADMINISTRADORA = :ADMINISTRADORA,'
      '  VALOR = :VALOR,'
      '  NUM_CARTAO = :NUM_CARTAO,'
      '  NUM_BANCO = :NUM_BANCO,'
      '  NUM_CONTA = :NUM_CONTA,'
      '  CONCILIADO = :CONCILIADO,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  VENDA = :VENDA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TIPO = :TIPO,'
      '  NUM_PARCELAS = :NUM_PARCELAS,'
      '  TAXA = :TAXA,'
      '  TURNO = :TURNO,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  PROCESSADO = :PROCESSADO,'
      '  CTR_CODIGO = :CTR_CODIGO,'
      '  TROCA = :TROCA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 206
    Top = 133
    object CartaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CartaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CODIGO"'
      Required = True
    end
    object CartaoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA"'
      Required = True
    end
    object CartaoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."USUARIO"'
      Required = True
    end
    object CartaoCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONTA"'
      Required = True
    end
    object CartaoCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CPF_CNPJ"'
    end
    object CartaoCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CLIENTE"'
      Size = 50
    end
    object CartaoREEMBOLSO: TDateTimeField
      FieldName = 'REEMBOLSO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."REEMBOLSO"'
    end
    object CartaoADMINISTRADORA: TIntegerField
      FieldName = 'ADMINISTRADORA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."ADMINISTRADORA"'
      Required = True
    end
    object CartaoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VALOR"'
    end
    object CartaoNUM_CARTAO: TIBStringField
      FieldName = 'NUM_CARTAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CARTAO"'
      Required = True
    end
    object CartaoNUM_BANCO: TIBStringField
      FieldName = 'NUM_BANCO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_BANCO"'
      FixedChar = True
      Size = 3
    end
    object CartaoNUM_CONTA: TIBStringField
      FieldName = 'NUM_CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CONTA"'
    end
    object CartaoCONCILIADO: TIBStringField
      FieldName = 'CONCILIADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object CartaoTIPO_DOC: TIBStringField
      FieldName = 'TIPO_DOC'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object CartaoDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DOCUMENTO"'
    end
    object CartaoVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VENDA"'
    end
    object CartaoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PESSOA_FJ"'
    end
    object CartaoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO"'
      FixedChar = True
      Size = 3
    end
    object CartaoNUM_PARCELAS: TIntegerField
      FieldName = 'NUM_PARCELAS'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_PARCELAS"'
    end
    object CartaoTAXA: TFloatField
      FieldName = 'TAXA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TAXA"'
    end
    object CartaoTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TURNO"'
    end
    object CartaoDATA_CONCILIACAO: TDateTimeField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA_CONCILIACAO"'
    end
    object CartaoPROCESSADO: TIBStringField
      FieldName = 'PROCESSADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object CartaoCTR_CODIGO: TIntegerField
      FieldName = 'CTR_CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CTR_CODIGO"'
    end
    object CartaoTROCA: TIntegerField
      FieldName = 'TROCA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TROCA"'
    end
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
      '         CPF_CNPJ'
      'from Valida_Cliente ( :CNPJ, :CODIGO )')
    Left = 288
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
  end
  object SelFatura_Futura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelFatura_FuturaBeforeOpen
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    ENVIADA_CX ,'
      '    DATA_CAIXA,'
      '    FORMA_PGTO ,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    PROPRIEDADE ,'
      '    CONVENIADO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRES ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET ,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC,'
      '    TERCEIRO ,'
      '    CARGA ,'
      '    VOLUME,'
      '    PESO,'
      '    REQUISICAO,'
      '    DESCRICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    NOME_FORMA ,'
      '    FATURA_FUTURA ,'
      '    ORCAMENTO ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR,'
      '    LOCAL,'
      '    CONTA_CAIXA, '
      '    CANCELADA, '
      '    BASE_ICM_SUBST , '
      '    VALOR_ICM_SUBST ,'
      '    FRETE ,  '
      '    SEGURO ,  '
      '    DESPESAS ,  '
      '    IPI , '
      '    TOTAL_NOTA,'
      '    SELECIONADA,'
      '    CPF_CGC, '
      '    AVISTA,'
      '    APRAZO,'
      '    JUROS,'
      '    TROCO'
      'FROM VER_FAT_VENDAS_FUTURAS_CAIXA '
      '( :CNPJ, :D, :CONTA, :USR, :TURNO)'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 288
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object SelFatura_FuturaCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelFatura_FuturaDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDA"."DATA"'
    end
    object SelFatura_FuturaFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelFatura_FuturaPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelFatura_FuturaUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelFatura_FuturaVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelFatura_FuturaNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelFatura_FuturaNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelFatura_FuturaNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelFatura_FuturaTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_FuturaNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelFatura_FuturaORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelFatura_FuturaLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelFatura_FuturaTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 80
    end
    object SelFatura_FuturaPESSOA_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESSOA_RAZAO"'
      Size = 50
    end
    object SelFatura_FuturaNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_NATUREZA"'
      Size = 50
    end
    object SelFatura_FuturaENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FORMA_PGTO"'
    end
    object SelFatura_FuturaPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PROPRIEDADE"'
    end
    object SelFatura_FuturaCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONVENIADO"'
    end
    object SelFatura_FuturaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_FuturaLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."LOCAL_COBRANCA"'
    end
    object SelFatura_FuturaENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaCARTAO: TIBBCDField
      DisplayLabel = 'Cartao'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liqu'#237'do'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TERCEIRO"'
    end
    object SelFatura_FuturaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARGA"'
    end
    object SelFatura_FuturaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESO"'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."REQUISICAO"'
      Size = 6
    end
    object SelFatura_FuturaDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESCRICAO"'
      Size = 8
    end
    object SelFatura_FuturaNOME_FORMA: TIBStringField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_FORMA"'
      Size = 50
    end
    object SelFatura_FuturaFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fat. Fut'
      FieldName = 'FATURA_FUTURA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FATURA_FUTURA"'
      Size = 1
    end
    object SelFatura_FuturaNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelFatura_FuturaCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONTA_CAIXA"'
    end
    object SelFatura_FuturaCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base Icms Subst'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Icms'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaSEGURO: TIBBCDField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaDATA_CAIXA: TDateField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA_CAIXA"'
    end
    object SelFatura_FuturaSELECIONADA: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_FuturaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CPF_CGC"'
      Size = 15
    end
    object SelFatura_FuturaAVISTA: TIBBCDField
      DisplayLabel = #193' Vista'
      FieldName = 'AVISTA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."AVISTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaAPRAZO: TIBBCDField
      DisplayLabel = #193' Prazo'
      FieldName = 'APRAZO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."APRAZO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTROCO: TIBBCDField
      DisplayLabel = 'Tr'#244'co'
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Baixas_Receber: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Baixas_ReceberBeforeOpen
    OnCalcFields = Baixas_ReceberCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO  ,'
      '    CODIGO_CR ,'
      '    ANO_CR ,'
      '    DT_BAIXA ,'
      '    HISTORICO_BX ,'
      '    VLR_BAIXA ,'
      '    JUROS ,'
      '    DESCONTOS ,'
      '    PLANILHA ,'
      '    TAXA_JUROS ,'
      '    TIPO_JUROS ,'
      '    PESSOA_FJ ,'
      '    DT_EMISSAO ,'
      '    DT_VENCTO ,'
      '    DT_LANCTO ,'
      '    DOCTO ,'
      '    PARCELA ,'
      '    HISTORICO ,'
      '    VALOR ,'
      '    VLR_PARCIAL ,'
      '    JUROS_REC ,'
      '    DESCONTOS_REC ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
      '    FATURA ,'
      '    NOME ,'
      '    NUMBOLETO ,'
      '    NUMDUPLICATA'
      'From VER_BAIXA_RECEBER_CAIXA '
      '( :CNPJ, :DATA, :USUARIO, :TURNO, :CONTA )'
      '')
    Left = 288
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    object Baixas_ReceberCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_ReceberCODIGO_CR: TIntegerField
      DisplayLabel = 'Cod. Rec'
      FieldName = 'CODIGO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_CR"'
      Required = True
    end
    object Baixas_ReceberHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_ReceberPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_ReceberTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_ReceberPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_ReceberDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_ReceberPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_ReceberHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_ReceberBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_ReceberORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_ReceberCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_VN"'
    end
    object Baixas_ReceberAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_ReceberVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_ReceberTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_ReceberANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_ReceberANO_CR: TIntegerField
      DisplayLabel = 'Ano Rec'
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER"."ANO_CR"'
    end
    object Baixas_ReceberANO_VN: TIntegerField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER"."ANO_VN"'
    end
    object Baixas_ReceberVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descontos Rec'
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."DT_BAIXA"'
    end
    object Baixas_ReceberDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_RECEBER"."DT_EMISSAO"'
    end
    object Baixas_ReceberDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_VENCTO"'
    end
    object Baixas_ReceberDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_LANCTO"'
    end
    object Baixas_ReceberDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_RECEBER"."DT_AVISO"'
    end
    object Baixas_ReceberFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_BAIXA_RECEBER"."FATURA"'
    end
    object Baixas_ReceberNUMBOLETO: TIntegerField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_BAIXA_RECEBER"."NUMBOLETO"'
    end
    object Baixas_ReceberNUMDUPLICATA: TIntegerField
      DisplayLabel = 'N'#186' Dpl'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_BAIXA_RECEBER"."NUMDUPLICATA"'
    end
  end
  object Baixas_Pagar: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Baixas_PagarBeforeOpen
    OnCalcFields = Baixas_PagarCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO ,'
      '    CODIGO_PG ,'
      '    ANO_PG ,'
      '    PESSOA_FJ ,'
      '    DT_BAIXA ,'
      '    DT_EMISSAO ,'
      '    DT_VENCTO ,'
      '    DT_LANCTO ,'
      '    DOCTO ,'
      '    PARCELA ,'
      '    HISTORICO ,'
      '    HISTORICO_BX ,'
      '    VALOR ,'
      '    VLR_BAIXA ,'
      '    DESCONTOS ,'
      '    VLR_PARCIAL ,'
      '    JUROS ,'
      '    JUROS_PAG ,'
      '    DESCONTOS_PAG ,'
      '    TAXA_JUROS ,'
      '    BOLETO ,'
      '    TIPO_JUROS ,'
      '    ORIGEM ,'
      '    CODIGO_ENT ,'
      '    PLANILHA ,'
      '    ANO_ENT ,'
      '    AVISO ,'
      '    DT_AVISO ,'
      '    NOME ,'
      '    CPF_CGC ,'
      '    CENTRO_CUSTO ,'
      '    NOME_CENTRO ,'
      '    DUPLICATA ,'
      '    CONFERIDA '
      
        'From VER_BAIXA_PAGAR_CAIXA ( :CNPJ, :DATA, :USUARIO, :TURNO, :CO' +
        'NTA )')
    Left = 288
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    object Baixas_PagarCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_PagarHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_PagarPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_PagarTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_PagarPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_PagarDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_PagarPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_PagarHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_PagarBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_PagarORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_PagarAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_PagarVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_PagarCPF_CGC: TIBStringField
      Tag = 1
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object Baixas_PagarTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_PagarANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_PagarVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarCODIGO_PG: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO_PG'
      Origin = '"VER_BAIXA_PAGAR"."CODIGO_PG"'
    end
    object Baixas_PagarANO_PG: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_PG'
      Origin = '"VER_BAIXA_PAGAR"."ANO_PG"'
    end
    object Baixas_PagarJUROS_PAG: TIBBCDField
      DisplayLabel = 'Juros Pagos'
      FieldName = 'JUROS_PAG'
      Origin = '"VER_BAIXA_PAGAR"."JUROS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarDESCONTOS_PAG: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_PAG'
      Origin = '"VER_BAIXA_PAGAR"."DESCONTOS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarCODIGO_ENT: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'CODIGO_ENT'
      Origin = '"VER_BAIXA_PAGAR"."CODIGO_ENT"'
    end
    object Baixas_PagarANO_ENT: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_ENT'
      Origin = '"VER_BAIXA_PAGAR"."ANO_ENT"'
    end
    object Baixas_PagarDT_BAIXA: TDateField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_PAGAR"."DT_BAIXA"'
    end
    object Baixas_PagarDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_PAGAR"."DT_EMISSAO"'
    end
    object Baixas_PagarDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_PAGAR"."DT_VENCTO"'
    end
    object Baixas_PagarDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_PAGAR"."DT_LANCTO"'
    end
    object Baixas_PagarDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_PAGAR"."DT_AVISO"'
    end
    object Baixas_PagarCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"VER_BAIXA_PAGAR"."CENTRO_CUSTO"'
    end
    object Baixas_PagarNOME_CENTRO: TIBStringField
      FieldName = 'NOME_CENTRO'
      Origin = '"VER_BAIXA_PAGAR"."NOME_CENTRO"'
      Size = 50
    end
    object Baixas_PagarDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"VER_BAIXA_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object Baixas_PagarCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"VER_BAIXA_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
  end
  object Formas_Agrupadas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Formas_AgrupadasBeforeOpen
    OnCalcFields = Formas_AgrupadasCalcFields
    SQL.Strings = (
      'select'
      '       VALOR_ORIGINAL,'
      '       JUROS,'
      '       TIPO_PAGTO'
      'FROM'
      'VENDAS_FRMPAGTO_AGRUPADAS_CAIXA'
      '(:CNPJ, :DT_CAIXA, :USR_CAIXA, :CNTA_CAIXA, :TURNO )')
    Left = 356
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USR_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNTA_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Formas_AgrupadasVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Valor Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS_CAIXA"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Formas_AgrupadasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Formas_AgrupadasTIPO_PAGTO: TIBStringField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'TIPO_PAGTO'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS_CAIXA"."TIPO_PAGTO"'
      Size = 30
    end
    object Formas_AgrupadasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Lista_Formas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = DsFormas_Agrupadas
    SQL.Strings = (
      'select'
      '    FORMA_PGTO ,'
      '    SEQUENCIA ,'
      '    VALOR_ORIGINAL ,'
      '    JUROS ,'
      '    TIPO_PAGTO ,'
      '    NOME_FORMA ,'
      '    BANCO ,'
      '    CONTA ,'
      '    DV_CONTA ,'
      '    AGENCIA ,'
      '    DV_AGENCIA ,'
      '    CHEQUE ,'
      '    DV_CHEQUE ,'
      '    AVISTA '
      'from'
      'VER_FAT_VENDAS_FRMPAGTO_CAIXA'
      '(:CNPJ,  :DT_CAIXA, :USR_CAIXA, :CNTA_CAIXA, :TURNO)'
      'WHERE NOME_FORMA = :TIPO_PAGTO'
      '')
    Left = 392
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USR_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNTA_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_PAGTO'
        ParamType = ptUnknown
      end>
    object Lista_FormasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."FORMA_PGTO"'
    end
    object Lista_FormasVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Valor Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_FormasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_FormasTIPO_PAGTO: TIBStringField
      DisplayLabel = 'Tipo Pagto'
      FieldName = 'TIPO_PAGTO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."TIPO_PAGTO"'
      Size = 30
    end
    object Lista_FormasNOME_FORMA: TIBStringField
      DisplayLabel = 'Nome Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."NOME_FORMA"'
      Size = 30
    end
    object Lista_FormasBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Lista_FormasCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."CONTA"'
    end
    object Lista_FormasDV_CONTA: TIBStringField
      DisplayLabel = 'Dv Conta'
      FieldName = 'DV_CONTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
    object Lista_FormasAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."AGENCIA"'
      Size = 6
    end
    object Lista_FormasDV_AGENCIA: TIBStringField
      DisplayLabel = 'Dv Ag'#234'ncia'
      FieldName = 'DV_AGENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object Lista_FormasCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."CHEQUE"'
      Size = 6
    end
    object Lista_FormasDV_CHEQUE: TIBStringField
      DisplayLabel = 'Dv. Cheque'
      FieldName = 'DV_CHEQUE'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."DV_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object Lista_FormasAVISTA: TIBStringField
      DisplayLabel = 'A Vista'
      FieldName = 'AVISTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."AVISTA"'
      FixedChar = True
      Size = 1
    end
    object Lista_FormasSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_CAIXA"."SEQUENCIA"'
    end
  end
  object DsFormas_Agrupadas: TDataSource
    AutoEdit = False
    DataSet = Formas_Agrupadas
    Left = 488
  end
  object Soma_Vendas_Forma: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Soma_Vendas_FormaCalcFields
    SQL.Strings = (
      'select'
      '        VALOR_ORIGINAL,'
      '        JUROS,'
      '        TIPO_PAGTO'
      'from'
      'SOMA_VENDAS_FRMPAGTO_AGRUPADAS'
      '(:CNPJ,  :DT_CAIXA, :USR_CAIXA, :CNTA_CAIXA, :TURNO)')
    Left = 392
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USR_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CNTA_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Soma_Vendas_FormaVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"SOMA_VENDAS_FRMPAGTO_AGRUPADAS"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Soma_Vendas_FormaJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"SOMA_VENDAS_FRMPAGTO_AGRUPADAS"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Soma_Vendas_FormaTIPO_PAGTO: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'TIPO_PAGTO'
      Origin = '"SOMA_VENDAS_FRMPAGTO_AGRUPADAS"."TIPO_PAGTO"'
      Size = 30
    end
    object Soma_Vendas_FormaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Lista_Produtos_Caixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Lista_Produtos_CaixaBeforeOpen
    SQL.Strings = (
      'SELECT '
      'PRODUTO,'
      'NOME       ,'
      'TOTAL ,'
      'QUANTIDADE_EXPOSTA,'
      'QUANTIDADE,'
      'DESCONTOS     '
      'FROM  LISTA_PRODUTOS_CAIXA'
      '( :CNPJ, :DATA_CAIXA, :USUARIO, :TURNO )')
    Left = 392
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Lista_Produtos_CaixaTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"LISTA_PRODUTOS_CAIXA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_CaixaPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODUTO'
      Origin = '"LISTA_PRODUTOS_CAIXA"."PRODUTO"'
      Size = 15
    end
    object Lista_Produtos_CaixaQUANTIDADE_EXPOSTA: TIBBCDField
      DisplayLabel = 'Quantidade Exposta'
      FieldName = 'QUANTIDADE_EXPOSTA'
      Origin = '"LISTA_PRODUTOS_CAIXA"."QUANTIDADE_EXPOSTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_CaixaQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"LISTA_PRODUTOS_CAIXA"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_CaixaDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"LISTA_PRODUTOS_CAIXA"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_CaixaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"LISTA_PRODUTOS_CAIXA"."NOME"'
      Size = 50
    end
  end
  object Movimentos_C: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Movimentos_CBeforeOpen
    SQL.Strings = (
      'SELECT'
      '             DOCUMENTO,'
      '             HISTORICO,'
      '             VALOR,'
      '             TIPO,'
      '             NOME_CONTRAPARTIDA,'
      '             CONTRA_PARTIDA'
      'FROM FAT_CAIXAS_MOVIMENTOS_C'
      '( :CNPJ, :USUARIO, :CONTA, :DATA, :TURNO)')
    Left = 44
    Top = 148
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Movimentos_CDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."DOCUMENTO"'
    end
    object Movimentos_CHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."HISTORICO"'
      Size = 100
    end
    object Movimentos_CVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Movimentos_CTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Movimentos_CNOME_CONTRAPARTIDA: TIBStringField
      DisplayLabel = 'Contra Partida'
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object Movimentos_CCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."CONTRA_PARTIDA"'
    end
  end
  object Movimentos_D: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Movimentos_CBeforeOpen
    SQL.Strings = (
      'SELECT'
      '             DOCUMENTO,'
      '             HISTORICO,'
      '             VALOR,'
      '             TIPO,'
      '             NOME_CONTRAPARTIDA,'
      '             CONTRA_PARTIDA'
      'FROM FAT_CAIXAS_MOVIMENTOS_D'
      '( :CNPJ, :USUARIO, :CONTA, :DATA, :TURNO)')
    Left = 128
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Movimentos_DDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."DOCUMENTO"'
    end
    object Movimentos_DHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."HISTORICO"'
      Size = 100
    end
    object Movimentos_DVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Movimentos_DTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Movimentos_DNOME_CONTRAPARTIDA: TIBStringField
      DisplayLabel = 'Contra Partida'
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_D"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object Movimentos_DCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_D"."CONTRA_PARTIDA"'
    end
  end
  object Movimentos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = MovimentosBeforeOpen
    OnNewRecord = MovimentosNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_CAIXAS_MOVIMENTOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  DOCUMENTO = :OLD_DOCUMENTO and'
      '  USUARIO = :OLD_USUARIO')
    InsertSQL.Strings = (
      'insert into FAT_CAIXAS_MOVIMENTOS'
      
        '  (CNPJ, CONTA, DATA, DOCUMENTO, HISTORICO, USUARIO, VALOR, TIPO' +
        ', CONTRA_PARTIDA, '
      '   NOME_CONTRAPARTIDA, PESSOA_FJ, NOME, TURNO)'
      'values'
      
        '  (:CNPJ, :CONTA, :DATA, :DOCUMENTO, :HISTORICO, :USUARIO, :VALO' +
        'R, :TIPO, '
      
        '   :CONTRA_PARTIDA, :NOME_CONTRAPARTIDA, :PESSOA_FJ, :NOME, :TUR' +
        'NO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  DATA,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  VALOR,'
      '  TIPO,'
      '  CONTRA_PARTIDA,'
      '  NOME_CONTRAPARTIDA,'
      '  PESSOA_FJ,'
      '  NOME,'
      '  TURNO'
      'from FAT_CAIXAS_MOVIMENTOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  DATA = :DATA and'
      '  DOCUMENTO = :DOCUMENTO and'
      '  USUARIO = :USUARIO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CONTA, '
      '          DATA, '
      '          DOCUMENTO, '
      '          HISTORICO, '
      '          USUARIO, '
      '          VALOR,'
      '          TIPO,'
      '          CONTRA_PARTIDA,'
      '          NOME_CONTRAPARTIDA,'
      '          PESSOA_FJ,'
      '          NOME,'
      '          TURNO'
      'from FAT_CAIXAS_MOVIMENTOS'
      'WHERE CNPJ = :CNPJ AND CONTA = :CONTA AND'
      'DATA = :DATA AND USUARIO = :USUARIO '
      'AND TURNO = :TURNO')
    ModifySQL.Strings = (
      'update FAT_CAIXAS_MOVIMENTOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  TIPO = :TIPO,'
      '  CONTRA_PARTIDA = :CONTRA_PARTIDA,'
      '  NOME_CONTRAPARTIDA = :NOME_CONTRAPARTIDA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  NOME = :NOME,'
      '  TURNO = :TURNO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  DOCUMENTO = :OLD_DOCUMENTO and'
      '  USUARIO = :OLD_USUARIO')
    Left = 206
    Top = 180
    object MovimentosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MovimentosCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."CONTA"'
      Required = True
    end
    object MovimentosDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."DATA"'
    end
    object MovimentosDOCUMENTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."DOCUMENTO"'
      Required = True
    end
    object MovimentosHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."HISTORICO"'
      Size = 100
    end
    object MovimentosUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."USUARIO"'
      Required = True
    end
    object MovimentosVALOR: TFloatField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object MovimentosTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."TIPO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object MovimentosCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."CONTRA_PARTIDA"'
      OnValidate = MovimentosCONTRA_PARTIDAValidate
    end
    object MovimentosNOME_CONTRAPARTIDA: TIBStringField
      DisplayLabel = 'Contrapartida'
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object MovimentosPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."PESSOA_FJ"'
      OnValidate = MovimentosPESSOA_FJValidate
    end
    object MovimentosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."NOME"'
      Size = 50
    end
    object MovimentosTURNO: TSmallintField
      FieldName = 'TURNO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."TURNO"'
      Required = True
    end
  end
  object Troco_Inicial: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'TROCO_CAIXA'
    Left = 488
    Top = 44
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
      end>
  end
  object Saldo_Caixa: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDO_CAIXA'
    Left = 488
    Top = 87
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
      end>
  end
  object SelPessoasFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    PESSOA_FJ ,'
      '    NOME_RAZAO ,'
      '    FONE ,'
      '    FANTASIA ,'
      '    CPF_CGC,'
      '    BLOQUEADO,'
      '    CLASSIFICACAO,'
      '    UF,'
      '    EMPRESA'
      'FROM VER_CLIENTE ( :CNPJ )'
      'ORDER BY NOME_RAZAO')
    Left = 392
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelPessoasFJCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelPessoasFJNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelPessoasFJFONE: TIBStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 20
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object SelPessoasFJPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      Required = True
    end
    object SelPessoasFJFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object SelPessoasFJCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelPessoasFJBLOQUEADO: TIBStringField
      DisplayLabel = 'Blq'
      FieldName = 'BLOQUEADO'
      Origin = '"VER_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasFJCLASSIFICACAO: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoasFJUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasFJEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
  end
  object Ver_Baixa_Haver: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          CONTA, '
      '          DATA, '
      '          DOCUMENTO, '
      '          HAVER, '
      '          HISTORICO, '
      '          NOME, '
      '          PESSOA_FJ, '
      '          PLANILHA, '
      '          USUARIO, '
      '          VALOR '
      'from FIN_HAVER_BAIXA'
      'Where CNPJ = :CNPJ AND CONTA = :CONTA AND'
      'DATA = :DATA AND USUARIO = :USUARIO AND TURNO = :TURNO')
    Left = 488
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Ver_Baixa_HaverCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_HAVER_BAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ver_Baixa_HaverCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_HAVER_BAIXA"."CODIGO"'
      Required = True
    end
    object Ver_Baixa_HaverCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_HAVER_BAIXA"."CONTA"'
      Required = True
    end
    object Ver_Baixa_HaverDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_HAVER_BAIXA"."DATA"'
    end
    object Ver_Baixa_HaverDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_HAVER_BAIXA"."DOCUMENTO"'
      Required = True
    end
    object Ver_Baixa_HaverHAVER: TIntegerField
      DisplayLabel = 'Haver'
      FieldName = 'HAVER'
      Origin = '"FIN_HAVER_BAIXA"."HAVER"'
      Required = True
    end
    object Ver_Baixa_HaverHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_HAVER_BAIXA"."HISTORICO"'
      Size = 100
    end
    object Ver_Baixa_HaverNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_HAVER_BAIXA"."NOME"'
      Size = 50
    end
    object Ver_Baixa_HaverPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_HAVER_BAIXA"."PESSOA_FJ"'
    end
    object Ver_Baixa_HaverPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_HAVER_BAIXA"."PLANILHA"'
    end
    object Ver_Baixa_HaverUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FIN_HAVER_BAIXA"."USUARIO"'
      Required = True
    end
    object Ver_Baixa_HaverVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_HAVER_BAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Ver_Vendas_Prazo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Ver_Vendas_PrazoBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    ENVIADA_CX ,'
      '    DATA_CAIXA ,'
      '    CONTA_CAIXA ,'
      '    FORMA_PGTO ,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    PROPRIEDADE ,'
      '    CONVENIADO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRES ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET ,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC ,'
      '    TERCEIRO ,'
      '    CARGA ,'
      '    VOLUME ,'
      '    PESO ,'
      '    REQUISICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    CPF_CGC ,'
      '    NOME_FORMA ,'
      '    FATURA_FUTURA ,'
      '    ORCAMENTO ,'
      '    VENDEDOR ,'
      '    LOCAL ,'
      '    CANCELADA ,'
      '    BASE_ICM ,'
      '    ICM ,'
      '    BASE_ICM_SUBST ,'
      '    VALOR_ICM_SUBST ,'
      '    FRETE ,'
      '    SEGURO ,'
      '    DESPESAS ,'
      '    IPI ,'
      '    TOTAL_NOTA ,'
      '    SELECIONADA ,'
      '    NOME_VENDEDOR ,'
      '    AVISTA ,'
      '    JUROS ,'
      '    APRAZO '
      'from VER_FAT_VENDAS_FUTURAS_CAIXA'
      '('
      ':CNPJ, :D, :CONTA, :USR :TURNO '
      ')'
      'Where TIPO_VENDA = '#39'FFT'#39)
    Left = 488
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'D'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Ver_Vendas_PrazoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CODIGO"'
    end
    object Ver_Vendas_PrazoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."DATA"'
    end
    object Ver_Vendas_PrazoFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Ver_Vendas_PrazoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."HISTORICO"'
      Size = 100
    end
    object Ver_Vendas_PrazoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."PESSOA_FJ"'
    end
    object Ver_Vendas_PrazoPESSOA_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."PESSOA_RAZAO"'
      Size = 50
    end
    object Ver_Vendas_PrazoUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."USUARIO"'
    end
    object Ver_Vendas_PrazoNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."NATUREZA"'
    end
    object Ver_Vendas_PrazoNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."NOME_NATUREZA"'
      Size = 50
    end
    object Ver_Vendas_PrazoENVIADA_CX: TIBStringField
      DisplayLabel = 'Enviada Cx'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Ver_Vendas_PrazoDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Data Cx'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."DATA_CAIXA"'
    end
    object Ver_Vendas_PrazoCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Cx'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CONTA_CAIXA"'
    end
    object Ver_Vendas_PrazoFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."FORMA_PGTO"'
    end
    object Ver_Vendas_PrazoNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."NUM_NF"'
    end
    object Ver_Vendas_PrazoNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."NUM_CUPOM"'
    end
    object Ver_Vendas_PrazoPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."PROPRIEDADE"'
    end
    object Ver_Vendas_PrazoCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CONVENIADO"'
    end
    object Ver_Vendas_PrazoTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Ver_Vendas_PrazoLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local Cobr'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."LOCAL_COBRANCA"'
    end
    object Ver_Vendas_PrazoDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liqui'#237'do'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."OBSERVACAO"'
      Size = 80
    end
    object Ver_Vendas_PrazoVLR_PARC_LC: TIBBCDField
      DisplayLabel = 'Parcelas'
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoTERCEIRO: TIntegerField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TERCEIRO"'
    end
    object Ver_Vendas_PrazoCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CARGA"'
    end
    object Ver_Vendas_PrazoVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."REQUISICAO"'
      Size = 6
    end
    object Ver_Vendas_PrazoTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo Venda'
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Ver_Vendas_PrazoNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Ver_Vendas_PrazoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object Ver_Vendas_PrazoNOME_FORMA: TIBStringField
      DisplayLabel = 'Nome Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."NOME_FORMA"'
      Size = 50
    end
    object Ver_Vendas_PrazoFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fatura Fut'
      FieldName = 'FATURA_FUTURA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."FATURA_FUTURA"'
      Size = 1
    end
    object Ver_Vendas_PrazoORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."ORCAMENTO"'
    end
    object Ver_Vendas_PrazoVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."VENDEDOR"'
    end
    object Ver_Vendas_PrazoLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."LOCAL"'
    end
    object Ver_Vendas_PrazoCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object Ver_Vendas_PrazoBASE_ICM: TIBBCDField
      DisplayLabel = 'Base Icm'
      FieldName = 'BASE_ICM'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."BASE_ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoICM: TIBBCDField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base Icm Subst'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Valor Icm Subst'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoSEGURO: TIBBCDField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoSELECIONADA: TIBStringField
      DisplayLabel = 'Selecionada'
      FieldName = 'SELECIONADA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object Ver_Vendas_PrazoNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."NOME_VENDEDOR"'
      Size = 50
    end
    object Ver_Vendas_PrazoAVISTA: TIBBCDField
      DisplayLabel = 'A Vista'
      FieldName = 'AVISTA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."AVISTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Vendas_PrazoAPRAZO: TIBBCDField
      DisplayLabel = 'A Prazo'
      FieldName = 'APRAZO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."APRAZO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Ver_Cartao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Ver_CartaoBeforeOpen
    SQL.Strings = (
      'select ADMINISTRADORA, '
      '          CLIENTE, '
      '          CODIGO, '
      '          CONCILIADO,'
      '          CPF_CNPJ, '
      '          DOCUMENTO, '
      '          NUM_BANCO, '
      '          NUM_CARTAO, '
      '          NUM_CONTA, '
      '          REEMBOLSO, '
      '          TIPO_DOC, '
      '          VALOR, '
      '          VENDA,'
      '          PESSOA_FJ,'
      '          TIPO,'
      '          NUM_PARCELAS,'
      '          TAXA ,'
      '          NOME_ADM'
      'from VER_CARTAO_CAIXA ( :CNPJ, :USUARIO, :DATA, :CONTA, :TURNO )'
      'Order by ADMINISTRADORA, CLIENTE')
    Left = 488
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Ver_CartaoADMINISTRADORA: TIntegerField
      DisplayLabel = 'Administradora'
      FieldName = 'ADMINISTRADORA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."ADMINISTRADORA"'
      Required = True
    end
    object Ver_CartaoCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CLIENTE"'
      Size = 50
    end
    object Ver_CartaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CODIGO"'
      Required = True
    end
    object Ver_CartaoCONCILIADO: TIBStringField
      DisplayLabel = 'Conc'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object Ver_CartaoCPF_CNPJ: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CPF_CNPJ"'
    end
    object Ver_CartaoDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DOCUMENTO"'
    end
    object Ver_CartaoNUM_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NUM_BANCO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_BANCO"'
      FixedChar = True
      Size = 3
    end
    object Ver_CartaoNUM_CARTAO: TIBStringField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'NUM_CARTAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CARTAO"'
      Required = True
    end
    object Ver_CartaoNUM_CONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'NUM_CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CONTA"'
    end
    object Ver_CartaoREEMBOLSO: TDateTimeField
      DisplayLabel = 'Reembolso'
      FieldName = 'REEMBOLSO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."REEMBOLSO"'
    end
    object Ver_CartaoTIPO_DOC: TIBStringField
      DisplayLabel = 'Doc'
      FieldName = 'TIPO_DOC'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object Ver_CartaoVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VENDA"'
    end
    object Ver_CartaoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PESSOA_FJ"'
    end
    object Ver_CartaoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO"'
      FixedChar = True
      Size = 3
    end
    object Ver_CartaoNUM_PARCELAS: TIntegerField
      DisplayLabel = 'Parc'
      FieldName = 'NUM_PARCELAS'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_PARCELAS"'
    end
    object Ver_CartaoNOME_ADM: TIBStringField
      DisplayLabel = 'Adm'
      FieldName = 'NOME_ADM'
      Origin = '"VER_CARTAO_CAIXA"."NOME_ADM"'
      Size = 50
    end
    object Ver_CartaoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_CARTAO_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_CartaoTAXA: TIBBCDField
      DisplayLabel = 'Taxa'
      FieldName = 'TAXA'
      Origin = '"VER_CARTAO_CAIXA"."TAXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Valida_Pessoa_Fj: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    NOME,'
      '    UF,'
      '    CPF_CNPJ,'
      '    OBS,'
      '    OBS2,'
      '    CLASSIFICACAO'
      'from VALIDA_PESSOA_FJ'
      '( :CNPJ, :CODIGO )')
    Left = 128
    Top = 215
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
    object Valida_Pessoa_FjNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_PESSOA_FJ"."NOME"'
      Size = 50
    end
    object Valida_Pessoa_FjUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VALIDA_PESSOA_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object Valida_Pessoa_FjCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"VALIDA_PESSOA_FJ"."CPF_CNPJ"'
      Size = 15
    end
    object Valida_Pessoa_FjOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VALIDA_PESSOA_FJ"."OBS"'
      Size = 8
    end
    object Valida_Pessoa_FjOBS2: TBlobField
      FieldName = 'OBS2'
      Origin = '"VALIDA_PESSOA_FJ"."OBS2"'
      Size = 8
    end
    object Valida_Pessoa_FjCLASSIFICACAO: TIntegerField
      FieldName = 'CLASSIFICACAO'
      Origin = '"VALIDA_PESSOA_FJ"."CLASSIFICACAO"'
    end
  end
  object VER_FIN_FATURAS_PARCIAL_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = VER_FIN_FATURAS_PARCIAL_CAIXABeforeOpen
    SQL.Strings = (
      'SELECT'
      '    SEQUENCIA ,'
      '    HISTORICO ,'
      '    VALOR ,'
      '    PLANILHA ,'
      '    FATURA,'
      '    NOME,'
      '    ORIGEM,'
      '    JUROS,'
      '    DESCONTOS'
      'FROM VER_FIN_FATURAS_PARCIAL_CAIXA'
      '('
      '    :CNPJ    ,'
      '    :DATA   ,'
      '    :USUARIO,'
      '    :CONTA ,'
      '    :TURNO'
      ')')
    Left = 128
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object VER_FIN_FATURAS_PARCIAL_CAIXASEQUENCIA: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."SEQUENCIA"'
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXAHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."HISTORICO"'
      Size = 100
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXAVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXAPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."PLANILHA"'
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXAFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."FATURA"'
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXANOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."NOME"'
      Size = 50
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXAORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXAJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."JUROS"'
      Precision = 18
      Size = 4
    end
    object VER_FIN_FATURAS_PARCIAL_CAIXADESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
  end
  object VER_FATURA_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = VER_FATURA_CAIXABeforeOpen
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    PESSOA_FJ ,'
      '    DATA ,'
      '    VALOR ,'
      '    DESCONTO ,'
      '    JUROS ,'
      '    VENCIMENTO ,'
      '    HISTORICO ,'
      '    NOME ,'
      '    ENDERECO ,'
      '    NUMERO ,'
      '    CIDADE ,'
      '    BAIRRO ,'
      '    CEP ,'
      '    UF ,'
      '    COD_END ,'
      '    COD_CID ,'
      '    COD_BAI ,'
      '    AGRUPADORA ,'
      '    FONE,'
      '    BANCO,'
      '    BOLETO,'
      '    NOME_BANCO,'
      '    OBS,'
      '    DUPLICATA,'
      '    ENVIADA,'
      '    TIPO,'
      '    CPF_CGC ,'
      '    ORIGEM'
      'FROM VER_FATURA_CAIXA'
      '( :CNPJ, :DATA_CAIXA, :USR, :TURNO, :CONTA )')
    Left = 584
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_CAIXA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    object VER_FATURA_CAIXACODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA_CAIXA"."CODIGO"'
    end
    object VER_FATURA_CAIXAPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA_CAIXA"."PESSOA_FJ"'
    end
    object VER_FATURA_CAIXAVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FATURA_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FATURA_CAIXADESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_CAIXA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FATURA_CAIXAJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FATURA_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FATURA_CAIXAVENCIMENTO: TDateField
      DisplayLabel = 'Vecto'
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA_CAIXA"."VENCIMENTO"'
    end
    object VER_FATURA_CAIXAHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA_CAIXA"."HISTORICO"'
      Size = 100
    end
    object VER_FATURA_CAIXANOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FATURA_CAIXA"."NOME"'
      Size = 50
    end
    object VER_FATURA_CAIXAENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA_CAIXA"."ENDERECO"'
      Size = 50
    end
    object VER_FATURA_CAIXANUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA_CAIXA"."NUMERO"'
      Size = 15
    end
    object VER_FATURA_CAIXACIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA_CAIXA"."CIDADE"'
      Size = 50
    end
    object VER_FATURA_CAIXABAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA_CAIXA"."BAIRRO"'
      Size = 50
    end
    object VER_FATURA_CAIXACEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_FATURA_CAIXA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VER_FATURA_CAIXAUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_FATURA_CAIXA"."UF"'
      FixedChar = True
      Size = 2
    end
    object VER_FATURA_CAIXAAGRUPADORA: TIntegerField
      DisplayLabel = 'Agrupadora'
      FieldName = 'AGRUPADORA'
      Origin = '"VER_FATURA_CAIXA"."AGRUPADORA"'
    end
    object VER_FATURA_CAIXAFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FATURA_CAIXA"."FONE"'
    end
    object VER_FATURA_CAIXABANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FATURA_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VER_FATURA_CAIXABOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_FATURA_CAIXA"."BOLETO"'
      Size = 30
    end
    object VER_FATURA_CAIXANOME_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOME_BANCO'
      Origin = '"VER_FATURA_CAIXA"."NOME_BANCO"'
      Size = 50
    end
    object VER_FATURA_CAIXAOBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"VER_FATURA_CAIXA"."OBS"'
      Size = 30
    end
    object VER_FATURA_CAIXADUPLICATA: TIBStringField
      DisplayLabel = 'Dpl'
      FieldName = 'DUPLICATA'
      Origin = '"VER_FATURA_CAIXA"."DUPLICATA"'
      Size = 30
    end
    object VER_FATURA_CAIXAENVIADA: TIBStringField
      DisplayLabel = 'Enviada'
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA_CAIXA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object VER_FATURA_CAIXATIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FATURA_CAIXA"."TIPO"'
      Size = 11
    end
    object VER_FATURA_CAIXACPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object VER_FATURA_CAIXADATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FATURA_CAIXA"."DATA"'
    end
    object VER_FATURA_CAIXAORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_FATURA_CAIXA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
  end
  object Baixas_Notas_Faturas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Baixas_Notas_FaturasBeforeOpen
    OnCalcFields = Baixas_Notas_FaturasCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO  ,'
      '    CODIGO_CR ,'
      '    ANO_CR ,'
      '    DT_BAIXA ,'
      '    HISTORICO_BX ,'
      '    VLR_BAIXA ,'
      '    JUROS ,'
      '    DESCONTOS ,'
      '    PLANILHA ,'
      '    TAXA_JUROS ,'
      '    TIPO_JUROS ,'
      '    PESSOA_FJ ,'
      '    DT_EMISSAO ,'
      '    DT_VENCTO ,'
      '    DT_LANCTO ,'
      '    DOCTO ,'
      '    PARCELA ,'
      '    HISTORICO ,'
      '    VALOR ,'
      '    VLR_PARCIAL ,'
      '    JUROS_REC ,'
      '    DESCONTOS_REC ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
      '    FATURA ,'
      '    NOME ,'
      '    NUMBOLETO ,'
      '    NUMDUPLICATA'
      'From VER_BAIXA_NOTAS_FATURAS '
      '( :CNPJ, :DATA, :USUARIO, :TRN )'
      '')
    Left = 584
    Top = 44
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TRN'
        ParamType = ptUnknown
      end>
    object Baixas_Notas_FaturasCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_Notas_FaturasCODIGO_CR: TIntegerField
      DisplayLabel = 'Cod. Rec'
      FieldName = 'CODIGO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_CR"'
      Required = True
    end
    object Baixas_Notas_FaturasHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_Notas_FaturasPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_Notas_FaturasTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Notas_FaturasPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_Notas_FaturasDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_Notas_FaturasPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_Notas_FaturasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_Notas_FaturasBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Notas_FaturasORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_Notas_FaturasCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_VN"'
    end
    object Baixas_Notas_FaturasAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_Notas_FaturasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_Notas_FaturasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_Notas_FaturasANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_Notas_FaturasANO_CR: TIntegerField
      DisplayLabel = 'Ano Rec'
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER"."ANO_CR"'
    end
    object Baixas_Notas_FaturasANO_VN: TIntegerField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER"."ANO_VN"'
    end
    object Baixas_Notas_FaturasVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descontos Rec'
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_FaturasDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."DT_BAIXA"'
    end
    object Baixas_Notas_FaturasDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_RECEBER"."DT_EMISSAO"'
    end
    object Baixas_Notas_FaturasDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_VENCTO"'
    end
    object Baixas_Notas_FaturasDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_LANCTO"'
    end
    object Baixas_Notas_FaturasDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_RECEBER"."DT_AVISO"'
    end
    object Baixas_Notas_FaturasFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_BAIXA_RECEBER"."FATURA"'
    end
    object Baixas_Notas_FaturasNUMBOLETO: TIntegerField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_BAIXA_RECEBER"."NUMBOLETO"'
    end
    object Baixas_Notas_FaturasNUMDUPLICATA: TIntegerField
      DisplayLabel = 'N'#186' Dpl'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_BAIXA_RECEBER"."NUMDUPLICATA"'
    end
  end
  object Ver_Caixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Caixa_FrentistaBeforeOpen
    OnCalcFields = Ver_CaixaCalcFields
    SQL.Strings = (
      'select '
      '    CNPJ ,'
      '    USUARIO ,'
      '    CONTA ,'
      '    DATA ,'
      '    DINHEIRO ,'
      '    TICKET ,'
      '    CHEQUE ,'
      '    CHEQUE_PRAZO,'
      '    SALDO_ANTERIOR ,'
      '    SALDO ,'
      '    FECHADO ,'
      '    TROCO ,'
      '    SANGRIA ,'
      '    BOMBAS ,'
      '    NOTAS ,'
      '    PRODUTOS ,'
      '    CARTAO ,'
      '    RECEBIMENTOS ,'
      '    AFERICAO,'
      '    MOEDAS,'
      '    OUTRAS_ENTRADAS,'
      '    OUTRAS_SAIDAS,'
      '    TROCO_INICIAL,'
      '    HAVER,'
      '    BAIXA_HAVER,'
      '    PLANILHA,'
      '    DESCONTOS,'
      '    JUROS,'
      '    ACRESCIMOS,'
      '    TROCO_VENDAS,'
      '    JUROS_RECEBER,'
      '    DESCONTOS_RECEBER,'
      '    TURNO, '
      '    DESCONTOS_PRODUTOS_BOMBA    '
      'from FAT_CAIXAS'
      
        'where CNPJ = :CNPJ AND USUARIO = :USUARIO AND CONTA = :CONTA AND' +
        ' DATA = :DATA AND TURNO = :TURNO')
    Left = 584
    Top = 172
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object Ver_CaixaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ver_CaixaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXAS"."USUARIO"'
      Required = True
    end
    object Ver_CaixaCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXAS"."CONTA"'
      Required = True
    end
    object Ver_CaixaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FAT_CAIXAS"."DATA"'
    end
    object Ver_CaixaDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      Origin = '"FAT_CAIXAS"."DINHEIRO"'
    end
    object Ver_CaixaTICKET: TFloatField
      FieldName = 'TICKET'
      Origin = '"FAT_CAIXAS"."TICKET"'
    end
    object Ver_CaixaCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXAS"."CHEQUE"'
    end
    object Ver_CaixaCHEQUE_PRAZO: TFloatField
      FieldName = 'CHEQUE_PRAZO'
      Origin = '"FAT_CAIXAS"."CHEQUE_PRAZO"'
    end
    object Ver_CaixaSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"FAT_CAIXAS"."SALDO_ANTERIOR"'
    end
    object Ver_CaixaSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = '"FAT_CAIXAS"."SALDO"'
    end
    object Ver_CaixaFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"FAT_CAIXAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Ver_CaixaTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"FAT_CAIXAS"."TROCO"'
    end
    object Ver_CaixaSANGRIA: TFloatField
      FieldName = 'SANGRIA'
      Origin = '"FAT_CAIXAS"."SANGRIA"'
    end
    object Ver_CaixaBOMBAS: TFloatField
      FieldName = 'BOMBAS'
      Origin = '"FAT_CAIXAS"."BOMBAS"'
    end
    object Ver_CaixaNOTAS: TFloatField
      FieldName = 'NOTAS'
      Origin = '"FAT_CAIXAS"."NOTAS"'
    end
    object Ver_CaixaPRODUTOS: TFloatField
      FieldName = 'PRODUTOS'
      Origin = '"FAT_CAIXAS"."PRODUTOS"'
    end
    object Ver_CaixaCARTAO: TFloatField
      FieldName = 'CARTAO'
      Origin = '"FAT_CAIXAS"."CARTAO"'
    end
    object Ver_CaixaRECEBIMENTOS: TFloatField
      FieldName = 'RECEBIMENTOS'
      Origin = '"FAT_CAIXAS"."RECEBIMENTOS"'
    end
    object Ver_CaixaAFERICAO: TFloatField
      FieldName = 'AFERICAO'
      Origin = '"FAT_CAIXAS"."AFERICAO"'
    end
    object Ver_CaixaMOEDAS: TFloatField
      FieldName = 'MOEDAS'
      Origin = '"FAT_CAIXAS"."MOEDAS"'
    end
    object Ver_CaixaOUTRAS_ENTRADAS: TFloatField
      FieldName = 'OUTRAS_ENTRADAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_ENTRADAS"'
    end
    object Ver_CaixaOUTRAS_SAIDAS: TFloatField
      FieldName = 'OUTRAS_SAIDAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_SAIDAS"'
    end
    object Ver_CaixaTROCO_INICIAL: TFloatField
      FieldName = 'TROCO_INICIAL'
      Origin = '"FAT_CAIXAS"."TROCO_INICIAL"'
    end
    object Ver_CaixaHAVER: TFloatField
      FieldName = 'HAVER'
      Origin = '"FAT_CAIXAS"."HAVER"'
    end
    object Ver_CaixaBAIXA_HAVER: TFloatField
      FieldName = 'BAIXA_HAVER'
      Origin = '"FAT_CAIXAS"."BAIXA_HAVER"'
    end
    object Ver_CaixaPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FAT_CAIXAS"."PLANILHA"'
    end
    object Ver_CaixaDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FAT_CAIXAS"."DESCONTOS"'
    end
    object Ver_CaixaJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FAT_CAIXAS"."JUROS"'
    end
    object Ver_CaixaACRESCIMOS: TFloatField
      FieldName = 'ACRESCIMOS'
      Origin = '"FAT_CAIXAS"."ACRESCIMOS"'
    end
    object Ver_CaixaTROCO_VENDAS: TFloatField
      FieldName = 'TROCO_VENDAS'
      Origin = '"FAT_CAIXAS"."TROCO_VENDAS"'
    end
    object Ver_CaixaJUROS_RECEBER: TFloatField
      FieldName = 'JUROS_RECEBER'
      Origin = '"FAT_CAIXAS"."JUROS_RECEBER"'
    end
    object Ver_CaixaDESCONTOS_RECEBER: TFloatField
      FieldName = 'DESCONTOS_RECEBER'
      Origin = '"FAT_CAIXAS"."DESCONTOS_RECEBER"'
    end
    object Ver_CaixaTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_CAIXAS"."TURNO"'
      Required = True
    end
    object Ver_CaixaENTRADAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ENTRADAS'
      Calculated = True
    end
    object Ver_CaixaSAIDAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SAIDAS'
      Calculated = True
    end
    object Ver_CaixaRESULTADO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RESULTADO'
      Calculated = True
    end
    object Ver_CaixaDESCONTOS_PRODUTOS_BOMBA: TFloatField
      FieldName = 'DESCONTOS_PRODUTOS_BOMBA'
      Origin = '"FAT_CAIXAS"."DESCONTOS_PRODUTOS_BOMBA"'
    end
  end
  object Baixas_Receber_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = SetaParametros
    OnCalcFields = Baixas_Receber_GeralCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO  ,'
      '    CODIGO_CR ,'
      '    ANO_CR ,'
      '    DT_BAIXA ,'
      '    HISTORICO_BX ,'
      '    VLR_BAIXA ,'
      '    JUROS ,'
      '    DESCONTOS ,'
      '    PLANILHA ,'
      '    TAXA_JUROS ,'
      '    TIPO_JUROS ,'
      '    PESSOA_FJ ,'
      '    DT_EMISSAO ,'
      '    DT_VENCTO ,'
      '    DT_LANCTO ,'
      '    DOCTO ,'
      '    PARCELA ,'
      '    HISTORICO ,'
      '    VALOR ,'
      '    VLR_PARCIAL ,'
      '    JUROS_REC ,'
      '    DESCONTOS_REC ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
      '    FATURA ,'
      '    NOME ,'
      '    NUMBOLETO ,'
      '    NUMDUPLICATA'
      'From VER_BAIXA_RECEBER_GERAL '
      '( :CNPJ, :DATA )'
      ''
      '')
    Left = 304
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Baixas_Receber_GeralCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_Receber_GeralCODIGO_CR: TIntegerField
      DisplayLabel = 'Cod. Rec'
      FieldName = 'CODIGO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_CR"'
      Required = True
    end
    object Baixas_Receber_GeralHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_Receber_GeralPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_Receber_GeralTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Receber_GeralPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_Receber_GeralDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_Receber_GeralPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_Receber_GeralHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_Receber_GeralBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Receber_GeralORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_Receber_GeralCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_VN"'
    end
    object Baixas_Receber_GeralAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_Receber_GeralVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_Receber_GeralTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_Receber_GeralANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_Receber_GeralANO_CR: TIntegerField
      DisplayLabel = 'Ano Rec'
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER"."ANO_CR"'
    end
    object Baixas_Receber_GeralANO_VN: TIntegerField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER"."ANO_VN"'
    end
    object Baixas_Receber_GeralVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descontos Rec'
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_GeralDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."DT_BAIXA"'
    end
    object Baixas_Receber_GeralDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_RECEBER"."DT_EMISSAO"'
    end
    object Baixas_Receber_GeralDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_VENCTO"'
    end
    object Baixas_Receber_GeralDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_LANCTO"'
    end
    object Baixas_Receber_GeralDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_RECEBER"."DT_AVISO"'
    end
    object Baixas_Receber_GeralFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_BAIXA_RECEBER"."FATURA"'
    end
    object Baixas_Receber_GeralNUMBOLETO: TIntegerField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_BAIXA_RECEBER"."NUMBOLETO"'
    end
    object Baixas_Receber_GeralNUMDUPLICATA: TIntegerField
      DisplayLabel = 'N'#186' Dpl'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_BAIXA_RECEBER"."NUMDUPLICATA"'
    end
  end
  object VER_FIN_FATURAS_PARCIAL_GERAL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    SQL.Strings = (
      'SELECT'
      '    SEQUENCIA ,'
      '    HISTORICO ,'
      '    VALOR ,'
      '    PLANILHA ,'
      '    FATURA,'
      '    NOME,'
      '    JUROS,'
      '    DESCONTOS,'
      '    ORIGEM'
      'FROM VER_FIN_FATURAS_PARCIAL_GERAL'
      '('
      '    :CNPJ    ,'
      '    :DATA  '
      ')')
    Left = 288
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object VER_FIN_FATURAS_PARCIAL_GERALSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."SEQUENCIA"'
    end
    object VER_FIN_FATURAS_PARCIAL_GERALHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."HISTORICO"'
      Size = 100
    end
    object VER_FIN_FATURAS_PARCIAL_GERALVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FIN_FATURAS_PARCIAL_GERALPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."PLANILHA"'
    end
    object VER_FIN_FATURAS_PARCIAL_GERALFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."FATURA"'
    end
    object VER_FIN_FATURAS_PARCIAL_GERALNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."NOME"'
      Size = 50
    end
    object VER_FIN_FATURAS_PARCIAL_GERALJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VER_FIN_FATURAS_PARCIAL_GERAL"."JUROS"'
      Precision = 18
      Size = 4
    end
    object VER_FIN_FATURAS_PARCIAL_GERALDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_FIN_FATURAS_PARCIAL_GERAL"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object VER_FIN_FATURAS_PARCIAL_GERALORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_FIN_FATURAS_PARCIAL_GERAL"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
  end
  object VER_FATURA_GERAL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    OnCalcFields = VER_FATURA_GERALCalcFields
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    PESSOA_FJ ,'
      '    DATA ,'
      '    VALOR ,'
      '    DESCONTO ,'
      '    JUROS ,'
      '    VENCIMENTO ,'
      '    HISTORICO ,'
      '    NOME ,'
      '    ENDERECO ,'
      '    NUMERO ,'
      '    CIDADE ,'
      '    BAIRRO ,'
      '    CEP ,'
      '    UF ,'
      '    COD_END ,'
      '    COD_CID ,'
      '    COD_BAI ,'
      '    AGRUPADORA ,'
      '    FONE,'
      '    BANCO,'
      '    BOLETO,'
      '    NOME_BANCO,'
      '    OBS,'
      '    DUPLICATA,'
      '    ENVIADA,'
      '    TIPO,'
      '    CPF_CGC ,'
      '    ORIGEM'
      'FROM VER_FATURA_GERAL'
      '( :CNPJ, :DATA )')
    Left = 288
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object VER_FATURA_GERALCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA_CAIXA"."CODIGO"'
    end
    object VER_FATURA_GERALPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA_CAIXA"."PESSOA_FJ"'
    end
    object VER_FATURA_GERALVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FATURA_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FATURA_GERALDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_CAIXA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FATURA_GERALJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FATURA_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FATURA_GERALVENCIMENTO: TDateField
      DisplayLabel = 'Vecto'
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA_CAIXA"."VENCIMENTO"'
    end
    object VER_FATURA_GERALHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA_CAIXA"."HISTORICO"'
      Size = 100
    end
    object VER_FATURA_GERALNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FATURA_CAIXA"."NOME"'
      Size = 50
    end
    object VER_FATURA_GERALENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA_CAIXA"."ENDERECO"'
      Size = 50
    end
    object VER_FATURA_GERALNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA_CAIXA"."NUMERO"'
      Size = 15
    end
    object VER_FATURA_GERALCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA_CAIXA"."CIDADE"'
      Size = 50
    end
    object VER_FATURA_GERALBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA_CAIXA"."BAIRRO"'
      Size = 50
    end
    object VER_FATURA_GERALCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_FATURA_CAIXA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VER_FATURA_GERALUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_FATURA_CAIXA"."UF"'
      FixedChar = True
      Size = 2
    end
    object VER_FATURA_GERALAGRUPADORA: TIntegerField
      DisplayLabel = 'Agrupadora'
      FieldName = 'AGRUPADORA'
      Origin = '"VER_FATURA_CAIXA"."AGRUPADORA"'
    end
    object VER_FATURA_GERALFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FATURA_CAIXA"."FONE"'
    end
    object VER_FATURA_GERALBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FATURA_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VER_FATURA_GERALBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_FATURA_CAIXA"."BOLETO"'
      Size = 30
    end
    object VER_FATURA_GERALNOME_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOME_BANCO'
      Origin = '"VER_FATURA_CAIXA"."NOME_BANCO"'
      Size = 50
    end
    object VER_FATURA_GERALOBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"VER_FATURA_CAIXA"."OBS"'
      Size = 30
    end
    object VER_FATURA_GERALDUPLICATA: TIBStringField
      DisplayLabel = 'Dpl'
      FieldName = 'DUPLICATA'
      Origin = '"VER_FATURA_CAIXA"."DUPLICATA"'
      Size = 30
    end
    object VER_FATURA_GERALENVIADA: TIBStringField
      DisplayLabel = 'Enviada'
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA_CAIXA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object VER_FATURA_GERALTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FATURA_CAIXA"."TIPO"'
      Size = 11
    end
    object VER_FATURA_GERALCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object VER_FATURA_GERALDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FATURA_GERAL"."DATA"'
    end
    object VER_FATURA_GERALTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object VER_FATURA_GERALORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_FATURA_GERAL"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
  end
  object Baixas_Notas_Faturas_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO  ,'
      '    CODIGO_CR ,'
      '    ANO_CR ,'
      '    DT_BAIXA ,'
      '    HISTORICO_BX ,'
      '    VLR_BAIXA ,'
      '    JUROS ,'
      '    DESCONTOS ,'
      '    PLANILHA ,'
      '    TAXA_JUROS ,'
      '    TIPO_JUROS ,'
      '    PESSOA_FJ ,'
      '    DT_EMISSAO ,'
      '    DT_VENCTO ,'
      '    DT_LANCTO ,'
      '    DOCTO ,'
      '    PARCELA ,'
      '    HISTORICO ,'
      '    VALOR ,'
      '    VLR_PARCIAL ,'
      '    JUROS_REC ,'
      '    DESCONTOS_REC ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
      '    FATURA ,'
      '    NOME ,'
      '    NUMBOLETO ,'
      '    NUMDUPLICATA'
      'From VER_BAIXA_NOTAS_FATURAS_GERAL '
      '( :CNPJ, :DATA )'
      '')
    Left = 48
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Baixas_Notas_Faturas_GeralCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_Notas_Faturas_GeralCODIGO_CR: TIntegerField
      DisplayLabel = 'Cod. Rec'
      FieldName = 'CODIGO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_CR"'
      Required = True
    end
    object Baixas_Notas_Faturas_GeralHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_Notas_Faturas_GeralPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_Notas_Faturas_GeralTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Notas_Faturas_GeralPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_Notas_Faturas_GeralDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_Notas_Faturas_GeralPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_Notas_Faturas_GeralHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_Notas_Faturas_GeralBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Notas_Faturas_GeralORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_Notas_Faturas_GeralCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_VN"'
    end
    object Baixas_Notas_Faturas_GeralAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_Notas_Faturas_GeralVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_Notas_Faturas_GeralTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_Notas_Faturas_GeralANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_Notas_Faturas_GeralANO_CR: TIntegerField
      DisplayLabel = 'Ano Rec'
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER"."ANO_CR"'
    end
    object Baixas_Notas_Faturas_GeralANO_VN: TIntegerField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER"."ANO_VN"'
    end
    object Baixas_Notas_Faturas_GeralVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descontos Rec'
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Notas_Faturas_GeralDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."DT_BAIXA"'
    end
    object Baixas_Notas_Faturas_GeralDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_RECEBER"."DT_EMISSAO"'
    end
    object Baixas_Notas_Faturas_GeralDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_VENCTO"'
    end
    object Baixas_Notas_Faturas_GeralDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_LANCTO"'
    end
    object Baixas_Notas_Faturas_GeralDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_RECEBER"."DT_AVISO"'
    end
    object Baixas_Notas_Faturas_GeralFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_BAIXA_RECEBER"."FATURA"'
    end
    object Baixas_Notas_Faturas_GeralNUMBOLETO: TIntegerField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_BAIXA_RECEBER"."NUMBOLETO"'
    end
    object Baixas_Notas_Faturas_GeralNUMDUPLICATA: TIntegerField
      DisplayLabel = 'N'#186' Dpl'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_BAIXA_RECEBER"."NUMDUPLICATA"'
    end
  end
  object Ver_Cartao_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SetaParametros
    SQL.Strings = (
      'select ADMINISTRADORA, '
      '          CLIENTE, '
      '          CODIGO, '
      '          CONCILIADO,'
      '          CPF_CNPJ, '
      '          DOCUMENTO, '
      '          NUM_BANCO, '
      '          NUM_CARTAO, '
      '          NUM_CONTA, '
      '          REEMBOLSO, '
      '          TIPO_DOC, '
      '          VALOR, '
      '          VENDA,'
      '          PESSOA_FJ,'
      '          TIPO,'
      '          NUM_PARCELAS,'
      '          TAXA ,'
      '          NOME_ADM'
      'from VER_CARTAO_GERAL ( :CNPJ, :DATA )'
      'Order by ADMINISTRADORA, CLIENTE')
    Left = 488
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Ver_Cartao_GeralADMINISTRADORA: TIntegerField
      DisplayLabel = 'Administradora'
      FieldName = 'ADMINISTRADORA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."ADMINISTRADORA"'
      Required = True
    end
    object Ver_Cartao_GeralCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CLIENTE"'
      Size = 50
    end
    object Ver_Cartao_GeralCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CODIGO"'
      Required = True
    end
    object Ver_Cartao_GeralCONCILIADO: TIBStringField
      DisplayLabel = 'Conc'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object Ver_Cartao_GeralCPF_CNPJ: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CPF_CNPJ"'
    end
    object Ver_Cartao_GeralDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DOCUMENTO"'
    end
    object Ver_Cartao_GeralNUM_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NUM_BANCO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_BANCO"'
      FixedChar = True
      Size = 3
    end
    object Ver_Cartao_GeralNUM_CARTAO: TIBStringField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'NUM_CARTAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CARTAO"'
      Required = True
    end
    object Ver_Cartao_GeralNUM_CONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'NUM_CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CONTA"'
    end
    object Ver_Cartao_GeralREEMBOLSO: TDateTimeField
      DisplayLabel = 'Reembolso'
      FieldName = 'REEMBOLSO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."REEMBOLSO"'
    end
    object Ver_Cartao_GeralTIPO_DOC: TIBStringField
      DisplayLabel = 'Doc'
      FieldName = 'TIPO_DOC'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object Ver_Cartao_GeralVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VENDA"'
    end
    object Ver_Cartao_GeralPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PESSOA_FJ"'
    end
    object Ver_Cartao_GeralTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO"'
      FixedChar = True
      Size = 3
    end
    object Ver_Cartao_GeralNUM_PARCELAS: TIntegerField
      DisplayLabel = 'Parc'
      FieldName = 'NUM_PARCELAS'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_PARCELAS"'
    end
    object Ver_Cartao_GeralNOME_ADM: TIBStringField
      DisplayLabel = 'Adm'
      FieldName = 'NOME_ADM'
      Origin = '"VER_CARTAO_CAIXA"."NOME_ADM"'
      Size = 50
    end
    object Ver_Cartao_GeralVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_CARTAO_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Cartao_GeralTAXA: TIBBCDField
      DisplayLabel = 'Taxa'
      FieldName = 'TAXA'
      Origin = '"VER_CARTAO_CAIXA"."TAXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Baixas_Pagar_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = Baixas_Pagar_GeralBeforeOpen
    OnCalcFields = Baixas_Pagar_GeralCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO ,'
      '    CODIGO_PG ,'
      '    ANO_PG ,'
      '    PESSOA_FJ ,'
      '    DT_BAIXA ,'
      '    DT_EMISSAO ,'
      '    DT_VENCTO ,'
      '    DT_LANCTO ,'
      '    DOCTO ,'
      '    PARCELA ,'
      '    HISTORICO ,'
      '    HISTORICO_BX ,'
      '    VALOR ,'
      '    VLR_BAIXA ,'
      '    DESCONTOS ,'
      '    VLR_PARCIAL ,'
      '    JUROS ,'
      '    JUROS_PAG ,'
      '    DESCONTOS_PAG ,'
      '    TAXA_JUROS ,'
      '    BOLETO ,'
      '    TIPO_JUROS ,'
      '    ORIGEM ,'
      '    CODIGO_ENT ,'
      '    PLANILHA ,'
      '    ANO_ENT ,'
      '    AVISO ,'
      '    DT_AVISO ,'
      '    NOME ,'
      '    CPF_CGC ,'
      '    CENTRO_CUSTO ,'
      '    NOME_CENTRO ,'
      '    DUPLICATA ,'
      '    CONFERIDA '
      'From VER_BAIXA_PAGAR_GERAL'
      ' ( :CNPJ, :DATA, :CONTA )')
    Left = 128
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    object Baixas_Pagar_GeralCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_Pagar_GeralHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_Pagar_GeralPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_Pagar_GeralTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Pagar_GeralPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_Pagar_GeralDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_Pagar_GeralPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_Pagar_GeralHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_Pagar_GeralBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Pagar_GeralORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_Pagar_GeralAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_Pagar_GeralVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_Pagar_GeralCPF_CGC: TIBStringField
      Tag = 1
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object Baixas_Pagar_GeralTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_Pagar_GeralANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_Pagar_GeralVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralCODIGO_PG: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO_PG'
      Origin = '"VER_BAIXA_PAGAR"."CODIGO_PG"'
    end
    object Baixas_Pagar_GeralANO_PG: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_PG'
      Origin = '"VER_BAIXA_PAGAR"."ANO_PG"'
    end
    object Baixas_Pagar_GeralJUROS_PAG: TIBBCDField
      DisplayLabel = 'Juros Pagos'
      FieldName = 'JUROS_PAG'
      Origin = '"VER_BAIXA_PAGAR"."JUROS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralDESCONTOS_PAG: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_PAG'
      Origin = '"VER_BAIXA_PAGAR"."DESCONTOS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_GeralCODIGO_ENT: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'CODIGO_ENT'
      Origin = '"VER_BAIXA_PAGAR"."CODIGO_ENT"'
    end
    object Baixas_Pagar_GeralANO_ENT: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_ENT'
      Origin = '"VER_BAIXA_PAGAR"."ANO_ENT"'
    end
    object Baixas_Pagar_GeralDT_BAIXA: TDateField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_PAGAR"."DT_BAIXA"'
    end
    object Baixas_Pagar_GeralDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_PAGAR"."DT_EMISSAO"'
    end
    object Baixas_Pagar_GeralDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_PAGAR"."DT_VENCTO"'
    end
    object Baixas_Pagar_GeralDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_PAGAR"."DT_LANCTO"'
    end
    object Baixas_Pagar_GeralDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_PAGAR"."DT_AVISO"'
    end
    object Baixas_Pagar_GeralCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"VER_BAIXA_PAGAR"."CENTRO_CUSTO"'
    end
    object Baixas_Pagar_GeralNOME_CENTRO: TIBStringField
      FieldName = 'NOME_CENTRO'
      Origin = '"VER_BAIXA_PAGAR"."NOME_CENTRO"'
      Size = 50
    end
    object Baixas_Pagar_GeralDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"VER_BAIXA_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object Baixas_Pagar_GeralCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"VER_BAIXA_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
  end
  object SelFatura_Futura_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = SetaParametros
    OnCalcFields = SelFatura_Futura_GeralCalcFields
    SQL.Strings = (
      'SELECT '
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    HISTORICO ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    ENVIADA_CX ,'
      '    DATA_CAIXA,'
      '    FORMA_PGTO ,'
      '    NUM_NF ,'
      '    NUM_CUPOM ,'
      '    PROPRIEDADE ,'
      '    CONVENIADO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRES ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET ,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC,'
      '    TERCEIRO ,'
      '    CARGA ,'
      '    VOLUME,'
      '    PESO,'
      '    REQUISICAO,'
      '    DESCRICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    NOME_FORMA ,'
      '    FATURA_FUTURA ,'
      '    ORCAMENTO ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR,'
      '    LOCAL,'
      '    CONTA_CAIXA, '
      '    CANCELADA, '
      '    BASE_ICM_SUBST , '
      '    VALOR_ICM_SUBST ,'
      '    FRETE ,  '
      '    SEGURO ,  '
      '    DESPESAS ,  '
      '    IPI , '
      '    TOTAL_NOTA,'
      '    SELECIONADA,'
      '    CPF_CGC, '
      '    AVISTA,'
      '    APRAZO,'
      '    JUROS,'
      '    TROCO,'
      '    MOV_CAIXA'
      'FROM VER_FAT_VENDAS_FUTURAS_GERAL'
      '( :CNPJ, :DATA )'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 288
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object SelFatura_Futura_GeralCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelFatura_Futura_GeralDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDA"."DATA"'
    end
    object SelFatura_Futura_GeralFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_GeralHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelFatura_Futura_GeralPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelFatura_Futura_GeralUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelFatura_Futura_GeralVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelFatura_Futura_GeralNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelFatura_Futura_GeralNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelFatura_Futura_GeralNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelFatura_Futura_GeralTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_Futura_GeralNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelFatura_Futura_GeralORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelFatura_Futura_GeralLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelFatura_Futura_GeralTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 80
    end
    object SelFatura_Futura_GeralPESSOA_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESSOA_RAZAO"'
      Size = 50
    end
    object SelFatura_Futura_GeralNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_NATUREZA"'
      Size = 50
    end
    object SelFatura_Futura_GeralENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_GeralFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FORMA_PGTO"'
    end
    object SelFatura_Futura_GeralPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PROPRIEDADE"'
    end
    object SelFatura_Futura_GeralCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONVENIADO"'
    end
    object SelFatura_Futura_GeralTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object SelFatura_Futura_GeralLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."LOCAL_COBRANCA"'
    end
    object SelFatura_Futura_GeralENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralCARTAO: TIBBCDField
      DisplayLabel = 'Cartao'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liqu'#237'do'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TERCEIRO"'
    end
    object SelFatura_Futura_GeralCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARGA"'
    end
    object SelFatura_Futura_GeralVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESO"'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."REQUISICAO"'
      Size = 6
    end
    object SelFatura_Futura_GeralDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESCRICAO"'
      Size = 8
    end
    object SelFatura_Futura_GeralNOME_FORMA: TIBStringField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_FORMA"'
      Size = 50
    end
    object SelFatura_Futura_GeralFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fat. Fut'
      FieldName = 'FATURA_FUTURA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FATURA_FUTURA"'
      Size = 1
    end
    object SelFatura_Futura_GeralNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelFatura_Futura_GeralCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONTA_CAIXA"'
    end
    object SelFatura_Futura_GeralCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_GeralBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base Icms Subst'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Icms'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralSEGURO: TIBBCDField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralDATA_CAIXA: TDateField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA_CAIXA"'
    end
    object SelFatura_Futura_GeralSELECIONADA: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object SelFatura_Futura_GeralCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CPF_CGC"'
      Size = 15
    end
    object SelFatura_Futura_GeralAVISTA: TIBBCDField
      DisplayLabel = #193' Vista'
      FieldName = 'AVISTA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."AVISTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralAPRAZO: TIBBCDField
      DisplayLabel = #193' Prazo'
      FieldName = 'APRAZO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."APRAZO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralTROCO: TIBBCDField
      DisplayLabel = 'Tr'#244'co'
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_FUTURAS_CAIXA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_Futura_GeralAVISTAG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTAG'
      Calculated = True
    end
    object SelFatura_Futura_GeralAPRAZOG: TFloatField
      FieldKind = fkCalculated
      FieldName = 'APRAZOG'
      Calculated = True
    end
    object SelFatura_Futura_GeralLIQUIDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LIQUIDO'
      Calculated = True
    end
    object SelFatura_Futura_GeralMOV_CAIXA: TIBStringField
      FieldName = 'MOV_CAIXA'
      Origin = '"VER_FAT_VENDAS_FUTURAS_GERAL"."MOV_CAIXA"'
      FixedChar = True
      Size = 1
    end
  end
  object Movimentos_Geral_C: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = SetaParametros
    SQL.Strings = (
      'SELECT'
      '             DOCUMENTO,'
      '             HISTORICO,'
      '             VALOR,'
      '             TIPO,'
      '             NOME_CONTRAPARTIDA,'
      '             CONTRA_PARTIDA'
      'FROM FAT_CAIXAS_MOVIMENTOS_GERAL_C'
      '( :CNPJ, :DATA )')
    Left = 392
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Movimentos_Geral_CDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."DOCUMENTO"'
    end
    object Movimentos_Geral_CHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."HISTORICO"'
      Size = 100
    end
    object Movimentos_Geral_CVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Movimentos_Geral_CTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Movimentos_Geral_CNOME_CONTRAPARTIDA: TIBStringField
      DisplayLabel = 'Contra Partida'
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object Movimentos_Geral_CCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."CONTRA_PARTIDA"'
    end
  end
  object Movimentos_Geral_D: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = SetaParametros
    SQL.Strings = (
      'SELECT'
      '             DOCUMENTO,'
      '             HISTORICO,'
      '             VALOR,'
      '             TIPO,'
      '             NOME_CONTRAPARTIDA,'
      '             CONTRA_PARTIDA'
      'FROM FAT_CAIXAS_MOVIMENTOS_GERAL_D'
      '( :CNPJ,  :DATA )')
    Left = 392
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Movimentos_Geral_DDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."DOCUMENTO"'
    end
    object Movimentos_Geral_DHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."HISTORICO"'
      Size = 100
    end
    object Movimentos_Geral_DVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Movimentos_Geral_DTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_C"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Movimentos_Geral_DNOME_CONTRAPARTIDA: TIBStringField
      DisplayLabel = 'Contra Partida'
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_D"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object Movimentos_Geral_DCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS_D"."CONTRA_PARTIDA"'
    end
  end
  object Ver_Baixa_Haver_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          CONTA, '
      '          DATA, '
      '          DOCUMENTO, '
      '          HAVER, '
      '          HISTORICO, '
      '          NOME, '
      '          PESSOA_FJ, '
      '          PLANILHA, '
      '          USUARIO, '
      '          VALOR '
      'from FIN_HAVER_BAIXA'
      'Where CNPJ = :CNPJ AND DATA = :DATA')
    Left = 48
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Ver_Baixa_Haver_GeralCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_HAVER_BAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ver_Baixa_Haver_GeralCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_HAVER_BAIXA"."CODIGO"'
      Required = True
    end
    object Ver_Baixa_Haver_GeralCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_HAVER_BAIXA"."CONTA"'
      Required = True
    end
    object Ver_Baixa_Haver_GeralDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_HAVER_BAIXA"."DATA"'
    end
    object Ver_Baixa_Haver_GeralDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_HAVER_BAIXA"."DOCUMENTO"'
      Required = True
    end
    object Ver_Baixa_Haver_GeralHAVER: TIntegerField
      DisplayLabel = 'Haver'
      FieldName = 'HAVER'
      Origin = '"FIN_HAVER_BAIXA"."HAVER"'
      Required = True
    end
    object Ver_Baixa_Haver_GeralHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_HAVER_BAIXA"."HISTORICO"'
      Size = 100
    end
    object Ver_Baixa_Haver_GeralNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_HAVER_BAIXA"."NOME"'
      Size = 50
    end
    object Ver_Baixa_Haver_GeralPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_HAVER_BAIXA"."PESSOA_FJ"'
    end
    object Ver_Baixa_Haver_GeralPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_HAVER_BAIXA"."PLANILHA"'
    end
    object Ver_Baixa_Haver_GeralUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FIN_HAVER_BAIXA"."USUARIO"'
      Required = True
    end
    object Ver_Baixa_Haver_GeralVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_HAVER_BAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Lista_Produtos_Caixa_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = SetaParametros
    SQL.Strings = (
      'SELECT '
      'PRODUTO,'
      'NOME       ,'
      'TOTAL ,'
      'QUANTIDADE_EXPOSTA,'
      'QUANTIDADE,'
      'DESCONTOS     '
      'FROM  LISTA_PRODUTOS_CAIXA_GERAL'
      '( :CNPJ, :DATA )'
      'ORDER BY NOME, PRODUTO')
    Left = 584
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Lista_Produtos_Caixa_GeralTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"LISTA_PRODUTOS_CAIXA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_Caixa_GeralPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODUTO'
      Origin = '"LISTA_PRODUTOS_CAIXA"."PRODUTO"'
      Size = 15
    end
    object Lista_Produtos_Caixa_GeralQUANTIDADE_EXPOSTA: TIBBCDField
      DisplayLabel = 'Quantidade Exposta'
      FieldName = 'QUANTIDADE_EXPOSTA'
      Origin = '"LISTA_PRODUTOS_CAIXA"."QUANTIDADE_EXPOSTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_Caixa_GeralQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"LISTA_PRODUTOS_CAIXA"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_Caixa_GeralDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"LISTA_PRODUTOS_CAIXA"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_Caixa_GeralNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"LISTA_PRODUTOS_CAIXA_GERAL"."NOME"'
      Size = 50
    end
  end
  object Formas_Agrupadas_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = Formas_Agrupadas_GeralBeforeOpen
    SQL.Strings = (
      'select'
      '       VALOR_ORIGINAL,'
      '       JUROS,'
      '       TIPO_PAGTO'
      'FROM'
      'VENDAS_FRMPAGTO_AGRUPADAS_GERAL'
      '(:CNPJ, :DATA )')
    Left = 588
    Top = 87
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Formas_Agrupadas_GeralVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Valor Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS_CAIXA"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Formas_Agrupadas_GeralJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Formas_Agrupadas_GeralTIPO_PAGTO: TIBStringField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'TIPO_PAGTO'
      Origin = '"VENDAS_FRMPAGTO_AGRUPADAS_CAIXA"."TIPO_PAGTO"'
      Size = 30
    end
    object Formas_Agrupadas_GeralTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Ds_Formas_Agrupadas_Geral: TDataSource
    AutoEdit = False
    DataSet = Formas_Agrupadas_Geral
    Left = 640
    Top = 259
  end
  object Soma_Vendas_Forma_Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = SetaParametros
    OnCalcFields = Soma_Vendas_Forma_GeralCalcFields
    SQL.Strings = (
      'select'
      '        VALOR_ORIGINAL,'
      '        JUROS,'
      '        TIPO_PAGTO'
      'from'
      'SOMA_VENDAS_FRMPAGTO_GERAL'
      '(:CNPJ,  :DATA)')
    Left = 584
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Soma_Vendas_Forma_GeralVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"SOMA_VENDAS_FRMPAGTO_AGRUPADAS"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Soma_Vendas_Forma_GeralJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"SOMA_VENDAS_FRMPAGTO_AGRUPADAS"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Soma_Vendas_Forma_GeralTIPO_PAGTO: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'TIPO_PAGTO'
      Origin = '"SOMA_VENDAS_FRMPAGTO_AGRUPADAS"."TIPO_PAGTO"'
      Size = 30
    end
    object Soma_Vendas_Forma_GeralTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Caixa_Geral: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = SetaParametros
    OnCalcFields = Caixa_GeralCalcFields
    OnNewRecord = Caixa_GeralNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_CAIXA_GERAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA')
    InsertSQL.Strings = (
      'insert into FAT_CAIXA_GERAL'
      
        '  (CNPJ, DATA, DINHEIRO, TICKET, CHEQUE, CHEQUE_PRAZO, SALDO_ANT' +
        'ERIOR, '
      
        '   SALDO, FECHADO, TROCO, SANGRIA, BOMBAS, NOTAS, PRODUTOS, CART' +
        'AO, RECEBIMENTOS, '
      
        '   AFERICAO, MOEDAS, OUTRAS_ENTRADAS, OUTRAS_SAIDAS, TROCO_INICI' +
        'AL, HAVER, '
      
        '   BAIXA_HAVER, PLANILHA, DESCONTOS, JUROS, ACRESCIMOS, TROCO_VE' +
        'NDAS, JUROS_RECEBER, '
      
        '   DESCONTOS_RECEBER, PAGAMENTOS, SALDO_CAIXAS_FRENTISTA, DESCON' +
        'TOS_PRODUTOS_BOMBA)'
      'values'
      
        '  (:CNPJ, :DATA, :DINHEIRO, :TICKET, :CHEQUE, :CHEQUE_PRAZO, :SA' +
        'LDO_ANTERIOR, '
      
        '   :SALDO, :FECHADO, :TROCO, :SANGRIA, :BOMBAS, :NOTAS, :PRODUTO' +
        'S, :CARTAO, '
      
        '   :RECEBIMENTOS, :AFERICAO, :MOEDAS, :OUTRAS_ENTRADAS, :OUTRAS_' +
        'SAIDAS, '
      
        '   :TROCO_INICIAL, :HAVER, :BAIXA_HAVER, :PLANILHA, :DESCONTOS, ' +
        ':JUROS, '
      
        '   :ACRESCIMOS, :TROCO_VENDAS, :JUROS_RECEBER, :DESCONTOS_RECEBE' +
        'R, :PAGAMENTOS, '
      '   :SALDO_CAIXAS_FRENTISTA, :DESCONTOS_PRODUTOS_BOMBA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  DATA,'
      '  DINHEIRO,'
      '  TICKET,'
      '  CHEQUE,'
      '  SALDO_ANTERIOR,'
      '  SALDO,'
      '  FECHADO,'
      '  TROCO,'
      '  SANGRIA,'
      '  BOMBAS,'
      '  NOTAS,'
      '  PRODUTOS,'
      '  CARTAO,'
      '  RECEBIMENTOS,'
      '  AFERICAO,'
      '  MOEDAS,'
      '  CHEQUE_PRAZO,'
      '  OUTRAS_ENTRADAS,'
      '  OUTRAS_SAIDAS,'
      '  TROCO_INICIAL,'
      '  HAVER,'
      '  BAIXA_HAVER,'
      '  PLANILHA,'
      '  DESCONTOS,'
      '  JUROS,'
      '  ACRESCIMOS,'
      '  TROCO_VENDAS,'
      '  VENDAS_VISTA,'
      '  VENDAS_PRAZO,'
      '  SALDO_PRAZO,'
      '  SALDO_VISTA,'
      '  PAGAMENTOS,'
      '  SALDO_CHEQUE,'
      '  SALDO_CHEQUE_CONC_DATA,'
      '  SALDO_CONTAS_BANCARIAS,'
      '  SALDO_RECEBER,'
      '  SALDO_PAGAR,'
      '  JUROS_RECEBER,'
      '  DESCONTOS_RECEBER,'
      '  SALDO_CAIXAS_FRENTISTA,'
      '  DESCONTOS_PRODUTOS_BOMBA'
      'from FAT_CAIXA_GERAL '
      'where'
      '  CNPJ = :CNPJ and'
      '  DATA = :DATA')
    SelectSQL.Strings = (
      'select '
      '    CNPJ ,'
      '    DATA ,'
      '    DINHEIRO ,'
      '    TICKET ,'
      '    CHEQUE ,'
      '    CHEQUE_PRAZO,'
      '    SALDO_ANTERIOR ,'
      '    SALDO ,'
      '    FECHADO ,'
      '    TROCO ,'
      '    SANGRIA ,'
      '    BOMBAS ,'
      '    NOTAS ,'
      '    PRODUTOS ,'
      '    CARTAO ,'
      '    RECEBIMENTOS ,'
      '    AFERICAO,'
      '    MOEDAS,'
      '    OUTRAS_ENTRADAS,'
      '    OUTRAS_SAIDAS,'
      '    TROCO_INICIAL,'
      '    HAVER,'
      '    BAIXA_HAVER,'
      '    PLANILHA,'
      '    DESCONTOS,'
      '    JUROS,'
      '    ACRESCIMOS,'
      '    TROCO_VENDAS,'
      '    JUROS_RECEBER,'
      '    DESCONTOS_RECEBER,'
      '    PAGAMENTOS,'
      '    SALDO_CAIXAS_FRENTISTA,'
      '    DESCONTOS_PRODUTOS_BOMBA    '
      'from FAT_CAIXA_GERAL'
      'where CNPJ = :CNPJ AND DATA = :DATA ')
    ModifySQL.Strings = (
      'update FAT_CAIXA_GERAL'
      'set'
      '  CNPJ = :CNPJ,'
      '  DATA = :DATA,'
      '  DINHEIRO = :DINHEIRO,'
      '  TICKET = :TICKET,'
      '  CHEQUE = :CHEQUE,'
      '  CHEQUE_PRAZO = :CHEQUE_PRAZO,'
      '  SALDO_ANTERIOR = :SALDO_ANTERIOR,'
      '  SALDO = :SALDO,'
      '  FECHADO = :FECHADO,'
      '  TROCO = :TROCO,'
      '  SANGRIA = :SANGRIA,'
      '  BOMBAS = :BOMBAS,'
      '  NOTAS = :NOTAS,'
      '  PRODUTOS = :PRODUTOS,'
      '  CARTAO = :CARTAO,'
      '  RECEBIMENTOS = :RECEBIMENTOS,'
      '  AFERICAO = :AFERICAO,'
      '  MOEDAS = :MOEDAS,'
      '  OUTRAS_ENTRADAS = :OUTRAS_ENTRADAS,'
      '  OUTRAS_SAIDAS = :OUTRAS_SAIDAS,'
      '  TROCO_INICIAL = :TROCO_INICIAL,'
      '  HAVER = :HAVER,'
      '  BAIXA_HAVER = :BAIXA_HAVER,'
      '  PLANILHA = :PLANILHA,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROS = :JUROS,'
      '  ACRESCIMOS = :ACRESCIMOS,'
      '  TROCO_VENDAS = :TROCO_VENDAS,'
      '  JUROS_RECEBER = :JUROS_RECEBER,'
      '  DESCONTOS_RECEBER = :DESCONTOS_RECEBER,'
      '  PAGAMENTOS = :PAGAMENTOS,'
      '  SALDO_CAIXAS_FRENTISTA = :SALDO_CAIXAS_FRENTISTA,'
      '  DESCONTOS_PRODUTOS_BOMBA = :DESCONTOS_PRODUTOS_BOMBA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA')
    Left = 504
    Top = 321
    object Caixa_GeralCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"PST_CAIXAFRENTISTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Caixa_GeralAFERICAO: TFloatField
      DisplayLabel = 'Aferi'#231#227'o'
      FieldName = 'AFERICAO'
      Origin = '"PST_CAIXAFRENTISTA"."AFERICAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralBOMBAS: TFloatField
      DisplayLabel = 'Bombas'
      FieldName = 'BOMBAS'
      Origin = '"PST_CAIXAFRENTISTA"."BOMBAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralCARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"PST_CAIXAFRENTISTA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"PST_CAIXAFRENTISTA"."DATA"'
    end
    object Caixa_GeralDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"PST_CAIXAFRENTISTA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"PST_CAIXAFRENTISTA"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Caixa_GeralNOTAS: TFloatField
      DisplayLabel = 'Notas'
      FieldName = 'NOTAS'
      Origin = '"PST_CAIXAFRENTISTA"."NOTAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralPRODUTOS: TFloatField
      DisplayLabel = 'Produtos'
      FieldName = 'PRODUTOS'
      Origin = '"PST_CAIXAFRENTISTA"."PRODUTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralRECEBIMENTOS: TFloatField
      DisplayLabel = 'Recebimentos'
      FieldName = 'RECEBIMENTOS'
      Origin = '"PST_CAIXAFRENTISTA"."RECEBIMENTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralSANGRIA: TFloatField
      DisplayLabel = 'Sangria'
      FieldName = 'SANGRIA'
      Origin = '"PST_CAIXAFRENTISTA"."SANGRIA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"PST_CAIXAFRENTISTA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralTROCO: TFloatField
      DisplayLabel = 'Tr'#244'co'
      FieldName = 'TROCO'
      Origin = '"PST_CAIXAFRENTISTA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralSALDO_ANTERIOR: TFloatField
      DisplayLabel = 'Saldo Anterior'
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"FAT_CAIXAS"."SALDO_ANTERIOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      Origin = '"FAT_CAIXAS"."SALDO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralMOEDAS: TFloatField
      DisplayLabel = 'Moedas'
      FieldName = 'MOEDAS'
      Origin = '"FAT_CAIXAS"."MOEDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralSAIDAS: TFloatField
      DisplayLabel = 'Sa'#237'das'
      FieldKind = fkCalculated
      FieldName = 'SAIDAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Caixa_GeralCHEQUE_PRAZO: TFloatField
      DisplayLabel = 'Chq. Prazo'
      FieldName = 'CHEQUE_PRAZO'
      Origin = '"FAT_CAIXAS"."CHEQUE_PRAZO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralOUTRAS_ENTRADAS: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'OUTRAS_ENTRADAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_ENTRADAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralOUTRAS_SAIDAS: TFloatField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'OUTRAS_SAIDAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_SAIDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralENTRADAS: TFloatField
      DisplayLabel = 'Tot. Entradas'
      FieldKind = fkCalculated
      FieldName = 'ENTRADAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Caixa_GeralResultado: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Resultado'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Caixa_GeralTROCO_INICIAL: TFloatField
      DisplayLabel = 'Troco Inicial'
      FieldName = 'TROCO_INICIAL'
      Origin = '"FAT_CAIXAS"."TROCO_INICIAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralHAVER: TFloatField
      DisplayLabel = 'Haver'
      FieldName = 'HAVER'
      Origin = '"FAT_CAIXAS"."HAVER"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralBAIXA_HAVER: TFloatField
      DisplayLabel = 'Haver Baixa'
      FieldName = 'BAIXA_HAVER'
      Origin = '"FAT_CAIXAS"."BAIXA_HAVER"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FAT_CAIXAS"."PLANILHA"'
    end
    object Caixa_GeralDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"FAT_CAIXAS"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FAT_CAIXAS"."JUROS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralACRESCIMOS: TFloatField
      DisplayLabel = 'Acr'#233'scimos'
      FieldName = 'ACRESCIMOS'
      Origin = '"FAT_CAIXAS"."ACRESCIMOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralTROCO_VENDAS: TFloatField
      DisplayLabel = 'Tr'#244'co Vendas'
      FieldName = 'TROCO_VENDAS'
      Origin = '"FAT_CAIXAS"."TROCO_VENDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralJUROS_RECEBER: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS_RECEBER'
      Origin = '"FAT_CAIXAS"."JUROS_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_GeralDESCONTOS_RECEBER: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_RECEBER'
      Origin = '"FAT_CAIXAS"."DESCONTOS_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_GeralPAGAMENTOS: TFloatField
      DisplayLabel = 'Pagamentos'
      FieldName = 'PAGAMENTOS'
      Origin = '"FAT_CAIXA_GERAL"."PAGAMENTOS"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_GeralSALDO_CAIXAS_FRENTISTA: TFloatField
      DisplayLabel = 'Saldos'
      FieldName = 'SALDO_CAIXAS_FRENTISTA'
      Origin = '"FAT_CAIXA_GERAL"."SALDO_CAIXAS_FRENTISTA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Caixa_GeralDESCONTOS_PRODUTOS_BOMBA: TFloatField
      DisplayLabel = 'Desc. Produtos Bomba'
      FieldName = 'DESCONTOS_PRODUTOS_BOMBA'
      Origin = '"FAT_CAIXA_GERAL"."DESCONTOS_PRODUTOS_BOMBA"'
      DisplayFormat = '###,##0.00'
    end
  end
  object SALDO_CAIXA_GERAL: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SALDO_CAIXA_GERAL'
    Left = 392
    Top = 259
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
  object SOMA_VALORES_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    SQL.Strings = (
      'SELECT'
      'DINHEIRO,'
      'TICKET,'
      'CHEQUE,'
      'CARTAO,'
      'MOEDAS,'
      'CHEQUE_PRAZO'
      'FROM '
      'SOMA_VALORES_CAIXA'
      '( :CNPJ, :DATA )')
    Left = 172
    Top = 353
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object SOMA_VALORES_CAIXADINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"SOMA_VALORES_CAIXA"."DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object SOMA_VALORES_CAIXATICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"SOMA_VALORES_CAIXA"."TICKET"'
      Precision = 18
      Size = 4
    end
    object SOMA_VALORES_CAIXACHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"SOMA_VALORES_CAIXA"."CHEQUE"'
      Precision = 18
      Size = 4
    end
    object SOMA_VALORES_CAIXACARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"SOMA_VALORES_CAIXA"."CARTAO"'
      Precision = 18
      Size = 4
    end
    object SOMA_VALORES_CAIXAMOEDAS: TIBBCDField
      FieldName = 'MOEDAS'
      Origin = '"SOMA_VALORES_CAIXA"."MOEDAS"'
      Precision = 18
      Size = 4
    end
    object SOMA_VALORES_CAIXACHEQUE_PRAZO: TIBBCDField
      FieldName = 'CHEQUE_PRAZO'
      Origin = '"SOMA_VALORES_CAIXA"."CHEQUE_PRAZO"'
      Precision = 18
      Size = 4
    end
  end
  object VER_CAIXA_GERAL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SetaParametros
    OnCalcFields = VER_CAIXA_GERALCalcFields
    SQL.Strings = (
      'select '
      '    CNPJ ,'
      '    DATA ,'
      '    DINHEIRO ,'
      '    TICKET ,'
      '    CHEQUE ,'
      '    CHEQUE_PRAZO,'
      '    SALDO_ANTERIOR ,'
      '    SALDO ,'
      '    FECHADO ,'
      '    TROCO ,'
      '    SANGRIA ,'
      '    BOMBAS ,'
      '    NOTAS ,'
      '    PRODUTOS ,'
      '    CARTAO ,'
      '    RECEBIMENTOS ,'
      '    AFERICAO,'
      '    MOEDAS,'
      '    OUTRAS_ENTRADAS,'
      '    OUTRAS_SAIDAS,'
      '    TROCO_INICIAL,'
      '    HAVER,'
      '    BAIXA_HAVER,'
      '    PLANILHA,'
      '    DESCONTOS,'
      '    JUROS,'
      '    ACRESCIMOS,'
      '    TROCO_VENDAS,'
      '    JUROS_RECEBER,'
      '    DESCONTOS_RECEBER,'
      '    PAGAMENTOS,'
      '    SALDO_CAIXAS_FRENTISTA,'
      '    DESCONTOS_PRODUTOS_BOMBA'
      'from FAT_CAIXA_GERAL'
      'where CNPJ = :CNPJ AND DATA = :DATA ')
    Left = 48
    Top = 215
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object VER_CAIXA_GERALCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXA_GERAL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object VER_CAIXA_GERALDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FAT_CAIXA_GERAL"."DATA"'
    end
    object VER_CAIXA_GERALDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      Origin = '"FAT_CAIXA_GERAL"."DINHEIRO"'
    end
    object VER_CAIXA_GERALTICKET: TFloatField
      FieldName = 'TICKET'
      Origin = '"FAT_CAIXA_GERAL"."TICKET"'
    end
    object VER_CAIXA_GERALCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXA_GERAL"."CHEQUE"'
    end
    object VER_CAIXA_GERALCHEQUE_PRAZO: TFloatField
      FieldName = 'CHEQUE_PRAZO'
      Origin = '"FAT_CAIXA_GERAL"."CHEQUE_PRAZO"'
    end
    object VER_CAIXA_GERALSALDO_ANTERIOR: TFloatField
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"FAT_CAIXA_GERAL"."SALDO_ANTERIOR"'
    end
    object VER_CAIXA_GERALSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = '"FAT_CAIXA_GERAL"."SALDO"'
    end
    object VER_CAIXA_GERALFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"FAT_CAIXA_GERAL"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object VER_CAIXA_GERALTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"FAT_CAIXA_GERAL"."TROCO"'
    end
    object VER_CAIXA_GERALSANGRIA: TFloatField
      FieldName = 'SANGRIA'
      Origin = '"FAT_CAIXA_GERAL"."SANGRIA"'
    end
    object VER_CAIXA_GERALBOMBAS: TFloatField
      FieldName = 'BOMBAS'
      Origin = '"FAT_CAIXA_GERAL"."BOMBAS"'
    end
    object VER_CAIXA_GERALNOTAS: TFloatField
      FieldName = 'NOTAS'
      Origin = '"FAT_CAIXA_GERAL"."NOTAS"'
    end
    object VER_CAIXA_GERALPRODUTOS: TFloatField
      FieldName = 'PRODUTOS'
      Origin = '"FAT_CAIXA_GERAL"."PRODUTOS"'
    end
    object VER_CAIXA_GERALCARTAO: TFloatField
      FieldName = 'CARTAO'
      Origin = '"FAT_CAIXA_GERAL"."CARTAO"'
    end
    object VER_CAIXA_GERALRECEBIMENTOS: TFloatField
      FieldName = 'RECEBIMENTOS'
      Origin = '"FAT_CAIXA_GERAL"."RECEBIMENTOS"'
    end
    object VER_CAIXA_GERALAFERICAO: TFloatField
      FieldName = 'AFERICAO'
      Origin = '"FAT_CAIXA_GERAL"."AFERICAO"'
    end
    object VER_CAIXA_GERALMOEDAS: TFloatField
      FieldName = 'MOEDAS'
      Origin = '"FAT_CAIXA_GERAL"."MOEDAS"'
    end
    object VER_CAIXA_GERALOUTRAS_ENTRADAS: TFloatField
      FieldName = 'OUTRAS_ENTRADAS'
      Origin = '"FAT_CAIXA_GERAL"."OUTRAS_ENTRADAS"'
    end
    object VER_CAIXA_GERALOUTRAS_SAIDAS: TFloatField
      FieldName = 'OUTRAS_SAIDAS'
      Origin = '"FAT_CAIXA_GERAL"."OUTRAS_SAIDAS"'
    end
    object VER_CAIXA_GERALTROCO_INICIAL: TFloatField
      FieldName = 'TROCO_INICIAL'
      Origin = '"FAT_CAIXA_GERAL"."TROCO_INICIAL"'
    end
    object VER_CAIXA_GERALHAVER: TFloatField
      FieldName = 'HAVER'
      Origin = '"FAT_CAIXA_GERAL"."HAVER"'
    end
    object VER_CAIXA_GERALBAIXA_HAVER: TFloatField
      FieldName = 'BAIXA_HAVER'
      Origin = '"FAT_CAIXA_GERAL"."BAIXA_HAVER"'
    end
    object VER_CAIXA_GERALPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FAT_CAIXA_GERAL"."PLANILHA"'
    end
    object VER_CAIXA_GERALDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FAT_CAIXA_GERAL"."DESCONTOS"'
    end
    object VER_CAIXA_GERALJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FAT_CAIXA_GERAL"."JUROS"'
    end
    object VER_CAIXA_GERALACRESCIMOS: TFloatField
      FieldName = 'ACRESCIMOS'
      Origin = '"FAT_CAIXA_GERAL"."ACRESCIMOS"'
    end
    object VER_CAIXA_GERALTROCO_VENDAS: TFloatField
      FieldName = 'TROCO_VENDAS'
      Origin = '"FAT_CAIXA_GERAL"."TROCO_VENDAS"'
    end
    object VER_CAIXA_GERALJUROS_RECEBER: TFloatField
      FieldName = 'JUROS_RECEBER'
      Origin = '"FAT_CAIXA_GERAL"."JUROS_RECEBER"'
    end
    object VER_CAIXA_GERALDESCONTOS_RECEBER: TFloatField
      FieldName = 'DESCONTOS_RECEBER'
      Origin = '"FAT_CAIXA_GERAL"."DESCONTOS_RECEBER"'
    end
    object VER_CAIXA_GERALSAIDAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SAIDAS'
      Calculated = True
    end
    object VER_CAIXA_GERALENTRADAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ENTRADAS'
      Calculated = True
    end
    object VER_CAIXA_GERALRESULTADO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'RESULTADO'
      Calculated = True
    end
    object VER_CAIXA_GERALPAGAMENTOS: TFloatField
      FieldName = 'PAGAMENTOS'
      Origin = '"FAT_CAIXA_GERAL"."PAGAMENTOS"'
    end
    object VER_CAIXA_GERALSALDO_CAIXAS_FRENTISTA: TFloatField
      FieldName = 'SALDO_CAIXAS_FRENTISTA'
      Origin = '"FAT_CAIXA_GERAL"."SALDO_CAIXAS_FRENTISTA"'
    end
    object VER_CAIXA_GERALDESCONTOS_PRODUTOS_BOMBA: TFloatField
      FieldName = 'DESCONTOS_PRODUTOS_BOMBA'
      Origin = '"FAT_CAIXA_GERAL"."DESCONTOS_PRODUTOS_BOMBA"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Ver_Caixa_Vendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeOpen = Ver_Caixa_VendedorBeforeOpen
    OnCalcFields = Ver_Caixa_VendedorCalcFields
    SQL.Strings = (
      'SELECT  VENDEDOR ,'
      '        NOME,'
      '        DINHEIRO,'
      '        CHEQUE,'
      '        CARTAO,'
      '        TICKET,'
      '        PRAZO'
      
        'FROM FAT_CAIXA_GERAL_VENDEDOR ft where ft.cnpj = :cnpj and ft.da' +
        'ta = :data')
    Left = 280
    Top = 408
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object Ver_Caixa_VendedorTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Ver_Caixa_VendedorVENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd.'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."VENDEDOR"'
      Required = True
    end
    object Ver_Caixa_VendedorNOME: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."NOME"'
      Required = True
      Size = 50
    end
    object Ver_Caixa_VendedorDINHEIRO: TFloatField
      DisplayLabel = 'Vd. Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."DINHEIRO"'
      DisplayFormat = '###,##0.00'
    end
    object Ver_Caixa_VendedorCHEQUE: TFloatField
      DisplayLabel = 'Vd. Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object Ver_Caixa_VendedorCARTAO: TFloatField
      DisplayLabel = 'Vd. Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."CARTAO"'
      DisplayFormat = '###,##0.00'
    end
    object Ver_Caixa_VendedorTICKET: TFloatField
      DisplayLabel = 'Vd. Ticket'
      FieldName = 'TICKET'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."TICKET"'
      DisplayFormat = '###,##0.00'
    end
    object Ver_Caixa_VendedorPRAZO: TFloatField
      DisplayLabel = 'Vd. Prazo'
      FieldName = 'PRAZO'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."PRAZO"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Vendedor_Caixa_Geral: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    BeforeInsert = Vendedor_Caixa_GeralBeforeInsert
    BeforeOpen = SetaParametros
    DeleteSQL.Strings = (
      'delete from FAT_CAIXA_GERAL_VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA and'
      '  VENDEDOR = :OLD_VENDEDOR')
    InsertSQL.Strings = (
      'insert into FAT_CAIXA_GERAL_VENDEDOR'
      
        '  (CNPJ, DATA, CARTAO, CHEQUE, DINHEIRO, PRAZO, TICKET, VENDEDOR' +
        ', NOME)'
      'values'
      
        '  (:CNPJ, :DATA, :CARTAO, :CHEQUE, :DINHEIRO, :PRAZO, :TICKET, :' +
        'VENDEDOR, '
      '   :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  DATA,'
      '  VENDEDOR,'
      '  NOME,'
      '  DINHEIRO,'
      '  CHEQUE,'
      '  CARTAO,'
      '  TICKET,'
      '  PRAZO'
      'from FAT_CAIXA_GERAL_VENDEDOR '
      'where'
      '  CNPJ = :CNPJ and'
      '  DATA = :DATA and'
      '  VENDEDOR = :VENDEDOR')
    SelectSQL.Strings = (
      'select CNPJ,'
      '          DATA, '
      '          CARTAO, '
      '           CHEQUE, '
      '           DINHEIRO,'
      '           PRAZO, '
      '           TICKET, '
      '           VENDEDOR,'
      '           NOME '
      'from FAT_CAIXA_GERAL_VENDEDOR'
      'WHERE CNPJ = :CNPJ AND DATA = :DATA'
      'ORDER BY NOME, VENDEDOR')
    ModifySQL.Strings = (
      'update FAT_CAIXA_GERAL_VENDEDOR'
      'set'
      '  CNPJ = :CNPJ,'
      '  DATA = :DATA,'
      '  CARTAO = :CARTAO,'
      '  CHEQUE = :CHEQUE,'
      '  DINHEIRO = :DINHEIRO,'
      '  PRAZO = :PRAZO,'
      '  TICKET = :TICKET,'
      '  VENDEDOR = :VENDEDOR,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA and'
      '  VENDEDOR = :OLD_VENDEDOR')
    Left = 392
    Top = 400
    object Vendedor_Caixa_GeralCARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."CARTAO"'
      DisplayFormat = '###,##0.00'
    end
    object Vendedor_Caixa_GeralCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object Vendedor_Caixa_GeralDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."DINHEIRO"'
      DisplayFormat = '###,##0.00'
    end
    object Vendedor_Caixa_GeralPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."PRAZO"'
      DisplayFormat = '###,##0.00'
    end
    object Vendedor_Caixa_GeralTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."TICKET"'
      DisplayFormat = '###,##0.00'
    end
    object Vendedor_Caixa_GeralVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."VENDEDOR"'
      Required = True
    end
    object Vendedor_Caixa_GeralNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."NOME"'
      Required = True
      Size = 50
    end
    object Vendedor_Caixa_GeralCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Vendedor_Caixa_GeralDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_CAIXA_GERAL_VENDEDOR"."DATA"'
    end
  end
  object SALDO_CAIXAS_FRENTISTAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    BeforeOpen = SALDO_CAIXAS_FRENTISTASBeforeOpen
    StoredProcName = 'SALDO_CAIXAS_FRENTISTAS'
    Left = 288
    Top = 448
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
  object SOMA_SANGRIAS: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'SOMA_SANGRIAS'
    Left = 488
    Top = 448
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
      end
      item
        DataType = ftDateTime
        Name = 'DATA'
        ParamType = ptInput
      end>
  end
  object Cheques: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    BANCO,'
      '    CONTA,'
      '    CHEQUE,'
      '    VENDA,'
      '    EMISSAO,'
      '    PRE_DATE,'
      '    VALOR,'
      '    JUROS,'
      '    CONCILIADO,'
      '    PESSOA_FJ,'
      '    HISTORICO,'
      '    AGENCIA,'
      '    NOME,'
      '    FONE,'
      '    FAX,'
      '    CELULAR,'
      '    CPF_CGC,'
      '    DATA_CONCILIACAO,'
      '    MOEDA1,'
      '    MOEDA2,'
      '    TIPO,'
      '    DATA_ACERTO,'
      '    DATA_DEVOLUCAO,'
      '    CODIGO_MOTIVO_DEVOLUCAO,'
      '    VEZES_DEVOLUCAO ,'
      '    PLANILHA ,'
      '    DIGITO_AGENCIA ,'
      '    DIGITO_CHEQUE ,'
      '    DATA_CAIXA'
      'FROM VER_FIN_CHEQUES_CAIXA'
      '(:CNPJ, :DATA, :USUARIO, :TURNO )')
    Left = 584
    Top = 400
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'USUARIO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object ChequesBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object ChequesCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONTA"'
      Size = 15
    end
    object ChequesCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CHEQUE"'
      Size = 6
    end
    object ChequesVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VENDA"'
    end
    object ChequesEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."EMISSAO"'
    end
    object ChequesPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PRE_DATE"'
    end
    object ChequesVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object ChequesPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PESSOA_FJ"'
    end
    object ChequesHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."HISTORICO"'
      Size = 100
    end
    object ChequesAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."AGENCIA"'
      Size = 6
    end
    object ChequesNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."NOME"'
      Size = 50
    end
    object ChequesFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FONE"'
    end
    object ChequesFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FAX"'
    end
    object ChequesCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CELULAR"'
    end
    object ChequesCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object ChequesDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CONCILIACAO"'
    end
    object ChequesMOEDA1: TIBBCDField
      DisplayLabel = 'Moeda 1'
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA1"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesMOEDA2: TIBBCDField
      DisplayLabel = 'Moeda 2'
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object ChequesDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_ACERTO"'
    end
    object ChequesDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_DEVOLUCAO"'
    end
    object ChequesCODIGO_MOTIVO_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'CODIGO_MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CODIGO_MOTIVO_DEVOLUCAO"'
    end
    object ChequesVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Vezes'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VEZES_DEVOLUCAO"'
    end
    object ChequesPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PLANILHA"'
    end
    object ChequesDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig. Ag'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object ChequesDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Chq'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object ChequesDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CAIXA"'
    end
  end
  object CHEQUES_GERAL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    BANCO,'
      '    CONTA,'
      '    CHEQUE,'
      '    VENDA,'
      '    EMISSAO,'
      '    PRE_DATE,'
      '    VALOR,'
      '    JUROS,'
      '    CONCILIADO,'
      '    PESSOA_FJ,'
      '    HISTORICO,'
      '    AGENCIA,'
      '    NOME,'
      '    FONE,'
      '    FAX,'
      '    CELULAR,'
      '    CPF_CGC,'
      '    DATA_CONCILIACAO,'
      '    MOEDA1,'
      '    MOEDA2,'
      '    TIPO,'
      '    DATA_ACERTO,'
      '    DATA_DEVOLUCAO,'
      '    CODIGO_MOTIVO_DEVOLUCAO,'
      '    VEZES_DEVOLUCAO ,'
      '    PLANILHA ,'
      '    DIGITO_AGENCIA ,'
      '    DIGITO_CHEQUE ,'
      '    DATA_CAIXA,'
      '    TURNO,'
      '    USUARIO'
      'FROM VER_FIN_CHEQUES_CAIXA_GERAL'
      '( :CNPJ, :DATA )')
    Left = 392
    Top = 448
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end>
    object CHEQUES_GERALBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object CHEQUES_GERALCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."CONTA"'
      Size = 15
    end
    object CHEQUES_GERALCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."CHEQUE"'
      Size = 6
    end
    object CHEQUES_GERALVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."VENDA"'
    end
    object CHEQUES_GERALEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."EMISSAO"'
    end
    object CHEQUES_GERALPRE_DATE: TDateTimeField
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."PRE_DATE"'
    end
    object CHEQUES_GERALVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."VALOR"'
      Precision = 18
      Size = 4
    end
    object CHEQUES_GERALJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."JUROS"'
      Precision = 18
      Size = 4
    end
    object CHEQUES_GERALCONCILIADO: TIBStringField
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object CHEQUES_GERALPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."PESSOA_FJ"'
    end
    object CHEQUES_GERALHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."HISTORICO"'
      Size = 100
    end
    object CHEQUES_GERALAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."AGENCIA"'
      Size = 6
    end
    object CHEQUES_GERALNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."NOME"'
      Size = 50
    end
    object CHEQUES_GERALFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."FONE"'
    end
    object CHEQUES_GERALFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."FAX"'
    end
    object CHEQUES_GERALCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."CELULAR"'
    end
    object CHEQUES_GERALCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."CPF_CGC"'
      Size = 15
    end
    object CHEQUES_GERALDATA_CONCILIACAO: TDateTimeField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."DATA_CONCILIACAO"'
    end
    object CHEQUES_GERALMOEDA1: TIBBCDField
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."MOEDA1"'
      Precision = 18
      Size = 4
    end
    object CHEQUES_GERALMOEDA2: TIBBCDField
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."MOEDA2"'
      Precision = 18
      Size = 4
    end
    object CHEQUES_GERALTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object CHEQUES_GERALDATA_ACERTO: TDateTimeField
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."DATA_ACERTO"'
    end
    object CHEQUES_GERALDATA_DEVOLUCAO: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."DATA_DEVOLUCAO"'
    end
    object CHEQUES_GERALCODIGO_MOTIVO_DEVOLUCAO: TIntegerField
      FieldName = 'CODIGO_MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."CODIGO_MOTIVO_DEVOLUCAO"'
    end
    object CHEQUES_GERALVEZES_DEVOLUCAO: TIntegerField
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."VEZES_DEVOLUCAO"'
    end
    object CHEQUES_GERALPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."PLANILHA"'
    end
    object CHEQUES_GERALDIGITO_AGENCIA: TIBStringField
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object CHEQUES_GERALDIGITO_CHEQUE: TIBStringField
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object CHEQUES_GERALDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."DATA_CAIXA"'
    end
    object CHEQUES_GERALTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."TURNO"'
    end
    object CHEQUES_GERALUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FIN_CHEQUES_CAIXA_GERAL"."USUARIO"'
    end
  end
  object Exec_Ver_Caixa_Vendedor: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VER_FAT_CAIXA_GERAL_VENDEDOR'
    Left = 224
    Top = 408
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
  object Lista_Formas_GERAL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Lista_Formas_GERALBeforeOpen
    SQL.Strings = (
      'select'
      '    FORMA_PGTO ,'
      '    SEQUENCIA ,'
      '    VALOR_ORIGINAL ,'
      '    JUROS ,'
      '    TIPO_PAGTO ,'
      '    NOME_FORMA ,'
      '    BANCO ,'
      '    CONTA ,'
      '    DV_CONTA ,'
      '    AGENCIA ,'
      '    DV_AGENCIA ,'
      '    CHEQUE ,'
      '    DV_CHEQUE ,'
      '    AVISTA '
      'from'
      'VER_FAT_VENDAS_FRMPAGTO_GERAL'
      '(:CNPJ,  :DATA)'
      'WHERE NOME_FORMA = :TIPO_PAGTO')
    Left = 216
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO_PAGTO'
        ParamType = ptUnknown
      end>
    object Lista_Formas_GERALFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."FORMA_PGTO"'
    end
    object Lista_Formas_GERALSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."SEQUENCIA"'
    end
    object Lista_Formas_GERALVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."VALOR_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Lista_Formas_GERALJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."JUROS"'
      Precision = 18
      Size = 4
    end
    object Lista_Formas_GERALTIPO_PAGTO: TIBStringField
      FieldName = 'TIPO_PAGTO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."TIPO_PAGTO"'
      Size = 30
    end
    object Lista_Formas_GERALNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."NOME_FORMA"'
      Size = 30
    end
    object Lista_Formas_GERALBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Lista_Formas_GERALCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."CONTA"'
    end
    object Lista_Formas_GERALDV_CONTA: TIBStringField
      FieldName = 'DV_CONTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."DV_CONTA"'
      FixedChar = True
      Size = 1
    end
    object Lista_Formas_GERALAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."AGENCIA"'
      Size = 6
    end
    object Lista_Formas_GERALDV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."DV_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object Lista_Formas_GERALCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."CHEQUE"'
      Size = 6
    end
    object Lista_Formas_GERALDV_CHEQUE: TIBStringField
      FieldName = 'DV_CHEQUE'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."DV_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object Lista_Formas_GERALAVISTA: TIBStringField
      FieldName = 'AVISTA'
      Origin = '"VER_FAT_VENDAS_FRMPAGTO_GERAL"."AVISTA"'
      FixedChar = True
      Size = 1
    end
  end
  object Cartao2: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixa_FrentistaAfterClose
    AfterDelete = CartaoAfterDelete
    AfterInsert = CartaoAfterInsert
    AfterPost = CartaoAfterPost
    BeforePost = CartaoBeforePost
    DeleteSQL.Strings = (
      'delete from FIN_MOVIMENTO_CARTAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_MOVIMENTO_CARTAO'
      
        '  (CNPJ, CODIGO, DATA, USUARIO, CONTA, CPF_CNPJ, CLIENTE, REEMBO' +
        'LSO, '
      'ADMINISTRADORA, '
      
        '   VALOR, NUM_CARTAO, NUM_BANCO, NUM_CONTA, CONCILIADO, TIPO_DOC' +
        ', '
      'DOCUMENTO, '
      '   VENDA, PESSOA_FJ, TIPO, NUM_PARCELAS, TAXA, TURNO, '
      'DATA_CONCILIACAO, '
      '   PROCESSADO, CTR_CODIGO, TROCA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :USUARIO, :CONTA, :CPF_CNPJ, :CLIENTE,' +
        ' '
      ':REEMBOLSO, '
      
        '   :ADMINISTRADORA, :VALOR, :NUM_CARTAO, :NUM_BANCO, :NUM_CONTA,' +
        ' '
      ':CONCILIADO, '
      
        '   :TIPO_DOC, :DOCUMENTO, :VENDA, :PESSOA_FJ, :TIPO, :NUM_PARCEL' +
        'AS, '
      ':TAXA, '
      '   :TURNO, :DATA_CONCILIACAO, :PROCESSADO, :CTR_CODIGO, :TROCA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  USUARIO,'
      '  CONTA,'
      '  CPF_CNPJ,'
      '  CLIENTE,'
      '  REEMBOLSO,'
      '  ADMINISTRADORA,'
      '  VALOR,'
      '  NUM_CARTAO,'
      '  NUM_BANCO,'
      '  NUM_CONTA,'
      '  CONCILIADO,'
      '  TIPO_DOC,'
      '  DOCUMENTO,'
      '  VENDA,'
      '  PESSOA_FJ,'
      '  TIPO,'
      '  NUM_PARCELAS,'
      '  TAXA,'
      '  TURNO,'
      '  DATA_CONCILIACAO,'
      '  PROCESSADO,'
      '  CTR_CODIGO,'
      '  TROCA'
      'from FIN_MOVIMENTO_CARTAO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from FIN_MOVIMENTO_CARTAO'
      'WHERE CNPJ = :CNPJ AND CONTA = :CONTA AND'
      'DATA = :DATA AND USUARIO = :USUARIO '
      'AND TURNO = :TURNO')
    ModifySQL.Strings = (
      'update FIN_MOVIMENTO_CARTAO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  USUARIO = :USUARIO,'
      '  CONTA = :CONTA,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  CLIENTE = :CLIENTE,'
      '  REEMBOLSO = :REEMBOLSO,'
      '  ADMINISTRADORA = :ADMINISTRADORA,'
      '  VALOR = :VALOR,'
      '  NUM_CARTAO = :NUM_CARTAO,'
      '  NUM_BANCO = :NUM_BANCO,'
      '  NUM_CONTA = :NUM_CONTA,'
      '  CONCILIADO = :CONCILIADO,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  VENDA = :VENDA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TIPO = :TIPO,'
      '  NUM_PARCELAS = :NUM_PARCELAS,'
      '  TAXA = :TAXA,'
      '  TURNO = :TURNO,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  PROCESSADO = :PROCESSADO,'
      '  CTR_CODIGO = :CTR_CODIGO,'
      '  TROCA = :TROCA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 52
    Top = 48
    object Cartao2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Cartao2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CODIGO"'
      Required = True
    end
    object Cartao2DATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA"'
      Required = True
    end
    object Cartao2USUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."USUARIO"'
      Required = True
    end
    object Cartao2CONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONTA"'
      Required = True
    end
    object Cartao2CPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CPF_CNPJ"'
    end
    object Cartao2CLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CLIENTE"'
      Size = 50
    end
    object Cartao2REEMBOLSO: TDateTimeField
      FieldName = 'REEMBOLSO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."REEMBOLSO"'
    end
    object Cartao2ADMINISTRADORA: TIntegerField
      FieldName = 'ADMINISTRADORA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."ADMINISTRADORA"'
      Required = True
    end
    object Cartao2VALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VALOR"'
    end
    object Cartao2NUM_CARTAO: TIBStringField
      FieldName = 'NUM_CARTAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CARTAO"'
      Required = True
    end
    object Cartao2NUM_BANCO: TIBStringField
      FieldName = 'NUM_BANCO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_BANCO"'
      FixedChar = True
      Size = 3
    end
    object Cartao2NUM_CONTA: TIBStringField
      FieldName = 'NUM_CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CONTA"'
    end
    object Cartao2CONCILIADO: TIBStringField
      FieldName = 'CONCILIADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object Cartao2TIPO_DOC: TIBStringField
      FieldName = 'TIPO_DOC'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object Cartao2DOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DOCUMENTO"'
    end
    object Cartao2VENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VENDA"'
    end
    object Cartao2PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PESSOA_FJ"'
    end
    object Cartao2TIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO"'
      FixedChar = True
      Size = 3
    end
    object Cartao2NUM_PARCELAS: TIntegerField
      FieldName = 'NUM_PARCELAS'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_PARCELAS"'
    end
    object Cartao2TAXA: TFloatField
      FieldName = 'TAXA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TAXA"'
    end
    object Cartao2TURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TURNO"'
    end
    object Cartao2DATA_CONCILIACAO: TDateTimeField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA_CONCILIACAO"'
    end
    object Cartao2PROCESSADO: TIBStringField
      FieldName = 'PROCESSADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object Cartao2CTR_CODIGO: TIntegerField
      FieldName = 'CTR_CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CTR_CODIGO"'
    end
    object Cartao2TROCA: TIntegerField
      FieldName = 'TROCA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TROCA"'
    end
  end
end
