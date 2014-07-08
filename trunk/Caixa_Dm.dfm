object DmCaixa: TDmCaixa
  OldCreateOrder = False
  Left = 374
  Top = 109
  Height = 612
  Width = 947
  object Caixas_Usuario: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    AfterInsert = Caixas_UsuarioAfterInsert
    BeforeOpen = Caixas_UsuarioBeforeOpen
    OnNewRecord = Caixas_UsuarioNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_USUARIOS_CAIXA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  USUARIO = :OLD_USUARIO')
    InsertSQL.Strings = (
      'insert into FAT_USUARIOS_CAIXA'
      
        '  (ATIVO, CAIXA_EXPORADICO, CNPJ, CONTA, CTB_FLUXO_CAIXA, DATA_A' +
        'TIVACAO, '
      '   DATA_DESATIVACAO, TURNO, USR_CAIXA_GERAL, USUARIO)'
      'values'
      
        '  (:ATIVO, :CAIXA_EXPORADICO, :CNPJ, :CONTA, :CTB_FLUXO_CAIXA, :' +
        'DATA_ATIVACAO, '
      '   :DATA_DESATIVACAO, :TURNO, :USR_CAIXA_GERAL, :USUARIO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  TURNO,'
      '  ATIVO,'
      '  DATA_ATIVACAO,'
      '  DATA_DESATIVACAO,'
      '  USR_CAIXA_GERAL,'
      '  CAIXA_EXPORADICO,'
      '  CTB_FLUXO_CAIXA'
      'from FAT_USUARIOS_CAIXA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  USUARIO = :USUARIO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CONTA, '
      '          USUARIO,'
      '          TURNO,'
      '          ATIVO,'
      '          DATA_ATIVACAO,'
      '          DATA_DESATIVACAO,'
      '          USR_CAIXA_GERAL,'
      '          CAIXA_EXPORADICO,'
      'CTB_FLUXO_CAIXA'
      'from FAT_USUARIOS_CAIXA'
      'where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update FAT_USUARIOS_CAIXA'
      'set'
      '  ATIVO = :ATIVO,'
      '  CAIXA_EXPORADICO = :CAIXA_EXPORADICO,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  CTB_FLUXO_CAIXA = :CTB_FLUXO_CAIXA,'
      '  DATA_ATIVACAO = :DATA_ATIVACAO,'
      '  DATA_DESATIVACAO = :DATA_DESATIVACAO,'
      '  TURNO = :TURNO,'
      '  USR_CAIXA_GERAL = :USR_CAIXA_GERAL,'
      '  USUARIO = :USUARIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  USUARIO = :OLD_USUARIO')
    Left = 40
    Top = 24
    object Caixas_UsuarioCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Caixas_UsuarioCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXA"."CONTA"'
      Required = True
    end
    object Caixas_UsuarioUSUARIO: TIntegerField
      Tag = 1
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXA"."USUARIO"'
      Required = True
    end
    object Caixas_UsuarioNome: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = SelUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'USUARIO'
      Size = 50
      Lookup = True
    end
    object Caixas_UsuarioTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_USUARIOS_CAIXA"."TURNO"'
    end
    object Caixas_UsuarioATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"FAT_USUARIOS_CAIXA"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Caixas_UsuarioDATA_ATIVACAO: TDateTimeField
      DisplayLabel = 'Ativa'#231#227'o'
      FieldName = 'DATA_ATIVACAO'
      Origin = '"FAT_USUARIOS_CAIXA"."DATA_ATIVACAO"'
    end
    object Caixas_UsuarioDATA_DESATIVACAO: TDateTimeField
      DisplayLabel = 'Desativa'#231#227'o'
      FieldName = 'DATA_DESATIVACAO'
      Origin = '"FAT_USUARIOS_CAIXA"."DATA_DESATIVACAO"'
    end
    object Caixas_UsuarioUSR_CAIXA_GERAL: TIBStringField
      FieldName = 'USR_CAIXA_GERAL'
      Origin = '"FAT_USUARIOS_CAIXA"."USR_CAIXA_GERAL"'
      FixedChar = True
      Size = 1
    end
    object Caixas_UsuarioCAIXA_EXPORADICO: TIBStringField
      FieldName = 'CAIXA_EXPORADICO'
      Origin = '"FAT_USUARIOS_CAIXA"."CAIXA_EXPORADICO"'
      FixedChar = True
      Size = 1
    end
    object Caixas_UsuarioCTB_FLUXO_CAIXA: TIBStringField
      FieldName = 'CTB_FLUXO_CAIXA'
      Origin = '"FAT_USUARIOS_CAIXA"."CTB_FLUXO_CAIXA"'
      FixedChar = True
      Size = 1
    end
  end
  object DsCaixa: TDataSource
    AutoEdit = False
    DataSet = Caixas_Usuario
    Left = 128
    Top = 24
  end
  object SelUsuario: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CODIGO, LOGIN, NOME, PERFIL, SENHA from SIS_USUARIOS')
    Left = 40
    Top = 136
    object SelUsuarioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      Required = True
    end
    object SelUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object SelUsuarioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelUsuarioPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = '"SIS_USUARIOS"."PERFIL"'
      Required = True
    end
    object SelUsuarioSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_USUARIOS"."SENHA"'
      Required = True
    end
  end
  object Caixas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    AfterInsert = CaixasAfterInsert
    BeforeOpen = Caixas_UsuarioBeforeOpen
    BeforePost = CaixasBeforePost
    OnCalcFields = CaixasCalcFields
    OnNewRecord = CaixasNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_CAIXAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO and'
      '  TURNO = :OLD_TURNO')
    InsertSQL.Strings = (
      'insert into FAT_CAIXAS'
      '  (CHEQUE, CNPJ, CONTA, DATA, DINHEIRO, SALDO_ANTERIOR, TICKET, '
      'USUARIO, '
      '   TROCO_INICIAL, PLANILHA, VENDAS_VISTA, VENDAS_PRAZO, '
      'SALDO_PRAZO, SALDO_VISTA, '
      '   ACRESCIMOS, CARTAO, CHEQUE_PRAZO, DESCONTOS, JUROS, MOEDAS, '
      'NOTAS, OUTRAS_ENTRADAS, '
      
        '   OUTRAS_SAIDAS, PRODUTOS, RECEBIMENTOS, SALDO, SANGRIA, TROCO,' +
        ' '
      'TROCO_VENDAS, '
      '   PAGAMENTOS, SALDO_CHEQUE, SALDO_CHEQUE_CONC_DATA, '
      'SALDO_CONTAS_BANCARIAS, '
      '   SALDO_RECEBER, SALDO_PAGAR, TURNO)'
      'values'
      
        '  (:CHEQUE, :CNPJ, :CONTA, :DATA, :DINHEIRO, :SALDO_ANTERIOR, :T' +
        'ICKET, '
      
        '   :USUARIO, :TROCO_INICIAL, :PLANILHA, :VENDAS_VISTA, :VENDAS_P' +
        'RAZO, '
      ':SALDO_PRAZO, '
      
        '   :SALDO_VISTA, :ACRESCIMOS, :CARTAO, :CHEQUE_PRAZO, :DESCONTOS' +
        ', '
      ':JUROS, '
      
        '   :MOEDAS, :NOTAS, :OUTRAS_ENTRADAS, :OUTRAS_SAIDAS, :PRODUTOS,' +
        ' '
      ':RECEBIMENTOS, '
      '   :SALDO, :SANGRIA, :TROCO, :TROCO_VENDAS, :PAGAMENTOS, '
      ':SALDO_CHEQUE, '
      '   :SALDO_CHEQUE_CONC_DATA, :SALDO_CONTAS_BANCARIAS, '
      ':SALDO_RECEBER, :SALDO_PAGAR, '
      '   :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  TURNO,'
      '  DATA,'
      '  FECHADO,'
      '  SALDO,'
      '  SALDO_ANTERIOR,'
      '  DINHEIRO,'
      '  TICKET,'
      '  CHEQUE,'
      '  CARTAO,'
      '  TROCO,'
      '  SANGRIA,'
      '  DESCONTOS,'
      '  ACRESCIMOS,'
      '  JUROS,'
      '  NOTAS,'
      '  PRODUTOS,'
      '  RECEBIMENTOS,'
      '  MOEDAS,'
      '  CHEQUE_PRAZO,'
      '  OUTRAS_ENTRADAS,'
      '  OUTRAS_SAIDAS,'
      '  TROCO_INICIAL,'
      '  HAVER,'
      '  BAIXA_HAVER,'
      '  PLANILHA,'
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
      '  DESCONTOS_PRODUTOS_BOMBA,'
      '  SALDO_FINAL_ESTOQUE'
      'from FAT_CAIXAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  DATA = :DATA and'
      '  USUARIO = :USUARIO and'
      '  TURNO = :TURNO')
    SelectSQL.Strings = (
      'select CHEQUE, '
      '          CNPJ, '
      '          CONTA, '
      '          DATA, '
      '          DINHEIRO, '
      '          SALDO_ANTERIOR, '
      '          TICKET, '
      '          USUARIO,'
      '          TROCO_INICIAL,'
      '          PLANILHA,'
      '          VENDAS_VISTA,'
      '          VENDAS_PRAZO ,'
      '          SALDO_PRAZO,'
      '          SALDO_VISTA, '
      '          ACRESCIMOS, '
      '          CARTAO, '
      '          CHEQUE_PRAZO, '
      '          DESCONTOS, '
      '          JUROS, '
      '          MOEDAS, '
      '          NOTAS, '
      '          OUTRAS_ENTRADAS, '
      '          OUTRAS_SAIDAS, '
      '          PRODUTOS, '
      '          RECEBIMENTOS, '
      '          SALDO, '
      '          SANGRIA, '
      '          TROCO, '
      '          TROCO_VENDAS,'
      '          PAGAMENTOS,'
      '          SALDO_CHEQUE,'
      '          SALDO_CHEQUE_CONC_DATA,'
      '          SALDO_CONTAS_BANCARIAS,'
      '          SALDO_RECEBER,'
      '          SALDO_PAGAR,'
      '          TURNO'
      'from FAT_CAIXAS'
      'where CNPJ = :CNPJ AND FECHADO = :ESTADO AND DATA = :DATA'
      'AND USUARIO = :USR AND TURNO = :TURNO')
    ModifySQL.Strings = (
      'update FAT_CAIXAS'
      'set'
      '  CHEQUE = :CHEQUE,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  DINHEIRO = :DINHEIRO,'
      '  SALDO_ANTERIOR = :SALDO_ANTERIOR,'
      '  TICKET = :TICKET,'
      '  USUARIO = :USUARIO,'
      '  TROCO_INICIAL = :TROCO_INICIAL,'
      '  PLANILHA = :PLANILHA,'
      '  VENDAS_VISTA = :VENDAS_VISTA,'
      '  VENDAS_PRAZO = :VENDAS_PRAZO,'
      '  SALDO_PRAZO = :SALDO_PRAZO,'
      '  SALDO_VISTA = :SALDO_VISTA,'
      '  ACRESCIMOS = :ACRESCIMOS,'
      '  CARTAO = :CARTAO,'
      '  CHEQUE_PRAZO = :CHEQUE_PRAZO,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROS = :JUROS,'
      '  MOEDAS = :MOEDAS,'
      '  NOTAS = :NOTAS,'
      '  OUTRAS_ENTRADAS = :OUTRAS_ENTRADAS,'
      '  OUTRAS_SAIDAS = :OUTRAS_SAIDAS,'
      '  PRODUTOS = :PRODUTOS,'
      '  RECEBIMENTOS = :RECEBIMENTOS,'
      '  SALDO = :SALDO,'
      '  SANGRIA = :SANGRIA,'
      '  TROCO = :TROCO,'
      '  TROCO_VENDAS = :TROCO_VENDAS,'
      '  PAGAMENTOS = :PAGAMENTOS,'
      '  SALDO_CHEQUE = :SALDO_CHEQUE,'
      '  SALDO_CHEQUE_CONC_DATA = :SALDO_CHEQUE_CONC_DATA,'
      '  SALDO_CONTAS_BANCARIAS = :SALDO_CONTAS_BANCARIAS,'
      '  SALDO_RECEBER = :SALDO_RECEBER,'
      '  SALDO_PAGAR = :SALDO_PAGAR,'
      '  TURNO = :TURNO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO and'
      '  TURNO = :OLD_TURNO')
    Left = 46
    Top = 82
    object CaixasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CaixasCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_CAIXAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXAS"."CONTA"'
      Required = True
    end
    object CaixasDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_CAIXAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasTICKET: TFloatField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"FAT_CAIXAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO_ANTERIOR: TFloatField
      DisplayLabel = 'Saldo Ant.'
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"FAT_CAIXAS"."SALDO_ANTERIOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXAS"."USUARIO"'
      Required = True
      OnValidate = CaixasUSUARIOValidate
    end
    object CaixasDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_CAIXAS"."DATA"'
      OnValidate = CaixasDATAValidate
    end
    object CaixasNome: TStringField
      Tag = 1
      FieldKind = fkLookup
      FieldName = 'Nome'
      LookupDataSet = SelUsuario
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'USUARIO'
      Size = 50
      Lookup = True
    end
    object CaixasTROCO_INICIAL: TFloatField
      DisplayLabel = 'Troco Inicial'
      FieldName = 'TROCO_INICIAL'
      Origin = '"FAT_CAIXAS"."TROCO_INICIAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FAT_CAIXAS"."PLANILHA"'
    end
    object CaixasVENDAS_VISTA: TFloatField
      FieldName = 'VENDAS_VISTA'
      Origin = '"FAT_CAIXAS"."VENDAS_VISTA"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasVENDAS_PRAZO: TFloatField
      FieldName = 'VENDAS_PRAZO'
      Origin = '"FAT_CAIXAS"."VENDAS_PRAZO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO_PRAZO: TFloatField
      FieldName = 'SALDO_PRAZO'
      Origin = '"FAT_CAIXAS"."SALDO_PRAZO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO_VISTA: TFloatField
      FieldName = 'SALDO_VISTA'
      Origin = '"FAT_CAIXAS"."SALDO_VISTA"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasACRESCIMOS: TFloatField
      FieldName = 'ACRESCIMOS'
      Origin = '"FAT_CAIXAS"."ACRESCIMOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasCARTAO: TFloatField
      FieldName = 'CARTAO'
      Origin = '"FAT_CAIXAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasCHEQUE_PRAZO: TFloatField
      FieldName = 'CHEQUE_PRAZO'
      Origin = '"FAT_CAIXAS"."CHEQUE_PRAZO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FAT_CAIXAS"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FAT_CAIXAS"."JUROS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasMOEDAS: TFloatField
      FieldName = 'MOEDAS'
      Origin = '"FAT_CAIXAS"."MOEDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasNOTAS: TFloatField
      FieldName = 'NOTAS'
      Origin = '"FAT_CAIXAS"."NOTAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasOUTRAS_ENTRADAS: TFloatField
      FieldName = 'OUTRAS_ENTRADAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_ENTRADAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasOUTRAS_SAIDAS: TFloatField
      FieldName = 'OUTRAS_SAIDAS'
      Origin = '"FAT_CAIXAS"."OUTRAS_SAIDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasPRODUTOS: TFloatField
      FieldName = 'PRODUTOS'
      Origin = '"FAT_CAIXAS"."PRODUTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasRECEBIMENTOS: TFloatField
      FieldName = 'RECEBIMENTOS'
      Origin = '"FAT_CAIXAS"."RECEBIMENTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = '"FAT_CAIXAS"."SALDO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSANGRIA: TFloatField
      FieldName = 'SANGRIA'
      Origin = '"FAT_CAIXAS"."SANGRIA"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"FAT_CAIXAS"."TROCO"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasTROCO_VENDAS: TFloatField
      FieldName = 'TROCO_VENDAS'
      Origin = '"FAT_CAIXAS"."TROCO_VENDAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasPAGAMENTOS: TFloatField
      FieldName = 'PAGAMENTOS'
      Origin = '"FAT_CAIXAS"."PAGAMENTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasENTRADAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ENTRADAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object CaixasSAIDAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SAIDAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object CaixasDiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object CaixasSALDO_CHEQUE: TFloatField
      FieldName = 'SALDO_CHEQUE'
      Origin = '"FAT_CAIXAS"."SALDO_CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO_CHEQUE_CONC_DATA: TFloatField
      FieldName = 'SALDO_CHEQUE_CONC_DATA'
      Origin = '"FAT_CAIXAS"."SALDO_CHEQUE_CONC_DATA"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO_CONTAS_BANCARIAS: TFloatField
      FieldName = 'SALDO_CONTAS_BANCARIAS'
      Origin = '"FAT_CAIXAS"."SALDO_CONTAS_BANCARIAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object CaixasSALDO_RECEBER: TFloatField
      FieldName = 'SALDO_RECEBER'
      Origin = '"FAT_CAIXAS"."SALDO_RECEBER"'
    end
    object CaixasSALDO_PAGAR: TFloatField
      FieldName = 'SALDO_PAGAR'
      Origin = '"FAT_CAIXAS"."SALDO_PAGAR"'
    end
    object CaixasTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_CAIXAS"."TURNO"'
      OnValidate = CaixasTURNOValidate
    end
    object Caixas_Produtos: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Produtos'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixas_Notas: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Notas'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixas_Entradas: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Entradas'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixas_Saidas: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Saidas'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixas_Diferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Diferenca'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object Saldo_Caixa: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SALDO_CAIXA'
    Left = 216
    Top = 80
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
  object Pagas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    SQL.Strings = (
      'select '
      '    CODIGO ,'
      '    ANO ,'
      '    CODIGO_PG ,'
      '    ANO_PG ,'
      '    PESSOA_FJ ,'
      '    DT_BAIXA ,'
      '    DT_EMISSAO,'
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
      '    DT_AVISO,'
      '    NOME,'
      '    CPF_CGC'
      
        'from VER_BAIXA_PAGAR_CAIXA ( :CNPJ, :DATA, :USUARIO, :TURNO, :CO' +
        'NTA )')
    Left = 40
    Top = 192
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
    object PagasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CODIGO"'
    end
    object PagasANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ANO"'
    end
    object PagasCODIGO_PG: TIntegerField
      DisplayLabel = 'Pagar'
      FieldName = 'CODIGO_PG'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CODIGO_PG"'
    end
    object PagasANO_PG: TIntegerField
      FieldName = 'ANO_PG'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ANO_PG"'
    end
    object PagasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Forn'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PESSOA_FJ"'
    end
    object PagasDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_BAIXA"'
    end
    object PagasDT_EMISSAO: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_EMISSAO"'
    end
    object PagasDT_VENCTO: TDateField
      DisplayLabel = 'Dt Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_VENCTO"'
    end
    object PagasDT_LANCTO: TDateField
      DisplayLabel = 'Dt Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_LANCTO"'
    end
    object PagasDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DOCTO"'
    end
    object PagasPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object PagasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."HISTORICO"'
      Size = 100
    end
    object PagasHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."HISTORICO_BX"'
      Size = 100
    end
    object PagasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object PagasVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object PagasDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object PagasVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr Parciais'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object PagasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object PagasJUROS_PAG: TIBBCDField
      DisplayLabel = 'Juros Pagos'
      FieldName = 'JUROS_PAG'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."JUROS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object PagasDESCONTOS_PAG: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_PAG'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DESCONTOS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object PagasTAXA_JUROS: TIBBCDField
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object PagasBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object PagasTIPO_JUROS: TIBStringField
      FieldName = 'TIPO_JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object PagasORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object PagasCODIGO_ENT: TIntegerField
      FieldName = 'CODIGO_ENT'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CODIGO_ENT"'
    end
    object PagasPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PLANILHA"'
    end
    object PagasANO_ENT: TIntegerField
      FieldName = 'ANO_ENT'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ANO_ENT"'
    end
    object PagasAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."AVISO"'
    end
    object PagasDT_AVISO: TDateField
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_AVISO"'
    end
    object PagasNOME: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."NOME"'
      Size = 50
    end
    object PagasCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CPF_CGC"'
      Size = 15
    end
  end
  object Recebidas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    SQL.Strings = (
      'select '
      '    CODIGO ,'
      '    ANO ,'
      '    CODIGO_CR ,'
      '    ANO_CR ,'
      '    PESSOA_FJ ,'
      '    DT_BAIXA ,'
      '    DT_EMISSAO,'
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
      '    JUROS_REC ,'
      '    DESCONTOS_REC ,'
      '    TAXA_JUROS ,'
      '    BOLETO ,'
      '    TIPO_JUROS ,'
      '    ORIGEM ,'
      '    CODIGO_VN, '
      '    ANO_VN,'
      '    PLANILHA ,'
      '    AVISO ,'
      '    DT_AVISO,'
      '    NOME,'
      '    CPF_CGC,'
      '    FATURA'
      
        'from VER_BAIXA_RECEBER_CAIXA ( :CNPJ, :DATA, :USUARIO, :TURNO, :' +
        'CONTA )'
      'Where ( FATURA IS NULL ) OR ( FATURA = 0 )'
      'Order by NOME, PESSOA_FJ')
    Left = 40
    Top = 248
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
    object RecebidasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CODIGO"'
    end
    object RecebidasANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ANO"'
    end
    object RecebidasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cli'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PESSOA_FJ"'
    end
    object RecebidasDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_BAIXA"'
    end
    object RecebidasDT_EMISSAO: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_EMISSAO"'
    end
    object RecebidasDT_VENCTO: TDateField
      DisplayLabel = 'Dt Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_VENCTO"'
    end
    object RecebidasDT_LANCTO: TDateField
      DisplayLabel = 'Dt Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_LANCTO"'
    end
    object RecebidasDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DOCTO"'
    end
    object RecebidasPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object RecebidasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."HISTORICO"'
      Size = 100
    end
    object RecebidasHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."HISTORICO_BX"'
      Size = 100
    end
    object RecebidasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RecebidasVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RecebidasDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RecebidasVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr Parciais'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RecebidasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RecebidasTAXA_JUROS: TIBBCDField
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object RecebidasBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object RecebidasTIPO_JUROS: TIBStringField
      FieldName = 'TIPO_JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object RecebidasORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object RecebidasPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PLANILHA"'
    end
    object RecebidasAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."AVISO"'
    end
    object RecebidasDT_AVISO: TDateField
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_AVISO"'
    end
    object RecebidasNOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."NOME"'
      Size = 50
    end
    object RecebidasCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object RecebidasCODIGO_CR: TIntegerField
      DisplayLabel = 'Cod'
      FieldName = 'CODIGO_CR'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."CODIGO_CR"'
    end
    object RecebidasANO_CR: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."ANO_CR"'
    end
    object RecebidasJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RecebidasDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."DESCONTOS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object RecebidasCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."CODIGO_VN"'
    end
    object RecebidasANO_VN: TIntegerField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."ANO_VN"'
    end
    object RecebidasFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."FATURA"'
    end
  end
  object Vendas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    OnCalcFields = VendasCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO,'
      '    HISTORICO,'
      '    PESSOA_FJ,'
      '    VENDEDOR,'
      '    NATUREZA ,'
      '    FORMA_PGTO,'
      '    NUM_NF,'
      '    NUM_CUPOM,'
      '    PROPRIEDADE,'
      '    CONVENIADO,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA,'
      '    DESC_ACRES,'
      '    ENTRADA,'
      '    DINHEIRO,'
      '    CHEQUE,'
      '    CARTAO,'
      '    TICKET,'
      '    TOTAL,'
      '    OBSERVACAO,'
      '    VLR_PARC_LC,'
      '    TERCEIRO,'
      '    CARGA,'
      '    VOLUME ,'
      '    PESO,'
      '    REQUISICAO,'
      '    TIPO_VENDA,'
      '    NOME_CONSUMIDOR,'
      '    NOME,'
      '    TROCO,'
      '    ORCAMENTO,'
      '    MOV_CAIXA'
      'from VER_FAT_VENDAS_CAIXA ( :CNPJ , :DATA, :USUARIO, :TURNO )'
      'order by CODIGO')
    Left = 216
    Top = 136
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
    object VendasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CODIGO"'
    end
    object VendasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."HISTORICO"'
      Size = 100
    end
    object VendasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cli'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESSOA_FJ"'
    end
    object VendasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VENDEDOR"'
    end
    object VendasNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NATUREZA"'
    end
    object VendasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."FORMA_PGTO"'
    end
    object VendasNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_NF"'
    end
    object VendasNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_CUPOM"'
    end
    object VendasPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PROPRIEDADE"'
    end
    object VendasCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CONVENIADO"'
    end
    object VendasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VendasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."LOCAL_COBRANCA"'
    end
    object VendasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233's'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."OBSERVACAO"'
      Size = 80
    end
    object VendasVLR_PARC_LC: TIBBCDField
      DisplayLabel = 'Vlr Parcelar'
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasTERCEIRO: TIntegerField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TERCEIRO"'
    end
    object VendasCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARGA"'
      DisplayFormat = '###,###,##0.00'
    end
    object VendasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasREQUISICAO: TIBStringField
      DisplayLabel = 'Req'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."REQUISICAO"'
      Size = 6
    end
    object VendasTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object VendasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object VendasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME"'
      Size = 50
    end
    object VendasORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ORCAMENTO"'
    end
    object VendasLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasAVISTA: TFloatField
      DisplayLabel = 'A Vista'
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasAPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VendasTROCO: TIBBCDField
      DisplayLabel = 'Troco'
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasMOV_CAIXA: TIBStringField
      FieldName = 'MOV_CAIXA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."MOV_CAIXA"'
      FixedChar = True
      Size = 1
    end
  end
  object Valores_Caixa: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'SOMA_VALORES_VENDAS'
    Left = 216
    Top = 192
    ParamData = <
      item
        DataType = ftBCD
        Name = 'DINHEIRO'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'CARTAO'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'TICKET'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'CHEQUE'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'PRAZO'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'TROCO'
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
      end>
  end
  object Movimentos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
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
        ', '
      'PESSOA_FJ, '
      '   NOME, TURNO, CONTRA_PARTIDA, NOME_CONTRAPARTIDA, '
      'CENTRO_CUSTO)'
      'values'
      
        '  (:CNPJ, :CONTA, :DATA, :DOCUMENTO, :HISTORICO, :USUARIO, :VALO' +
        'R, :TIPO, '
      
        '   :PESSOA_FJ, :NOME, :TURNO, :CONTRA_PARTIDA, :NOME_CONTRAPARTI' +
        'DA, '
      ':CENTRO_CUSTO)')
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
      '  TURNO,'
      '  PLANILHA,'
      '  JUROS,'
      '  DESCONTOS,'
      '  CENTRO_CUSTO'
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
      '          PESSOA_FJ,'
      '          NOME,'
      '          TURNO,'
      '           contra_partida,'
      '          nome_contrapartida,'
      '          CENTRO_CUSTO'
      'from FAT_CAIXAS_MOVIMENTOS'
      'WHERE CNPJ = :CNPJ AND CONTA = :CONTA AND'
      'DATA = :DATA AND USUARIO = :USUARIO AND'
      'TURNO = :TURNO')
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
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  NOME = :NOME,'
      '  TURNO = :TURNO,'
      '  CONTRA_PARTIDA = :CONTRA_PARTIDA,'
      '  NOME_CONTRAPARTIDA = :NOME_CONTRAPARTIDA,'
      '  CENTRO_CUSTO = :CENTRO_CUSTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  DOCUMENTO = :OLD_DOCUMENTO and'
      '  USUARIO = :OLD_USUARIO')
    Left = 128
    Top = 80
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
    object MovimentosPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."PESSOA_FJ"'
      OnValidate = MovimentosPESSOA_FJValidate
    end
    object MovimentosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."NOME"'
      Size = 50
    end
    object MovimentosTURNO: TSmallintField
      FieldName = 'TURNO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."TURNO"'
      Required = True
    end
    object MovimentosNOME_CONTRAPARTIDA: TIBStringField
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object MovimentosCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."CONTRA_PARTIDA"'
    end
    object MovimentosCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."CENTRO_CUSTO"'
    end
  end
  object FecharCaixa: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'FECHAR_CAIXA'
    Left = 216
    Top = 248
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ACEITE'
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
      end
      item
        DataType = ftBCD
        Name = 'SALDO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'PLANILHA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VISTA'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'PRAZO'
        ParamType = ptInput
      end>
  end
  object Saidas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '         DOCUMENTO, '
      '         HISTORICO, '
      '         VALOR,'
      '         TIPO,'
      '         PESSOA_FJ,'
      '         NOME '
      'from FAT_CAIXAS_MOVIMENTOS'
      'WHERE CNPJ = :CNPJ AND '
      'DATA = :DATA AND'
      'USUARIO = :USUARIO AND'
      'CONTA = :CONTA AND'
      'TURNO = :TURNO')
    Left = 128
    Top = 136
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
    object SaidasDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."DOCUMENTO"'
      Required = True
    end
    object SaidasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."HISTORICO"'
      Size = 100
    end
    object SaidasVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object SaidasTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."TIPO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SaidasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."PESSOA_FJ"'
    end
    object SaidasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."NOME"'
      Size = 50
    end
  end
  object Vendas_Agrupadas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    OnCalcFields = Vendas_AgrupadasCalcFields
    SQL.Strings = (
      'SELECT '
      '    VENDEDOR   ,'
      '    NOME       ,'
      '    DESC_ACRES ,'
      '    ENTRADA    ,'
      '    DINHEIRO   ,'
      '    CHEQUE     ,'
      '    CARTAO     ,'
      '    TICKET       ,'
      '    TROCO       ,'
      '    TOTAL        ,'
      '    COM_VISTA ,'
      '    COM_PRAZO'
      'from VER_FAT_VENDAS_CAIXA_AGRUPADA'
      '('
      '    :CNPJ,'
      '    :DATA ,'
      '    :USUARIO,'
      '    :TURNO'
      ')')
    Left = 304
    Top = 24
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
    object Vendas_AgrupadasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."VENDEDOR"'
    end
    object Vendas_AgrupadasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."NOME"'
      Size = 50
    end
    object Vendas_AgrupadasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasTROCO: TIBBCDField
      DisplayLabel = 'Tr'#244'co'
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasAVISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_AgrupadasAPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_AgrupadasLiquido: TFloatField
      DisplayLabel = 'L'#237'quido'
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_AgrupadasCOM_VISTA: TIBBCDField
      DisplayLabel = '% Vista'
      FieldName = 'COM_VISTA'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."COM_VISTA"'
      DisplayFormat = '% ##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasCOM_PRAZO: TIBBCDField
      DisplayLabel = '% Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"VER_FAT_VENDAS_CAIXA_AGRUPADA"."COM_PRAZO"'
      DisplayFormat = '% ##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AgrupadasCOMISSAO_VISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMISSAO_VISTA'
      Calculated = True
    end
    object Vendas_AgrupadasCOMISSAO_PRAZO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'COMISSAO_PRAZO'
      Calculated = True
    end
  end
  object Troco_Inicial: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'TROCO_CAIXA'
    Left = 304
    Top = 80
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
  object SelPessoasFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Caixas_UsuarioBeforeOpen
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
    Left = 304
    Top = 128
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
    Left = 304
    Top = 181
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
  object Lista_Produtos_Caixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      'PRODUTO,'
      'NOME       ,'
      'TOTAL ,'
      'QUANTIDADE_EXPOSTA,'
      'QUANTIDADE,'
      'DESCONTOS     '
      'FROM  LISTA_PRODUTOS_CAIXA'
      '( :CNPJ, :DATA, :USUARIO, :TURNO )')
    Left = 304
    Top = 240
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
    object Lista_Produtos_CaixaNOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"LISTA_PRODUTOS_CAIXA"."PRODUTO"'
      Size = 50
    end
    object Lista_Produtos_CaixaTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"LISTA_PRODUTOS_CAIXA"."TOTAL"'
      DisplayFormat = '###,##0.00'
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
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_CaixaQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"LISTA_PRODUTOS_CAIXA"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_Produtos_CaixaDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"LISTA_PRODUTOS_CAIXA"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SALDO_CONTAS_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      ' CONTA ,'
      ' NOME  ,'
      ' SOMAC ,'
      ' SOMAD '
      'FROM SALDO_CONTA_CAIXA'
      '( :CNPJ, :DATA )'
      'ORDER BY NOME')
    Left = 424
    Top = 24
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
    object SALDO_CONTAS_CAIXACONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"SALDO_CONTA_CAIXA"."CONTA"'
    end
    object SALDO_CONTAS_CAIXANOME: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"SALDO_CONTA_CAIXA"."NOME"'
      Size = 50
    end
    object SALDO_CONTAS_CAIXASOMAC: TIBBCDField
      FieldName = 'SOMAC'
      Origin = '"SALDO_CONTA_CAIXA"."SOMAC"'
      Precision = 18
      Size = 4
    end
    object SALDO_CONTAS_CAIXASOMAD: TIBBCDField
      FieldName = 'SOMAD'
      Origin = '"SALDO_CONTA_CAIXA"."SOMAD"'
      Precision = 18
      Size = 4
    end
  end
  object ACOMPANHAMENTO_VENDAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      'CAIXA,'
      'VALOR'
      'FROM ACOMPANHAMENTO_VENDAS'
      '( :CNPJ, :DATA )'
      'ORDER BY CAIXA')
    Left = 424
    Top = 80
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
    object ACOMPANHAMENTO_VENDASCAIXA: TDateTimeField
      DisplayLabel = 'Caixa'
      FieldName = 'CAIXA'
      Origin = '"ACOMPANHAMENTO_VENDAS"."CAIXA"'
    end
    object ACOMPANHAMENTO_VENDASVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"ACOMPANHAMENTO_VENDAS"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
  end
  object PROXIMO_TURNO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'PROXIMO_TURNO'
    Left = 424
    Top = 128
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
  object Trocas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = TrocasCalcFields
    SQL.Strings = (
      'SELECT'
      '    PESSOA_FJ ,'
      '    CODIGO ,'
      '    DATA ,'
      '    VALIDADE ,'
      '    TOTAL ,'
      '    TOTAL_2 ,'
      '    ENVIADA_CX ,'
      '    FECHADO ,'
      '    OBSERVACAO ,'
      '    NOME_RAZAO ,'
      '    NOME_FORMA ,'
      '    NOME_VENDEDOR ,'
      '    VENDEDOR ,'
      '    VLR_TOTAL ,'
      '    VLR_TOTAL_2 ,'
      '    DESC_ACRESC ,'
      '    DESC_ACRESC_2 ,'
      '    CLIENTE ,'
      '    PESO ,'
      '    VOLUME ,'
      '    FORMA ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET '
      'FROM VER_FAT_TROCAS'
      '( :CNPJ, :TROCA )'
      'WHERE DATA_CAIXA = :DATA AND USUARIO = :USUARIO AND'
      'TURNO = :TURNO AND FECHADO = :OP'
      'ORDER BY CODIGO')
    Left = 424
    Top = 184
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TROCA'
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
        Name = 'OP'
        ParamType = ptUnknown
      end>
    object TrocasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_TROCAS"."PESSOA_FJ"'
    end
    object TrocasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_TROCAS"."CODIGO"'
    end
    object TrocasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_TROCAS"."DATA"'
    end
    object TrocasVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"VER_FAT_TROCAS"."VALIDADE"'
    end
    object TrocasTOTAL: TIBBCDField
      DisplayLabel = 'Total Ent'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_TROCAS"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasTOTAL_2: TIBBCDField
      DisplayLabel = 'Total Sai'
      FieldName = 'TOTAL_2'
      Origin = '"VER_FAT_TROCAS"."TOTAL_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasENVIADA_CX: TIBStringField
      DisplayLabel = 'Env. Caixa'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object TrocasFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"VER_FAT_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object TrocasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object TrocasNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FAT_TROCAS"."NOME_RAZAO"'
      Size = 50
    end
    object TrocasNOME_FORMA: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object TrocasNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object TrocasVENDEDOR: TIntegerField
      DisplayLabel = 'Vend'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."VENDEDOR"'
    end
    object TrocasVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Entradas'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_FAT_TROCAS"."VLR_TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasVLR_TOTAL_2: TIBBCDField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'VLR_TOTAL_2'
      Origin = '"VER_FAT_TROCAS"."VLR_TOTAL_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasDESC_ACRESC: TIBBCDField
      DisplayLabel = 'Desc. Entradas'
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasDESC_ACRESC_2: TIBBCDField
      DisplayLabel = 'Desc. Sa'#237'das'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"VER_FAT_TROCAS"."CLIENTE"'
      Size = 30
    end
    object TrocasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_TROCAS"."PESO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_TROCAS"."VOLUME"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasFORMA: TIntegerField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA'
      Origin = '"VER_FAT_TROCAS"."FORMA"'
    end
    object TrocasENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_TROCAS"."ENTRADA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_TROCAS"."DINHEIRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_TROCAS"."CHEQUE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_TROCAS"."CARTAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_TROCAS"."TICKET"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object TrocasAVISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '##0.00'
      Calculated = True
    end
    object TrocasAPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object TrocasLIQUIDO: TFloatField
      DisplayLabel = 'Liquido'
      FieldKind = fkCalculated
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object ULTIMO_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '             DATA,'
      '             TURNO'
      'FROM ULTIMO_CAIXA'
      '( :CNPJ, :USUARIO, :CONTA, :D )')
    Left = 208
    Top = 24
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
        Name = 'D'
        ParamType = ptUnknown
      end>
    object ULTIMO_CAIXADATA: TDateField
      FieldName = 'DATA'
      Origin = '"ULTIMO_CAIXA"."DATA"'
    end
    object ULTIMO_CAIXATURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"ULTIMO_CAIXA"."TURNO"'
    end
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
    Left = 424
    Top = 240
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
  object ChequesReceber: TIBQuery
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
      'FROM VER_FIN_CHEQUES_CAIXA_RECEBER'
      '(:CNPJ, :DATA, :USUARIO )')
    Left = 552
    Top = 24
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
      end>
    object ChequesReceberBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object ChequesReceberCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONTA"'
      Size = 15
    end
    object ChequesReceberCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CHEQUE"'
      Size = 6
    end
    object ChequesReceberVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VENDA"'
    end
    object ChequesReceberEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."EMISSAO"'
    end
    object ChequesReceberPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PRE_DATE"'
    end
    object ChequesReceberVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceberJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceberCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object ChequesReceberPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PESSOA_FJ"'
    end
    object ChequesReceberHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."HISTORICO"'
      Size = 100
    end
    object ChequesReceberAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."AGENCIA"'
      Size = 6
    end
    object ChequesReceberNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."NOME"'
      Size = 50
    end
    object ChequesReceberFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FONE"'
    end
    object ChequesReceberFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FAX"'
    end
    object ChequesReceberCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CELULAR"'
    end
    object ChequesReceberCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object ChequesReceberDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CONCILIACAO"'
    end
    object ChequesReceberMOEDA1: TIBBCDField
      DisplayLabel = 'Moeda 1'
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA1"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceberMOEDA2: TIBBCDField
      DisplayLabel = 'Moeda 2'
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceberTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object ChequesReceberDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_ACERTO"'
    end
    object ChequesReceberDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_DEVOLUCAO"'
    end
    object ChequesReceberCODIGO_MOTIVO_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'CODIGO_MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CODIGO_MOTIVO_DEVOLUCAO"'
    end
    object ChequesReceberVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Vezes'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VEZES_DEVOLUCAO"'
    end
    object ChequesReceberPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PLANILHA"'
    end
    object ChequesReceberDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig. Ag'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object ChequesReceberDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Chq'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object ChequesReceberDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CAIXA"'
    end
  end
  object Caixa_Resumo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    OnCalcFields = Caixa_ResumoCalcFields
    OnNewRecord = Caixa_ResumoNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_CAIXAS_RESUMO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA')
    InsertSQL.Strings = (
      'insert into FAT_CAIXAS_RESUMO'
      
        '  (CNPJ, DATA, CAIXAS, ENTRADAS, CHEQUE_DEVOLVIDO, CHEQUE_PRAZO_' +
        'ENT, DINHEIRO, '
      
        '   CHEQUE_VISTA, SAIDAS, CHEQUE_PRAZO_SAI, MOEDAS, FECHADO, NOME' +
        ')'
      'values'
      
        '  (:CNPJ, :DATA, :CAIXAS, :ENTRADAS, :CHEQUE_DEVOLVIDO, :CHEQUE_' +
        'PRAZO_ENT, '
      
        '   :DINHEIRO, :CHEQUE_VISTA, :SAIDAS, :CHEQUE_PRAZO_SAI, :MOEDAS' +
        ', :FECHADO, '
      '   :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  DATA,'
      '  CAIXAS,'
      '  ENTRADAS,'
      '  CHEQUE_DEVOLVIDO,'
      '  CHEQUE_PRAZO_ENT,'
      '  DINHEIRO,'
      '  CHEQUE_VISTA,'
      '  SAIDAS,'
      '  CHEQUE_PRAZO_SAI,'
      '  MOEDAS,'
      '  FECHADO,'
      '  PLANILHA,'
      '  NOME'
      'from FAT_CAIXAS_RESUMO '
      'where'
      '  CNPJ = :CNPJ and'
      '  DATA = :DATA')
    SelectSQL.Strings = (
      'SELECT'
      '    CNPJ              ,'
      '    DATA             ,'
      '    CAIXAS          ,'
      '    ENTRADAS   ,'
      '    CHEQUE_DEVOLVIDO ,'
      '    CHEQUE_PRAZO_ENT,'
      '    DINHEIRO          ,'
      '    CHEQUE_VISTA,'
      '    SAIDAS            ,'
      '    CHEQUE_PRAZO_SAI,'
      '    MOEDAS ,'
      '    FECHADO,'
      '    NOME           '
      'from FAT_CAIXAS_RESUMO'
      'Where DATA = :DATA')
    ModifySQL.Strings = (
      'update FAT_CAIXAS_RESUMO'
      'set'
      '  CNPJ = :CNPJ,'
      '  DATA = :DATA,'
      '  CAIXAS = :CAIXAS,'
      '  ENTRADAS = :ENTRADAS,'
      '  CHEQUE_DEVOLVIDO = :CHEQUE_DEVOLVIDO,'
      '  CHEQUE_PRAZO_ENT = :CHEQUE_PRAZO_ENT,'
      '  DINHEIRO = :DINHEIRO,'
      '  CHEQUE_VISTA = :CHEQUE_VISTA,'
      '  SAIDAS = :SAIDAS,'
      '  CHEQUE_PRAZO_SAI = :CHEQUE_PRAZO_SAI,'
      '  MOEDAS = :MOEDAS,'
      '  FECHADO = :FECHADO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA')
    Left = 552
    Top = 80
    object Caixa_ResumoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXAS_RESUMO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Caixa_ResumoCAIXAS: TFloatField
      DisplayLabel = 'Caixas'
      FieldName = 'CAIXAS'
      Origin = '"FAT_CAIXAS_RESUMO"."CAIXAS"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoENTRADAS: TFloatField
      DisplayLabel = 'Entradas'
      FieldName = 'ENTRADAS'
      Origin = '"FAT_CAIXAS_RESUMO"."ENTRADAS"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoCHEQUE_DEVOLVIDO: TFloatField
      DisplayLabel = 'Chq Devolvido'
      FieldName = 'CHEQUE_DEVOLVIDO'
      Origin = '"FAT_CAIXAS_RESUMO"."CHEQUE_DEVOLVIDO"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoCHEQUE_PRAZO_ENT: TFloatField
      DisplayLabel = 'Chq Prazo Ent'
      FieldName = 'CHEQUE_PRAZO_ENT'
      Origin = '"FAT_CAIXAS_RESUMO"."CHEQUE_PRAZO_ENT"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoDINHEIRO: TFloatField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"FAT_CAIXAS_RESUMO"."DINHEIRO"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoCHEQUE_VISTA: TFloatField
      DisplayLabel = 'Chq Vista'
      FieldName = 'CHEQUE_VISTA'
      Origin = '"FAT_CAIXAS_RESUMO"."CHEQUE_VISTA"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoSAIDAS: TFloatField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'SAIDAS'
      Origin = '"FAT_CAIXAS_RESUMO"."SAIDAS"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoCHEQUE_PRAZO_SAI: TFloatField
      DisplayLabel = 'Chq Prazo Sai'
      FieldName = 'CHEQUE_PRAZO_SAI'
      Origin = '"FAT_CAIXAS_RESUMO"."CHEQUE_PRAZO_SAI"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoMOEDAS: TFloatField
      DisplayLabel = 'Moedas'
      FieldName = 'MOEDAS'
      Origin = '"FAT_CAIXAS_RESUMO"."MOEDAS"'
      DisplayFormat = '###,##0.00'
    end
    object Caixa_ResumoFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"FAT_CAIXAS_RESUMO"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Caixa_ResumoSALDO_ENTRADAS: TFloatField
      DisplayLabel = 'Sld Entradas'
      FieldKind = fkCalculated
      FieldName = 'SALDO_ENTRADAS'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixa_ResumoSALDO_SAIDAS: TFloatField
      DisplayLabel = 'Sld Sa'#237'das'
      FieldKind = fkCalculated
      FieldName = 'SALDO_SAIDAS'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixa_ResumoSALDO: TFloatField
      DisplayLabel = 'Saldo'
      FieldKind = fkCalculated
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixa_ResumoBANCOS: TFloatField
      DisplayLabel = 'Bancos'
      FieldKind = fkCalculated
      FieldName = 'BANCOS'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Caixa_ResumoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FAT_CAIXAS_RESUMO"."DATA"'
      Required = True
    end
    object Caixa_ResumoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_CAIXAS_RESUMO"."NOME"'
      Size = 50
    end
  end
  object VERIFICA_CAIXA_RESUMO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    SQL.Strings = (
      'SELECT'
      '             DATA'
      'FROM VERIFICA_CAIXA_RESUMO '
      '( :CNPJ )')
    Left = 512
    Top = 140
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VERIFICA_CAIXA_RESUMODATA: TDateField
      FieldName = 'DATA'
      Origin = '"VERIFICA_CAIXA_RESUMO"."DATA"'
    end
  end
  object MovimentosResumo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = MovimentosResumoBeforeOpen
    OnNewRecord = MovimentosResumoNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_CAIXAS_RESUMO_MOVTOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA and'
      '  DOCUMENTO = :OLD_DOCUMENTO')
    InsertSQL.Strings = (
      'insert into FAT_CAIXAS_RESUMO_MOVTOS'
      
        '  (CNPJ, DATA, DOCUMENTO, HISTORICO, VALOR, TIPO, CONTRA_PARTIDA' +
        ', NOME_CONTRAPARTIDA, '
      '   PESSOA_FJ, NOME)'
      'values'
      
        '  (:CNPJ, :DATA, :DOCUMENTO, :HISTORICO, :VALOR, :TIPO, :CONTRA_' +
        'PARTIDA, '
      '   :NOME_CONTRAPARTIDA, :PESSOA_FJ, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  DATA,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  VALOR,'
      '  TIPO,'
      '  CONTRA_PARTIDA,'
      '  NOME_CONTRAPARTIDA,'
      '  PESSOA_FJ,'
      '  NOME,'
      '  PLANILHA'
      'from FAT_CAIXAS_RESUMO_MOVTOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  DATA = :DATA and'
      '  DOCUMENTO = :DOCUMENTO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          DATA, '
      '          DOCUMENTO, '
      '          HISTORICO, '
      '          VALOR,'
      '          TIPO,'
      '          CONTRA_PARTIDA,'
      '          NOME_CONTRAPARTIDA,'
      '          PESSOA_FJ,'
      '          NOME'
      'from FAT_CAIXAS_RESUMO_MOVTOS'
      'WHERE CNPJ = :CNPJ AND DATA = :DATA'
      '')
    ModifySQL.Strings = (
      'update FAT_CAIXAS_RESUMO_MOVTOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  HISTORICO = :HISTORICO,'
      '  VALOR = :VALOR,'
      '  TIPO = :TIPO,'
      '  CONTRA_PARTIDA = :CONTRA_PARTIDA,'
      '  NOME_CONTRAPARTIDA = :NOME_CONTRAPARTIDA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA = :OLD_DATA and'
      '  DOCUMENTO = :OLD_DOCUMENTO')
    Left = 550
    Top = 188
    object MovimentosResumoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MovimentosResumoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."DATA"'
    end
    object MovimentosResumoDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."DOCUMENTO"'
      Required = True
    end
    object MovimentosResumoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."HISTORICO"'
      Size = 100
    end
    object MovimentosResumoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object MovimentosResumoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."TIPO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object MovimentosResumoCONTRA_PARTIDA: TIntegerField
      DisplayLabel = 'Contra Partida'
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."CONTRA_PARTIDA"'
    end
    object MovimentosResumoNOME_CONTRAPARTIDA: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object MovimentosResumoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."PESSOA_FJ"'
      OnValidate = MovimentosResumoPESSOA_FJValidate
    end
    object MovimentosResumoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_CAIXAS_RESUMO_MOVTOS"."NOME"'
      Size = 50
    end
  end
  object Soma_Movimentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    SQL.Strings = (
      'select'
      'CREDITO,'
      'DEBITO'
      'FROM VER_FAT_CAIXAS_RESUMO_MOVTOS'
      '( :CNPJ, :DATA )')
    Left = 552
    Top = 240
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
    object Soma_MovimentosCREDITO: TIBBCDField
      FieldName = 'CREDITO'
      Origin = '"VER_FAT_CAIXAS_RESUMO_MOVTOS"."CREDITO"'
      Precision = 18
      Size = 4
    end
    object Soma_MovimentosDEBITO: TIBBCDField
      FieldName = 'DEBITO'
      Origin = '"VER_FAT_CAIXAS_RESUMO_MOVTOS"."DEBITO"'
      Precision = 18
      Size = 4
    end
  end
  object FECHA_CAIXA_RESUMO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'FECHA_CAIXA_RESUMO'
    Left = 128
    Top = 304
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
  object Fluxo: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = FluxoBeforeOpen
    OnCalcFields = FluxoCalcFields
    OnNewRecord = FluxoNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_CAIXAS_FLUXO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO and'
      '  TURNO = :OLD_TURNO')
    InsertSQL.Strings = (
      'insert into FAT_CAIXAS_FLUXO'
      
        '  (CNPJ, CONTA, DATA, ENTRADA_CHEQUE, ENTRADA_ESTOQUE, ENTRADA_P' +
        'AGAR, ENTRADA_RECEBER, '
      
        '   SAIDA_CHEQUE, SAIDA_ESTOQUE, SAIDA_PAGAR, SAIDA_RECEBER, SALD' +
        'O_CHEQUE, '
      
        '   SALDO_ESTOQUE, SALDO_PAGAR, SALDO_RECEBER, USUARIO, TURNO, AC' +
        'ERTO_CHEQUE, '
      '   DEVOLUCAO_CHEQUE)'
      'values'
      
        '  (:CNPJ, :CONTA, :DATA, :ENTRADA_CHEQUE, :ENTRADA_ESTOQUE, :ENT' +
        'RADA_PAGAR, '
      
        '   :ENTRADA_RECEBER, :SAIDA_CHEQUE, :SAIDA_ESTOQUE, :SAIDA_PAGAR' +
        ', :SAIDA_RECEBER, '
      
        '   :SALDO_CHEQUE, :SALDO_ESTOQUE, :SALDO_PAGAR, :SALDO_RECEBER, ' +
        ':USUARIO, '
      '   :TURNO, :ACERTO_CHEQUE, :DEVOLUCAO_CHEQUE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  USUARIO,'
      '  CONTA,'
      '  DATA,'
      '  TURNO,'
      '  SALDO_RECEBER,'
      '  ENTRADA_RECEBER,'
      '  SAIDA_RECEBER,'
      '  SALDO_PAGAR,'
      '  ENTRADA_PAGAR,'
      '  SAIDA_PAGAR,'
      '  SALDO_CHEQUE,'
      '  ENTRADA_CHEQUE,'
      '  SAIDA_CHEQUE,'
      '  SALDO_ESTOQUE,'
      '  ENTRADA_ESTOQUE,'
      '  SAIDA_ESTOQUE,'
      '  ACERTO_CHEQUE,'
      '  DEVOLUCAO_CHEQUE'
      'from FAT_CAIXAS_FLUXO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA and'
      '  DATA = :DATA and'
      '  USUARIO = :USUARIO and'
      '  TURNO = :TURNO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CONTA, '
      '          DATA, '
      '          ENTRADA_CHEQUE, '
      '          ENTRADA_ESTOQUE, '
      '          ENTRADA_PAGAR, '
      '          ENTRADA_RECEBER, '
      '          SAIDA_CHEQUE, '
      '          SAIDA_ESTOQUE, '
      '          SAIDA_PAGAR, '
      '          SAIDA_RECEBER, '
      '          SALDO_CHEQUE, '
      '          SALDO_ESTOQUE, '
      '          SALDO_PAGAR, '
      '          SALDO_RECEBER, '
      '          USUARIO ,'
      '          TURNO,'
      '          ACERTO_CHEQUE,'
      '          DEVOLUCAO_CHEQUE'
      'from FAT_CAIXAS_FLUXO'
      'where CNPJ = :CNPJ AND'
      '           CONTA = :CONTA AND'
      '           DATA = :DATA AND'
      '           USUARIO = :USUARIO AND'
      '           TURNO = :TURNO')
    ModifySQL.Strings = (
      'update FAT_CAIXAS_FLUXO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  DATA = :DATA,'
      '  ENTRADA_CHEQUE = :ENTRADA_CHEQUE,'
      '  ENTRADA_ESTOQUE = :ENTRADA_ESTOQUE,'
      '  ENTRADA_PAGAR = :ENTRADA_PAGAR,'
      '  ENTRADA_RECEBER = :ENTRADA_RECEBER,'
      '  SAIDA_CHEQUE = :SAIDA_CHEQUE,'
      '  SAIDA_ESTOQUE = :SAIDA_ESTOQUE,'
      '  SAIDA_PAGAR = :SAIDA_PAGAR,'
      '  SAIDA_RECEBER = :SAIDA_RECEBER,'
      '  SALDO_CHEQUE = :SALDO_CHEQUE,'
      '  SALDO_ESTOQUE = :SALDO_ESTOQUE,'
      '  SALDO_PAGAR = :SALDO_PAGAR,'
      '  SALDO_RECEBER = :SALDO_RECEBER,'
      '  USUARIO = :USUARIO,'
      '  TURNO = :TURNO,'
      '  ACERTO_CHEQUE = :ACERTO_CHEQUE,'
      '  DEVOLUCAO_CHEQUE = :DEVOLUCAO_CHEQUE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA and'
      '  DATA = :OLD_DATA and'
      '  USUARIO = :OLD_USUARIO and'
      '  TURNO = :OLD_TURNO')
    Left = 40
    Top = 304
    object FluxoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CAIXAS_FLUXO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FluxoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FAT_CAIXAS_FLUXO"."CONTA"'
      Required = True
    end
    object FluxoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_CAIXAS_FLUXO"."DATA"'
      Required = True
    end
    object FluxoENTRADA_CHEQUE: TFloatField
      DisplayLabel = 'Ent. Cheque'
      FieldName = 'ENTRADA_CHEQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."ENTRADA_CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoENTRADA_ESTOQUE: TFloatField
      DisplayLabel = 'Ent. Estoque'
      FieldName = 'ENTRADA_ESTOQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."ENTRADA_ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoENTRADA_PAGAR: TFloatField
      DisplayLabel = 'Ent. Pagar'
      FieldName = 'ENTRADA_PAGAR'
      Origin = '"FAT_CAIXAS_FLUXO"."ENTRADA_PAGAR"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoENTRADA_RECEBER: TFloatField
      DisplayLabel = 'Ent. Receber'
      FieldName = 'ENTRADA_RECEBER'
      Origin = '"FAT_CAIXAS_FLUXO"."ENTRADA_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSAIDA_CHEQUE: TFloatField
      DisplayLabel = 'Saida Cheque'
      FieldName = 'SAIDA_CHEQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."SAIDA_CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSAIDA_ESTOQUE: TFloatField
      DisplayLabel = 'Sa'#237'da Estoque'
      FieldName = 'SAIDA_ESTOQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."SAIDA_ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSAIDA_PAGAR: TFloatField
      DisplayLabel = 'Sa'#237'da Pagar'
      FieldName = 'SAIDA_PAGAR'
      Origin = '"FAT_CAIXAS_FLUXO"."SAIDA_PAGAR"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSAIDA_RECEBER: TFloatField
      DisplayLabel = 'Sa'#237'da Receber'
      FieldName = 'SAIDA_RECEBER'
      Origin = '"FAT_CAIXAS_FLUXO"."SAIDA_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSALDO_CHEQUE: TFloatField
      DisplayLabel = 'Saldo Cheque'
      FieldName = 'SALDO_CHEQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."SALDO_CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSALDO_ESTOQUE: TFloatField
      DisplayLabel = 'Saldo Estoque'
      FieldName = 'SALDO_ESTOQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."SALDO_ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSALDO_PAGAR: TFloatField
      DisplayLabel = 'Saldo Pagar'
      FieldName = 'SALDO_PAGAR'
      Origin = '"FAT_CAIXAS_FLUXO"."SALDO_PAGAR"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoSALDO_RECEBER: TFloatField
      DisplayLabel = 'Saldo Receber'
      FieldName = 'SALDO_RECEBER'
      Origin = '"FAT_CAIXAS_FLUXO"."SALDO_RECEBER"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CAIXAS_FLUXO"."USUARIO"'
      Required = True
    end
    object FluxoTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"FAT_CAIXAS_FLUXO"."TURNO"'
      Required = True
    end
    object FluxoFINAL_RECEBER: TFloatField
      DisplayLabel = 'Final Receber'
      FieldKind = fkCalculated
      FieldName = 'FINAL_RECEBER'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object FluxoFINAL_CHEQUE: TFloatField
      DisplayLabel = 'Final Cheque'
      FieldKind = fkCalculated
      FieldName = 'FINAL_CHEQUE'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object FluxoFINAL_PAGAR: TFloatField
      DisplayLabel = 'Final Pagar'
      FieldKind = fkCalculated
      FieldName = 'FINAL_PAGAR'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object FluxoFINAL_ESTOQUE: TFloatField
      DisplayLabel = 'Final Estoque'
      FieldKind = fkCalculated
      FieldName = 'FINAL_ESTOQUE'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object FluxoACERTO_CHEQUE: TFloatField
      FieldName = 'ACERTO_CHEQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."ACERTO_CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
    object FluxoDEVOLUCAO_CHEQUE: TFloatField
      FieldName = 'DEVOLUCAO_CHEQUE'
      Origin = '"FAT_CAIXAS_FLUXO"."DEVOLUCAO_CHEQUE"'
      DisplayFormat = '###,##0.00'
    end
  end
  object SALDO_FLUXO_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SALDO_FLUXO_CAIXABeforeOpen
    SQL.Strings = (
      'SELECT'
      'SALDO_RECEBER ,'
      'SALDO_PAGAR ,'
      'SALDO_CHEQUE ,'
      'SALDO_ESTOQUE '
      'FROM SALDO_FLUXO_CAIXA'
      '( :CNPJ,:USUARIO,  :CONTA, :DATA, :TURNO )')
    Left = 40
    Top = 368
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
    object SALDO_FLUXO_CAIXASALDO_RECEBER: TIBBCDField
      FieldName = 'SALDO_RECEBER'
      Origin = '"SALDO_FLUXO_CAIXA"."SALDO_RECEBER"'
      Precision = 18
      Size = 4
    end
    object SALDO_FLUXO_CAIXASALDO_PAGAR: TIBBCDField
      FieldName = 'SALDO_PAGAR'
      Origin = '"SALDO_FLUXO_CAIXA"."SALDO_PAGAR"'
      Precision = 18
      Size = 4
    end
    object SALDO_FLUXO_CAIXASALDO_CHEQUE: TIBBCDField
      FieldName = 'SALDO_CHEQUE'
      Origin = '"SALDO_FLUXO_CAIXA"."SALDO_CHEQUE"'
      Precision = 18
      Size = 4
    end
    object SALDO_FLUXO_CAIXASALDO_ESTOQUE: TIBBCDField
      FieldName = 'SALDO_ESTOQUE'
      Origin = '"SALDO_FLUXO_CAIXA"."SALDO_ESTOQUE"'
      Precision = 18
      Size = 4
    end
  end
  object SOMA_BAIXA_PAGAR_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SOMA_BAIXA_PAGAR_CAIXABeforeOpen
    SQL.Strings = (
      'SELECT'
      '   SOMA      ,'
      '   JUROS    ,'
      '   DESCONTOS '
      'FROM SOMA_BAIXA_PAGAR_CAIXA'
      '( :CNPJ, :DATA )')
    Left = 552
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
    object SOMA_BAIXA_PAGAR_CAIXASOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"SOMA_BAIXA_PAGAR_CAIXA"."SOMA"'
      Precision = 18
      Size = 4
    end
    object SOMA_BAIXA_PAGAR_CAIXAJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"SOMA_BAIXA_PAGAR_CAIXA"."JUROS"'
      Precision = 18
      Size = 4
    end
    object SOMA_BAIXA_PAGAR_CAIXADESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"SOMA_BAIXA_PAGAR_CAIXA"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
  end
  object SOMA_BAIXA_RECEBER_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SOMA_BAIXA_PAGAR_CAIXABeforeOpen
    SQL.Strings = (
      'SELECT'
      '   SOMA      ,'
      '   JUROS    ,'
      '   DESCONTOS '
      'FROM SOMA_BAIXA_RECEBER_CAIXA'
      '( :CNPJ, :DATA )')
    Left = 552
    Top = 360
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
    object SOMA_BAIXA_RECEBER_CAIXASOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"SOMA_BAIXA_PAGAR_CAIXA"."SOMA"'
      Precision = 18
      Size = 4
    end
    object SOMA_BAIXA_RECEBER_CAIXAJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"SOMA_BAIXA_PAGAR_CAIXA"."JUROS"'
      Precision = 18
      Size = 4
    end
    object SOMA_BAIXA_RECEBER_CAIXADESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"SOMA_BAIXA_PAGAR_CAIXA"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
  end
  object ENTRADAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    DOCUMENTO ,'
      '    VALOR,'
      '    PESSOA_FJ,'
      '    NOME'
      'FROM ENTRADAS_CAIXA'
      '( :CNPJ, :DATA )')
    Left = 216
    Top = 296
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
    object ENTRADASDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"ENTRADAS_CAIXA"."DOCUMENTO"'
    end
    object ENTRADASVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"ENTRADAS_CAIXA"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ENTRADASPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"ENTRADAS_CAIXA"."PESSOA_FJ"'
    end
    object ENTRADASNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ENTRADAS_CAIXA"."NOME"'
      Size = 50
    end
  end
  object Cheques_Periodo: TIBQuery
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
      'FROM VER_FIN_CHEQUES_PERIODO'
      '(:CNPJ, :INI, :FIM )')
    Left = 304
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIM'
        ParamType = ptUnknown
      end>
    object Cheques_PeriodoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Cheques_PeriodoCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONTA"'
      Size = 15
    end
    object Cheques_PeriodoCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CHEQUE"'
      Size = 6
    end
    object Cheques_PeriodoVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VENDA"'
    end
    object Cheques_PeriodoEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."EMISSAO"'
    end
    object Cheques_PeriodoPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PRE_DATE"'
    end
    object Cheques_PeriodoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Cheques_PeriodoJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Cheques_PeriodoCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object Cheques_PeriodoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PESSOA_FJ"'
    end
    object Cheques_PeriodoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."HISTORICO"'
      Size = 100
    end
    object Cheques_PeriodoAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."AGENCIA"'
      Size = 6
    end
    object Cheques_PeriodoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."NOME"'
      Size = 50
    end
    object Cheques_PeriodoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FONE"'
    end
    object Cheques_PeriodoFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FAX"'
    end
    object Cheques_PeriodoCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CELULAR"'
    end
    object Cheques_PeriodoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object Cheques_PeriodoDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CONCILIACAO"'
    end
    object Cheques_PeriodoMOEDA1: TIBBCDField
      DisplayLabel = 'Moeda 1'
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA1"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Cheques_PeriodoMOEDA2: TIBBCDField
      DisplayLabel = 'Moeda 2'
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Cheques_PeriodoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object Cheques_PeriodoDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_ACERTO"'
    end
    object Cheques_PeriodoDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_DEVOLUCAO"'
    end
    object Cheques_PeriodoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'CODIGO_MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CODIGO_MOTIVO_DEVOLUCAO"'
    end
    object Cheques_PeriodoVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Vezes'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VEZES_DEVOLUCAO"'
    end
    object Cheques_PeriodoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PLANILHA"'
    end
    object Cheques_PeriodoDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig. Ag'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object Cheques_PeriodoDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Chq'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object Cheques_PeriodoDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CAIXA"'
    end
  end
  object ChequesReceber_Periodo: TIBQuery
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
      'FROM VER_FIN_CHEQUES_CX_REC_PERIODO'
      '( :CNPJ, :INI, :FIM )')
    Left = 424
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIM'
        ParamType = ptUnknown
      end>
    object ChequesReceber_PeriodoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object ChequesReceber_PeriodoCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONTA"'
      Size = 15
    end
    object ChequesReceber_PeriodoCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CHEQUE"'
      Size = 6
    end
    object ChequesReceber_PeriodoVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VENDA"'
    end
    object ChequesReceber_PeriodoEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."EMISSAO"'
    end
    object ChequesReceber_PeriodoPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PRE_DATE"'
    end
    object ChequesReceber_PeriodoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceber_PeriodoJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceber_PeriodoCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object ChequesReceber_PeriodoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PESSOA_FJ"'
    end
    object ChequesReceber_PeriodoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."HISTORICO"'
      Size = 100
    end
    object ChequesReceber_PeriodoAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."AGENCIA"'
      Size = 6
    end
    object ChequesReceber_PeriodoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."NOME"'
      Size = 50
    end
    object ChequesReceber_PeriodoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FONE"'
    end
    object ChequesReceber_PeriodoFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."FAX"'
    end
    object ChequesReceber_PeriodoCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CELULAR"'
    end
    object ChequesReceber_PeriodoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object ChequesReceber_PeriodoDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CONCILIACAO"'
    end
    object ChequesReceber_PeriodoMOEDA1: TIBBCDField
      DisplayLabel = 'Moeda 1'
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA1"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceber_PeriodoMOEDA2: TIBBCDField
      DisplayLabel = 'Moeda 2'
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."MOEDA2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ChequesReceber_PeriodoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object ChequesReceber_PeriodoDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_ACERTO"'
    end
    object ChequesReceber_PeriodoDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_DEVOLUCAO"'
    end
    object ChequesReceber_PeriodoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'CODIGO_MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."CODIGO_MOTIVO_DEVOLUCAO"'
    end
    object ChequesReceber_PeriodoVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Vezes'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."VEZES_DEVOLUCAO"'
    end
    object ChequesReceber_PeriodoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."PLANILHA"'
    end
    object ChequesReceber_PeriodoDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig. Ag'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object ChequesReceber_PeriodoDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Chq'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object ChequesReceber_PeriodoDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FIN_CHEQUES_CAIXA"."DATA_CAIXA"'
    end
  end
  object Vendas_Periodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    OnCalcFields = Vendas_PeriodoCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO,'
      '    HISTORICO,'
      '    PESSOA_FJ,'
      '    VENDEDOR,'
      '    NATUREZA ,'
      '    FORMA_PGTO,'
      '    NUM_NF,'
      '    NUM_CUPOM,'
      '    PROPRIEDADE,'
      '    CONVENIADO,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA,'
      '    DESC_ACRES,'
      '    ENTRADA,'
      '    DINHEIRO,'
      '    CHEQUE,'
      '    CARTAO,'
      '    TICKET,'
      '    TOTAL,'
      '    OBSERVACAO,'
      '    VLR_PARC_LC,'
      '    TERCEIRO,'
      '    CARGA,'
      '    VOLUME ,'
      '    PESO,'
      '    REQUISICAO,'
      '    TIPO_VENDA,'
      '    NOME_CONSUMIDOR,'
      '    NOME,'
      '    TROCO,'
      '    ORCAMENTO'
      'from VER_FAT_VENDAS_CAIXA_PERIODO ( :CNPJ , :INI, :FIM)'
      'order by CODIGO')
    Left = 216
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIM'
        ParamType = ptUnknown
      end>
    object Vendas_PeriodoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CODIGO"'
    end
    object Vendas_PeriodoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."HISTORICO"'
      Size = 100
    end
    object Vendas_PeriodoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cli'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESSOA_FJ"'
    end
    object Vendas_PeriodoVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VENDEDOR"'
    end
    object Vendas_PeriodoNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NATUREZA"'
    end
    object Vendas_PeriodoFORMA_PGTO: TIntegerField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."FORMA_PGTO"'
    end
    object Vendas_PeriodoNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_NF"'
    end
    object Vendas_PeriodoNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_CUPOM"'
    end
    object Vendas_PeriodoPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PROPRIEDADE"'
    end
    object Vendas_PeriodoCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CONVENIADO"'
    end
    object Vendas_PeriodoTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Vendas_PeriodoLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."LOCAL_COBRANCA"'
    end
    object Vendas_PeriodoDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233's'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."OBSERVACAO"'
      Size = 80
    end
    object Vendas_PeriodoVLR_PARC_LC: TIBBCDField
      DisplayLabel = 'Vlr Parcelar'
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoTERCEIRO: TIntegerField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TERCEIRO"'
    end
    object Vendas_PeriodoCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARGA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_PeriodoVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_PeriodoREQUISICAO: TIBStringField
      DisplayLabel = 'Req'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."REQUISICAO"'
      Size = 6
    end
    object Vendas_PeriodoTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Vendas_PeriodoNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Vendas_PeriodoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME"'
      Size = 50
    end
    object Vendas_PeriodoORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ORCAMENTO"'
    end
    object Vendas_PeriodoLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_PeriodoAVISTA: TFloatField
      DisplayLabel = 'A Vista'
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_PeriodoAPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_PeriodoTROCO: TIBBCDField
      DisplayLabel = 'Troco'
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Recebidas_Periodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '    CODIGO ,'
      '    ANO ,'
      '    CODIGO_CR ,'
      '    ANO_CR ,'
      '    PESSOA_FJ ,'
      '    DT_BAIXA ,'
      '    DT_EMISSAO,'
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
      '    JUROS_REC ,'
      '    DESCONTOS_REC ,'
      '    TAXA_JUROS ,'
      '    BOLETO ,'
      '    TIPO_JUROS ,'
      '    ORIGEM ,'
      '    CODIGO_VN, '
      '    ANO_VN,'
      '    PLANILHA ,'
      '    AVISO ,'
      '    DT_AVISO,'
      '    NOME,'
      '    CPF_CGC    '
      'from VER_BAIXA_RECEBER_CAIXA_PERIODO '
      '( :CNPJ, :INI, :FIM, :CONTA )'
      'Order by NOME, PESSOA_FJ')
    Left = 424
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTA'
        ParamType = ptUnknown
      end>
    object Recebidas_PeriodoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CODIGO"'
    end
    object Recebidas_PeriodoANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ANO"'
    end
    object Recebidas_PeriodoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cli'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PESSOA_FJ"'
    end
    object Recebidas_PeriodoDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_BAIXA"'
    end
    object Recebidas_PeriodoDT_EMISSAO: TDateField
      DisplayLabel = 'Dt Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_EMISSAO"'
    end
    object Recebidas_PeriodoDT_VENCTO: TDateField
      DisplayLabel = 'Dt Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_VENCTO"'
    end
    object Recebidas_PeriodoDT_LANCTO: TDateField
      DisplayLabel = 'Dt Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_LANCTO"'
    end
    object Recebidas_PeriodoDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DOCTO"'
    end
    object Recebidas_PeriodoPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object Recebidas_PeriodoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."HISTORICO"'
      Size = 100
    end
    object Recebidas_PeriodoHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."HISTORICO_BX"'
      Size = 100
    end
    object Recebidas_PeriodoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr Parciais'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoTAXA_JUROS: TIBBCDField
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Recebidas_PeriodoTIPO_JUROS: TIBStringField
      FieldName = 'TIPO_JUROS'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Recebidas_PeriodoORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Recebidas_PeriodoPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."PLANILHA"'
    end
    object Recebidas_PeriodoAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."AVISO"'
    end
    object Recebidas_PeriodoDT_AVISO: TDateField
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."DT_AVISO"'
    end
    object Recebidas_PeriodoNOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."NOME"'
      Size = 50
    end
    object Recebidas_PeriodoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_PAGAR_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object Recebidas_PeriodoCODIGO_CR: TIntegerField
      DisplayLabel = 'Cod'
      FieldName = 'CODIGO_CR'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."CODIGO_CR"'
    end
    object Recebidas_PeriodoANO_CR: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."ANO_CR"'
    end
    object Recebidas_PeriodoJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."DESCONTOS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Recebidas_PeriodoCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."CODIGO_VN"'
    end
    object Recebidas_PeriodoANO_VN: TIntegerField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER_CAIXA"."ANO_VN"'
    end
  end
  object Ver_Faturas_Caixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
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
    Left = 304
    Top = 352
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
    object Ver_Faturas_CaixaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA_CAIXA"."CODIGO"'
    end
    object Ver_Faturas_CaixaPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA_CAIXA"."PESSOA_FJ"'
    end
    object Ver_Faturas_CaixaVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FATURA_CAIXA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Faturas_CaixaDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_CAIXA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Faturas_CaixaJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FATURA_CAIXA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Faturas_CaixaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA_CAIXA"."HISTORICO"'
      Size = 100
    end
    object Ver_Faturas_CaixaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FATURA_CAIXA"."NOME"'
      Size = 50
    end
    object Ver_Faturas_CaixaENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA_CAIXA"."ENDERECO"'
      Size = 50
    end
    object Ver_Faturas_CaixaNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA_CAIXA"."NUMERO"'
      Size = 15
    end
    object Ver_Faturas_CaixaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA_CAIXA"."CIDADE"'
      Size = 50
    end
    object Ver_Faturas_CaixaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA_CAIXA"."BAIRRO"'
      Size = 50
    end
    object Ver_Faturas_CaixaCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_FATURA_CAIXA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Ver_Faturas_CaixaUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_FATURA_CAIXA"."UF"'
      FixedChar = True
      Size = 2
    end
    object Ver_Faturas_CaixaAGRUPADORA: TIntegerField
      DisplayLabel = 'Agrupadora'
      FieldName = 'AGRUPADORA'
      Origin = '"VER_FATURA_CAIXA"."AGRUPADORA"'
    end
    object Ver_Faturas_CaixaFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FATURA_CAIXA"."FONE"'
    end
    object Ver_Faturas_CaixaBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FATURA_CAIXA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Ver_Faturas_CaixaBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_FATURA_CAIXA"."BOLETO"'
      Size = 30
    end
    object Ver_Faturas_CaixaNOME_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOME_BANCO'
      Origin = '"VER_FATURA_CAIXA"."NOME_BANCO"'
      Size = 50
    end
    object Ver_Faturas_CaixaOBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"VER_FATURA_CAIXA"."OBS"'
      Size = 30
    end
    object Ver_Faturas_CaixaDUPLICATA: TIBStringField
      DisplayLabel = 'Dpl'
      FieldName = 'DUPLICATA'
      Origin = '"VER_FATURA_CAIXA"."DUPLICATA"'
      Size = 30
    end
    object Ver_Faturas_CaixaENVIADA: TIBStringField
      DisplayLabel = 'Enviada'
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA_CAIXA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object Ver_Faturas_CaixaTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FATURA_CAIXA"."TIPO"'
      Size = 11
    end
    object Ver_Faturas_CaixaCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA_CAIXA"."CPF_CGC"'
      Size = 15
    end
    object Ver_Faturas_CaixaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_FATURA_CAIXA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Ver_Faturas_CaixaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FATURA_CAIXA"."DATA"'
    end
    object Ver_Faturas_CaixaCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_FATURA_CAIXA"."COD_END"'
    end
    object Ver_Faturas_CaixaCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_FATURA_CAIXA"."COD_CID"'
    end
    object Ver_Faturas_CaixaCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_FATURA_CAIXA"."COD_BAI"'
    end
    object Ver_Faturas_CaixaVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA_CAIXA"."VENCIMENTO"'
    end
  end
  object VER_FIN_FATURAS_PARCIAL_CAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
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
      '    DESCONTOS,'
      '    PESSOA_FJ'
      'FROM VER_FIN_FATURAS_PARCIAL_CAIXA'
      '('
      '    :CNPJ    ,'
      '    :DATA   ,'
      '    :USUARIO,'
      '    :CONTA ,'
      '    :TURNO'
      ')')
    Left = 128
    Top = 372
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
    object VER_FIN_FATURAS_PARCIAL_CAIXAPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_FATURAS_PARCIAL_CAIXA"."PESSOA_FJ"'
    end
  end
  object Vendas_Abertas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Caixas_UsuarioBeforeOpen
    OnCalcFields = Vendas_AbertasCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO,'
      '    HISTORICO,'
      '    PESSOA_FJ,'
      '    VENDEDOR,'
      '    NATUREZA ,'
      '    FORMA_PGTO,'
      '    NUM_NF,'
      '    NUM_CUPOM,'
      '    PROPRIEDADE,'
      '    CONVENIADO,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA,'
      '    DESC_ACRES,'
      '    ENTRADA,'
      '    DINHEIRO,'
      '    CHEQUE,'
      '    CARTAO,'
      '    TICKET,'
      '    TOTAL,'
      '    OBSERVACAO,'
      '    VLR_PARC_LC,'
      '    TERCEIRO,'
      '    CARGA,'
      '    VOLUME ,'
      '    PESO,'
      '    REQUISICAO,'
      '    TIPO_VENDA,'
      '    NOME_CONSUMIDOR,'
      '    NOME,'
      '    TROCO,'
      '    ORCAMENTO,'
      '    MOV_CAIXA,'
      '    DATA,'
      '    ENVIADA_CX'
      'from VER_FAT_VENDAS_CAIXA_ABERTAS ( :CNPJ )'
      'order by CODIGO')
    Left = 616
    Top = 48
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Vendas_AbertasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CODIGO"'
    end
    object Vendas_AbertasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."HISTORICO"'
      Size = 100
    end
    object Vendas_AbertasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cli'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESSOA_FJ"'
    end
    object Vendas_AbertasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VENDEDOR"'
    end
    object Vendas_AbertasNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NATUREZA"'
    end
    object Vendas_AbertasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."FORMA_PGTO"'
    end
    object Vendas_AbertasNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_NF"'
    end
    object Vendas_AbertasNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_CUPOM"'
    end
    object Vendas_AbertasPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PROPRIEDADE"'
    end
    object Vendas_AbertasCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CONVENIADO"'
    end
    object Vendas_AbertasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Vendas_AbertasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."LOCAL_COBRANCA"'
    end
    object Vendas_AbertasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233's'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."OBSERVACAO"'
      Size = 80
    end
    object Vendas_AbertasVLR_PARC_LC: TIBBCDField
      DisplayLabel = 'Vlr Parcelar'
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasTERCEIRO: TIntegerField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TERCEIRO"'
    end
    object Vendas_AbertasCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARGA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_AbertasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasREQUISICAO: TIBStringField
      DisplayLabel = 'Req'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."REQUISICAO"'
      Size = 6
    end
    object Vendas_AbertasTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Vendas_AbertasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Vendas_AbertasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME"'
      Size = 50
    end
    object Vendas_AbertasORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ORCAMENTO"'
    end
    object Vendas_AbertasLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_AbertasAVISTA: TFloatField
      DisplayLabel = 'A Vista'
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_AbertasAPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_AbertasTROCO: TIBBCDField
      DisplayLabel = 'Troco'
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_AbertasMOV_CAIXA: TIBStringField
      FieldName = 'MOV_CAIXA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."MOV_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object Vendas_AbertasDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_CAIXA_ABERTAS"."DATA"'
    end
    object Vendas_AbertasENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_CAIXA_ABERTAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
  end
  object Vendas_Agrupadas_Periodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    Active = True
    SQL.Strings = (
      
        'select NOME_VENDEDOR vendedor, sum(com_vista) VLR_COMVISTA , sum' +
        '(com_prazo) VLR_COMPRAZO,'
      
        'sum(com_total) COMISSAO, sum(vlr_vista) VISTA, sum(vlr_prazo) pr' +
        'azo,'
      'sum(VLR_ITEM) total from pcd_comissao_faixa(:cnpj,:dini,:dfim)'
      'group by NOME_VENDEDOR')
    Left = 628
    Top = 112
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dfim'
        ParamType = ptUnknown
      end>
    object Vendas_Agrupadas_PeriodoVLR_COMVISTA: TIBBCDField
      FieldName = 'VLR_COMVISTA'
      Precision = 18
      Size = 4
    end
    object Vendas_Agrupadas_PeriodoVLR_COMPRAZO: TIBBCDField
      FieldName = 'VLR_COMPRAZO'
      Precision = 18
      Size = 4
    end
    object Vendas_Agrupadas_PeriodoCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 4
    end
    object Vendas_Agrupadas_PeriodoVISTA: TIBBCDField
      FieldName = 'VISTA'
      Precision = 18
      Size = 4
    end
    object Vendas_Agrupadas_PeriodoPRAZO: TIBBCDField
      FieldName = 'PRAZO'
      Precision = 18
      Size = 4
    end
    object Vendas_Agrupadas_PeriodoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 4
    end
    object Vendas_Agrupadas_PeriodoVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Size = 50
    end
  end
  object Vendas_Canceladas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    OnCalcFields = Vendas_CanceladasCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO,'
      '    HISTORICO,'
      '    PESSOA_FJ,'
      '    VENDEDOR,'
      '    NATUREZA ,'
      '    FORMA_PGTO,'
      '    NUM_NF,'
      '    NUM_CUPOM,'
      '    PROPRIEDADE,'
      '    CONVENIADO,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA,'
      '    DESC_ACRES,'
      '    ENTRADA,'
      '    DINHEIRO,'
      '    CHEQUE,'
      '    CARTAO,'
      '    TICKET,'
      '    TOTAL,'
      '    OBSERVACAO,'
      '    VLR_PARC_LC,'
      '    TERCEIRO,'
      '    CARGA,'
      '    VOLUME ,'
      '    PESO,'
      '    REQUISICAO,'
      '    TIPO_VENDA,'
      '    NOME_CONSUMIDOR,'
      '    NOME,'
      '    TROCO,'
      '    ORCAMENTO,'
      '    MOV_CAIXA,'
      '    DATA_CANCELAMENTO'
      'from VER_FAT_VENDAS_CAIXA_CANCELADA'
      ' ( :CNPJ , :DATA, :USUARIO, :TURNO )'
      'order by CODIGO')
    Left = 624
    Top = 175
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
    object Vendas_CanceladasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CODIGO"'
    end
    object Vendas_CanceladasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."HISTORICO"'
      Size = 100
    end
    object Vendas_CanceladasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cli'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESSOA_FJ"'
    end
    object Vendas_CanceladasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VENDEDOR"'
    end
    object Vendas_CanceladasNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NATUREZA"'
    end
    object Vendas_CanceladasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."FORMA_PGTO"'
    end
    object Vendas_CanceladasNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_NF"'
    end
    object Vendas_CanceladasNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cf'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NUM_CUPOM"'
    end
    object Vendas_CanceladasPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PROPRIEDADE"'
    end
    object Vendas_CanceladasCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CONVENIADO"'
    end
    object Vendas_CanceladasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Vendas_CanceladasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."LOCAL_COBRANCA"'
    end
    object Vendas_CanceladasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233's'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."OBSERVACAO"'
      Size = 80
    end
    object Vendas_CanceladasVLR_PARC_LC: TIBBCDField
      DisplayLabel = 'Vlr Parcelar'
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasTERCEIRO: TIntegerField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TERCEIRO"'
    end
    object Vendas_CanceladasCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."CARGA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Vendas_CanceladasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasREQUISICAO: TIBStringField
      DisplayLabel = 'Req'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."REQUISICAO"'
      Size = 6
    end
    object Vendas_CanceladasTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Vendas_CanceladasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Vendas_CanceladasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_CAIXA"."NOME"'
      Size = 50
    end
    object Vendas_CanceladasORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."ORCAMENTO"'
    end
    object Vendas_CanceladasLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_CanceladasAVISTA: TFloatField
      DisplayLabel = 'A Vista'
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_CanceladasAPRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Vendas_CanceladasTROCO: TIBBCDField
      DisplayLabel = 'Troco'
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_CAIXA"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Vendas_CanceladasMOV_CAIXA: TIBStringField
      FieldName = 'MOV_CAIXA'
      Origin = '"VER_FAT_VENDAS_CAIXA"."MOV_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object Vendas_CanceladasDATA_CANCELAMENTO: TDateTimeField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = '"VER_FAT_VENDAS_CAIXA_CANCELADA"."DATA_CANCELAMENTO"'
    end
  end
  object Trocas_Periodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Trocas_PeriodoCalcFields
    SQL.Strings = (
      'SELECT'
      '    PESSOA_FJ ,'
      '    CODIGO ,'
      '    DATA ,'
      '    VALIDADE ,'
      '    TOTAL ,'
      '    TOTAL_2 ,'
      '    ENVIADA_CX ,'
      '    FECHADO ,'
      '    OBSERVACAO ,'
      '    NOME_RAZAO ,'
      '    NOME_FORMA ,'
      '    NOME_VENDEDOR ,'
      '    VENDEDOR ,'
      '    VLR_TOTAL ,'
      '    VLR_TOTAL_2 ,'
      '    DESC_ACRESC ,'
      '    DESC_ACRESC_2 ,'
      '    CLIENTE ,'
      '    PESO ,'
      '    VOLUME ,'
      '    FORMA ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET '
      'FROM VER_FAT_TROCAS'
      '( :CNPJ, :TROCA )'
      'WHERE DATA_CAIXA >= :INI AND DATA_CAIXA <= :FIM'
      'AND FECHADO = :OP'
      'ORDER BY CODIGO')
    Left = 368
    Top = 160
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TROCA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'OP'
        ParamType = ptUnknown
      end>
    object Trocas_PeriodoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_TROCAS"."PESSOA_FJ"'
    end
    object Trocas_PeriodoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_TROCAS"."CODIGO"'
    end
    object Trocas_PeriodoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_TROCAS"."DATA"'
    end
    object Trocas_PeriodoVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"VER_FAT_TROCAS"."VALIDADE"'
    end
    object Trocas_PeriodoTOTAL: TIBBCDField
      DisplayLabel = 'Total Ent'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_TROCAS"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoTOTAL_2: TIBBCDField
      DisplayLabel = 'Total Sai'
      FieldName = 'TOTAL_2'
      Origin = '"VER_FAT_TROCAS"."TOTAL_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoENVIADA_CX: TIBStringField
      DisplayLabel = 'Env. Caixa'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Trocas_PeriodoFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"VER_FAT_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Trocas_PeriodoOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object Trocas_PeriodoNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FAT_TROCAS"."NOME_RAZAO"'
      Size = 50
    end
    object Trocas_PeriodoNOME_FORMA: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object Trocas_PeriodoNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object Trocas_PeriodoVENDEDOR: TIntegerField
      DisplayLabel = 'Vend'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."VENDEDOR"'
    end
    object Trocas_PeriodoVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Entradas'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_FAT_TROCAS"."VLR_TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoVLR_TOTAL_2: TIBBCDField
      DisplayLabel = 'Sa'#237'das'
      FieldName = 'VLR_TOTAL_2'
      Origin = '"VER_FAT_TROCAS"."VLR_TOTAL_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoDESC_ACRESC: TIBBCDField
      DisplayLabel = 'Desc. Entradas'
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoDESC_ACRESC_2: TIBBCDField
      DisplayLabel = 'Desc. Sa'#237'das'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"VER_FAT_TROCAS"."CLIENTE"'
      Size = 30
    end
    object Trocas_PeriodoPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_TROCAS"."PESO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_TROCAS"."VOLUME"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoFORMA: TIntegerField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA'
      Origin = '"VER_FAT_TROCAS"."FORMA"'
    end
    object Trocas_PeriodoENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_TROCAS"."ENTRADA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_TROCAS"."DINHEIRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_TROCAS"."CHEQUE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_TROCAS"."CARTAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_TROCAS"."TICKET"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Trocas_PeriodoAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      Calculated = True
    end
    object Trocas_PeriodoAPRAZO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      Calculated = True
    end
    object Trocas_PeriodoLIQUIDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LIQUIDO'
      Calculated = True
    end
  end
  object qryAux: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 40
    Top = 424
  end
  object qryVendasADMCx: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      'select'
      '* '
      'from ADM_CX_VER_FAT_VENDAS_CAIXA'
      '( :CNPJ , :DATA, :USUARIO, :TURNO )'
      'order by tipo, CODIGO')
    Left = 124
    Top = 430
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
    object qryVendasADMCxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."CODIGO"'
    end
    object qryVendasADMCxHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."HISTORICO"'
      Size = 100
    end
    object qryVendasADMCxPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."PESSOA_FJ"'
    end
    object qryVendasADMCxVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."VENDEDOR"'
    end
    object qryVendasADMCxNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."NATUREZA"'
    end
    object qryVendasADMCxDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."DESC_ACRES"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."ENTRADA"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."CHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."CARTAO"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."TICKET"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxTROCO: TIBBCDField
      FieldName = 'TROCO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."TROCO"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."NOME"'
      Size = 50
    end
    object qryVendasADMCxDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."DOCTO"'
    end
    object qryVendasADMCxTOTAL_BRUTO: TIBBCDField
      FieldName = 'TOTAL_BRUTO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."TOTAL_BRUTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."LIQUIDO"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxTIPO: TIBStringField
      DisplayWidth = 6
      FieldName = 'TIPO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."TIPO"'
      FixedChar = True
      Size = 6
    end
    object qryVendasADMCxteste: TFloatField
      FieldKind = fkCalculated
      FieldName = 'teste'
      Calculated = True
    end
    object qryVendasADMCxVALE_TROCO: TIBBCDField
      FieldName = 'VALE_TROCO'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."VALE_TROCO"'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"ADM_CX_VER_FAT_VENDAS_CAIXA"."NOME_VENDEDOR"'
      Size = 50
    end
  end
  object qryTrocasADMCx: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Caixas_UsuarioBeforeOpen
    SQL.Strings = (
      'select'
      '* '
      'from ADM_CX_VER_FAT_TROCAS'
      '( :CNPJ , :DATA, :USUARIO, :TURNO )'
      'order by CODIGO')
    Left = 220
    Top = 426
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
    object qryTrocasADMCxPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."PESSOA_FJ"'
    end
    object qryTrocasADMCxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."CODIGO"'
    end
    object qryTrocasADMCxENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object qryTrocasADMCxFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object qryTrocasADMCxOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object qryTrocasADMCxNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."NOME_RAZAO"'
      Size = 50
    end
    object qryTrocasADMCxNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object qryTrocasADMCxVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."VENDEDOR"'
    end
    object qryTrocasADMCxCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."CLIENTE"'
      Size = 30
    end
    object qryTrocasADMCxENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."ENTRADA"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."CHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."CARTAO"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."TICKET"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxVISTA: TIBBCDField
      FieldName = 'VISTA'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."VISTA"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxPRAZO: TIBBCDField
      FieldName = 'PRAZO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxTTL_ENTRADA: TIBBCDField
      FieldName = 'TTL_ENTRADA'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."TTL_ENTRADA"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxTTL_SAIDA: TIBBCDField
      FieldName = 'TTL_SAIDA'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."TTL_SAIDA"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxTTL_LIQUIDO: TIBBCDField
      FieldName = 'TTL_LIQUIDO'
      Origin = '"ADM_CX_VER_FAT_TROCAS"."TTL_LIQUIDO"'
      Precision = 18
      Size = 4
    end
    object qryTrocasADMCxTeste: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Teste'
      Calculated = True
    end
  end
  object qryPagasADMCx: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    SQL.Strings = (
      'select '
      ' * '
      
        'from ADM_CX_VER_BAIXA_PAGAR_CAIXA( :CNPJ, :DATA, :USUARIO, :TURN' +
        'O, :CONTA )')
    Left = 316
    Top = 424
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
    object qryPagasADMCxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."CODIGO"'
    end
    object qryPagasADMCxPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."PESSOA_FJ"'
    end
    object qryPagasADMCxDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."DT_VENCTO"'
    end
    object qryPagasADMCxDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."DOCTO"'
    end
    object qryPagasADMCxVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."VALOR"'
      Precision = 18
      Size = 4
    end
    object qryPagasADMCxVLR_BAIXA: TIBBCDField
      FieldName = 'VLR_BAIXA'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."VLR_BAIXA"'
      Precision = 18
      Size = 4
    end
    object qryPagasADMCxDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object qryPagasADMCxVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryPagasADMCxJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."JUROS"'
      Precision = 18
      Size = 4
    end
    object qryPagasADMCxNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ADM_CX_VER_BAIXA_PAGAR_CAIXA"."NOME"'
      Size = 50
    end
    object qryPagasADMCxteste: TFloatField
      FieldKind = fkCalculated
      FieldName = 'teste'
      Calculated = True
    end
  end
  object qryEnt_SaiADMCx: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    SQL.Strings = (
      'select DOCUMENTO, HISTORICO, TIPO, PESSOA_FJ,'
      '         NOME,         case TIPO'
      
        '          when '#39'D'#39' then ((coalesce(cx.valor,0)+coalesce(cx.juros' +
        ',0)- coalesce(cx.descontos,0)) * -1)'
      
        '          when '#39'C'#39' then (coalesce(cx.valor,0)+coalesce(cx.juros,' +
        '0) - coalesce(cx.descontos,0))'
      '        end'
      '          valor'
      'from FAT_CAIXAS_MOVIMENTOS cx'
      'WHERE CNPJ = :CNPJ AND '
      'DATA = :DATA AND'
      'USUARIO = :USUARIO AND'
      'CONTA = :CONTA AND'
      'TURNO = :TURNO'
      '')
    Left = 552
    Top = 428
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
    object qryEnt_SaiADMCxDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."DOCUMENTO"'
      Required = True
    end
    object qryEnt_SaiADMCxHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."HISTORICO"'
      Size = 100
    end
    object qryEnt_SaiADMCxVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."VALOR"'
    end
    object qryEnt_SaiADMCxTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."TIPO"'
      Required = True
      OnGetText = qryEnt_SaiADMCxTIPOGetText
      OnSetText = qryEnt_SaiADMCxTIPOSetText
      FixedChar = True
      Size = 1
    end
    object qryEnt_SaiADMCxPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."PESSOA_FJ"'
    end
    object qryEnt_SaiADMCxNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_CAIXAS_MOVIMENTOS"."NOME"'
      Size = 50
    end
  end
  object qryEnt_EstADMCx: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    DOCUMENTO ,'
      '    VALOR,'
      '    coalesce(PESSOA_FJ,'#39#39') ||'#39'-'#39'|| coalesce(NOME,'#39#39') as nome'
      'FROM ENTRADAS_CAIXA'
      '( :CNPJ, :DATA )')
    Left = 430
    Top = 484
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
    object qryEnt_EstADMCxDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"ENTRADAS_CAIXA"."DOCUMENTO"'
    end
    object qryEnt_EstADMCxVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ENTRADAS_CAIXA"."VALOR"'
      Precision = 18
      Size = 4
    end
    object qryEnt_EstADMCxNOME: TIBStringField
      FieldName = 'NOME'
      Size = 62
    end
  end
  object qryRecebidasADMCx: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Caixas_UsuarioAfterClose
    BeforeOpen = Caixas_UsuarioBeforeOpen
    SQL.Strings = (
      
        'select bx.codigo, bx.dt_vencto, bx.nome, bx.docto, bx.valor, bx.' +
        'juros, bx.vlr_baixa,'
      
        '(select sum(ch.valor) from fin_cheques ch where ch.cod_acertocon' +
        'ta = bx.cod_acertoconta and ch.cnpj = bx.cnpj and ch.pre_date = ' +
        'ch.data_caixa ) cheque_vista,'
      
        '(select sum(ch.valor) from fin_cheques ch where ch.cod_acertocon' +
        'ta = bx.cod_acertoconta and ch.cnpj = bx.cnpj and ch.pre_date <>' +
        ' ch.data_caixa) cheque_prazo,'
      
        '(select sum(crt.valor) from fin_movimento_cartao crt where crt.c' +
        'od_acertoconta = bx.cod_acertoconta and crt.cnpj = bx.cnpj ) car' +
        'tao'
      'from fin_baixas_receber bx'
      'where '
      'bx.dt_baixa =:data and bx.turno = :turno '
      'and bx.usuario = :usuario and bx.cnpj = :cnpj'
      'and (coalesce(bx.act_tipo_baixa,'#39'1'#39') <> '#39'3'#39')  /*aviso bancario*/'
      'and (coalesce(bx.act_tipo_baixa,'#39'1'#39') <> '#39'4'#39') /*renegociacao*/')
    Left = 424
    Top = 424
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TURNO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRecebidasADMCxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryRecebidasADMCxDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_VENCTO"'
      Required = True
    end
    object qryRecebidasADMCxNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BAIXAS_RECEBER"."NOME"'
      Size = 50
    end
    object qryRecebidasADMCxDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object qryRecebidasADMCxVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_BAIXAS_RECEBER"."VALOR"'
    end
    object qryRecebidasADMCxJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."JUROS"'
    end
    object qryRecebidasADMCxVLR_BAIXA: TFloatField
      FieldName = 'VLR_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."VLR_BAIXA"'
    end
    object qryRecebidasADMCxCHEQUE_VISTA: TFloatField
      FieldName = 'CHEQUE_VISTA'
      ProviderFlags = []
    end
    object qryRecebidasADMCxCHEQUE_PRAZO: TFloatField
      FieldName = 'CHEQUE_PRAZO'
      ProviderFlags = []
    end
    object qryRecebidasADMCxCARTAO: TFloatField
      FieldName = 'CARTAO'
      ProviderFlags = []
    end
  end
  object qryVndCancADMCx: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select vd.codigo, historico, pessoa_fj, psa.nome_razao,  vendedo' +
        'r,'
      ' num_cupom, num_nf'
      '  from fat_vendas vd'
      
        '  inner join glo_pessoas_fj psa on (psa.codigo = vd.pessoa_fj an' +
        'd psa.cnpj = vd.cnpj)'
      
        '  where vd.cnpj = :cnpj and usuario = :usuario and data_caixa = ' +
        ':data'
      '  and turno = :turno and cancelada = '#39'S'#39
      'order by vd.codigo')
    Left = 40
    Top = 482
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
        Name = 'TURNO'
        ParamType = ptUnknown
      end>
    object qryVndCancADMCxCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object qryVndCancADMCxHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDAS"."HISTORICO"'
      Size = 100
    end
    object qryVndCancADMCxPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object qryVndCancADMCxNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object qryVndCancADMCxVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
    end
    object qryVndCancADMCxNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object qryVndCancADMCxNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
  end
  object qryResumoCaixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_RESUMO_CAIXA(:CNPJ , :DATA, :USUARIO, :TURNO,:' +
        'CONTA)')
    Left = 144
    Top = 484
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
    object qryResumoCaixaDIN_VDVISTA: TIBBCDField
      FieldName = 'DIN_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."DIN_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaDIN_VDPRAZO: TIBBCDField
      FieldName = 'DIN_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."DIN_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaDIN_RECBTO: TIBBCDField
      FieldName = 'DIN_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA"."DIN_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCHVISTA_VDVISTA: TIBBCDField
      FieldName = 'CHVISTA_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."CHVISTA_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCHVISTA_VDPRAZO: TIBBCDField
      FieldName = 'CHVISTA_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."CHVISTA_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCHVISTA_RECBTO: TIBBCDField
      FieldName = 'CHVISTA_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA"."CHVISTA_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCHPRE_VDVISTA: TIBBCDField
      FieldName = 'CHPRE_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."CHPRE_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCHPRE_VDPRAZO: TIBBCDField
      FieldName = 'CHPRE_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."CHPRE_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCHPRE_RECBTO: TIBBCDField
      FieldName = 'CHPRE_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA"."CHPRE_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCRTVISTA_VDVISTA: TIBBCDField
      FieldName = 'CRTVISTA_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."CRTVISTA_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCRTVISTA_VDPRAZO: TIBBCDField
      FieldName = 'CRTVISTA_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."CRTVISTA_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCRTVISTA_RECBTO: TIBBCDField
      FieldName = 'CRTVISTA_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA"."CRTVISTA_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCRTPRE_VDVISTA: TIBBCDField
      FieldName = 'CRTPRE_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."CRTPRE_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCRTPRE_VDPRAZO: TIBBCDField
      FieldName = 'CRTPRE_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."CRTPRE_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCRTPRE_RECBTO: TIBBCDField
      FieldName = 'CRTPRE_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA"."CRTPRE_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTICKET_VDVISTA: TIBBCDField
      FieldName = 'TICKET_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."TICKET_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTICKET_VDPRAZO: TIBBCDField
      FieldName = 'TICKET_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."TICKET_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTICKET_RECBTO: TIBBCDField
      FieldName = 'TICKET_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA"."TICKET_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_DINHEIRO: TIBBCDField
      FieldName = 'TOTAL_DINHEIRO'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_CHEQUE_VISTA: TIBBCDField
      FieldName = 'TOTAL_CHEQUE_VISTA'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_CHEQUE_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_CHEQUE_PRE: TIBBCDField
      FieldName = 'TOTAL_CHEQUE_PRE'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_CHEQUE_PRE"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_CARTAO_VISTA: TIBBCDField
      FieldName = 'TOTAL_CARTAO_VISTA'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_CARTAO_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_CARTAO_PRE: TIBBCDField
      FieldName = 'TOTAL_CARTAO_PRE'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_CARTAO_PRE"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_TROCO: TIBBCDField
      FieldName = 'TOTAL_TROCO'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_TROCO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_GERAL: TIBBCDField
      FieldName = 'TOTAL_GERAL'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_GERAL"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_CHEQUE: TIBBCDField
      FieldName = 'TOTAL_CHEQUE'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_CHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_CARTAO: TIBBCDField
      FieldName = 'TOTAL_CARTAO'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_CARTAO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_TICKET: TIBBCDField
      FieldName = 'TOTAL_TICKET'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_TICKET"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_VALE_TROCO: TIBBCDField
      FieldName = 'TOTAL_VALE_TROCO'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_VALE_TROCO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_ENTCX: TIBBCDField
      FieldName = 'TOTAL_ENTCX'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_ENTCX"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_SAIDACX: TIBBCDField
      FieldName = 'TOTAL_SAIDACX'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_SAIDACX"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_VDVISTA: TIBBCDField
      FieldName = 'TOTAL_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_VDPRAZO: TIBBCDField
      FieldName = 'TOTAL_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_PARCELADO: TIBBCDField
      FieldName = 'TOTAL_PARCELADO'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_PARCELADO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTOTAL_CAIXA: TIBBCDField
      FieldName = 'TOTAL_CAIXA'
      Origin = '"PCD_RESUMO_CAIXA"."TOTAL_CAIXA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTROCO_VDVISTA: TIBBCDField
      FieldName = 'TROCO_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA"."TROCO_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaTROCO_VDPRAZO: TIBBCDField
      FieldName = 'TROCO_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."TROCO_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaSALDO_ANTERIOR: TIBBCDField
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"PCD_RESUMO_CAIXA"."SALDO_ANTERIOR"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaCP_SLD_ANT: TIBStringField
      FieldName = 'CP_SLD_ANT'
      Origin = '"PCD_RESUMO_CAIXA"."CP_SLD_ANT"'
      FixedChar = True
      Size = 1
    end
    object qryResumoCaixaAB_CXDINHEIRO: TIBBCDField
      FieldName = 'AB_CXDINHEIRO'
      Origin = '"PCD_RESUMO_CAIXA"."AB_CXDINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaAB_CXCHEQUE: TIBBCDField
      FieldName = 'AB_CXCHEQUE'
      Origin = '"PCD_RESUMO_CAIXA"."AB_CXCHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaAB_CXTICKET: TIBBCDField
      FieldName = 'AB_CXTICKET'
      Origin = '"PCD_RESUMO_CAIXA"."AB_CXTICKET"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaAB_CXTOTAL: TIBBCDField
      FieldName = 'AB_CXTOTAL'
      Origin = '"PCD_RESUMO_CAIXA"."AB_CXTOTAL"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaAB_CXMOEDA: TIBBCDField
      FieldName = 'AB_CXMOEDA'
      Origin = '"PCD_RESUMO_CAIXA"."AB_CXMOEDA"'
      Precision = 18
      Size = 4
    end
    object qryResumoCaixaAB_CXCHEQUE_PRAZO: TIBBCDField
      FieldName = 'AB_CXCHEQUE_PRAZO'
      Origin = '"PCD_RESUMO_CAIXA"."AB_CXCHEQUE_PRAZO"'
      Precision = 18
      Size = 4
    end
  end
  object qryVendasADMCxAG: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select sum(p.cartao) cartao, sum(p.cheque) cheque,'
      '       sum(p.dinheiro) dinheiro, sum(p.ticket) ticket,'
      '       sum(p.entrada) entrada, sum(p.desc_acres) desc_acres,'
      '       sum(p.total) total, sum(p.total_bruto) total_bruto,'
      '       sum(p.liquido) liquido, sum(p.vale_troco) vale_troco,'
      '       sum(p.troco) troco, p.tipo , p.nome_vendedor'
      
        'from ADM_CX_VER_FAT_VENDAS_CAIXA(:CNPJ , :DATA, :USUARIO, :TURNO' +
        ') p'
      'group by p.tipo, p.vendedor, p.nome_vendedor'
      'order by tipo, p.nome_vendedor')
    Left = 272
    Top = 483
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
    object qryVendasADMCxAGCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGTICKET: TIBBCDField
      FieldName = 'TICKET'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGTOTAL_BRUTO: TIBBCDField
      FieldName = 'TOTAL_BRUTO'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGVALE_TROCO: TIBBCDField
      FieldName = 'VALE_TROCO'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGTROCO: TIBBCDField
      FieldName = 'TROCO'
      Precision = 18
      Size = 4
    end
    object qryVendasADMCxAGTIPO: TIBStringField
      FieldName = 'TIPO'
      FixedChar = True
      Size = 6
    end
    object qryVendasADMCxAGNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Size = 50
    end
  end
  object qryResCxPeriodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      
        'select * from PCD_RESUMO_CAIXA_PERIODO(:cnpj,:data_ini,:data_fin' +
        ')')
    Left = 120
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data_fin'
        ParamType = ptUnknown
      end>
    object qryResCxPeriodoDIN_VDVISTA: TIBBCDField
      FieldName = 'DIN_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."DIN_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoDIN_VDPRAZO: TIBBCDField
      FieldName = 'DIN_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."DIN_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoDIN_RECBTO: TIBBCDField
      FieldName = 'DIN_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."DIN_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCHVISTA_VDVISTA: TIBBCDField
      FieldName = 'CHVISTA_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CHVISTA_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCHVISTA_VDPRAZO: TIBBCDField
      FieldName = 'CHVISTA_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CHVISTA_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCHVISTA_RECBTO: TIBBCDField
      FieldName = 'CHVISTA_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CHVISTA_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCHPRE_VDVISTA: TIBBCDField
      FieldName = 'CHPRE_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CHPRE_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCHPRE_VDPRAZO: TIBBCDField
      FieldName = 'CHPRE_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CHPRE_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCHPRE_RECBTO: TIBBCDField
      FieldName = 'CHPRE_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CHPRE_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCRTVISTA_VDVISTA: TIBBCDField
      FieldName = 'CRTVISTA_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CRTVISTA_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCRTVISTA_VDPRAZO: TIBBCDField
      FieldName = 'CRTVISTA_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CRTVISTA_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCRTVISTA_RECBTO: TIBBCDField
      FieldName = 'CRTVISTA_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CRTVISTA_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCRTPRE_VDVISTA: TIBBCDField
      FieldName = 'CRTPRE_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CRTPRE_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCRTPRE_VDPRAZO: TIBBCDField
      FieldName = 'CRTPRE_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CRTPRE_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCRTPRE_RECBTO: TIBBCDField
      FieldName = 'CRTPRE_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CRTPRE_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTICKET_VDVISTA: TIBBCDField
      FieldName = 'TICKET_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TICKET_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTICKET_VDPRAZO: TIBBCDField
      FieldName = 'TICKET_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TICKET_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTICKET_RECBTO: TIBBCDField
      FieldName = 'TICKET_RECBTO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TICKET_RECBTO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_DINHEIRO: TIBBCDField
      FieldName = 'TOTAL_DINHEIRO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_CHEQUE_VISTA: TIBBCDField
      FieldName = 'TOTAL_CHEQUE_VISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_CHEQUE_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_CHEQUE_PRE: TIBBCDField
      FieldName = 'TOTAL_CHEQUE_PRE'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_CHEQUE_PRE"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_CARTAO_VISTA: TIBBCDField
      FieldName = 'TOTAL_CARTAO_VISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_CARTAO_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_CARTAO_PRE: TIBBCDField
      FieldName = 'TOTAL_CARTAO_PRE'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_CARTAO_PRE"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_TROCO: TIBBCDField
      FieldName = 'TOTAL_TROCO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_TROCO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTROCO_VDVISTA: TIBBCDField
      FieldName = 'TROCO_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TROCO_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTROCO_VDPRAZO: TIBBCDField
      FieldName = 'TROCO_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TROCO_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_VALE_TROCO: TIBBCDField
      FieldName = 'TOTAL_VALE_TROCO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_VALE_TROCO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_GERAL: TIBBCDField
      FieldName = 'TOTAL_GERAL'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_GERAL"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_CHEQUE: TIBBCDField
      FieldName = 'TOTAL_CHEQUE'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_CHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_CARTAO: TIBBCDField
      FieldName = 'TOTAL_CARTAO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_CARTAO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_TICKET: TIBBCDField
      FieldName = 'TOTAL_TICKET'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_TICKET"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_ENTCX: TIBBCDField
      FieldName = 'TOTAL_ENTCX'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_ENTCX"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_SAIDACX: TIBBCDField
      FieldName = 'TOTAL_SAIDACX'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_SAIDACX"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_VDVISTA: TIBBCDField
      FieldName = 'TOTAL_VDVISTA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_VDVISTA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_VDPRAZO: TIBBCDField
      FieldName = 'TOTAL_VDPRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_VDPRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_PARCELADO: TIBBCDField
      FieldName = 'TOTAL_PARCELADO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_PARCELADO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoTOTAL_CAIXA: TIBBCDField
      FieldName = 'TOTAL_CAIXA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."TOTAL_CAIXA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoSALDO_ANTERIOR: TIBBCDField
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."SALDO_ANTERIOR"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoCP_SLD_ANT: TIBStringField
      FieldName = 'CP_SLD_ANT'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."CP_SLD_ANT"'
      FixedChar = True
      Size = 1
    end
    object qryResCxPeriodoAB_CXDINHEIRO: TIBBCDField
      FieldName = 'AB_CXDINHEIRO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."AB_CXDINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoAB_CXMOEDA: TIBBCDField
      FieldName = 'AB_CXMOEDA'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."AB_CXMOEDA"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoAB_CXCHEQUE: TIBBCDField
      FieldName = 'AB_CXCHEQUE'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."AB_CXCHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoAB_CXCHEQUE_PRAZO: TIBBCDField
      FieldName = 'AB_CXCHEQUE_PRAZO'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."AB_CXCHEQUE_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoAB_CXTICKET: TIBBCDField
      FieldName = 'AB_CXTICKET'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."AB_CXTICKET"'
      Precision = 18
      Size = 4
    end
    object qryResCxPeriodoAB_CXTOTAL: TIBBCDField
      FieldName = 'AB_CXTOTAL'
      Origin = '"PCD_RESUMO_CAIXA_PERIODO"."AB_CXTOTAL"'
      Precision = 18
      Size = 4
    end
  end
end
