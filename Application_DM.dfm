object DmApp: TDmApp
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  OnDestroy = DataModuleDestroy
  Left = 2
  Top = 1
  Height = 517
  Width = 669
  object Database: TIBDatabase
    Connected = True
    DatabaseName = 'D:\Sistemas\HelpStore\Dados\comparer\HELPSTORE_PADRAO.GDB'
    Params.Strings = (
      'password=sbrsige'
      'user_name=SYSDBA')
    LoginPrompt = False
    DefaultTransaction = Transaction
    AllowStreamedConnected = False
    Left = 128
    Top = 24
  end
  object Transaction: TIBTransaction
    Active = True
    DefaultDatabase = Database
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 208
    Top = 19
  end
  object TransactionProc: TIBTransaction
    DefaultDatabase = Database
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 128
    Top = 80
  end
  object Eventos: TIBEvents
    AutoRegister = True
    Database = Database
    Registered = False
    OnEventAlert = EventosEventAlert
    Left = 32
    Top = 80
  end
  object Tabelas_Sistema: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from SIS_TABELAS_SISTEMA'
      'where'
      '  TABELA = :OLD_TABELA')
    InsertSQL.Strings = (
      'insert into SIS_TABELAS_SISTEMA'
      '  (NOME, TABELA)'
      'values'
      '  (:NOME, :TABELA)')
    RefreshSQL.Strings = (
      'Select '
      '  TABELA,'
      '  NOME'
      'from SIS_TABELAS_SISTEMA '
      'where'
      '  TABELA = :TABELA')
    SelectSQL.Strings = (
      'select NOME, '
      '          TABELA '
      'from SIS_TABELAS_SISTEMA'
      '')
    ModifySQL.Strings = (
      'update SIS_TABELAS_SISTEMA'
      'set'
      '  NOME = :NOME,'
      '  TABELA = :TABELA'
      'where'
      '  TABELA = :OLD_TABELA')
    Left = 32
    Top = 144
    object Tabelas_SistemaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SIS_TABELAS_SISTEMA"."NOME"'
      Required = True
      Size = 50
    end
    object Tabelas_SistemaTABELA: TIBStringField
      DisplayLabel = 'Tabela'
      FieldName = 'TABELA'
      Origin = '"SIS_TABELAS_SISTEMA"."TABELA"'
      Required = True
      Size = 50
    end
  end
  object Tabelas_Campos: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from SIS_TABELAS_SISTEMA_CAMPOS'
      'where'
      '  CAMPO = :OLD_CAMPO and'
      '  TABELA = :OLD_TABELA')
    InsertSQL.Strings = (
      'insert into SIS_TABELAS_SISTEMA_CAMPOS'
      '  (CAMPO, MASCARA, NOME, NULO, TABELA, TIPO_CAMPO, DISPLAY)'
      'values'
      
        '  (:CAMPO, :MASCARA, :NOME, :NULO, :TABELA, :TIPO_CAMPO, :DISPLA' +
        'Y)')
    RefreshSQL.Strings = (
      'Select '
      '  TABELA,'
      '  CAMPO,'
      '  NOME,'
      '  TIPO_CAMPO,'
      '  MASCARA,'
      '  NULO,'
      '  DISPLAY'
      'from SIS_TABELAS_SISTEMA_CAMPOS '
      'where'
      '  CAMPO = :CAMPO and'
      '  TABELA = :TABELA')
    SelectSQL.Strings = (
      'select '
      '         CAMPO, '
      '         MASCARA, '
      '         NOME, '
      '         NULO, '
      '         TABELA, '
      '         TIPO_CAMPO,'
      '         DISPLAY '
      'from SIS_TABELAS_SISTEMA_CAMPOS'
      'WHERE TABELA = :TABELA')
    ModifySQL.Strings = (
      'update SIS_TABELAS_SISTEMA_CAMPOS'
      'set'
      '  CAMPO = :CAMPO,'
      '  MASCARA = :MASCARA,'
      '  NOME = :NOME,'
      '  NULO = :NULO,'
      '  TABELA = :TABELA,'
      '  TIPO_CAMPO = :TIPO_CAMPO,'
      '  DISPLAY = :DISPLAY'
      'where'
      '  CAMPO = :OLD_CAMPO and'
      '  TABELA = :OLD_TABELA')
    Left = 208
    Top = 83
  end
  object DsTabela: TDataSource
    DataSet = Tabelas_Sistema
    Left = 32
    Top = 208
  end
  object Perfil_Computador: TIBDataSet
    Database = Database
    Transaction = Transaction
    BeforeOpen = Perfil_ComputadorBeforeOpen
    DeleteSQL.Strings = (
      'delete from SIS_PERFIL_COMPUTADOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  COMPUTADOR = :OLD_COMPUTADOR')
    InsertSQL.Strings = (
      'insert into SIS_PERFIL_COMPUTADOR'
      
        '  (AUTENTICAR, BAL_BITSDADOS, BAL_BITSPARADA, BAL_BITSPORSEGUNDO' +
        ', BAL_FLUXO, '
      
        '   BAL_PARIDADE, CNPJ, COMPUTADOR, EMITE_COMPROVANTE_PDV, EST_MI' +
        'N_ENVIA_AUTOMATICO, '
      
        '   EXIBE_MAPA, FOLHA_PENDENCIAS, FOLHA_PRAZO_CONDICIONAL, FOLHA_' +
        'PRAZO_PEDIDO, '
      
        '   FOLHA_VISTA_CONDICIONAL, FOLHA_VISTA_PEDIDO, FOLHA_VISTA_TROC' +
        'A, IMP_FORCADO_PROD_PED, '
      
        '   IMP_NEGRITO_EMPRESA_36, IMPRIME_PROMISSORIA, LEITOR_BITSDADOS' +
        ', LEITOR_BITSPARADA, '
      
        '   LEITOR_BITSPORSEGUNDO, LEITOR_FLUXO, LEITOR_PARIDADE, LET_BIT' +
        'SDADOS, '
      
        '   LET_BITSPARADA, LET_BITSPORSEGUNDO, LET_FLUXO, LET_PARIDADE, ' +
        'PDV_AGENTE, '
      
        '   PDV_CONFIRMA_IMPRESSAO, PDV_CONFIRMA_IMPRESSAO_VISTA, PDV_CON' +
        'TRA_VALE, '
      
        '   PDV_EMITE_COMPROVANTE_NF, PDV_FF, PDV_II, PDV_LINHA_RECIBO, P' +
        'DV_T01, '
      
        '   PDV_T02, PDV_T03, PDV_T04, PDV_T05, PDV_T06, PORTA_IMP_CONDIC' +
        'IONAL_PRAZO, '
      
        '   PORTA_IMP_CONDICIONAL_VISTA, PORTA_IMP_PEDIDO_PRAZO, PORTA_IM' +
        'P_PEDIDO_VISTA, '
      
        '   PORTA_PDV, PORTA_PENDENCIAS, PORTA_RECIBO, PORTABALANCA, PORT' +
        'ALEITOR, '
      
        '   PORTALEITORCHEQUE, TIPO_FOLHA_CADASTROS, TIPO_IMP_CONDICIONAL' +
        ', TIPO_IMP_PDV, '
      
        '   TIPO_IMP_PEDIDO, VIAS_CONDICIONAL_PRAZO, VIAS_CONDICIONAL_VIS' +
        'TA, VIAS_PEDIDO_PRAZO, '
      '   VIAS_PEDIDO_VISTA, VIAS_RECIBO)'
      'values'
      
        '  (:AUTENTICAR, :BAL_BITSDADOS, :BAL_BITSPARADA, :BAL_BITSPORSEG' +
        'UNDO, :BAL_FLUXO, '
      
        '   :BAL_PARIDADE, :CNPJ, :COMPUTADOR, :EMITE_COMPROVANTE_PDV, :E' +
        'ST_MIN_ENVIA_AUTOMATICO, '
      
        '   :EXIBE_MAPA, :FOLHA_PENDENCIAS, :FOLHA_PRAZO_CONDICIONAL, :FO' +
        'LHA_PRAZO_PEDIDO, '
      
        '   :FOLHA_VISTA_CONDICIONAL, :FOLHA_VISTA_PEDIDO, :FOLHA_VISTA_T' +
        'ROCA, :IMP_FORCADO_PROD_PED, '
      
        '   :IMP_NEGRITO_EMPRESA_36, :IMPRIME_PROMISSORIA, :LEITOR_BITSDA' +
        'DOS, :LEITOR_BITSPARADA, '
      
        '   :LEITOR_BITSPORSEGUNDO, :LEITOR_FLUXO, :LEITOR_PARIDADE, :LET' +
        '_BITSDADOS, '
      
        '   :LET_BITSPARADA, :LET_BITSPORSEGUNDO, :LET_FLUXO, :LET_PARIDA' +
        'DE, :PDV_AGENTE, '
      
        '   :PDV_CONFIRMA_IMPRESSAO, :PDV_CONFIRMA_IMPRESSAO_VISTA, :PDV_' +
        'CONTRA_VALE, '
      
        '   :PDV_EMITE_COMPROVANTE_NF, :PDV_FF, :PDV_II, :PDV_LINHA_RECIB' +
        'O, :PDV_T01, '
      
        '   :PDV_T02, :PDV_T03, :PDV_T04, :PDV_T05, :PDV_T06, :PORTA_IMP_' +
        'CONDICIONAL_PRAZO, '
      
        '   :PORTA_IMP_CONDICIONAL_VISTA, :PORTA_IMP_PEDIDO_PRAZO, :PORTA' +
        '_IMP_PEDIDO_VISTA, '
      
        '   :PORTA_PDV, :PORTA_PENDENCIAS, :PORTA_RECIBO, :PORTABALANCA, ' +
        ':PORTALEITOR, '
      
        '   :PORTALEITORCHEQUE, :TIPO_FOLHA_CADASTROS, :TIPO_IMP_CONDICIO' +
        'NAL, :TIPO_IMP_PDV, '
      
        '   :TIPO_IMP_PEDIDO, :VIAS_CONDICIONAL_PRAZO, :VIAS_CONDICIONAL_' +
        'VISTA, '
      '   :VIAS_PEDIDO_PRAZO, :VIAS_PEDIDO_VISTA, :VIAS_RECIBO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  COMPUTADOR,'
      '  FOLHA_VISTA_CONDICIONAL,'
      '  FOLHA_PRAZO_CONDICIONAL,'
      '  FOLHA_VISTA_PEDIDO,'
      '  FOLHA_PRAZO_PEDIDO,'
      '  TIPO_IMP_CONDICIONAL,'
      '  TIPO_IMP_PEDIDO,'
      '  PORTA_IMP_CONDICIONAL_VISTA,'
      '  PORTA_IMP_PEDIDO_VISTA,'
      '  PORTA_IMP_CONDICIONAL_PRAZO,'
      '  PORTA_IMP_PEDIDO_PRAZO,'
      '  VIAS_CONDICIONAL_VISTA,'
      '  VIAS_CONDICIONAL_PRAZO,'
      '  VIAS_PEDIDO_VISTA,'
      '  VIAS_PEDIDO_PRAZO,'
      '  IMPRIME_PROMISSORIA,'
      '  IMP_FORCADO_PROD_PED,'
      '  VIAS_RECIBO,'
      '  PORTA_RECIBO,'
      '  FOLHA_PENDENCIAS,'
      '  PORTA_PENDENCIAS,'
      '  IMP_NEGRITO_EMPRESA_36,'
      '  PDV_T01,'
      '  PDV_T02,'
      '  PDV_T03,'
      '  PDV_T04,'
      '  PDV_T05,'
      '  PDV_T06,'
      '  PDV_FF,'
      '  PDV_II,'
      '  TIPO_IMP_PDV,'
      '  PORTA_PDV,'
      '  EMITE_COMPROVANTE_PDV,'
      '  PORTALEITORCHEQUE,'
      '  LEITOR_BITSPORSEGUNDO,'
      '  LEITOR_BITSDADOS,'
      '  LEITOR_PARIDADE,'
      '  LEITOR_BITSPARADA,'
      '  LEITOR_FLUXO,'
      '  TIPO_FOLHA_CADASTROS,'
      '  FOLHA_VISTA_TROCA,'
      '  PDV_EMITE_COMPROVANTE_NF,'
      '  PDV_CONFIRMA_IMPRESSAO,'
      '  PDV_AGENTE,'
      '  PDV_CONTRA_VALE,'
      '  AUTENTICAR,'
      '  PDV_LINHA_RECIBO,'
      '  PDV_CONFIRMA_IMPRESSAO_VISTA,'
      '  PDV_EMITE_ECF_FIM,'
      '  PDV_EMITE_ECF_FIM_MODELO,'
      '  BAL_BITSPORSEGUNDO,'
      '  BAL_BITSDADOS,'
      '  BAL_PARIDADE,'
      '  BAL_BITSPARADA,'
      '  BAL_FLUXO,'
      '  PORTABALANCA,'
      '  LET_BITSPORSEGUNDO,'
      '  LET_BITSDADOS,'
      '  LET_PARIDADE,'
      '  LET_BITSPARADA,'
      '  LET_FLUXO,'
      '  PORTALEITOR,'
      '  EST_MIN_ENVIA_AUTOMATICO,'
      '  EXIBE_MAPA'
      'from SIS_PERFIL_COMPUTADOR '
      'where'
      '  CNPJ = :CNPJ and'
      '  COMPUTADOR = :COMPUTADOR')
    SelectSQL.Strings = (
      'SELECT'
      '    CNPJ                         ,'
      '    COMPUTADOR                   ,'
      '    FOLHA_VISTA_CONDICIONAL      ,'
      '    FOLHA_PRAZO_CONDICIONAL      ,'
      '    FOLHA_VISTA_PEDIDO           ,'
      '    FOLHA_PRAZO_PEDIDO           ,'
      '    TIPO_IMP_CONDICIONAL         ,'
      '    TIPO_IMP_PEDIDO              ,'
      '    PORTA_IMP_CONDICIONAL_VISTA  ,'
      '    PORTA_IMP_PEDIDO_VISTA       ,'
      '    PORTA_IMP_CONDICIONAL_PRAZO  ,'
      '    PORTA_IMP_PEDIDO_PRAZO       ,'
      '    VIAS_CONDICIONAL_VISTA       ,'
      '    VIAS_CONDICIONAL_PRAZO       ,'
      '    VIAS_PEDIDO_VISTA            ,'
      '    VIAS_PEDIDO_PRAZO            ,'
      '    IMPRIME_PROMISSORIA ,'
      '    IMP_FORCADO_PROD_PED       ,'
      '    VIAS_RECIBO,'
      '    PORTA_RECIBO,'
      '    FOLHA_PENDENCIAS,'
      '    PORTA_PENDENCIAS,'
      '    IMP_NEGRITO_EMPRESA_36,'
      '    PDV_T01,'
      '    PDV_T02,'
      '    PDV_T03,'
      '    PDV_T04,'
      '    PDV_T05,'
      '    PDV_T06,'
      '    PDV_FF,'
      '    PDV_II,'
      '    TIPO_IMP_PDV,'
      '    PORTA_PDV,'
      '    EMITE_COMPROVANTE_PDV,'
      '    TIPO_FOLHA_CADASTROS,'
      '    PORTALEITORCHEQUE            ,'
      '    LEITOR_BITSPORSEGUNDO ,'
      '    LEITOR_BITSDADOS             ,'
      '    LEITOR_PARIDADE              ,'
      '    LEITOR_BITSPARADA          ,'
      '    LEITOR_FLUXO                ,'
      '    FOLHA_VISTA_TROCA,'
      '    PDV_EMITE_COMPROVANTE_NF,'
      '    PDV_CONFIRMA_IMPRESSAO,'
      '    PDV_AGENTE,'
      '    PDV_CONTRA_VALE,'
      '    AUTENTICAR,'
      '    PDV_LINHA_RECIBO,'
      '    PDV_CONFIRMA_IMPRESSAO_VISTA,'
      '    BAL_BITSPORSEGUNDO, '
      '    BAL_BITSDADOS,'
      '    BAL_PARIDADE, '
      '    BAL_BITSPARADA,'
      '    BAL_FLUXO,'
      '    PORTABALANCA, '
      '    LET_BITSPORSEGUNDO,'
      '    LET_BITSDADOS,'
      '    LET_PARIDADE,'
      '    LET_BITSPARADA,'
      '    LET_FLUXO,'
      '    PORTALEITOR,'
      'EST_MIN_ENVIA_AUTOMATICO,'
      'EXIBE_MAPA'
      'FROM SIS_PERFIL_COMPUTADOR'
      'WHERE CNPJ = :CNPJ AND COMPUTADOR = :COMPUTADOR')
    ModifySQL.Strings = (
      'update SIS_PERFIL_COMPUTADOR'
      'set'
      '  AUTENTICAR = :AUTENTICAR,'
      '  BAL_BITSDADOS = :BAL_BITSDADOS,'
      '  BAL_BITSPARADA = :BAL_BITSPARADA,'
      '  BAL_BITSPORSEGUNDO = :BAL_BITSPORSEGUNDO,'
      '  BAL_FLUXO = :BAL_FLUXO,'
      '  BAL_PARIDADE = :BAL_PARIDADE,'
      '  CNPJ = :CNPJ,'
      '  COMPUTADOR = :COMPUTADOR,'
      '  EMITE_COMPROVANTE_PDV = :EMITE_COMPROVANTE_PDV,'
      '  EST_MIN_ENVIA_AUTOMATICO = :EST_MIN_ENVIA_AUTOMATICO,'
      '  EXIBE_MAPA = :EXIBE_MAPA,'
      '  FOLHA_PENDENCIAS = :FOLHA_PENDENCIAS,'
      '  FOLHA_PRAZO_CONDICIONAL = :FOLHA_PRAZO_CONDICIONAL,'
      '  FOLHA_PRAZO_PEDIDO = :FOLHA_PRAZO_PEDIDO,'
      '  FOLHA_VISTA_CONDICIONAL = :FOLHA_VISTA_CONDICIONAL,'
      '  FOLHA_VISTA_PEDIDO = :FOLHA_VISTA_PEDIDO,'
      '  FOLHA_VISTA_TROCA = :FOLHA_VISTA_TROCA,'
      '  IMP_FORCADO_PROD_PED = :IMP_FORCADO_PROD_PED,'
      '  IMP_NEGRITO_EMPRESA_36 = :IMP_NEGRITO_EMPRESA_36,'
      '  IMPRIME_PROMISSORIA = :IMPRIME_PROMISSORIA,'
      '  LEITOR_BITSDADOS = :LEITOR_BITSDADOS,'
      '  LEITOR_BITSPARADA = :LEITOR_BITSPARADA,'
      '  LEITOR_BITSPORSEGUNDO = :LEITOR_BITSPORSEGUNDO,'
      '  LEITOR_FLUXO = :LEITOR_FLUXO,'
      '  LEITOR_PARIDADE = :LEITOR_PARIDADE,'
      '  LET_BITSDADOS = :LET_BITSDADOS,'
      '  LET_BITSPARADA = :LET_BITSPARADA,'
      '  LET_BITSPORSEGUNDO = :LET_BITSPORSEGUNDO,'
      '  LET_FLUXO = :LET_FLUXO,'
      '  LET_PARIDADE = :LET_PARIDADE,'
      '  PDV_AGENTE = :PDV_AGENTE,'
      '  PDV_CONFIRMA_IMPRESSAO = :PDV_CONFIRMA_IMPRESSAO,'
      '  PDV_CONFIRMA_IMPRESSAO_VISTA = :PDV_CONFIRMA_IMPRESSAO_VISTA,'
      '  PDV_CONTRA_VALE = :PDV_CONTRA_VALE,'
      '  PDV_EMITE_COMPROVANTE_NF = :PDV_EMITE_COMPROVANTE_NF,'
      '  PDV_FF = :PDV_FF,'
      '  PDV_II = :PDV_II,'
      '  PDV_LINHA_RECIBO = :PDV_LINHA_RECIBO,'
      '  PDV_T01 = :PDV_T01,'
      '  PDV_T02 = :PDV_T02,'
      '  PDV_T03 = :PDV_T03,'
      '  PDV_T04 = :PDV_T04,'
      '  PDV_T05 = :PDV_T05,'
      '  PDV_T06 = :PDV_T06,'
      '  PORTA_IMP_CONDICIONAL_PRAZO = :PORTA_IMP_CONDICIONAL_PRAZO,'
      '  PORTA_IMP_CONDICIONAL_VISTA = :PORTA_IMP_CONDICIONAL_VISTA,'
      '  PORTA_IMP_PEDIDO_PRAZO = :PORTA_IMP_PEDIDO_PRAZO,'
      '  PORTA_IMP_PEDIDO_VISTA = :PORTA_IMP_PEDIDO_VISTA,'
      '  PORTA_PDV = :PORTA_PDV,'
      '  PORTA_PENDENCIAS = :PORTA_PENDENCIAS,'
      '  PORTA_RECIBO = :PORTA_RECIBO,'
      '  PORTABALANCA = :PORTABALANCA,'
      '  PORTALEITOR = :PORTALEITOR,'
      '  PORTALEITORCHEQUE = :PORTALEITORCHEQUE,'
      '  TIPO_FOLHA_CADASTROS = :TIPO_FOLHA_CADASTROS,'
      '  TIPO_IMP_CONDICIONAL = :TIPO_IMP_CONDICIONAL,'
      '  TIPO_IMP_PDV = :TIPO_IMP_PDV,'
      '  TIPO_IMP_PEDIDO = :TIPO_IMP_PEDIDO,'
      '  VIAS_CONDICIONAL_PRAZO = :VIAS_CONDICIONAL_PRAZO,'
      '  VIAS_CONDICIONAL_VISTA = :VIAS_CONDICIONAL_VISTA,'
      '  VIAS_PEDIDO_PRAZO = :VIAS_PEDIDO_PRAZO,'
      '  VIAS_PEDIDO_VISTA = :VIAS_PEDIDO_VISTA,'
      '  VIAS_RECIBO = :VIAS_RECIBO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  COMPUTADOR = :OLD_COMPUTADOR')
    Left = 208
    Top = 147
    object Perfil_ComputadorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_PERFIL_COMPUTADOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Perfil_ComputadorCOMPUTADOR: TIBStringField
      FieldName = 'COMPUTADOR'
      Origin = '"SIS_PERFIL_COMPUTADOR"."COMPUTADOR"'
      Required = True
    end
    object Perfil_ComputadorFOLHA_VISTA_CONDICIONAL: TIBStringField
      FieldName = 'FOLHA_VISTA_CONDICIONAL'
      Origin = '"SIS_PERFIL_COMPUTADOR"."FOLHA_VISTA_CONDICIONAL"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorFOLHA_PRAZO_CONDICIONAL: TIBStringField
      FieldName = 'FOLHA_PRAZO_CONDICIONAL'
      Origin = '"SIS_PERFIL_COMPUTADOR"."FOLHA_PRAZO_CONDICIONAL"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorFOLHA_VISTA_PEDIDO: TIBStringField
      FieldName = 'FOLHA_VISTA_PEDIDO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."FOLHA_VISTA_PEDIDO"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorFOLHA_PRAZO_PEDIDO: TIBStringField
      FieldName = 'FOLHA_PRAZO_PEDIDO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."FOLHA_PRAZO_PEDIDO"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorTIPO_IMP_CONDICIONAL: TIBStringField
      FieldName = 'TIPO_IMP_CONDICIONAL'
      Origin = '"SIS_PERFIL_COMPUTADOR"."TIPO_IMP_CONDICIONAL"'
    end
    object Perfil_ComputadorTIPO_IMP_PEDIDO: TIBStringField
      FieldName = 'TIPO_IMP_PEDIDO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."TIPO_IMP_PEDIDO"'
    end
    object Perfil_ComputadorPORTA_IMP_CONDICIONAL_VISTA: TIBStringField
      FieldName = 'PORTA_IMP_CONDICIONAL_VISTA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTA_IMP_CONDICIONAL_VISTA"'
    end
    object Perfil_ComputadorPORTA_IMP_PEDIDO_VISTA: TIBStringField
      FieldName = 'PORTA_IMP_PEDIDO_VISTA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTA_IMP_PEDIDO_VISTA"'
    end
    object Perfil_ComputadorPORTA_IMP_CONDICIONAL_PRAZO: TIBStringField
      FieldName = 'PORTA_IMP_CONDICIONAL_PRAZO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTA_IMP_CONDICIONAL_PRAZO"'
    end
    object Perfil_ComputadorPORTA_IMP_PEDIDO_PRAZO: TIBStringField
      FieldName = 'PORTA_IMP_PEDIDO_PRAZO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTA_IMP_PEDIDO_PRAZO"'
    end
    object Perfil_ComputadorVIAS_CONDICIONAL_VISTA: TIntegerField
      FieldName = 'VIAS_CONDICIONAL_VISTA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."VIAS_CONDICIONAL_VISTA"'
    end
    object Perfil_ComputadorVIAS_CONDICIONAL_PRAZO: TIntegerField
      FieldName = 'VIAS_CONDICIONAL_PRAZO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."VIAS_CONDICIONAL_PRAZO"'
    end
    object Perfil_ComputadorVIAS_PEDIDO_VISTA: TIntegerField
      FieldName = 'VIAS_PEDIDO_VISTA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."VIAS_PEDIDO_VISTA"'
    end
    object Perfil_ComputadorVIAS_PEDIDO_PRAZO: TIntegerField
      FieldName = 'VIAS_PEDIDO_PRAZO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."VIAS_PEDIDO_PRAZO"'
    end
    object Perfil_ComputadorIMPRIME_PROMISSORIA: TIBStringField
      FieldName = 'IMPRIME_PROMISSORIA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."IMPRIME_PROMISSORIA"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorIMP_FORCADO_PROD_PED: TIBStringField
      FieldName = 'IMP_FORCADO_PROD_PED'
      Origin = '"SIS_PERFIL_COMPUTADOR"."IMP_FORCADO_PROD_PED"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorVIAS_RECIBO: TIntegerField
      FieldName = 'VIAS_RECIBO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."VIAS_RECIBO"'
    end
    object Perfil_ComputadorPORTA_RECIBO: TIBStringField
      FieldName = 'PORTA_RECIBO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTA_RECIBO"'
    end
    object Perfil_ComputadorFOLHA_PENDENCIAS: TIBStringField
      FieldName = 'FOLHA_PENDENCIAS'
      Origin = '"SIS_PERFIL_COMPUTADOR"."FOLHA_PENDENCIAS"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorPORTA_PENDENCIAS: TIBStringField
      FieldName = 'PORTA_PENDENCIAS'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTA_PENDENCIAS"'
    end
    object Perfil_ComputadorIMP_NEGRITO_EMPRESA_36: TIBStringField
      FieldName = 'IMP_NEGRITO_EMPRESA_36'
      Origin = '"SIS_PERFIL_COMPUTADOR"."IMP_NEGRITO_EMPRESA_36"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorPDV_T01: TIBStringField
      FieldName = 'PDV_T01'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_T01"'
      Size = 6
    end
    object Perfil_ComputadorPDV_T02: TIBStringField
      FieldName = 'PDV_T02'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_T02"'
      Size = 6
    end
    object Perfil_ComputadorPDV_T03: TIBStringField
      FieldName = 'PDV_T03'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_T03"'
      Size = 6
    end
    object Perfil_ComputadorPDV_T04: TIBStringField
      FieldName = 'PDV_T04'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_T04"'
      Size = 6
    end
    object Perfil_ComputadorPDV_T05: TIBStringField
      FieldName = 'PDV_T05'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_T05"'
      Size = 6
    end
    object Perfil_ComputadorPDV_FF: TIBStringField
      FieldName = 'PDV_FF'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_FF"'
      Size = 6
    end
    object Perfil_ComputadorPDV_II: TIBStringField
      FieldName = 'PDV_II'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_II"'
      Size = 6
    end
    object Perfil_ComputadorTIPO_IMP_PDV: TIBStringField
      FieldName = 'TIPO_IMP_PDV'
      Origin = '"SIS_PERFIL_COMPUTADOR"."TIPO_IMP_PDV"'
    end
    object Perfil_ComputadorPORTA_PDV: TIBStringField
      FieldName = 'PORTA_PDV'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTA_PDV"'
    end
    object Perfil_ComputadorEMITE_COMPROVANTE_PDV: TIBStringField
      FieldName = 'EMITE_COMPROVANTE_PDV'
      Origin = '"SIS_PERFIL_COMPUTADOR"."EMITE_COMPROVANTE_PDV"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorPDV_T06: TIBStringField
      FieldName = 'PDV_T06'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_T06"'
      Size = 6
    end
    object Perfil_ComputadorTIPO_FOLHA_CADASTROS: TIBStringField
      FieldName = 'TIPO_FOLHA_CADASTROS'
      Origin = '"SIS_PERFIL_COMPUTADOR"."TIPO_FOLHA_CADASTROS"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorPORTALEITORCHEQUE: TIBStringField
      FieldName = 'PORTALEITORCHEQUE'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTALEITORCHEQUE"'
      Size = 8
    end
    object Perfil_ComputadorLEITOR_BITSPORSEGUNDO: TIBStringField
      FieldName = 'LEITOR_BITSPORSEGUNDO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LEITOR_BITSPORSEGUNDO"'
      Size = 6
    end
    object Perfil_ComputadorLEITOR_BITSDADOS: TIBStringField
      FieldName = 'LEITOR_BITSDADOS'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LEITOR_BITSDADOS"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorLEITOR_PARIDADE: TIBStringField
      FieldName = 'LEITOR_PARIDADE'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LEITOR_PARIDADE"'
      Size = 6
    end
    object Perfil_ComputadorLEITOR_BITSPARADA: TIBStringField
      FieldName = 'LEITOR_BITSPARADA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LEITOR_BITSPARADA"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorLEITOR_FLUXO: TIBStringField
      FieldName = 'LEITOR_FLUXO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LEITOR_FLUXO"'
      Size = 10
    end
    object Perfil_ComputadorFOLHA_VISTA_TROCA: TIBStringField
      FieldName = 'FOLHA_VISTA_TROCA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."FOLHA_VISTA_TROCA"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorPDV_EMITE_COMPROVANTE_NF: TIBStringField
      FieldName = 'PDV_EMITE_COMPROVANTE_NF'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_EMITE_COMPROVANTE_NF"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorPDV_CONFIRMA_IMPRESSAO: TIBStringField
      FieldName = 'PDV_CONFIRMA_IMPRESSAO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_CONFIRMA_IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorPDV_AGENTE: TIBStringField
      FieldName = 'PDV_AGENTE'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_AGENTE"'
    end
    object Perfil_ComputadorPDV_CONTRA_VALE: TIBStringField
      FieldName = 'PDV_CONTRA_VALE'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_CONTRA_VALE"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorAUTENTICAR: TIBStringField
      FieldName = 'AUTENTICAR'
      Origin = '"SIS_PERFIL_COMPUTADOR"."AUTENTICAR"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorPDV_LINHA_RECIBO: TIBStringField
      FieldName = 'PDV_LINHA_RECIBO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_LINHA_RECIBO"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorPDV_CONFIRMA_IMPRESSAO_VISTA: TIBStringField
      FieldName = 'PDV_CONFIRMA_IMPRESSAO_VISTA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PDV_CONFIRMA_IMPRESSAO_VISTA"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorBAL_BITSPORSEGUNDO: TIBStringField
      FieldName = 'BAL_BITSPORSEGUNDO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."BAL_BITSPORSEGUNDO"'
      Size = 6
    end
    object Perfil_ComputadorBAL_BITSDADOS: TIBStringField
      FieldName = 'BAL_BITSDADOS'
      Origin = '"SIS_PERFIL_COMPUTADOR"."BAL_BITSDADOS"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorBAL_PARIDADE: TIBStringField
      FieldName = 'BAL_PARIDADE'
      Origin = '"SIS_PERFIL_COMPUTADOR"."BAL_PARIDADE"'
      Size = 6
    end
    object Perfil_ComputadorBAL_BITSPARADA: TIBStringField
      FieldName = 'BAL_BITSPARADA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."BAL_BITSPARADA"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorBAL_FLUXO: TIBStringField
      FieldName = 'BAL_FLUXO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."BAL_FLUXO"'
      Size = 10
    end
    object Perfil_ComputadorPORTABALANCA: TIBStringField
      FieldName = 'PORTABALANCA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTABALANCA"'
      Size = 8
    end
    object Perfil_ComputadorLET_BITSPORSEGUNDO: TIBStringField
      FieldName = 'LET_BITSPORSEGUNDO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LET_BITSPORSEGUNDO"'
      Size = 6
    end
    object Perfil_ComputadorLET_BITSDADOS: TIBStringField
      FieldName = 'LET_BITSDADOS'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LET_BITSDADOS"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorLET_PARIDADE: TIBStringField
      FieldName = 'LET_PARIDADE'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LET_PARIDADE"'
      Size = 6
    end
    object Perfil_ComputadorLET_BITSPARADA: TIBStringField
      FieldName = 'LET_BITSPARADA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LET_BITSPARADA"'
      FixedChar = True
      Size = 3
    end
    object Perfil_ComputadorLET_FLUXO: TIBStringField
      FieldName = 'LET_FLUXO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."LET_FLUXO"'
      Size = 10
    end
    object Perfil_ComputadorPORTALEITOR: TIBStringField
      FieldName = 'PORTALEITOR'
      Origin = '"SIS_PERFIL_COMPUTADOR"."PORTALEITOR"'
      Size = 8
    end
    object Perfil_ComputadorEST_MIN_ENVIA_AUTOMATICO: TIBStringField
      FieldName = 'EST_MIN_ENVIA_AUTOMATICO'
      Origin = '"SIS_PERFIL_COMPUTADOR"."EST_MIN_ENVIA_AUTOMATICO"'
      FixedChar = True
      Size = 1
    end
    object Perfil_ComputadorEXIBE_MAPA: TIBStringField
      FieldName = 'EXIBE_MAPA'
      Origin = '"SIS_PERFIL_COMPUTADOR"."EXIBE_MAPA"'
      FixedChar = True
      Size = 1
    end
  end
  object Sis_Menu: TIBDataSet
    Database = Database
    Transaction = Transaction
    BeforeOpen = Sis_MenuBeforeOpen
    BeforePost = Sis_MenuBeforePost
    DeleteSQL.Strings = (
      'delete from SIS_MENU'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CATEGORIA = :OLD_CATEGORIA')
    InsertSQL.Strings = (
      'insert into SIS_MENU'
      '  (CNPJ, CATEGORIA, NOME, CODIGO, COMPUTADOR)'
      'values'
      '  (:CNPJ, :CATEGORIA, :NOME, :CODIGO, :COMPUTADOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CATEGORIA,'
      '  NOME,'
      '  CODIGO,'
      '  COMPUTADOR'
      'from SIS_MENU '
      'where'
      '  CNPJ = :CNPJ and'
      '  CATEGORIA = :CATEGORIA')
    SelectSQL.Strings = (
      'select  '
      '         CNPJ, '
      '         CATEGORIA,'
      '         NOME ,'
      '         CODIGO,'
      '         COMPUTADOR'
      'from SIS_MENU'
      'Where CNPJ = :CNPJ AND COMPUTADOR = :COMPUTADOR')
    ModifySQL.Strings = (
      'update SIS_MENU'
      'set'
      '  CNPJ = :CNPJ,'
      '  CATEGORIA = :CATEGORIA,'
      '  NOME = :NOME,'
      '  CODIGO = :CODIGO,'
      '  COMPUTADOR = :COMPUTADOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CATEGORIA = :OLD_CATEGORIA')
    Left = 280
    Top = 16
    object Sis_MenuCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"SIS_MENU"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Sis_MenuCATEGORIA: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEGORIA'
      Origin = '"SIS_MENU"."CATEGORIA"'
      Required = True
      Size = 50
    end
    object Sis_MenuNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SIS_MENU"."NOME"'
      Size = 50
    end
    object Sis_MenuCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_MENU"."CODIGO"'
    end
    object Sis_MenuCOMPUTADOR: TIBStringField
      FieldName = 'COMPUTADOR'
      Origin = '"SIS_MENU"."COMPUTADOR"'
      Required = True
      Size = 50
    end
  end
  object Sis_Menu_Itens: TIBDataSet
    Database = Database
    Transaction = Transaction
    BeforePost = Sis_Menu_ItensBeforePost
    DeleteSQL.Strings = (
      'delete from SIS_MENU_ITEM'
      'where'
      '  CATEGORIA = :OLD_CATEGORIA and'
      '  CNPJ = :OLD_CNPJ and'
      '  COMPUTADOR = :OLD_COMPUTADOR and'
      '  NOME = :OLD_NOME')
    InsertSQL.Strings = (
      'insert into SIS_MENU_ITEM'
      '  (CATEGORIA, CNPJ, CODIGO, COMPUTADOR, NOME, CAPTION, VISIVEL)'
      'values'
      
        '  (:CATEGORIA, :CNPJ, :CODIGO, :COMPUTADOR, :NOME, :CAPTION, :VI' +
        'SIVEL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CATEGORIA,'
      '  COMPUTADOR,'
      '  NOME,'
      '  CODIGO,'
      '  CAPTION,'
      '  VISIVEL'
      'from SIS_MENU_ITEM '
      'where'
      '  CATEGORIA = :CATEGORIA and'
      '  CNPJ = :CNPJ and'
      '  COMPUTADOR = :COMPUTADOR and'
      '  NOME = :NOME')
    SelectSQL.Strings = (
      'select CATEGORIA, '
      '          CNPJ, '
      '          CODIGO, '
      '          COMPUTADOR, '
      '          NOME,'
      '          CAPTION,'
      '          VISIVEL '
      'from SIS_MENU_ITEM'
      'Where CNPJ = :CNPJ AND CATEGORIA = :CATEGORIA AND'
      'COMPUTADOR = :COMPUTADOR')
    ModifySQL.Strings = (
      'update SIS_MENU_ITEM'
      'set'
      '  CATEGORIA = :CATEGORIA,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMPUTADOR = :COMPUTADOR,'
      '  NOME = :NOME,'
      '  CAPTION = :CAPTION,'
      '  VISIVEL = :VISIVEL'
      'where'
      '  CATEGORIA = :OLD_CATEGORIA and'
      '  CNPJ = :OLD_CNPJ and'
      '  COMPUTADOR = :OLD_COMPUTADOR and'
      '  NOME = :OLD_NOME')
    DataSource = DsMenu
    Left = 448
    Top = 16
    object Sis_Menu_ItensCATEGORIA: TIBStringField
      DisplayLabel = 'Categoria'
      FieldName = 'CATEGORIA'
      Origin = '"SIS_MENU_ITEM"."CATEGORIA"'
      Required = True
      Size = 50
    end
    object Sis_Menu_ItensCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"SIS_MENU_ITEM"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Sis_Menu_ItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"SIS_MENU_ITEM"."CODIGO"'
    end
    object Sis_Menu_ItensCOMPUTADOR: TIBStringField
      DisplayLabel = 'Computador'
      FieldName = 'COMPUTADOR'
      Origin = '"SIS_MENU_ITEM"."COMPUTADOR"'
      Required = True
      Size = 50
    end
    object Sis_Menu_ItensNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SIS_MENU_ITEM"."NOME"'
      Required = True
      Size = 50
    end
    object Sis_Menu_ItensCAPTION: TIBStringField
      DisplayLabel = 'Caption'
      FieldName = 'CAPTION'
      Origin = '"SIS_MENU_ITEM"."CAPTION"'
      Size = 50
    end
    object Sis_Menu_ItensVISIVEL: TIBStringField
      DisplayLabel = 'Vis'#237'vel'
      FieldName = 'VISIVEL'
      Origin = '"SIS_MENU_ITEM"."VISIVEL"'
      FixedChar = True
      Size = 1
    end
  end
  object DsMenu: TDataSource
    AutoEdit = False
    DataSet = Sis_Menu
    Left = 280
    Top = 80
  end
  object Configuracoes: TIBDataSet
    Database = Database
    Transaction = Transaction
    BeforeOpen = ConfiguracoesBeforeOpen
    OnNewRecord = ConfiguracoesNewRecord
    DeleteSQL.Strings = (
      'delete from SIS_CONFIGURACOES'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into SIS_CONFIGURACOES'
      
        '  (ALIQUOTA_ISS, BLOQ_CAD_SEM_CPF, BLOQUEIA_VENDA_SEM_CPF, CNPJ,' +
        ' CODIFICA_PRODUTOS, '
      
        '   CODIGO_CONVENIO_BANCO, CODIGO_SCPC, CONVENIO_CHEQUE, CSLL, CT' +
        'B_CAIXA_FRENTISTA_GERAL, '
      
        '   CTB_DIFERENCA_CAIXA, DESPESAS_OPERACIONAIS, DIFERENCIA_FIS_FI' +
        'SC, ENT_FRETE_MANUAL, '
      
        '   EST_ENTRADAS_DOLAR, EST_REPETE_COD_SEC, EST_UTILIZA_GRADES, E' +
        'XCLUI_VENDAS_BX_PARC_PDV, '
      
        '   GLO_PROPRIEDADE_EQUIPAMENTOS, IMP_NOME_PROPRIEDADE, IMP_VND_F' +
        'ATURAMENTO, '
      
        '   IMPOSTO_RENDA, IMPRIME_CUPOM_NOMINAL, IMPRIME_ITENS_CUPOM_PDV' +
        ', INCLUI_VENDA_LIMITE, '
      
        '   ITENSORCAMENTO_ORC, ITENSORDEM_SERVICO, MULTA_FINANCEIRA, NOM' +
        'E_ARQUIVO_BANCO, '
      
        '   OFC_CONTATO_POR_CLIENTE, OFC_COR_TELA, OFC_ENDERECO, OFC_FAX,' +
        ' OFC_FONE, '
      
        '   OFC_NOME_RAZAO, OFC_ORDEM_FRM_PAGTO, OFC_ORDEM_NATUREZA, OFC_' +
        'ORDEM_PRODUTO, '
      
        '   OFC_ORDEM_VENDEDOR, OFC_USA_CONTADORES, OS_CONFIG_CAMPOS, PAT' +
        'H_ARQUIVO_BANCO, '
      
        '   PDV_COR_FONTE, PDV_COR_FUNDO, PDV_FATURAMENTO_FIM_MES, PDV_FO' +
        'TO_FUNDO, '
      
        '   PDV_IMP_END_PRAZO, PDV_OBRIGA_QNTDE, PDV_TROCO_MAXIMO, PDV_VE' +
        'R_ULTIMAS_VENDAS, '
      
        '   PEDE_SENHAGER_CAIXA, RESUMO_MOEDAS, TOLERANCIA_JUROS, UTILIZA' +
        '_MASCARA_ORCAMENTO, '
      
        '   UTLIZA_INDEXADOR_CUSTO, VALOR_MINIMO_PARCELAMENTO, VENCTO_FIX' +
        'O_PRESTACOES)'
      'values'
      
        '  (:ALIQUOTA_ISS, :BLOQ_CAD_SEM_CPF, :BLOQUEIA_VENDA_SEM_CPF, :C' +
        'NPJ, :CODIFICA_PRODUTOS, '
      
        '   :CODIGO_CONVENIO_BANCO, :CODIGO_SCPC, :CONVENIO_CHEQUE, :CSLL' +
        ', :CTB_CAIXA_FRENTISTA_GERAL, '
      
        '   :CTB_DIFERENCA_CAIXA, :DESPESAS_OPERACIONAIS, :DIFERENCIA_FIS' +
        '_FISC, '
      
        '   :ENT_FRETE_MANUAL, :EST_ENTRADAS_DOLAR, :EST_REPETE_COD_SEC, ' +
        ':EST_UTILIZA_GRADES, '
      
        '   :EXCLUI_VENDAS_BX_PARC_PDV, :GLO_PROPRIEDADE_EQUIPAMENTOS, :I' +
        'MP_NOME_PROPRIEDADE, '
      
        '   :IMP_VND_FATURAMENTO, :IMPOSTO_RENDA, :IMPRIME_CUPOM_NOMINAL,' +
        ' :IMPRIME_ITENS_CUPOM_PDV, '
      
        '   :INCLUI_VENDA_LIMITE, :ITENSORCAMENTO_ORC, :ITENSORDEM_SERVIC' +
        'O, :MULTA_FINANCEIRA, '
      
        '   :NOME_ARQUIVO_BANCO, :OFC_CONTATO_POR_CLIENTE, :OFC_COR_TELA,' +
        ' :OFC_ENDERECO, '
      
        '   :OFC_FAX, :OFC_FONE, :OFC_NOME_RAZAO, :OFC_ORDEM_FRM_PAGTO, :' +
        'OFC_ORDEM_NATUREZA, '
      
        '   :OFC_ORDEM_PRODUTO, :OFC_ORDEM_VENDEDOR, :OFC_USA_CONTADORES,' +
        ' :OS_CONFIG_CAMPOS, '
      
        '   :PATH_ARQUIVO_BANCO, :PDV_COR_FONTE, :PDV_COR_FUNDO, :PDV_FAT' +
        'URAMENTO_FIM_MES, '
      
        '   :PDV_FOTO_FUNDO, :PDV_IMP_END_PRAZO, :PDV_OBRIGA_QNTDE, :PDV_' +
        'TROCO_MAXIMO, '
      
        '   :PDV_VER_ULTIMAS_VENDAS, :PEDE_SENHAGER_CAIXA, :RESUMO_MOEDAS' +
        ', :TOLERANCIA_JUROS, '
      
        '   :UTILIZA_MASCARA_ORCAMENTO, :UTLIZA_INDEXADOR_CUSTO, :VALOR_M' +
        'INIMO_PARCELAMENTO, '
      '   :VENCTO_FIXO_PRESTACOES)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  RESUMO_MOEDAS,'
      '  VENCTO_FIXO_PRESTACOES,'
      '  TOLERANCIA_JUROS,'
      '  MULTA_FINANCEIRA,'
      '  INCLUI_VENDA_LIMITE,'
      '  EXCLUI_VENDAS_BX_PARC_PDV,'
      '  UTLIZA_INDEXADOR_CUSTO,'
      '  IMPRIME_ITENS_CUPOM_PDV,'
      '  ITENSORCAMENTO_ORC,'
      '  CODIGO_SCPC,'
      '  PDV_TROCO_MAXIMO,'
      '  ALIQUOTA_ISS,'
      '  PEDE_SENHAGER_CAIXA,'
      '  IMP_VND_FATURAMENTO,'
      '  CTB_CAIXA_FRENTISTA_GERAL,'
      '  EST_ENTRADAS_DOLAR,'
      '  OFC_ORDEM_VENDEDOR,'
      '  OFC_ORDEM_NATUREZA,'
      '  OFC_ORDEM_FRM_PAGTO,'
      '  OFC_ORDEM_PRODUTO,'
      '  EST_UTILIZA_GRADES,'
      '  ITENSORDEM_SERVICO,'
      '  BLOQ_CAD_SEM_CPF,'
      '  PDV_IMP_END_PRAZO,'
      '  OFC_NOME_RAZAO,'
      '  OFC_ENDERECO,'
      '  OFC_FONE,'
      '  OFC_FAX,'
      '  OFC_COR_TELA,'
      '  CTB_DIFERENCA_CAIXA,'
      '  ENT_FRETE_MANUAL,'
      '  CONVENIO_CHEQUE,'
      '  CODIGO_CONVENIO_BANCO,'
      '  PATH_ARQUIVO_BANCO,'
      '  NOME_ARQUIVO_BANCO,'
      '  GLO_PROPRIEDADE_EQUIPAMENTOS,'
      '  CSLL,'
      '  UTILIZA_MASCARA_ORCAMENTO,'
      '  VALOR_MINIMO_PARCELAMENTO,'
      '  PDV_OBRIGA_QNTDE,'
      '  PDV_COR_FUNDO,'
      '  PDV_COR_FONTE,'
      '  DIFERENCIA_FIS_FISC,'
      '  PDV_FATURAMENTO_FIM_MES,'
      '  PDV_FOTO_FUNDO,'
      '  BLOQUEIA_VENDA_SEM_CPF,'
      '  DESPESAS_OPERACIONAIS,'
      '  IMPOSTO_RENDA,'
      '  EST_REPETE_COD_SEC,'
      '  OFC_USA_CONTADORES,'
      '  CODIFICA_PRODUTOS,'
      '  IMPRIME_CUPOM_NOMINAL,'
      '  IMP_NOME_PROPRIEDADE,'
      '  PDV_VER_ULTIMAS_VENDAS,'
      '  OS_CONFIG_CAMPOS,'
      '  OFC_CONTATO_POR_CLIENTE'
      'from SIS_CONFIGURACOES '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select * '
      'from SIS_CONFIGURACOES'
      'Where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update SIS_CONFIGURACOES'
      'set'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  BLOQ_CAD_SEM_CPF = :BLOQ_CAD_SEM_CPF,'
      '  BLOQUEIA_VENDA_SEM_CPF = :BLOQUEIA_VENDA_SEM_CPF,'
      '  CNPJ = :CNPJ,'
      '  CODIFICA_PRODUTOS = :CODIFICA_PRODUTOS,'
      '  CODIGO_CONVENIO_BANCO = :CODIGO_CONVENIO_BANCO,'
      '  CODIGO_SCPC = :CODIGO_SCPC,'
      '  CONVENIO_CHEQUE = :CONVENIO_CHEQUE,'
      '  CSLL = :CSLL,'
      '  CTB_CAIXA_FRENTISTA_GERAL = :CTB_CAIXA_FRENTISTA_GERAL,'
      '  CTB_DIFERENCA_CAIXA = :CTB_DIFERENCA_CAIXA,'
      '  DESPESAS_OPERACIONAIS = :DESPESAS_OPERACIONAIS,'
      '  DIFERENCIA_FIS_FISC = :DIFERENCIA_FIS_FISC,'
      '  ENT_FRETE_MANUAL = :ENT_FRETE_MANUAL,'
      '  EST_ENTRADAS_DOLAR = :EST_ENTRADAS_DOLAR,'
      '  EST_REPETE_COD_SEC = :EST_REPETE_COD_SEC,'
      '  EST_UTILIZA_GRADES = :EST_UTILIZA_GRADES,'
      '  EXCLUI_VENDAS_BX_PARC_PDV = :EXCLUI_VENDAS_BX_PARC_PDV,'
      '  GLO_PROPRIEDADE_EQUIPAMENTOS = :GLO_PROPRIEDADE_EQUIPAMENTOS,'
      '  IMP_NOME_PROPRIEDADE = :IMP_NOME_PROPRIEDADE,'
      '  IMP_VND_FATURAMENTO = :IMP_VND_FATURAMENTO,'
      '  IMPOSTO_RENDA = :IMPOSTO_RENDA,'
      '  IMPRIME_CUPOM_NOMINAL = :IMPRIME_CUPOM_NOMINAL,'
      '  IMPRIME_ITENS_CUPOM_PDV = :IMPRIME_ITENS_CUPOM_PDV,'
      '  INCLUI_VENDA_LIMITE = :INCLUI_VENDA_LIMITE,'
      '  ITENSORCAMENTO_ORC = :ITENSORCAMENTO_ORC,'
      '  ITENSORDEM_SERVICO = :ITENSORDEM_SERVICO,'
      '  MULTA_FINANCEIRA = :MULTA_FINANCEIRA,'
      '  NOME_ARQUIVO_BANCO = :NOME_ARQUIVO_BANCO,'
      '  OFC_CONTATO_POR_CLIENTE = :OFC_CONTATO_POR_CLIENTE,'
      '  OFC_COR_TELA = :OFC_COR_TELA,'
      '  OFC_ENDERECO = :OFC_ENDERECO,'
      '  OFC_FAX = :OFC_FAX,'
      '  OFC_FONE = :OFC_FONE,'
      '  OFC_NOME_RAZAO = :OFC_NOME_RAZAO,'
      '  OFC_ORDEM_FRM_PAGTO = :OFC_ORDEM_FRM_PAGTO,'
      '  OFC_ORDEM_NATUREZA = :OFC_ORDEM_NATUREZA,'
      '  OFC_ORDEM_PRODUTO = :OFC_ORDEM_PRODUTO,'
      '  OFC_ORDEM_VENDEDOR = :OFC_ORDEM_VENDEDOR,'
      '  OFC_USA_CONTADORES = :OFC_USA_CONTADORES,'
      '  OS_CONFIG_CAMPOS = :OS_CONFIG_CAMPOS,'
      '  PATH_ARQUIVO_BANCO = :PATH_ARQUIVO_BANCO,'
      '  PDV_COR_FONTE = :PDV_COR_FONTE,'
      '  PDV_COR_FUNDO = :PDV_COR_FUNDO,'
      '  PDV_FATURAMENTO_FIM_MES = :PDV_FATURAMENTO_FIM_MES,'
      '  PDV_FOTO_FUNDO = :PDV_FOTO_FUNDO,'
      '  PDV_IMP_END_PRAZO = :PDV_IMP_END_PRAZO,'
      '  PDV_OBRIGA_QNTDE = :PDV_OBRIGA_QNTDE,'
      '  PDV_TROCO_MAXIMO = :PDV_TROCO_MAXIMO,'
      '  PDV_VER_ULTIMAS_VENDAS = :PDV_VER_ULTIMAS_VENDAS,'
      '  PEDE_SENHAGER_CAIXA = :PEDE_SENHAGER_CAIXA,'
      '  RESUMO_MOEDAS = :RESUMO_MOEDAS,'
      '  TOLERANCIA_JUROS = :TOLERANCIA_JUROS,'
      '  UTILIZA_MASCARA_ORCAMENTO = :UTILIZA_MASCARA_ORCAMENTO,'
      '  UTLIZA_INDEXADOR_CUSTO = :UTLIZA_INDEXADOR_CUSTO,'
      '  VALOR_MINIMO_PARCELAMENTO = :VALOR_MINIMO_PARCELAMENTO,'
      '  VENCTO_FIXO_PRESTACOES = :VENCTO_FIXO_PRESTACOES'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 448
    Top = 80
    object ConfiguracoesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_CONFIGURACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ConfiguracoesVENCTO_FIXO_PRESTACOES: TIBStringField
      FieldName = 'VENCTO_FIXO_PRESTACOES'
      Origin = '"SIS_CONFIGURACOES"."VENCTO_FIXO_PRESTACOES"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesTOLERANCIA_JUROS: TIntegerField
      FieldName = 'TOLERANCIA_JUROS'
      Origin = '"SIS_CONFIGURACOES"."TOLERANCIA_JUROS"'
    end
    object ConfiguracoesMULTA_FINANCEIRA: TFloatField
      FieldName = 'MULTA_FINANCEIRA'
      Origin = '"SIS_CONFIGURACOES"."MULTA_FINANCEIRA"'
    end
    object ConfiguracoesINCLUI_VENDA_LIMITE: TIBStringField
      FieldName = 'INCLUI_VENDA_LIMITE'
      Origin = '"SIS_CONFIGURACOES"."INCLUI_VENDA_LIMITE"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesEXCLUI_VENDAS_BX_PARC_PDV: TIBStringField
      FieldName = 'EXCLUI_VENDAS_BX_PARC_PDV'
      Origin = '"SIS_CONFIGURACOES"."EXCLUI_VENDAS_BX_PARC_PDV"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesUTLIZA_INDEXADOR_CUSTO: TIBStringField
      FieldName = 'UTLIZA_INDEXADOR_CUSTO'
      Origin = '"SIS_CONFIGURACOES"."UTLIZA_INDEXADOR_CUSTO"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesIMPRIME_ITENS_CUPOM_PDV: TIBStringField
      FieldName = 'IMPRIME_ITENS_CUPOM_PDV'
      Origin = '"SIS_CONFIGURACOES"."IMPRIME_ITENS_CUPOM_PDV"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesITENSORCAMENTO_ORC: TIntegerField
      FieldName = 'ITENSORCAMENTO_ORC'
      Origin = '"SIS_CONFIGURACOES"."ITENSORCAMENTO_ORC"'
    end
    object ConfiguracoesCODIGO_SCPC: TIBStringField
      FieldName = 'CODIGO_SCPC'
      Origin = '"SIS_CONFIGURACOES"."CODIGO_SCPC"'
      Size = 10
    end
    object ConfiguracoesPDV_TROCO_MAXIMO: TFloatField
      FieldName = 'PDV_TROCO_MAXIMO'
      Origin = '"SIS_CONFIGURACOES"."PDV_TROCO_MAXIMO"'
    end
    object ConfiguracoesALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"SIS_CONFIGURACOES"."ALIQUOTA_ISS"'
    end
    object ConfiguracoesPEDE_SENHAGER_CAIXA: TIBStringField
      FieldName = 'PEDE_SENHAGER_CAIXA'
      Origin = '"SIS_CONFIGURACOES"."PEDE_SENHAGER_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesIMP_VND_FATURAMENTO: TIBStringField
      FieldName = 'IMP_VND_FATURAMENTO'
      Origin = '"SIS_CONFIGURACOES"."IMP_VND_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesCTB_CAIXA_FRENTISTA_GERAL: TIBStringField
      FieldName = 'CTB_CAIXA_FRENTISTA_GERAL'
      Origin = '"SIS_CONFIGURACOES"."CTB_CAIXA_FRENTISTA_GERAL"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesEST_ENTRADAS_DOLAR: TIBStringField
      FieldName = 'EST_ENTRADAS_DOLAR'
      Origin = '"SIS_CONFIGURACOES"."EST_ENTRADAS_DOLAR"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesOFC_ORDEM_VENDEDOR: TIntegerField
      FieldName = 'OFC_ORDEM_VENDEDOR'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_VENDEDOR"'
    end
    object ConfiguracoesOFC_ORDEM_NATUREZA: TIntegerField
      FieldName = 'OFC_ORDEM_NATUREZA'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_NATUREZA"'
    end
    object ConfiguracoesOFC_ORDEM_FRM_PAGTO: TIntegerField
      FieldName = 'OFC_ORDEM_FRM_PAGTO'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_FRM_PAGTO"'
    end
    object ConfiguracoesOFC_ORDEM_PRODUTO: TIBStringField
      FieldName = 'OFC_ORDEM_PRODUTO'
      Origin = '"SIS_CONFIGURACOES"."OFC_ORDEM_PRODUTO"'
      Size = 15
    end
    object ConfiguracoesEST_UTILIZA_GRADES: TIBStringField
      FieldName = 'EST_UTILIZA_GRADES'
      Origin = '"SIS_CONFIGURACOES"."EST_UTILIZA_GRADES"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesITENSORDEM_SERVICO: TIntegerField
      FieldName = 'ITENSORDEM_SERVICO'
      Origin = '"SIS_CONFIGURACOES"."ITENSORDEM_SERVICO"'
    end
    object ConfiguracoesBLOQ_CAD_SEM_CPF: TIBStringField
      FieldName = 'BLOQ_CAD_SEM_CPF'
      Origin = '"SIS_CONFIGURACOES"."BLOQ_CAD_SEM_CPF"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesPDV_IMP_END_PRAZO: TIBStringField
      FieldName = 'PDV_IMP_END_PRAZO'
      Origin = '"SIS_CONFIGURACOES"."PDV_IMP_END_PRAZO"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesOFC_NOME_RAZAO: TIBStringField
      FieldName = 'OFC_NOME_RAZAO'
      Origin = '"SIS_CONFIGURACOES"."OFC_NOME_RAZAO"'
      Size = 50
    end
    object ConfiguracoesOFC_ENDERECO: TIBStringField
      FieldName = 'OFC_ENDERECO'
      Origin = '"SIS_CONFIGURACOES"."OFC_ENDERECO"'
      Size = 80
    end
    object ConfiguracoesOFC_FONE: TIBStringField
      FieldName = 'OFC_FONE'
      Origin = '"SIS_CONFIGURACOES"."OFC_FONE"'
    end
    object ConfiguracoesOFC_FAX: TIBStringField
      FieldName = 'OFC_FAX'
      Origin = '"SIS_CONFIGURACOES"."OFC_FAX"'
    end
    object ConfiguracoesOFC_COR_TELA: TIBStringField
      FieldName = 'OFC_COR_TELA'
      Origin = '"SIS_CONFIGURACOES"."OFC_COR_TELA"'
      Size = 15
    end
    object ConfiguracoesCTB_DIFERENCA_CAIXA: TIntegerField
      FieldName = 'CTB_DIFERENCA_CAIXA'
      Origin = '"SIS_CONFIGURACOES"."CTB_DIFERENCA_CAIXA"'
    end
    object ConfiguracoesENT_FRETE_MANUAL: TIBStringField
      FieldName = 'ENT_FRETE_MANUAL'
      Origin = '"SIS_CONFIGURACOES"."ENT_FRETE_MANUAL"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesCONVENIO_CHEQUE: TIBStringField
      FieldName = 'CONVENIO_CHEQUE'
      Origin = '"SIS_CONFIGURACOES"."CONVENIO_CHEQUE"'
      Size = 15
    end
    object ConfiguracoesCODIGO_CONVENIO_BANCO: TIBStringField
      FieldName = 'CODIGO_CONVENIO_BANCO'
      Origin = '"SIS_CONFIGURACOES"."CODIGO_CONVENIO_BANCO"'
      Size = 10
    end
    object ConfiguracoesPATH_ARQUIVO_BANCO: TIBStringField
      FieldName = 'PATH_ARQUIVO_BANCO'
      Origin = '"SIS_CONFIGURACOES"."PATH_ARQUIVO_BANCO"'
      Size = 50
    end
    object ConfiguracoesNOME_ARQUIVO_BANCO: TIBStringField
      FieldName = 'NOME_ARQUIVO_BANCO'
      Origin = '"SIS_CONFIGURACOES"."NOME_ARQUIVO_BANCO"'
      Size = 30
    end
    object ConfiguracoesGLO_PROPRIEDADE_EQUIPAMENTOS: TIBStringField
      FieldName = 'GLO_PROPRIEDADE_EQUIPAMENTOS'
      Origin = '"SIS_CONFIGURACOES"."GLO_PROPRIEDADE_EQUIPAMENTOS"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesCSLL: TFloatField
      FieldName = 'CSLL'
      Origin = '"SIS_CONFIGURACOES"."CSLL"'
    end
    object ConfiguracoesUTILIZA_MASCARA_ORCAMENTO: TIBStringField
      FieldName = 'UTILIZA_MASCARA_ORCAMENTO'
      Origin = '"SIS_CONFIGURACOES"."UTILIZA_MASCARA_ORCAMENTO"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesVALOR_MINIMO_PARCELAMENTO: TFloatField
      FieldName = 'VALOR_MINIMO_PARCELAMENTO'
      Origin = '"SIS_CONFIGURACOES"."VALOR_MINIMO_PARCELAMENTO"'
    end
    object ConfiguracoesPDV_OBRIGA_QNTDE: TIBStringField
      FieldName = 'PDV_OBRIGA_QNTDE'
      Origin = '"SIS_CONFIGURACOES"."PDV_OBRIGA_QNTDE"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesPDV_COR_FUNDO: TIntegerField
      FieldName = 'PDV_COR_FUNDO'
      Origin = '"SIS_CONFIGURACOES"."PDV_COR_FUNDO"'
    end
    object ConfiguracoesPDV_COR_FONTE: TIntegerField
      FieldName = 'PDV_COR_FONTE'
      Origin = '"SIS_CONFIGURACOES"."PDV_COR_FONTE"'
    end
    object ConfiguracoesDIFERENCIA_FIS_FISC: TIBStringField
      FieldName = 'DIFERENCIA_FIS_FISC'
      Origin = '"SIS_CONFIGURACOES"."DIFERENCIA_FIS_FISC"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesPDV_FATURAMENTO_FIM_MES: TIBStringField
      FieldName = 'PDV_FATURAMENTO_FIM_MES'
      Origin = '"SIS_CONFIGURACOES"."PDV_FATURAMENTO_FIM_MES"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesPDV_FOTO_FUNDO: TIBStringField
      FieldName = 'PDV_FOTO_FUNDO'
      Origin = '"SIS_CONFIGURACOES"."PDV_FOTO_FUNDO"'
      Size = 80
    end
    object ConfiguracoesBLOQUEIA_VENDA_SEM_CPF: TIBStringField
      FieldName = 'BLOQUEIA_VENDA_SEM_CPF'
      Origin = '"SIS_CONFIGURACOES"."BLOQUEIA_VENDA_SEM_CPF"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesDESPESAS_OPERACIONAIS: TFloatField
      FieldName = 'DESPESAS_OPERACIONAIS'
      Origin = '"SIS_CONFIGURACOES"."DESPESAS_OPERACIONAIS"'
    end
    object ConfiguracoesIMPOSTO_RENDA: TFloatField
      FieldName = 'IMPOSTO_RENDA'
      Origin = '"SIS_CONFIGURACOES"."IMPOSTO_RENDA"'
    end
    object ConfiguracoesEST_REPETE_COD_SEC: TIBStringField
      FieldName = 'EST_REPETE_COD_SEC'
      Origin = '"SIS_CONFIGURACOES"."EST_REPETE_COD_SEC"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesOFC_USA_CONTADORES: TIBStringField
      FieldName = 'OFC_USA_CONTADORES'
      Origin = '"SIS_CONFIGURACOES"."OFC_USA_CONTADORES"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesCODIFICA_PRODUTOS: TIBStringField
      FieldName = 'CODIFICA_PRODUTOS'
      Origin = '"SIS_CONFIGURACOES"."CODIFICA_PRODUTOS"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesRESUMO_MOEDAS: TIntegerField
      FieldName = 'RESUMO_MOEDAS'
      Origin = '"SIS_CONFIGURACOES"."RESUMO_MOEDAS"'
    end
    object ConfiguracoesIMPRIME_CUPOM_NOMINAL: TIBStringField
      FieldName = 'IMPRIME_CUPOM_NOMINAL'
      Origin = '"SIS_CONFIGURACOES"."IMPRIME_CUPOM_NOMINAL"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesIMP_NOME_PROPRIEDADE: TIBStringField
      FieldName = 'IMP_NOME_PROPRIEDADE'
      Origin = '"SIS_CONFIGURACOES"."IMP_NOME_PROPRIEDADE"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesPDV_VER_ULTIMAS_VENDAS: TIBStringField
      FieldName = 'PDV_VER_ULTIMAS_VENDAS'
      Origin = '"SIS_CONFIGURACOES"."PDV_VER_ULTIMAS_VENDAS"'
      FixedChar = True
      Size = 1
    end
    object ConfiguracoesOS_CONFIG_CAMPOS: TIBStringField
      FieldName = 'OS_CONFIG_CAMPOS'
      Origin = '"SIS_CONFIGURACOES"."OS_CONFIG_CAMPOS"'
      Size = 3000
    end
    object ConfiguracoesOFC_CONTATO_POR_CLIENTE: TIBStringField
      FieldName = 'OFC_CONTATO_POR_CLIENTE'
      Origin = '"SIS_CONFIGURACOES"."OFC_CONTATO_POR_CLIENTE"'
      FixedChar = True
      Size = 1
    end
  end
  object txnCritica: TIBTransaction
    DefaultDatabase = Database
    DefaultAction = TARollback
    Params.Strings = (
      'concurrency'
      'nowait')
    Left = 128
    Top = 144
  end
  object qCaixaFechado: TIBQuery
    Database = Database
    Transaction = Transaction
    SQL.Strings = (
      'select c.fechado'
      'from fat_caixas c'
      
        'where c.data = :data and c.usuario = :usuario and c.turno = :tur' +
        'no '
      'and c.cnpj = :cnpj')
    Left = 280
    Top = 144
    ParamData = <
      item
        DataType = ftDate
        Name = 'data'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'turno'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qCaixaFechadoFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"FAT_CAIXAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
  end
  object Fechamento_Diario: TIBStoredProc
    Database = Database
    Transaction = TransactionProc
    StoredProcName = 'FECHAMENTO_DIARIO'
    Left = 360
    Top = 144
  end
  object qryGerarTitulos: TIBQuery
    Database = Database
    Transaction = Transaction
    AutoCalcFields = False
    OnCalcFields = qryGerarTitulosCalcFields
    SQL.Strings = (
      
        'select * from pcd_blt_gera_titulos(:cnpj,:codigo,:ContaCorrente,' +
        ':origem)')
    Left = 448
    Top = 136
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
      end
      item
        DataType = ftUnknown
        Name = 'ContaCorrente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'origem'
        ParamType = ptUnknown
      end>
    object qryGerarTitulosTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object qryGerarTitulosJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      Calculated = True
    end
    object qryGerarTitulosSAC_NOME: TIBStringField
      FieldName = 'SAC_NOME'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_NOME"'
      Size = 50
    end
    object qryGerarTitulosSAC_RUA: TIBStringField
      FieldName = 'SAC_RUA'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_RUA"'
      Size = 50
    end
    object qryGerarTitulosBLT_CONVENIO: TIBStringField
      FieldName = 'BLT_CONVENIO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_CONVENIO"'
      Size = 10
    end
    object qryGerarTitulosSAC_COMPLEMENTO: TIBStringField
      FieldName = 'SAC_COMPLEMENTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_COMPLEMENTO"'
      Size = 50
    end
    object qryGerarTitulosSAC_NUM: TIBStringField
      FieldName = 'SAC_NUM'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_NUM"'
      Size = 15
    end
    object qryGerarTitulosSAC_EMAIL: TIBStringField
      FieldName = 'SAC_EMAIL'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_EMAIL"'
      Size = 80
    end
    object qryGerarTitulosSAC_CEP: TIBStringField
      FieldName = 'SAC_CEP'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_CEP"'
      Size = 8
    end
    object qryGerarTitulosSAC_CIDADE: TIBStringField
      FieldName = 'SAC_CIDADE'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_CIDADE"'
      Size = 50
    end
    object qryGerarTitulosSAC_UF: TIBStringField
      FieldName = 'SAC_UF'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_UF"'
      Size = 2
    end
    object qryGerarTitulosSAC_BAIRRO: TIBStringField
      FieldName = 'SAC_BAIRRO'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_BAIRRO"'
      Size = 50
    end
    object qryGerarTitulosSAC_PESSOA: TIBStringField
      FieldName = 'SAC_PESSOA'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_PESSOA"'
      FixedChar = True
      Size = 1
    end
    object qryGerarTitulosSAC_CPF_CGC: TIBStringField
      FieldName = 'SAC_CPF_CGC'
      Origin = '"PCD_GERA_TITULO_UNICO"."SAC_CPF_CGC"'
      Size = 14
    end
    object qryGerarTitulosBLT_AGENCIA: TIBStringField
      FieldName = 'BLT_AGENCIA'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_AGENCIA"'
      Size = 10
    end
    object qryGerarTitulosCED_CODIGOCED: TIntegerField
      FieldName = 'CED_CODIGOCED'
      Origin = '"PCD_GERA_TITULO_UNICO"."CED_CODIGOCED"'
    end
    object qryGerarTitulosCED_DIG_CODIGOCED: TIBStringField
      FieldName = 'CED_DIG_CODIGOCED'
      Origin = '"PCD_GERA_TITULO_UNICO"."CED_DIG_CODIGOCED"'
      FixedChar = True
      Size = 1
    end
    object qryGerarTitulosBLT_CARTEIRA: TIBStringField
      FieldName = 'BLT_CARTEIRA'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_CARTEIRA"'
      Size = 10
    end
    object qryGerarTitulosBLT_INSTRUCAO: TMemoField
      FieldName = 'BLT_INSTRUCAO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_INSTRUCAO"'
      BlobType = ftMemo
      Size = 8
    end
    object qryGerarTitulosBLT_LAYOUT: TIntegerField
      FieldName = 'BLT_LAYOUT'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_LAYOUT"'
    end
    object qryGerarTitulosBLT_DIG_CONTA: TIBStringField
      FieldName = 'BLT_DIG_CONTA'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DIG_CONTA"'
      FixedChar = True
      Size = 1
    end
    object qryGerarTitulosBLT_DIG_AGENCIA: TIBStringField
      FieldName = 'BLT_DIG_AGENCIA'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DIG_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object qryGerarTitulosBLT_CONTA: TIBStringField
      FieldName = 'BLT_CONTA'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_CONTA"'
      Size = 10
    end
    object qryGerarTitulosBLT_LOCAL_PAGTO: TIBStringField
      FieldName = 'BLT_LOCAL_PAGTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_LOCAL_PAGTO"'
      Size = 200
    end
    object qryGerarTitulosBLT_BANCO: TIntegerField
      FieldName = 'BLT_BANCO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_BANCO"'
    end
    object qryGerarTitulosBLT_ACEITE_DOCTO: TIBStringField
      FieldName = 'BLT_ACEITE_DOCTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_ACEITE_DOCTO"'
      FixedChar = True
      Size = 1
    end
    object qryGerarTitulosBLT_DIAS_ABATIMENTO: TIntegerField
      FieldName = 'BLT_DIAS_ABATIMENTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DIAS_ABATIMENTO"'
    end
    object qryGerarTitulosBLT_DIAS_DESCONTO: TIntegerField
      FieldName = 'BLT_DIAS_DESCONTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DIAS_DESCONTO"'
    end
    object qryGerarTitulosBLT_DIAS_MORA_JUROS: TIntegerField
      FieldName = 'BLT_DIAS_MORA_JUROS'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DIAS_MORA_JUROS"'
    end
    object qryGerarTitulosBLT_DIAS_PROTESTO: TIntegerField
      FieldName = 'BLT_DIAS_PROTESTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DIAS_PROTESTO"'
    end
    object qryGerarTitulosBLT_PCT_ABATIMENTO: TIBBCDField
      FieldName = 'BLT_PCT_ABATIMENTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_PCT_ABATIMENTO"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosBLT_PCT_DESCONTO: TIBBCDField
      FieldName = 'BLT_PCT_DESCONTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_PCT_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosBLT_VLR_DESPESA: TIBBCDField
      FieldName = 'BLT_VLR_DESPESA'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_VLR_DESPESA"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosBLT_VLR_IOF: TIBBCDField
      FieldName = 'BLT_VLR_IOF'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_VLR_IOF"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosBLT_VLR_MORA_JUROS: TIBBCDField
      FieldName = 'BLT_VLR_MORA_JUROS'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_VLR_MORA_JUROS"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosBLT_VLR_OUTRAS_DESP: TIBBCDField
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_VLR_OUTRAS_DESP"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosBLT_VALOR: TIBBCDField
      FieldName = 'BLT_VALOR'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_VALOR"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosBLT_DT_LANCTO: TDateField
      FieldName = 'BLT_DT_LANCTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DT_LANCTO"'
    end
    object qryGerarTitulosBLT_DT_VENCTO: TDateField
      FieldName = 'BLT_DT_VENCTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_DT_VENCTO"'
    end
    object qryGerarTitulosBLT_NOME_BANCO: TIBStringField
      FieldName = 'BLT_NOME_BANCO'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_NOME_BANCO"'
      Size = 50
    end
    object qryGerarTitulosNOSSO_NUMERO: TLargeintField
      FieldName = 'NOSSO_NUMERO'
      Origin = '"PCD_GERA_TITULO_UNICO"."NOSSO_NUMERO"'
    end
    object qryGerarTitulosREC_DESCONTO: TIBBCDField
      FieldName = 'REC_DESCONTO'
      Origin = '"PCD_GERA_TITULO_UNICO"."REC_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosREC_VLR_PARCIAL: TIBBCDField
      FieldName = 'REC_VLR_PARCIAL'
      Origin = '"PCD_GERA_TITULO_UNICO"."REC_VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosREC_DATA_ULT_BAIXA: TDateField
      FieldName = 'REC_DATA_ULT_BAIXA'
      Origin = '"PCD_GERA_TITULO_UNICO"."REC_DATA_ULT_BAIXA"'
    end
    object qryGerarTitulosREC_DESCONTOS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'REC_DESCONTOS'
      Calculated = True
    end
    object qryGerarTitulosBLT_MULTA: TIBBCDField
      FieldName = 'BLT_MULTA'
      Origin = '"PCD_GERA_TITULO_UNICO"."BLT_MULTA"'
      Precision = 18
      Size = 4
    end
    object qryGerarTitulosREC_CODIGO: TIntegerField
      FieldName = 'REC_CODIGO'
      Origin = '"PCD_BLT_GERA_TITULOS"."REC_CODIGO"'
    end
    object qryGerarTitulosCED_EMAIL: TIBStringField
      FieldName = 'CED_EMAIL'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_EMAIL"'
      Size = 80
    end
    object qryGerarTitulosCED_NOME: TIBStringField
      FieldName = 'CED_NOME'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_NOME"'
      Size = 50
    end
    object qryGerarTitulosCED_RUA: TIBStringField
      FieldName = 'CED_RUA'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_RUA"'
      Size = 50
    end
    object qryGerarTitulosCED_NUM: TIBStringField
      FieldName = 'CED_NUM'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_NUM"'
      Size = 15
    end
    object qryGerarTitulosCED_CEP: TIBStringField
      FieldName = 'CED_CEP'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_CEP"'
      Size = 8
    end
    object qryGerarTitulosCED_CIDADE: TIBStringField
      FieldName = 'CED_CIDADE'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_CIDADE"'
      Size = 50
    end
    object qryGerarTitulosCED_UF: TIBStringField
      FieldName = 'CED_UF'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_UF"'
      Size = 2
    end
    object qryGerarTitulosCED_BAIRRO: TIBStringField
      FieldName = 'CED_BAIRRO'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_BAIRRO"'
      Size = 50
    end
    object qryGerarTitulosCED_CPF_CGC: TIBStringField
      FieldName = 'CED_CPF_CGC'
      Origin = '"PCD_BLT_GERA_TITULOS"."CED_CPF_CGC"'
      Size = 14
    end
    object qryGerarTitulosBLT_MODALIDADE: TIBStringField
      FieldName = 'BLT_MODALIDADE'
      Origin = '"PCD_BLT_GERA_TITULOS"."BLT_MODALIDADE"'
      Size = 10
    end
    object qryGerarTitulosBLT_LAYOUT_IMPRESSAO: TIBStringField
      FieldName = 'BLT_LAYOUT_IMPRESSAO'
      Origin = '"PCD_BLT_GERA_TITULOS"."BLT_LAYOUT_IMPRESSAO"'
      FixedChar = True
      Size = 1
    end
    object qryGerarTitulosBLT_NUM_COPIAS: TIntegerField
      FieldName = 'BLT_NUM_COPIAS'
      Origin = '"PCD_BLT_GERA_TITULOS"."BLT_NUM_COPIAS"'
    end
  end
  object dsTitulos: TDataSource
    DataSet = qryGerarTitulos
    Left = 280
    Top = 208
  end
  object BaixarBoletos: TIBStoredProc
    Database = Database
    Transaction = Transaction
    StoredProcName = 'PCD_BAIXA_BOLETO'
    Left = 280
    Top = 272
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
        Name = 'TURNO'
        ParamType = ptInput
      end
      item
        DataType = ftLargeint
        Name = 'NOSSONUM'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'BANCO'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VALOR_BX'
        ParamType = ptInput
      end
      item
        DataType = ftBCD
        Name = 'VLR_JUROS_BX'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_CRED'
        ParamType = ptInput
      end>
  end
  object updTitulos: TIBSQL
    Database = Database
    SQL.Strings = (
      'update fin_contas_receber rec'
      
        'set rec.blt_rem_gerada = '#39'S'#39' where rec.blt_nosso_num = :nossonum' +
        ' and rec.blt_banco = :banco')
    Transaction = Transaction
    Left = 616
    Top = 211
  end
  object TransactionAux: TIBTransaction
    DefaultDatabase = Database
    Params.Strings = (
      'read_committed'
      'rec_version'
      '')
    Left = 32
    Top = 16
  end
  object OgDaysCode: TOgDaysCode
    StoreModifier = True
    OnChecked = OgDaysCodeChecked
    OnGetKey = OgDaysCodeGetKey
    OnGetCode = OgDaysCodeGetCode
    OnChangeCode = OgDaysCodeChangeCode
    Left = 352
    Top = 408
  end
  object AtGradesNum: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from est_produtos_grades_numeros'
      'where'
      '  GRADE = :OLD_GRADE and'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into est_produtos_grades_numeros'
      '  (GRADE)'
      'values'
      '  (:GRADE)')
    RefreshSQL.Strings = (
      'Select *'
      'from est_produtos_grades_numeros '
      'where'
      '  GRADE = :GRADE and'
      '  CNPJ = :CNPJ and'
      '  PRODUTO = :PRODUTO and'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      
        'select e.grade, e.cnpj, e.produto, e.numero from est_produtos_gr' +
        'ades_numeros e'
      'where grade > '#39'GYL'#39
      'order by grade, produto')
    ModifySQL.Strings = (
      'update est_produtos_grades_numeros'
      'set'
      '  GRADE = :GRADE'
      'where'
      '  GRADE = :OLD_GRADE and'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  NUMERO = :OLD_NUMERO')
    Left = 360
    Top = 80
    object AtGradesNumGRADE: TIBStringField
      FieldName = 'GRADE'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."GRADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object AtGradesNumCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object AtGradesNumPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object AtGradesNumNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."NUMERO"'
      Required = True
      Size = 6
    end
  end
  object updAtGradesNum: TIBSQL
    Database = Database
    SQL.Strings = (
      'update est_produtos_grades_numeros'
      'set'
      '  GRADE = :GRADE'
      'where'
      '  GRADE = :OLD_GRADE and'
      '  CNPJ = :CNPJ and'
      '  PRODUTO = :PRODUTO and'
      '  NUMERO = :NUMERO')
    Transaction = TransactionAux
    Left = 280
    Top = 328
  end
  object mtbTitulos: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 568
    Top = 80
    object mtbTitulosSAC_NOME: TStringField
      FieldName = 'SAC_NOME'
      Size = 50
    end
    object mtbTitulosSAC_RUA: TStringField
      FieldName = 'SAC_RUA'
      Size = 50
    end
    object mtbTitulosBLT_CONVENIO: TStringField
      FieldName = 'BLT_CONVENIO'
      Size = 10
    end
    object mtbTitulosSAC_COMPLEMENTO: TStringField
      FieldName = 'SAC_COMPLEMENTO'
      Size = 50
    end
    object mtbTitulosSAC_NUM: TStringField
      FieldName = 'SAC_NUM'
      Size = 15
    end
    object mtbTitulosSAC_EMAIL: TStringField
      FieldName = 'SAC_EMAIL'
      Size = 80
    end
    object mtbTitulosSAC_CEP: TStringField
      FieldName = 'SAC_CEP'
      Size = 8
    end
    object mtbTitulosSAC_CIDADE: TStringField
      FieldName = 'SAC_CIDADE'
      Size = 50
    end
    object mtbTitulosSAC_UF: TStringField
      FieldName = 'SAC_UF'
      Size = 2
    end
    object mtbTitulosSAC_BAIRRO: TStringField
      FieldName = 'SAC_BAIRRO'
      Size = 50
    end
    object mtbTitulosSAC_PESSOA: TStringField
      FieldName = 'SAC_PESSOA'
      FixedChar = True
      Size = 1
    end
    object mtbTitulosSAC_CPF_CGC: TStringField
      FieldName = 'SAC_CPF_CGC'
      Size = 14
    end
    object mtbTitulosBLT_AGENCIA: TStringField
      FieldName = 'BLT_AGENCIA'
      Size = 10
    end
    object mtbTitulosCED_CODIGOCED: TIntegerField
      FieldName = 'CED_CODIGOCED'
    end
    object mtbTitulosCED_DIG_CODIGOCED: TStringField
      FieldName = 'CED_DIG_CODIGOCED'
      FixedChar = True
      Size = 1
    end
    object mtbTitulosBLT_CARTEIRA: TStringField
      FieldName = 'BLT_CARTEIRA'
      Size = 10
    end
    object mtbTitulosBLT_INSTRUCAO: TMemoField
      FieldName = 'BLT_INSTRUCAO'
      BlobType = ftMemo
      Size = 8
    end
    object mtbTitulosBLT_LAYOUT: TIntegerField
      FieldName = 'BLT_LAYOUT'
    end
    object mtbTitulosBLT_DIG_CONTA: TStringField
      FieldName = 'BLT_DIG_CONTA'
      FixedChar = True
      Size = 1
    end
    object mtbTitulosBLT_DIG_AGENCIA: TStringField
      FieldName = 'BLT_DIG_AGENCIA'
      FixedChar = True
      Size = 1
    end
    object mtbTitulosBLT_CONTA: TStringField
      FieldName = 'BLT_CONTA'
      Size = 10
    end
    object mtbTitulosBLT_LOCAL_PAGTO: TStringField
      FieldName = 'BLT_LOCAL_PAGTO'
      Size = 200
    end
    object mtbTitulosBLT_BANCO: TIntegerField
      FieldName = 'BLT_BANCO'
    end
    object mtbTitulosBLT_ACEITE_DOCTO: TStringField
      FieldName = 'BLT_ACEITE_DOCTO'
      FixedChar = True
      Size = 1
    end
    object mtbTitulosBLT_DIAS_ABATIMENTO: TIntegerField
      FieldName = 'BLT_DIAS_ABATIMENTO'
    end
    object mtbTitulosBLT_DIAS_DESCONTO: TIntegerField
      FieldName = 'BLT_DIAS_DESCONTO'
    end
    object mtbTitulosBLT_DIAS_MORA_JUROS: TIntegerField
      FieldName = 'BLT_DIAS_MORA_JUROS'
    end
    object mtbTitulosBLT_MULTA: TBCDField
      FieldName = 'BLT_MULTA'
      Precision = 18
    end
    object mtbTitulosBLT_DIAS_PROTESTO: TIntegerField
      FieldName = 'BLT_DIAS_PROTESTO'
    end
    object mtbTitulosBLT_PCT_ABATIMENTO: TBCDField
      FieldName = 'BLT_PCT_ABATIMENTO'
      Precision = 18
    end
    object mtbTitulosBLT_PCT_DESCONTO: TBCDField
      FieldName = 'BLT_PCT_DESCONTO'
      Precision = 18
    end
    object mtbTitulosBLT_VLR_DESPESA: TBCDField
      FieldName = 'BLT_VLR_DESPESA'
      Precision = 18
    end
    object mtbTitulosBLT_VLR_IOF: TBCDField
      FieldName = 'BLT_VLR_IOF'
      Precision = 18
    end
    object mtbTitulosBLT_VLR_MORA_JUROS: TBCDField
      FieldName = 'BLT_VLR_MORA_JUROS'
      Precision = 18
    end
    object mtbTitulosBLT_VLR_OUTRAS_DESP: TBCDField
      FieldName = 'BLT_VLR_OUTRAS_DESP'
      Precision = 18
    end
    object mtbTitulosBLT_VALOR: TBCDField
      FieldName = 'BLT_VALOR'
      Precision = 18
    end
    object mtbTitulosBLT_DT_LANCTO: TDateField
      FieldName = 'BLT_DT_LANCTO'
    end
    object mtbTitulosBLT_DT_VENCTO: TDateField
      FieldName = 'BLT_DT_VENCTO'
    end
    object mtbTitulosBLT_NOME_BANCO: TStringField
      FieldName = 'BLT_NOME_BANCO'
      Size = 50
    end
    object mtbTitulosNOSSO_NUMERO: TLargeintField
      FieldName = 'NOSSO_NUMERO'
    end
    object mtbTitulosREC_DESCONTO: TBCDField
      FieldName = 'REC_DESCONTO'
      Precision = 18
    end
    object mtbTitulosREC_VLR_PARCIAL: TBCDField
      FieldName = 'REC_VLR_PARCIAL'
      Precision = 18
    end
    object mtbTitulosREC_DATA_ULT_BAIXA: TDateField
      FieldName = 'REC_DATA_ULT_BAIXA'
    end
  end
  object Geral: TIBQuery
    Database = Database
    Transaction = Transaction
    Left = 360
    Top = 16
  end
  object Sis_Releases2: TIBQuery
    Database = Database
    Transaction = Transaction
    SQL.Strings = (
      'select * from sis_release')
    Left = 32
    Top = 272
    object Sis_Releases2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_RELEASE"."CODIGO"'
      Required = True
    end
    object Sis_Releases2TICKET: TIntegerField
      FieldName = 'TICKET'
      Origin = '"SIS_RELEASE"."TICKET"'
    end
    object Sis_Releases2CLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"SIS_RELEASE"."CLIENTE"'
      Size = 50
    end
    object Sis_Releases2RELEASE: TIBStringField
      FieldName = 'RELEASE'
      Origin = '"SIS_RELEASE"."RELEASE"'
      Size = 50
    end
    object Sis_Releases2TIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"SIS_RELEASE"."TIPO"'
    end
    object Sis_Releases2COD_PAI: TSmallintField
      FieldName = 'COD_PAI'
      Origin = '"SIS_RELEASE"."COD_PAI"'
    end
    object Sis_Releases2RESUMO: TIBStringField
      FieldName = 'RESUMO'
      Origin = '"SIS_RELEASE"."RESUMO"'
      Size = 500
    end
    object Sis_Releases2CNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_RELEASE"."CNPJ"'
    end
    object Sis_Releases2DESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SIS_RELEASE"."DESCRICAO"'
      Size = 500
    end
  end
  object Sis_Releases: TIBDataSet
    Database = Database
    Transaction = Transaction
    AfterPost = Sis_ReleasesAfterPost
    DeleteSQL.Strings = (
      'delete from sis_release'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into sis_release'
      '  (CODIGO, DESCRICAO, TICKET, CLIENTE, TIPO, COD_PAI, RESUMO)'
      'values'
      
        '  (:CODIGO, :DESCRICAO, :TICKET, :CLIENTE, :TIPO, :COD_PAI, :RES' +
        'UMO)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_release '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from sis_release')
    ModifySQL.Strings = (
      'update sis_release'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TICKET = :TICKET,'
      '  CLIENTE = :CLIENTE,'
      '  TIPO = :TIPO,'
      '  COD_PAI = :COD_PAI,'
      '  RESUMO = :RESUMO'
      'where'
      '  CODIGO = :OLD_CODIGO')
    Left = 568
    Top = 144
    object Sis_ReleasesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_RELEASE"."CODIGO"'
    end
    object Sis_ReleasesTICKET: TIntegerField
      FieldName = 'TICKET'
      Origin = '"SIS_RELEASE"."TICKET"'
    end
    object Sis_ReleasesCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"SIS_RELEASE"."CLIENTE"'
      Size = 50
    end
    object Sis_ReleasesRELEASE: TIBStringField
      FieldName = 'RELEASE'
      Origin = '"SIS_RELEASE"."RELEASE"'
      Size = 50
    end
    object Sis_ReleasesTIPO: TSmallintField
      FieldName = 'TIPO'
      Origin = '"SIS_RELEASE"."TIPO"'
    end
    object Sis_ReleasesCOD_PAI: TSmallintField
      FieldName = 'COD_PAI'
      Origin = '"SIS_RELEASE"."COD_PAI"'
    end
    object Sis_ReleasesRESUMO: TIBStringField
      FieldName = 'RESUMO'
      Origin = '"SIS_RELEASE"."RESUMO"'
      Size = 500
    end
    object Sis_ReleasesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_RELEASE"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object Sis_ReleasesCONT: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'CONT'
      Calculated = True
    end
    object Sis_ReleasesDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SIS_RELEASE"."DESCRICAO"'
      Size = 500
    end
  end
  object LOG_FAT_VENDAS: TIBStoredProc
    Database = Database
    Transaction = Transaction
    StoredProcName = 'PCD_LOG_FAT_VENDAS'
    Left = 128
    Top = 272
  end
  object SSLSocket: TIdSSLIOHandlerSocket
    SSLOptions.Method = sslvSSLv23
    SSLOptions.Mode = sslmUnassigned
    SSLOptions.VerifyMode = []
    SSLOptions.VerifyDepth = 0
    Left = 128
    Top = 400
  end
  object IdSMTP: TIdSMTP
    MaxLineAction = maException
    ReadTimeout = 0
    Port = 25
    AuthenticationType = atNone
    Left = 208
    Top = 403
  end
  object IdMessage: TIdMessage
    AttachmentEncoding = 'MIME'
    BccList = <>
    CCList = <>
    Encoding = meMIME
    Recipients = <>
    ReplyTo = <>
    Left = 280
    Top = 400
  end
  object RvProject1: TRvProject
    Left = 280
    Top = 456
  end
  object VerificaLimite: TIBQuery
    Database = Database
    Transaction = Transaction
    SQL.Strings = (
      
        'select * from  PCD_VERIFICA_LIMITE(:CNPJ,:CLIENTE,:VALOR_VENDA,:' +
        'FORMA_PAGTO)')
    Left = 32
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VALOR_VENDA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FORMA_PAGTO'
        ParamType = ptUnknown
      end>
    object VerificaLimiteVALIDO: TIBStringField
      FieldName = 'VALIDO'
      Origin = '"PCD_VERIFICA_LIMITE"."VALIDO"'
      FixedChar = True
      Size = 1
    end
    object VerificaLimiteLIMITE: TIBBCDField
      FieldName = 'LIMITE'
      Origin = '"PCD_VERIFICA_LIMITE"."LIMITE"'
      Precision = 18
      Size = 4
    end
    object VerificaLimiteTOTAL_CHEQUES: TIBBCDField
      FieldName = 'TOTAL_CHEQUES'
      Origin = '"PCD_VERIFICA_LIMITE"."TOTAL_CHEQUES"'
      Precision = 18
      Size = 4
    end
    object VerificaLimiteTOTAL_CHEQUES_N_CONCILIADO: TIBBCDField
      FieldName = 'TOTAL_CHEQUES_N_CONCILIADO'
      Origin = '"PCD_VERIFICA_LIMITE"."TOTAL_CHEQUES_N_CONCILIADO"'
      Precision = 18
      Size = 4
    end
    object VerificaLimiteTOTAL_CHEQUES_N_REAP: TIBBCDField
      FieldName = 'TOTAL_CHEQUES_N_REAP'
      Origin = '"PCD_VERIFICA_LIMITE"."TOTAL_CHEQUES_N_REAP"'
      Precision = 18
      Size = 4
    end
    object VerificaLimiteTOTAL_RECEBER: TIBBCDField
      FieldName = 'TOTAL_RECEBER'
      Origin = '"PCD_VERIFICA_LIMITE"."TOTAL_RECEBER"'
      Precision = 18
      Size = 4
    end
    object VerificaLimiteTOTAL_FATURAS: TIBBCDField
      FieldName = 'TOTAL_FATURAS'
      Origin = '"PCD_VERIFICA_LIMITE"."TOTAL_FATURAS"'
      Precision = 18
      Size = 4
    end
    object VerificaLimiteMOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      Origin = '"PCD_VERIFICA_LIMITE"."MOTIVO"'
    end
  end
  object BCH_PRODUTO: TIBQuery
    Database = Database
    Transaction = Transaction
    SQL.Strings = (
      'select * from est_produtos prd'
      'where prd.codigo = :codigo and prd.cnpj = :cnpj')
    Left = 208
    Top = 267
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
    object BCH_PRODUTOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object BCH_PRODUTOCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object BCH_PRODUTOCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object BCH_PRODUTOCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object BCH_PRODUTOCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PRODUTOS"."COD_AGRUP"'
      Size = 15
    end
    object BCH_PRODUTONOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object BCH_PRODUTOMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"EST_PRODUTOS"."MARCA"'
    end
    object BCH_PRODUTONOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"EST_PRODUTOS"."NOME_MARCA"'
      Size = 50
    end
    object BCH_PRODUTOGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_PRODUTOS"."GRUPO"'
    end
    object BCH_PRODUTOSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_PRODUTOS"."SUBGRUPO"'
    end
    object BCH_PRODUTOREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"EST_PRODUTOS"."REDUCAO"'
    end
    object BCH_PRODUTOUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object BCH_PRODUTOUND_PRIMARIA: TIBStringField
      FieldName = 'UND_PRIMARIA'
      Origin = '"EST_PRODUTOS"."UND_PRIMARIA"'
      FixedChar = True
      Size = 4
    end
    object BCH_PRODUTOCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"EST_PRODUTOS"."CTE"'
    end
    object BCH_PRODUTOCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"EST_PRODUTOS"."CTIE"'
    end
    object BCH_PRODUTOQTDADE_1: TFloatField
      FieldName = 'QTDADE_1'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
    end
    object BCH_PRODUTOQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object BCH_PRODUTOLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object BCH_PRODUTOLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object BCH_PRODUTOLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object BCH_PRODUTONEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"EST_PRODUTOS"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"EST_PRODUTOS"."QTDADE_MIN"'
    end
    object BCH_PRODUTOQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"EST_PRODUTOS"."QTDADE_MAX"'
    end
    object BCH_PRODUTOCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTODT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."DT_ULT_COMPRA"'
    end
    object BCH_PRODUTOQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."QT_ULT_COMPRA"'
    end
    object BCH_PRODUTODT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"EST_PRODUTOS"."DT_ULT_VENDA"'
    end
    object BCH_PRODUTOMARGEM_BRUTA: TFloatField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"EST_PRODUTOS"."MARGEM_BRUTA"'
    end
    object BCH_PRODUTOPRC_REPOS: TFloatField
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
    end
    object BCH_PRODUTOPRC_CUSTO_ANT: TFloatField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_ANT"'
    end
    object BCH_PRODUTOPRC_CUSTO_MED: TFloatField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_MED"'
    end
    object BCH_PRODUTOPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
    object BCH_PRODUTOPRC_VENDA_ANT: TFloatField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_ANT"'
    end
    object BCH_PRODUTOPRC_VENDA_MED: TFloatField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_MED"'
    end
    object BCH_PRODUTOALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"EST_PRODUTOS"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object BCH_PRODUTOORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"EST_PRODUTOS"."ORIGEM"'
    end
    object BCH_PRODUTOPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
      Origin = '"EST_PRODUTOS"."PESO_LIQ"'
    end
    object BCH_PRODUTOPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
      Origin = '"EST_PRODUTOS"."PERC_FRETE"'
    end
    object BCH_PRODUTOIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"EST_PRODUTOS"."IPI"'
    end
    object BCH_PRODUTOVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"EST_PRODUTOS"."VOLUME"'
    end
    object BCH_PRODUTOPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"EST_PRODUTOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"EST_PRODUTOS"."ULTIMO_FORNECEDOR"'
    end
    object BCH_PRODUTOFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_PRODUTOS"."FORNECEDOR"'
    end
    object BCH_PRODUTOSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PRODUTOS"."SUBUNIDADE"'
    end
    object BCH_PRODUTOPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_CODIF"'
      Size = 15
    end
    object BCH_PRODUTOCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"EST_PRODUTOS"."CODIGO_INTERNO"'
    end
    object BCH_PRODUTODT_ULT_ATU_PRECO: TDateTimeField
      FieldName = 'DT_ULT_ATU_PRECO'
      Origin = '"EST_PRODUTOS"."DT_ULT_ATU_PRECO"'
    end
    object BCH_PRODUTOCUSTO_AQUISICAO: TFloatField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"EST_PRODUTOS"."CUSTO_AQUISICAO"'
    end
    object BCH_PRODUTOVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOQNTDE_EXPOSTA: TFloatField
      FieldName = 'QNTDE_EXPOSTA'
      Origin = '"EST_PRODUTOS"."QNTDE_EXPOSTA"'
    end
    object BCH_PRODUTOPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"EST_PRODUTOS"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOQNTDE_MAXIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MAXIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MAXIMA_VENDA"'
    end
    object BCH_PRODUTOPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"EST_PRODUTOS"."PIS"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOCOFINS: TIBStringField
      FieldName = 'COFINS'
      Origin = '"EST_PRODUTOS"."COFINS"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOCOM_VENDA_VLR: TFloatField
      FieldName = 'COM_VENDA_VLR'
      Origin = '"EST_PRODUTOS"."COM_VENDA_VLR"'
    end
    object BCH_PRODUTOCOM_VENDA_PCT: TFloatField
      FieldName = 'COM_VENDA_PCT'
      Origin = '"EST_PRODUTOS"."COM_VENDA_PCT"'
    end
    object BCH_PRODUTOPARTICIP_LUCRO: TFloatField
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"EST_PRODUTOS"."PARTICIP_LUCRO"'
    end
    object BCH_PRODUTONAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"EST_PRODUTOS"."NAO_COBR_JUR_ATE"'
    end
    object BCH_PRODUTOPREVISAO_ENTREGA: TDateTimeField
      FieldName = 'PREVISAO_ENTREGA'
      Origin = '"EST_PRODUTOS"."PREVISAO_ENTREGA"'
    end
    object BCH_PRODUTOQNTDE_PEDIDA: TFloatField
      FieldName = 'QNTDE_PEDIDA'
      Origin = '"EST_PRODUTOS"."QNTDE_PEDIDA"'
    end
    object BCH_PRODUTOATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"EST_PRODUTOS"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"EST_PRODUTOS"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"EST_PRODUTOS"."VALIDADE"'
    end
    object BCH_PRODUTOCUSTO_INDEXADO: TFloatField
      FieldName = 'CUSTO_INDEXADO'
      Origin = '"EST_PRODUTOS"."CUSTO_INDEXADO"'
    end
    object BCH_PRODUTOCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
    object BCH_PRODUTOATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = '"EST_PRODUTOS"."ATUALIZAR"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOEST_MIN: TFloatField
      FieldName = 'EST_MIN'
      Origin = '"EST_PRODUTOS"."EST_MIN"'
    end
    object BCH_PRODUTOEST_MAX: TFloatField
      FieldName = 'EST_MAX'
      Origin = '"EST_PRODUTOS"."EST_MAX"'
    end
    object BCH_PRODUTOMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"EST_PRODUTOS"."MODELO"'
    end
    object BCH_PRODUTONOME_MODELO: TIBStringField
      FieldName = 'NOME_MODELO'
      Origin = '"EST_PRODUTOS"."NOME_MODELO"'
      Size = 80
    end
    object BCH_PRODUTOSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object BCH_PRODUTODEBITA_ICMS: TIBStringField
      FieldName = 'DEBITA_ICMS'
      Origin = '"EST_PRODUTOS"."DEBITA_ICMS"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOSECAO: TIntegerField
      FieldName = 'SECAO'
      Origin = '"EST_PRODUTOS"."SECAO"'
    end
    object BCH_PRODUTONFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"EST_PRODUTOS"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"EST_PRODUTOS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOQNTDE_MINIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MINIMA_VENDA"'
    end
    object BCH_PRODUTOVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"EST_PRODUTOS"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOFATOR_CONVERSAO: TFloatField
      FieldName = 'FATOR_CONVERSAO'
      Origin = '"EST_PRODUTOS"."FATOR_CONVERSAO"'
    end
    object BCH_PRODUTOSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"EST_PRODUTOS"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
    object BCH_PRODUTOQNTDE_PDR_CARGA: TFloatField
      FieldName = 'QNTDE_PDR_CARGA'
      Origin = '"EST_PRODUTOS"."QNTDE_PDR_CARGA"'
    end
    object BCH_PRODUTOUND_CARREGAMENTO: TIBStringField
      FieldName = 'UND_CARREGAMENTO'
      Origin = '"EST_PRODUTOS"."UND_CARREGAMENTO"'
      FixedChar = True
      Size = 4
    end
    object BCH_PRODUTOTRIB_ALIQ_EST: TFloatField
      FieldName = 'TRIB_ALIQ_EST'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_EST"'
    end
    object BCH_PRODUTOTRIB_ALIQ_INT: TFloatField
      FieldName = 'TRIB_ALIQ_INT'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_INT"'
    end
    object BCH_PRODUTOTRIB_MODALIDADE: TIBStringField
      FieldName = 'TRIB_MODALIDADE'
      Origin = '"EST_PRODUTOS"."TRIB_MODALIDADE"'
      Size = 50
    end
    object BCH_PRODUTOBCH_CODIGO: TIntegerField
      FieldName = 'BCH_CODIGO'
      Origin = '"EST_PRODUTOS"."BCH_CODIGO"'
    end
    object BCH_PRODUTOCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = '"EST_PRODUTOS"."CODIGO_NCM"'
      Size = 50
    end
    object BCH_PRODUTOAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Origin = '"EST_PRODUTOS"."APLICACAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object BCH_PRODUTOIMG_2: TBlobField
      FieldName = 'IMG_2'
      Origin = '"EST_PRODUTOS"."IMG_2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object BCH_PRODUTOIMG_1: TBlobField
      FieldName = 'IMG_1'
      Origin = '"EST_PRODUTOS"."IMG_1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object BCH_PRODUTOIMG_3: TBlobField
      FieldName = 'IMG_3'
      Origin = '"EST_PRODUTOS"."IMG_3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object BCH_PRODUTOIMG_4: TBlobField
      FieldName = 'IMG_4'
      Origin = '"EST_PRODUTOS"."IMG_4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object BCH_PRODUTOCODIGO_FABRICANTE: TIBStringField
      FieldName = 'CODIGO_FABRICANTE'
      Origin = '"EST_PRODUTOS"."CODIGO_FABRICANTE"'
      Size = 50
    end
    object BCH_PRODUTOCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"EST_PRODUTOS"."COR"'
    end
    object BCH_PRODUTOMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
      Origin = '"EST_PRODUTOS"."MATERIAL"'
    end
    object BCH_PRODUTOTRIB_PIS: TIBStringField
      FieldName = 'TRIB_PIS'
      Origin = '"EST_PRODUTOS"."TRIB_PIS"'
      FixedChar = True
      Size = 2
    end
    object BCH_PRODUTOTRIB_COFINS: TIBStringField
      FieldName = 'TRIB_COFINS'
      Origin = '"EST_PRODUTOS"."TRIB_COFINS"'
      FixedChar = True
      Size = 2
    end
    object BCH_PRODUTOTRIB_IPI: TIBStringField
      FieldName = 'TRIB_IPI'
      Origin = '"EST_PRODUTOS"."TRIB_IPI"'
      FixedChar = True
      Size = 2
    end
  end
  object ACBrNFe: TACBrNFe
    Configuracoes.Geral.PathSalvar = 'C:\Program Files\Borland\Delphi7\Bin\'
    Configuracoes.WebServices.UF = 'SP'
    Configuracoes.WebServices.AguardarConsultaRet = 0
    Configuracoes.WebServices.IntervaloTentativas = 0
    Configuracoes.WebServices.AjustaAguardaConsultaRet = False
    Configuracoes.Arquivos.Salvar = True
    Configuracoes.Arquivos.PastaMensal = True
    Configuracoes.Arquivos.AdicionarLiteral = True
    Configuracoes.Arquivos.PathNFe = 'C:\ACBrNFeMonitor\Arq'
    Configuracoes.Arquivos.PathCan = 'C:\ACBrNFeMonitor\Arq'
    Configuracoes.Arquivos.PathInu = 'C:\ACBrNFeMonitor\Arq'
    Configuracoes.Arquivos.PathDPEC = 'C:\ACBrNFeMonitor\Arq'
    OnStatusChange = ACBrNFeStatusChange
    DANFE = ACBrNFeDANFERave
    Left = 350
    Top = 456
  end
  object ACBrNFeDANFERave: TACBrNFeDANFERave
    ACBrNFe = ACBrNFe
    Sistema = 'Manager 2.0'
    PathPDF = 'c:\Sistemas\HelpStore\NFe\'
    MostrarPreview = True
    MostrarStatus = True
    TipoDANFE = tiRetrato
    NumCopias = 1
    ImprimirDescPorc = True
    ImprimirTotalLiquido = False
    MargemInferior = 0.800000000000000000
    MargemSuperior = 0.800000000000000000
    MargemEsquerda = 0.600000000000000000
    MargemDireita = 0.510000000000000000
    CasasDecimais._qCom = 2
    CasasDecimais._vUnCom = 2
    ExibirResumoCanhoto = False
    FormularioContinuo = False
    TamanhoFonte_DemaisCampos = 10
    ProdutosPorPagina = 0
    ImprimirDetalhamentoEspecifico = True
    NFeCancelada = False
    RavFile = 'c:\Sistemas\HelpStore\NFe\Report\NotaFiscalEletronica.rav'
    EspessuraBorda = 1
    TamanhoFonte_RazaoSocial = 12
    TamanhoFonte_ANTT = 10
    Left = 440
    Top = 456
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 208
    Top = 459
  end
  object TimerConsultaEstoque: TTimer
    Interval = 30000
    OnTimer = TimerConsultaEstoqueTimer
    Left = 32
    Top = 456
  end
  object EST_EMAIL_POSICAO_ESTOQUE: TIBDataSet
    Database = Database
    Transaction = Transaction
    BeforeOpen = ConfiguracoesBeforeOpen
    DeleteSQL.Strings = (
      'delete from EST_EMAIL_POSICAO_ESTOQUE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_EMAIL_POSICAO_ESTOQUE'
      
        '  (CNPJ, CODIGO, DATA, MAXIMO, MINIMO, PRODUTO, QTDE, STATUS, SU' +
        'JESTAO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :MAXIMO, :MINIMO, :PRODUTO, :QTDE, :ST' +
        'ATUS, :SUJESTAO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PRODUTO,'
      '  QTDE,'
      '  MINIMO,'
      '  MAXIMO,'
      '  SUJESTAO,'
      '  DATA,'
      '  STATUS'
      'from EST_EMAIL_POSICAO_ESTOQUE '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  e.*'
      'from EST_EMAIL_POSICAO_ESTOQUE e'
      'where e.cnpj = :cnpj and e.data = :data and e.produto = :produto')
    ModifySQL.Strings = (
      'update EST_EMAIL_POSICAO_ESTOQUE'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  MAXIMO = :MAXIMO,'
      '  MINIMO = :MINIMO,'
      '  PRODUTO = :PRODUTO,'
      '  QTDE = :QTDE,'
      '  STATUS = :STATUS,'
      '  SUJESTAO = :SUJESTAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_EST_EMAIL_ESTOQUE_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 128
    Top = 327
    object EST_EMAIL_POSICAO_ESTOQUECNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object EST_EMAIL_POSICAO_ESTOQUECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object EST_EMAIL_POSICAO_ESTOQUEPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."PRODUTO"'
      Size = 15
    end
    object EST_EMAIL_POSICAO_ESTOQUEQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."QTDE"'
      Precision = 18
      Size = 4
    end
    object EST_EMAIL_POSICAO_ESTOQUEMINIMO: TIBBCDField
      FieldName = 'MINIMO'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."MINIMO"'
      Precision = 18
      Size = 4
    end
    object EST_EMAIL_POSICAO_ESTOQUEMAXIMO: TFloatField
      FieldName = 'MAXIMO'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."MAXIMO"'
    end
    object EST_EMAIL_POSICAO_ESTOQUESUJESTAO: TIBBCDField
      FieldName = 'SUJESTAO'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."SUJESTAO"'
      Precision = 18
      Size = 4
    end
    object EST_EMAIL_POSICAO_ESTOQUEDATA: TDateField
      FieldName = 'DATA'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."DATA"'
    end
    object EST_EMAIL_POSICAO_ESTOQUESTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"EST_EMAIL_POSICAO_ESTOQUE"."STATUS"'
      FixedChar = True
      Size = 1
    end
  end
  object QryContCotacoes: TIBQuery
    Database = Database
    Transaction = Transaction
    SQL.Strings = (
      'select count(*) from  FAT_COTACOES c'
      
        '          inner join  fat_cotacoes_itens ci on (ci.cnpj = c.cnpj' +
        ' and c.codigo = ci.codigo)'
      
        '          where ci.produto = :produto and coalesce(c.fechado,'#39'N'#39 +
        ') = '#39'N'#39)
    Left = 432
    Top = 323
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    object QryContCotacoesCOUNT: TIntegerField
      FieldName = 'COUNT'
      ProviderFlags = []
    end
  end
  object SaveDialog: TSaveDialog
    FileName = 'ExpGrid'
    Options = [ofOverwritePrompt, ofHideReadOnly]
    Left = 128
    Top = 456
  end
  object MadExceptionHandler1: TMadExceptionHandler
    Left = 32
    Top = 400
  end
  object ACBrBoleto: TACBrBoleto
    Banco.TamanhoMaximoNossoNum = 10
    Banco.TipoCobranca = cobNenhum
    Cedente.Nome = 'TodaObra Materias p/ Construcao'
    Cedente.CodigoCedente = '4266443'
    Cedente.Agencia = '3913'
    Cedente.AgenciaDigito = '3'
    Cedente.Conta = '0000074294'
    Cedente.ContaDigito = '5'
    Cedente.TipoInscricao = pOutras
    Cedente.UF = 'MS'
    NomeArqRemessa = '.'
    NumeroArquivo = 0
    LayoutRemessa = c240
    ACBrBoletoFC = ACBrBoletoFCFortes
    Left = 360
    Top = 207
  end
  object ACBrBoletoFCFortes: TACBrBoletoFCFortes
    ACBrBoleto = ACBrBoleto
    DirLogo = 'c:\Sistemas\HelpStore\Manager\Boletos\Logos\Colorido'
    SoftwareHouse = 'Manager 2.0'
    Left = 456
    Top = 208
  end
  object edtPessoas: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from GLO_PESSOAS_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_PESSOAS_FJ'
      
        '  (ATIVIDADE, BAIRRO, CELULAR, CEP, CIDADE, CNPJ, CODIGO, CODIGO' +
        '_2, COMPLEMENTO, '
      
        '   CONTATO, CONTATO1, CONTATO2, CONTATO3, CONVENIO, CPF_CGC, DT_' +
        'CADASTRO, '
      
        '   DT_NASCIMENTO, EMAIL, EMISSOR, ENDERECO, FANTASIA, FAX, FJ, F' +
        'ONE, INSC_MUNIC, '
      
        '   MAP_LAT, MAP_LONG, NFE_EXP, NOME_RAZAO, NUMERO, OBS, ORDEM, P' +
        'ESSOA, '
      '   REGIAO, RG_IE, SELECIONADO, UF)'
      'values'
      
        '  (:ATIVIDADE, :BAIRRO, :CELULAR, :CEP, :CIDADE, :CNPJ, :CODIGO,' +
        ' :CODIGO_2, '
      
        '   :COMPLEMENTO, :CONTATO, :CONTATO1, :CONTATO2, :CONTATO3, :CON' +
        'VENIO, '
      
        '   :CPF_CGC, :DT_CADASTRO, :DT_NASCIMENTO, :EMAIL, :EMISSOR, :EN' +
        'DERECO, '
      
        '   :FANTASIA, :FAX, :FJ, :FONE, :INSC_MUNIC, :MAP_LAT, :MAP_LONG' +
        ', :NFE_EXP, '
      
        '   :NOME_RAZAO, :NUMERO, :OBS, :ORDEM, :PESSOA, :REGIAO, :RG_IE,' +
        ' :SELECIONADO, '
      '   :UF)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME_RAZAO,'
      '  FANTASIA,'
      '  ATIVIDADE,'
      '  ENDERECO,'
      '  NUMERO,'
      '  COMPLEMENTO,'
      '  BAIRRO,'
      '  CIDADE,'
      '  UF,'
      '  CEP,'
      '  FONE,'
      '  FAX,'
      '  CELULAR,'
      '  PESSOA,'
      '  CPF_CGC,'
      '  RG_IE,'
      '  CONTATO,'
      '  DT_NASCIMENTO,'
      '  DT_CADASTRO,'
      '  EMAIL,'
      '  OBS,'
      '  INSC_MUNIC,'
      '  CONVENIO,'
      '  EMISSOR,'
      '  CONTATO1,'
      '  CONTATO2,'
      '  CONTATO3,'
      '  ORDEM,'
      '  REGIAO,'
      '  NFE_EXP,'
      '  SELECIONADO,'
      '  CODIGO_2,'
      '  FJ,'
      '  MAP_LAT,'
      '  MAP_LONG'
      'from GLO_PESSOAS_FJ '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select psa.* from glo_pessoas_fj psa where psa.cnpj = :cnpj and ' +
        'psa.cpf_cgc = :cpf_cnpj')
    ModifySQL.Strings = (
      'update GLO_PESSOAS_FJ'
      'set'
      '  ATIVIDADE = :ATIVIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  CELULAR = :CELULAR,'
      '  CEP = :CEP,'
      '  CIDADE = :CIDADE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_2 = :CODIGO_2,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  CONTATO = :CONTATO,'
      '  CONTATO1 = :CONTATO1,'
      '  CONTATO2 = :CONTATO2,'
      '  CONTATO3 = :CONTATO3,'
      '  CONVENIO = :CONVENIO,'
      '  CPF_CGC = :CPF_CGC,'
      '  DT_CADASTRO = :DT_CADASTRO,'
      '  DT_NASCIMENTO = :DT_NASCIMENTO,'
      '  EMAIL = :EMAIL,'
      '  EMISSOR = :EMISSOR,'
      '  ENDERECO = :ENDERECO,'
      '  FANTASIA = :FANTASIA,'
      '  FAX = :FAX,'
      '  FJ = :FJ,'
      '  FONE = :FONE,'
      '  INSC_MUNIC = :INSC_MUNIC,'
      '  MAP_LAT = :MAP_LAT,'
      '  MAP_LONG = :MAP_LONG,'
      '  NFE_EXP = :NFE_EXP,'
      '  NOME_RAZAO = :NOME_RAZAO,'
      '  NUMERO = :NUMERO,'
      '  OBS = :OBS,'
      '  ORDEM = :ORDEM,'
      '  PESSOA = :PESSOA,'
      '  REGIAO = :REGIAO,'
      '  RG_IE = :RG_IE,'
      '  SELECIONADO = :SELECIONADO,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_PESSOAS_FJ_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 617
    Top = 268
    object edtPessoasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtPessoasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object edtPessoasNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object edtPessoasFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object edtPessoasATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_PESSOAS_FJ"."ATIVIDADE"'
    end
    object edtPessoasENDERECO: TIntegerField
      FieldName = 'ENDERECO'
      Origin = '"GLO_PESSOAS_FJ"."ENDERECO"'
    end
    object edtPessoasNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object edtPessoasCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object edtPessoasBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_PESSOAS_FJ"."BAIRRO"'
    end
    object edtPessoasCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object edtPessoasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
    object edtPessoasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object edtPessoasFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object edtPessoasFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object edtPessoasCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object edtPessoasPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"GLO_PESSOAS_FJ"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object edtPessoasCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object edtPessoasRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
    end
    object edtPessoasCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object edtPessoasDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"GLO_PESSOAS_FJ"."DT_NASCIMENTO"'
    end
    object edtPessoasDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"GLO_PESSOAS_FJ"."DT_CADASTRO"'
    end
    object edtPessoasEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
    object edtPessoasOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_PESSOAS_FJ"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object edtPessoasINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"GLO_PESSOAS_FJ"."INSC_MUNIC"'
      Size = 15
    end
    object edtPessoasCONVENIO: TIntegerField
      FieldName = 'CONVENIO'
      Origin = '"GLO_PESSOAS_FJ"."CONVENIO"'
    end
    object edtPessoasEMISSOR: TIBStringField
      FieldName = 'EMISSOR'
      Origin = '"GLO_PESSOAS_FJ"."EMISSOR"'
      Size = 6
    end
    object edtPessoasCONTATO1: TIBStringField
      FieldName = 'CONTATO1'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO1"'
      Size = 50
    end
    object edtPessoasCONTATO2: TIBStringField
      FieldName = 'CONTATO2'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO2"'
      Size = 50
    end
    object edtPessoasCONTATO3: TIBStringField
      FieldName = 'CONTATO3'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO3"'
      Size = 50
    end
    object edtPessoasORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"GLO_PESSOAS_FJ"."ORDEM"'
    end
    object edtPessoasREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"GLO_PESSOAS_FJ"."REGIAO"'
    end
    object edtPessoasNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"GLO_PESSOAS_FJ"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object edtPessoasSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"GLO_PESSOAS_FJ"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object edtPessoasCODIGO_2: TIntegerField
      FieldName = 'CODIGO_2'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO_2"'
    end
    object edtPessoasFJ: TIBStringField
      FieldName = 'FJ'
      Origin = '"GLO_PESSOAS_FJ"."FJ"'
      FixedChar = True
      Size = 1
    end
    object edtPessoasMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object edtPessoasMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
  end
  object edtUF: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from glo_estados'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into glo_estados'
      '  (CNPJ, COD_IBGE, MASCARA_IE, NOME, SIGLA)'
      'values'
      '  (:CNPJ, :COD_IBGE, :MASCARA_IE, :NOME, :SIGLA)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_estados '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'select * from glo_estados uf'
      'where uf.cnpj = :cnpj and uf.sigla = :uf')
    ModifySQL.Strings = (
      'update glo_estados'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_IBGE = :COD_IBGE,'
      '  MASCARA_IE = :MASCARA_IE,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 672
    Top = 272
    object edtUFCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_ESTADOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtUFSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_ESTADOS"."SIGLA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 2
    end
    object edtUFNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_ESTADOS"."NOME"'
      Size = 50
    end
    object edtUFMASCARA_IE: TIBStringField
      FieldName = 'MASCARA_IE'
      Origin = '"GLO_ESTADOS"."MASCARA_IE"'
      Size = 15
    end
    object edtUFCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_ESTADOS"."COD_IBGE"'
      Size = 2
    end
  end
  object edtCidade: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from glo_cidades'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_cidades'
      '  (CNPJ, COD_IAGRO, COD_IBGE, CODIGO, NOME, UF)'
      'values'
      '  (:CNPJ, :COD_IAGRO, :COD_IBGE, :CODIGO, :NOME, :UF)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_cidades '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_cidades cdd'
      'where cdd.cnpj = :cnpj and cdd.cod_ibge = :cod_ibge')
    ModifySQL.Strings = (
      'update glo_cidades'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_IAGRO = :COD_IAGRO,'
      '  COD_IBGE = :COD_IBGE,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  UF = :UF'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_CIDADES_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 619
    Top = 316
    object edtCidadeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CIDADES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object edtCidadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object edtCidadeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_CIDADES"."UF"'
      FixedChar = True
      Size = 2
    end
    object edtCidadeCOD_IBGE: TIBStringField
      FieldName = 'COD_IBGE'
      Origin = '"GLO_CIDADES"."COD_IBGE"'
      Size = 7
    end
    object edtCidadeCOD_IAGRO: TIntegerField
      FieldName = 'COD_IAGRO'
      Origin = '"GLO_CIDADES"."COD_IAGRO"'
    end
  end
  object edtBairro: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from glo_bairros'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_bairros'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_bairros '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_bairros br'
      'where br.cnpj = :cnpj and br.nome = :nome')
    ModifySQL.Strings = (
      'update glo_bairros'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_BAIRROS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 680
    Top = 320
    object edtBairroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_BAIRROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtBairroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_BAIRROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object edtBairroNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
  end
  object edtLogradouro: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from glo_logradouros'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_logradouros'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_logradouros '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_logradouros lgd'
      'where lgd.cnpj = :cnpj and lgd.nome = :nome')
    ModifySQL.Strings = (
      'update glo_logradouros'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_LOGRADOUROS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 621
    Top = 372
    object edtLogradouroCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_LOGRADOUROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtLogradouroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_LOGRADOUROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object edtLogradouroNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
  end
  object edtFornecedor: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from glo_fornecedores'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into glo_fornecedores'
      
        '  (AGENCIA_C1, AGENCIA_C2, BANCO_C1, BANCO_C2, CC_C1, CC_C2, CNP' +
        'J, CONTABILIDADE, '
      
        '   FINANCEIRO, FONE_FIN, FONE_REP, FONE_VEN, FORMA_PAGTO, PESSOA' +
        '_FJ, REPRESENTANTE, '
      '   SINCRONIZA_FILIAIS, VENDEDOR)'
      'values'
      
        '  (:AGENCIA_C1, :AGENCIA_C2, :BANCO_C1, :BANCO_C2, :CC_C1, :CC_C' +
        '2, :CNPJ, '
      
        '   :CONTABILIDADE, :FINANCEIRO, :FONE_FIN, :FONE_REP, :FONE_VEN,' +
        ' :FORMA_PAGTO, '
      '   :PESSOA_FJ, :REPRESENTANTE, :SINCRONIZA_FILIAIS, :VENDEDOR)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_fornecedores '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select * from glo_fornecedores f'
      'where f.cnpj = :cnpj and f.pessoa_fj = :codigo')
    ModifySQL.Strings = (
      'update glo_fornecedores'
      'set'
      '  AGENCIA_C1 = :AGENCIA_C1,'
      '  AGENCIA_C2 = :AGENCIA_C2,'
      '  BANCO_C1 = :BANCO_C1,'
      '  BANCO_C2 = :BANCO_C2,'
      '  CC_C1 = :CC_C1,'
      '  CC_C2 = :CC_C2,'
      '  CNPJ = :CNPJ,'
      '  CONTABILIDADE = :CONTABILIDADE,'
      '  FINANCEIRO = :FINANCEIRO,'
      '  FONE_FIN = :FONE_FIN,'
      '  FONE_REP = :FONE_REP,'
      '  FONE_VEN = :FONE_VEN,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  REPRESENTANTE = :REPRESENTANTE,'
      '  SINCRONIZA_FILIAIS = :SINCRONIZA_FILIAIS,'
      '  VENDEDOR = :VENDEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 621
    Top = 428
    object edtFornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_FORNECEDORES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtFornecedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object edtFornecedorVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_FORNECEDORES"."VENDEDOR"'
      Size = 50
    end
    object edtFornecedorFONE_VEN: TIBStringField
      FieldName = 'FONE_VEN'
      Origin = '"GLO_FORNECEDORES"."FONE_VEN"'
    end
    object edtFornecedorFINANCEIRO: TIBStringField
      FieldName = 'FINANCEIRO'
      Origin = '"GLO_FORNECEDORES"."FINANCEIRO"'
      Size = 50
    end
    object edtFornecedorFONE_FIN: TIBStringField
      FieldName = 'FONE_FIN'
      Origin = '"GLO_FORNECEDORES"."FONE_FIN"'
    end
    object edtFornecedorREPRESENTANTE: TIBStringField
      FieldName = 'REPRESENTANTE'
      Origin = '"GLO_FORNECEDORES"."REPRESENTANTE"'
      Size = 50
    end
    object edtFornecedorFONE_REP: TIBStringField
      FieldName = 'FONE_REP'
      Origin = '"GLO_FORNECEDORES"."FONE_REP"'
    end
    object edtFornecedorBANCO_C1: TIBStringField
      FieldName = 'BANCO_C1'
      Origin = '"GLO_FORNECEDORES"."BANCO_C1"'
      FixedChar = True
      Size = 3
    end
    object edtFornecedorAGENCIA_C1: TIBStringField
      FieldName = 'AGENCIA_C1'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C1"'
      Size = 6
    end
    object edtFornecedorCC_C1: TIBStringField
      FieldName = 'CC_C1'
      Origin = '"GLO_FORNECEDORES"."CC_C1"'
      Size = 15
    end
    object edtFornecedorBANCO_C2: TIBStringField
      FieldName = 'BANCO_C2'
      Origin = '"GLO_FORNECEDORES"."BANCO_C2"'
      FixedChar = True
      Size = 3
    end
    object edtFornecedorAGENCIA_C2: TIBStringField
      FieldName = 'AGENCIA_C2'
      Origin = '"GLO_FORNECEDORES"."AGENCIA_C2"'
      Size = 6
    end
    object edtFornecedorCC_C2: TIBStringField
      FieldName = 'CC_C2'
      Origin = '"GLO_FORNECEDORES"."CC_C2"'
      Size = 15
    end
    object edtFornecedorFORMA_PAGTO: TIntegerField
      FieldName = 'FORMA_PAGTO'
      Origin = '"GLO_FORNECEDORES"."FORMA_PAGTO"'
    end
    object edtFornecedorCONTABILIDADE: TIntegerField
      FieldName = 'CONTABILIDADE'
      Origin = '"GLO_FORNECEDORES"."CONTABILIDADE"'
    end
    object edtFornecedorSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"GLO_FORNECEDORES"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
  end
  object edtCliente: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from glo_clientes'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into glo_clientes'
      
        '  (ADMISSAO, ADMISSAO_CONJUGE, AJUSTE_AUT_FATURAS, ALIQUOTA_DESC' +
        'ONTO, ASSINA_NOTA, '
      
        '   ATIVIDADE, BAIRRO, BLOQUEADO, CEP_TRABALHO, CHEQUE, CIDADE_PA' +
        'IS, CLASSIF, '
      
        '   CNPJ, CNPJ_CLASSIF, CNPJ_FPAGTO, CNPJ_VEND, COD_CLASSIF, COD_' +
        'FPAGTO, '
      
        '   COD_VEND, COMPLEMENTO, COMPRADOR, CONJUGE, CONS_REV, CONTROLA' +
        '_KM, CONTROLA_PLACA, '
      
        '   DIA_PREF_FAT, DT_NASC_CONJUGE, ENDERECO_PAIS, ENDERECO_TRABAL' +
        'HO, FONE, '
      
        '   FONE_LOCAL_CONJUGE, FONE_TRABALHO, FREQUENCIA, LIMITE_CREDITO' +
        ', LIMITE_RETIRADAS_DIARIA, '
      
        '   LIMITE_TEMPO, LOCAL_TRAB_CONJUGE, LOCAL_TRABALHO, MAE, MEDIA_' +
        'COMPRAS_MES, '
      
        '   NAO_COBR_JUR_ATE, NEG_N_VEZES, NUMERO_PAIS, NUMERO_TRABALHO, ' +
        'OBS, OPTANTE_SIMPLES, '
      
        '   PAI, PERIODO_FATURAMENTO, PESSOA_FJ, PRAZO, RAMAL_FONE_TRAB, ' +
        'RAMAL_LOCAL_CONJUGE, '
      
        '   REFERENCIAS, RENDA_MENSAL, REQUISICAO, RET_INSS, RET_IRRF, RE' +
        'T_PIS, '
      
        '   SENHA_PDV, SUB_TRIBUTARIO, TAXA_JUROS, TEMPO_SERV_CONJUGE, TE' +
        'MPO_SERVICO, '
      '   TOLERANCIA_FATURAMENTO, ULT_VENDEDOR, VALOR_MAXIMO_RETIRADA)'
      'values'
      
        '  (:ADMISSAO, :ADMISSAO_CONJUGE, :AJUSTE_AUT_FATURAS, :ALIQUOTA_' +
        'DESCONTO, '
      
        '   :ASSINA_NOTA, :ATIVIDADE, :BAIRRO, :BLOQUEADO, :CEP_TRABALHO,' +
        ' :CHEQUE, '
      
        '   :CIDADE_PAIS, :CLASSIF, :CNPJ, :CNPJ_CLASSIF, :CNPJ_FPAGTO, :' +
        'CNPJ_VEND, '
      
        '   :COD_CLASSIF, :COD_FPAGTO, :COD_VEND, :COMPLEMENTO, :COMPRADO' +
        'R, :CONJUGE, '
      
        '   :CONS_REV, :CONTROLA_KM, :CONTROLA_PLACA, :DIA_PREF_FAT, :DT_' +
        'NASC_CONJUGE, '
      
        '   :ENDERECO_PAIS, :ENDERECO_TRABALHO, :FONE, :FONE_LOCAL_CONJUG' +
        'E, :FONE_TRABALHO, '
      
        '   :FREQUENCIA, :LIMITE_CREDITO, :LIMITE_RETIRADAS_DIARIA, :LIMI' +
        'TE_TEMPO, '
      
        '   :LOCAL_TRAB_CONJUGE, :LOCAL_TRABALHO, :MAE, :MEDIA_COMPRAS_ME' +
        'S, :NAO_COBR_JUR_ATE, '
      
        '   :NEG_N_VEZES, :NUMERO_PAIS, :NUMERO_TRABALHO, :OBS, :OPTANTE_' +
        'SIMPLES, '
      
        '   :PAI, :PERIODO_FATURAMENTO, :PESSOA_FJ, :PRAZO, :RAMAL_FONE_T' +
        'RAB, :RAMAL_LOCAL_CONJUGE, '
      
        '   :REFERENCIAS, :RENDA_MENSAL, :REQUISICAO, :RET_INSS, :RET_IRR' +
        'F, :RET_PIS, '
      
        '   :SENHA_PDV, :SUB_TRIBUTARIO, :TAXA_JUROS, :TEMPO_SERV_CONJUGE' +
        ', :TEMPO_SERVICO, '
      
        '   :TOLERANCIA_FATURAMENTO, :ULT_VENDEDOR, :VALOR_MAXIMO_RETIRAD' +
        'A)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_clientes '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select * from glo_clientes g'
      'where g.cnpj = :cnpj and g.pessoa_fj = :codigo')
    ModifySQL.Strings = (
      'update glo_clientes'
      'set'
      '  ADMISSAO = :ADMISSAO,'
      '  ADMISSAO_CONJUGE = :ADMISSAO_CONJUGE,'
      '  AJUSTE_AUT_FATURAS = :AJUSTE_AUT_FATURAS,'
      '  ALIQUOTA_DESCONTO = :ALIQUOTA_DESCONTO,'
      '  ASSINA_NOTA = :ASSINA_NOTA,'
      '  ATIVIDADE = :ATIVIDADE,'
      '  BAIRRO = :BAIRRO,'
      '  BLOQUEADO = :BLOQUEADO,'
      '  CEP_TRABALHO = :CEP_TRABALHO,'
      '  CHEQUE = :CHEQUE,'
      '  CIDADE_PAIS = :CIDADE_PAIS,'
      '  CLASSIF = :CLASSIF,'
      '  CNPJ = :CNPJ,'
      '  CNPJ_CLASSIF = :CNPJ_CLASSIF,'
      '  CNPJ_FPAGTO = :CNPJ_FPAGTO,'
      '  CNPJ_VEND = :CNPJ_VEND,'
      '  COD_CLASSIF = :COD_CLASSIF,'
      '  COD_FPAGTO = :COD_FPAGTO,'
      '  COD_VEND = :COD_VEND,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  COMPRADOR = :COMPRADOR,'
      '  CONJUGE = :CONJUGE,'
      '  CONS_REV = :CONS_REV,'
      '  CONTROLA_KM = :CONTROLA_KM,'
      '  CONTROLA_PLACA = :CONTROLA_PLACA,'
      '  DIA_PREF_FAT = :DIA_PREF_FAT,'
      '  DT_NASC_CONJUGE = :DT_NASC_CONJUGE,'
      '  ENDERECO_PAIS = :ENDERECO_PAIS,'
      '  ENDERECO_TRABALHO = :ENDERECO_TRABALHO,'
      '  FONE = :FONE,'
      '  FONE_LOCAL_CONJUGE = :FONE_LOCAL_CONJUGE,'
      '  FONE_TRABALHO = :FONE_TRABALHO,'
      '  FREQUENCIA = :FREQUENCIA,'
      '  LIMITE_CREDITO = :LIMITE_CREDITO,'
      '  LIMITE_RETIRADAS_DIARIA = :LIMITE_RETIRADAS_DIARIA,'
      '  LIMITE_TEMPO = :LIMITE_TEMPO,'
      '  LOCAL_TRAB_CONJUGE = :LOCAL_TRAB_CONJUGE,'
      '  LOCAL_TRABALHO = :LOCAL_TRABALHO,'
      '  MAE = :MAE,'
      '  MEDIA_COMPRAS_MES = :MEDIA_COMPRAS_MES,'
      '  NAO_COBR_JUR_ATE = :NAO_COBR_JUR_ATE,'
      '  NEG_N_VEZES = :NEG_N_VEZES,'
      '  NUMERO_PAIS = :NUMERO_PAIS,'
      '  NUMERO_TRABALHO = :NUMERO_TRABALHO,'
      '  OBS = :OBS,'
      '  OPTANTE_SIMPLES = :OPTANTE_SIMPLES,'
      '  PAI = :PAI,'
      '  PERIODO_FATURAMENTO = :PERIODO_FATURAMENTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRAZO = :PRAZO,'
      '  RAMAL_FONE_TRAB = :RAMAL_FONE_TRAB,'
      '  RAMAL_LOCAL_CONJUGE = :RAMAL_LOCAL_CONJUGE,'
      '  REFERENCIAS = :REFERENCIAS,'
      '  RENDA_MENSAL = :RENDA_MENSAL,'
      '  REQUISICAO = :REQUISICAO,'
      '  RET_INSS = :RET_INSS,'
      '  RET_IRRF = :RET_IRRF,'
      '  RET_PIS = :RET_PIS,'
      '  SENHA_PDV = :SENHA_PDV,'
      '  SUB_TRIBUTARIO = :SUB_TRIBUTARIO,'
      '  TAXA_JUROS = :TAXA_JUROS,'
      '  TEMPO_SERV_CONJUGE = :TEMPO_SERV_CONJUGE,'
      '  TEMPO_SERVICO = :TEMPO_SERVICO,'
      '  TOLERANCIA_FATURAMENTO = :TOLERANCIA_FATURAMENTO,'
      '  ULT_VENDEDOR = :ULT_VENDEDOR,'
      '  VALOR_MAXIMO_RETIRADA = :VALOR_MAXIMO_RETIRADA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    GeneratorField.ApplyEvent = gamOnPost
    Left = 688
    Top = 432
    object edtClienteCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtClientePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object edtClienteCOMPRADOR: TIBStringField
      FieldName = 'COMPRADOR'
      Origin = '"GLO_CLIENTES"."COMPRADOR"'
      Size = 50
    end
    object edtClienteFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_CLIENTES"."FONE"'
    end
    object edtClienteCNPJ_VEND: TIBStringField
      FieldName = 'CNPJ_VEND'
      Origin = '"GLO_CLIENTES"."CNPJ_VEND"'
      FixedChar = True
      Size = 14
    end
    object edtClienteCOD_VEND: TIntegerField
      FieldName = 'COD_VEND'
      Origin = '"GLO_CLIENTES"."COD_VEND"'
    end
    object edtClienteCNPJ_FPAGTO: TIBStringField
      FieldName = 'CNPJ_FPAGTO'
      Origin = '"GLO_CLIENTES"."CNPJ_FPAGTO"'
      FixedChar = True
      Size = 14
    end
    object edtClienteCOD_FPAGTO: TIntegerField
      FieldName = 'COD_FPAGTO'
      Origin = '"GLO_CLIENTES"."COD_FPAGTO"'
    end
    object edtClienteREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"GLO_CLIENTES"."REQUISICAO"'
      FixedChar = True
      Size = 1
    end
    object edtClienteDIA_PREF_FAT: TIntegerField
      FieldName = 'DIA_PREF_FAT'
      Origin = '"GLO_CLIENTES"."DIA_PREF_FAT"'
    end
    object edtClienteCLASSIF: TIBStringField
      FieldName = 'CLASSIF'
      Origin = '"GLO_CLIENTES"."CLASSIF"'
      FixedChar = True
      Size = 1
    end
    object edtClienteLIMITE_TEMPO: TIntegerField
      FieldName = 'LIMITE_TEMPO'
      Origin = '"GLO_CLIENTES"."LIMITE_TEMPO"'
    end
    object edtClienteLIMITE_CREDITO: TFloatField
      FieldName = 'LIMITE_CREDITO'
      Origin = '"GLO_CLIENTES"."LIMITE_CREDITO"'
    end
    object edtClienteREFERENCIAS: TBlobField
      FieldName = 'REFERENCIAS'
      Origin = '"GLO_CLIENTES"."REFERENCIAS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object edtClienteOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"GLO_CLIENTES"."OBS"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object edtClienteBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"GLO_CLIENTES"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object edtClienteULT_VENDEDOR: TIntegerField
      FieldName = 'ULT_VENDEDOR'
      Origin = '"GLO_CLIENTES"."ULT_VENDEDOR"'
    end
    object edtClienteFREQUENCIA: TIBStringField
      FieldName = 'FREQUENCIA'
      Origin = '"GLO_CLIENTES"."FREQUENCIA"'
      FixedChar = True
      Size = 3
    end
    object edtClienteATIVIDADE: TIntegerField
      FieldName = 'ATIVIDADE'
      Origin = '"GLO_CLIENTES"."ATIVIDADE"'
    end
    object edtClienteCEP_TRABALHO: TIBStringField
      FieldName = 'CEP_TRABALHO'
      Origin = '"GLO_CLIENTES"."CEP_TRABALHO"'
      Size = 8
    end
    object edtClienteCIDADE_PAIS: TIntegerField
      FieldName = 'CIDADE_PAIS'
      Origin = '"GLO_CLIENTES"."CIDADE_PAIS"'
    end
    object edtClienteCONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Origin = '"GLO_CLIENTES"."CONJUGE"'
      Size = 50
    end
    object edtClienteDT_NASC_CONJUGE: TDateTimeField
      FieldName = 'DT_NASC_CONJUGE'
      Origin = '"GLO_CLIENTES"."DT_NASC_CONJUGE"'
    end
    object edtClienteENDERECO_PAIS: TIntegerField
      FieldName = 'ENDERECO_PAIS'
      Origin = '"GLO_CLIENTES"."ENDERECO_PAIS"'
    end
    object edtClienteENDERECO_TRABALHO: TIntegerField
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"GLO_CLIENTES"."ENDERECO_TRABALHO"'
    end
    object edtClienteFONE_LOCAL_CONJUGE: TIBStringField
      FieldName = 'FONE_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."FONE_LOCAL_CONJUGE"'
    end
    object edtClienteFONE_TRABALHO: TIBStringField
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object edtClienteLOCAL_TRAB_CONJUGE: TIBStringField
      FieldName = 'LOCAL_TRAB_CONJUGE'
      Origin = '"GLO_CLIENTES"."LOCAL_TRAB_CONJUGE"'
      Size = 50
    end
    object edtClienteLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object edtClienteMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"GLO_CLIENTES"."MAE"'
      Size = 50
    end
    object edtClientePAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"GLO_CLIENTES"."PAI"'
      Size = 50
    end
    object edtClienteRAMAL_FONE_TRAB: TIBStringField
      FieldName = 'RAMAL_FONE_TRAB'
      Origin = '"GLO_CLIENTES"."RAMAL_FONE_TRAB"'
      FixedChar = True
      Size = 3
    end
    object edtClienteRAMAL_LOCAL_CONJUGE: TIBStringField
      FieldName = 'RAMAL_LOCAL_CONJUGE'
      Origin = '"GLO_CLIENTES"."RAMAL_LOCAL_CONJUGE"'
      FixedChar = True
      Size = 3
    end
    object edtClienteRENDA_MENSAL: TFloatField
      FieldName = 'RENDA_MENSAL'
      Origin = '"GLO_CLIENTES"."RENDA_MENSAL"'
    end
    object edtClienteTEMPO_SERV_CONJUGE: TIBStringField
      FieldName = 'TEMPO_SERV_CONJUGE'
      Origin = '"GLO_CLIENTES"."TEMPO_SERV_CONJUGE"'
      Size = 10
    end
    object edtClienteTEMPO_SERVICO: TIBStringField
      FieldName = 'TEMPO_SERVICO'
      Origin = '"GLO_CLIENTES"."TEMPO_SERVICO"'
      Size = 10
    end
    object edtClienteCNPJ_CLASSIF: TIBStringField
      FieldName = 'CNPJ_CLASSIF'
      Origin = '"GLO_CLIENTES"."CNPJ_CLASSIF"'
      FixedChar = True
      Size = 14
    end
    object edtClienteCOD_CLASSIF: TIntegerField
      FieldName = 'COD_CLASSIF'
      Origin = '"GLO_CLIENTES"."COD_CLASSIF"'
    end
    object edtClientePRAZO: TIntegerField
      FieldName = 'PRAZO'
      Origin = '"GLO_CLIENTES"."PRAZO"'
    end
    object edtClientePERIODO_FATURAMENTO: TIBStringField
      FieldName = 'PERIODO_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."PERIODO_FATURAMENTO"'
      FixedChar = True
      Size = 1
    end
    object edtClienteTOLERANCIA_FATURAMENTO: TIntegerField
      FieldName = 'TOLERANCIA_FATURAMENTO'
      Origin = '"GLO_CLIENTES"."TOLERANCIA_FATURAMENTO"'
    end
    object edtClienteAJUSTE_AUT_FATURAS: TIBStringField
      FieldName = 'AJUSTE_AUT_FATURAS'
      Origin = '"GLO_CLIENTES"."AJUSTE_AUT_FATURAS"'
      FixedChar = True
      Size = 1
    end
    object edtClienteTAXA_JUROS: TFloatField
      FieldName = 'TAXA_JUROS'
      Origin = '"GLO_CLIENTES"."TAXA_JUROS"'
    end
    object edtClienteMEDIA_COMPRAS_MES: TIntegerField
      FieldName = 'MEDIA_COMPRAS_MES'
      Origin = '"GLO_CLIENTES"."MEDIA_COMPRAS_MES"'
    end
    object edtClienteNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"GLO_CLIENTES"."NAO_COBR_JUR_ATE"'
    end
    object edtClienteASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"GLO_CLIENTES"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object edtClienteCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"GLO_CLIENTES"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object edtClienteCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"GLO_CLIENTES"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object edtClienteADMISSAO: TDateTimeField
      FieldName = 'ADMISSAO'
      Origin = '"GLO_CLIENTES"."ADMISSAO"'
    end
    object edtClienteADMISSAO_CONJUGE: TDateTimeField
      FieldName = 'ADMISSAO_CONJUGE'
      Origin = '"GLO_CLIENTES"."ADMISSAO_CONJUGE"'
    end
    object edtClienteNUMERO_TRABALHO: TIBStringField
      FieldName = 'NUMERO_TRABALHO'
      Origin = '"GLO_CLIENTES"."NUMERO_TRABALHO"'
      Size = 15
    end
    object edtClienteLIMITE_RETIRADAS_DIARIA: TFloatField
      FieldName = 'LIMITE_RETIRADAS_DIARIA'
      Origin = '"GLO_CLIENTES"."LIMITE_RETIRADAS_DIARIA"'
    end
    object edtClienteVALOR_MAXIMO_RETIRADA: TFloatField
      FieldName = 'VALOR_MAXIMO_RETIRADA'
      Origin = '"GLO_CLIENTES"."VALOR_MAXIMO_RETIRADA"'
    end
    object edtClienteNUMERO_PAIS: TIBStringField
      FieldName = 'NUMERO_PAIS'
      Origin = '"GLO_CLIENTES"."NUMERO_PAIS"'
      Size = 15
    end
    object edtClienteCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"GLO_CLIENTES"."CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object edtClienteALIQUOTA_DESCONTO: TFloatField
      FieldName = 'ALIQUOTA_DESCONTO'
      Origin = '"GLO_CLIENTES"."ALIQUOTA_DESCONTO"'
    end
    object edtClienteOPTANTE_SIMPLES: TIBStringField
      FieldName = 'OPTANTE_SIMPLES'
      Origin = '"GLO_CLIENTES"."OPTANTE_SIMPLES"'
      FixedChar = True
      Size = 1
    end
    object edtClienteCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"GLO_CLIENTES"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object edtClienteSENHA_PDV: TIBStringField
      FieldName = 'SENHA_PDV'
      Origin = '"GLO_CLIENTES"."SENHA_PDV"'
      Size = 6
    end
    object edtClienteSUB_TRIBUTARIO: TIBStringField
      FieldName = 'SUB_TRIBUTARIO'
      Origin = '"GLO_CLIENTES"."SUB_TRIBUTARIO"'
      FixedChar = True
      Size = 1
    end
    object edtClienteRET_PIS: TIBStringField
      FieldName = 'RET_PIS'
      Origin = '"GLO_CLIENTES"."RET_PIS"'
      FixedChar = True
      Size = 1
    end
    object edtClienteRET_INSS: TIBStringField
      FieldName = 'RET_INSS'
      Origin = '"GLO_CLIENTES"."RET_INSS"'
      FixedChar = True
      Size = 1
    end
    object edtClienteRET_IRRF: TIBStringField
      FieldName = 'RET_IRRF'
      Origin = '"GLO_CLIENTES"."RET_IRRF"'
      FixedChar = True
      Size = 1
    end
    object edtClienteBAIRRO: TIntegerField
      FieldName = 'BAIRRO'
      Origin = '"GLO_CLIENTES"."BAIRRO"'
    end
    object edtClienteNEG_N_VEZES: TSmallintField
      FieldName = 'NEG_N_VEZES'
      Origin = '"GLO_CLIENTES"."NEG_N_VEZES"'
    end
    object edtClienteCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_CLIENTES"."COMPLEMENTO"'
      Size = 80
    end
    object edtClienteCATEGORIA: TIntegerField
      FieldName = 'CATEGORIA'
      Origin = '"GLO_CLIENTES"."CATEGORIA"'
    end
  end
  object edtProdutos: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from est_produtos'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into est_produtos'
      
        '  (ALIQUOTA_ECF, APLICACAO, ATIVO, ATUALIZA_ARQ_EXTERNO, ATUALIZ' +
        'AR, BCH_CODIGO, '
      
        '   CNPJ, CNPJ_AGRUP, COD_AGRUP, COD_GETIN, COD_LOCALIZACAO_1, CO' +
        'D_LOCALIZACAO_2, '
      
        '   COD_LOCALIZACAO_3, CODIGO, CODIGO_2, CODIGO_FABRICANTE, CODIG' +
        'O_INTERNO, '
      
        '   CODIGO_NCM, COFINS, COM_VENDA_PCT, COM_VENDA_VLR, COMPLEMENTO' +
        ', COMPLEMENTO_NF, '
      
        '   COR, CSOSN, CTE, CTIE, CUSTO_AQUISICAO, CUSTO_INDEXADO, DEBIT' +
        'A_ICMS, '
      
        '   DT_ULT_ATU_PRECO, DT_ULT_COMPRA, DT_ULT_VENDA, EST_MAX, EST_M' +
        'IN, ETIQUETA_ENT, '
      
        '   FATOR_CONVERSAO, FORNECEDOR, GRUPO, IMG_1, IMG_2, IMG_3, IMG_' +
        '4, IPI, '
      
        '   LOCALIZACAO_1, LOCALIZACAO_2, LOCALIZACAO_3, MARCA, MARGEM_BR' +
        'UTA, MATERIAL, '
      
        '   MODELO, NAO_COBR_JUR_ATE, NEG_QTDADE_2, NFE_EXP, NOME, NOME_M' +
        'ARCA, NOME_MODELO, '
      
        '   ORIGEM, PARTICIP_LUCRO, PERC_FRETE, PESO_LIQ, PIS, POSSUI_LOT' +
        'E, PRC_CUSTO_ANT, '
      
        '   PRC_CUSTO_CODIF, PRC_CUSTO_MED, PRC_REPOS, PRC_VENDA, PRC_VEN' +
        'DA_ANT, '
      
        '   PRC_VENDA_MED, PREVISAO_ENTREGA, PROD_PESAVEL, QNTDE_EXPOSTA,' +
        ' QNTDE_MAXIMA_VENDA, '
      
        '   QNTDE_MINIMA_VENDA, QNTDE_PDR_CARGA, QNTDE_PEDIDA, QT_ULT_COM' +
        'PRA, QTDADE_1, '
      
        '   QTDADE_2, QTDADE_MAX, QTDADE_MIN, REDUCAO, SECAO, SELECIONADO' +
        ', SERIE, '
      
        '   SERVICO, SINCRONIZA_FILIAIS, SUBGRUPO, SUBUNIDADE, TRIB_ALIQ_' +
        'EST, TRIB_ALIQ_INT, '
      
        '   TRIB_COFINS, TRIB_IPI, TRIB_MODALIDADE, TRIB_PIS, ULTIMO_FORN' +
        'ECEDOR, '
      
        '   UND_CARREGAMENTO, UND_PRIMARIA, UNIDADE, VALIDA_MULT_QTDE_MIN' +
        ', VALIDADE, '
      '   VENCTO_PRC_VENDA, VENDE_FRACIONADO, VOLUME)'
      'values'
      
        '  (:ALIQUOTA_ECF, :APLICACAO, :ATIVO, :ATUALIZA_ARQ_EXTERNO, :AT' +
        'UALIZAR, '
      
        '   :BCH_CODIGO, :CNPJ, :CNPJ_AGRUP, :COD_AGRUP, :COD_GETIN, :COD' +
        '_LOCALIZACAO_1, '
      
        '   :COD_LOCALIZACAO_2, :COD_LOCALIZACAO_3, :CODIGO, :CODIGO_2, :' +
        'CODIGO_FABRICANTE, '
      
        '   :CODIGO_INTERNO, :CODIGO_NCM, :COFINS, :COM_VENDA_PCT, :COM_V' +
        'ENDA_VLR, '
      
        '   :COMPLEMENTO, :COMPLEMENTO_NF, :COR, :CSOSN, :CTE, :CTIE, :CU' +
        'STO_AQUISICAO, '
      
        '   :CUSTO_INDEXADO, :DEBITA_ICMS, :DT_ULT_ATU_PRECO, :DT_ULT_COM' +
        'PRA, :DT_ULT_VENDA, '
      
        '   :EST_MAX, :EST_MIN, :ETIQUETA_ENT, :FATOR_CONVERSAO, :FORNECE' +
        'DOR, :GRUPO, '
      
        '   :IMG_1, :IMG_2, :IMG_3, :IMG_4, :IPI, :LOCALIZACAO_1, :LOCALI' +
        'ZACAO_2, '
      
        '   :LOCALIZACAO_3, :MARCA, :MARGEM_BRUTA, :MATERIAL, :MODELO, :N' +
        'AO_COBR_JUR_ATE, '
      
        '   :NEG_QTDADE_2, :NFE_EXP, :NOME, :NOME_MARCA, :NOME_MODELO, :O' +
        'RIGEM, '
      
        '   :PARTICIP_LUCRO, :PERC_FRETE, :PESO_LIQ, :PIS, :POSSUI_LOTE, ' +
        ':PRC_CUSTO_ANT, '
      
        '   :PRC_CUSTO_CODIF, :PRC_CUSTO_MED, :PRC_REPOS, :PRC_VENDA, :PR' +
        'C_VENDA_ANT, '
      
        '   :PRC_VENDA_MED, :PREVISAO_ENTREGA, :PROD_PESAVEL, :QNTDE_EXPO' +
        'STA, :QNTDE_MAXIMA_VENDA, '
      
        '   :QNTDE_MINIMA_VENDA, :QNTDE_PDR_CARGA, :QNTDE_PEDIDA, :QT_ULT' +
        '_COMPRA, '
      
        '   :QTDADE_1, :QTDADE_2, :QTDADE_MAX, :QTDADE_MIN, :REDUCAO, :SE' +
        'CAO, :SELECIONADO, '
      
        '   :SERIE, :SERVICO, :SINCRONIZA_FILIAIS, :SUBGRUPO, :SUBUNIDADE' +
        ', :TRIB_ALIQ_EST, '
      
        '   :TRIB_ALIQ_INT, :TRIB_COFINS, :TRIB_IPI, :TRIB_MODALIDADE, :T' +
        'RIB_PIS, '
      
        '   :ULTIMO_FORNECEDOR, :UND_CARREGAMENTO, :UND_PRIMARIA, :UNIDAD' +
        'E, :VALIDA_MULT_QTDE_MIN, '
      '   :VALIDADE, :VENCTO_PRC_VENDA, :VENDE_FRACIONADO, :VOLUME)')
    RefreshSQL.Strings = (
      'Select * '
      'from est_produtos '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from est_produtos prd'
      'where prd.cnpj = :cnpj and prd.codigo = :produto')
    ModifySQL.Strings = (
      'update est_produtos'
      'set'
      '  ALIQUOTA_ECF = :ALIQUOTA_ECF,'
      '  APLICACAO = :APLICACAO,'
      '  ATIVO = :ATIVO,'
      '  ATUALIZA_ARQ_EXTERNO = :ATUALIZA_ARQ_EXTERNO,'
      '  ATUALIZAR = :ATUALIZAR,'
      '  BCH_CODIGO = :BCH_CODIGO,'
      '  CNPJ = :CNPJ,'
      '  CNPJ_AGRUP = :CNPJ_AGRUP,'
      '  COD_AGRUP = :COD_AGRUP,'
      '  COD_GETIN = :COD_GETIN,'
      '  COD_LOCALIZACAO_1 = :COD_LOCALIZACAO_1,'
      '  COD_LOCALIZACAO_2 = :COD_LOCALIZACAO_2,'
      '  COD_LOCALIZACAO_3 = :COD_LOCALIZACAO_3,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_2 = :CODIGO_2,'
      '  CODIGO_FABRICANTE = :CODIGO_FABRICANTE,'
      '  CODIGO_INTERNO = :CODIGO_INTERNO,'
      '  CODIGO_NCM = :CODIGO_NCM,'
      '  COFINS = :COFINS,'
      '  COM_VENDA_PCT = :COM_VENDA_PCT,'
      '  COM_VENDA_VLR = :COM_VENDA_VLR,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  COMPLEMENTO_NF = :COMPLEMENTO_NF,'
      '  COR = :COR,'
      '  CSOSN = :CSOSN,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  CUSTO_AQUISICAO = :CUSTO_AQUISICAO,'
      '  CUSTO_INDEXADO = :CUSTO_INDEXADO,'
      '  DEBITA_ICMS = :DEBITA_ICMS,'
      '  DT_ULT_ATU_PRECO = :DT_ULT_ATU_PRECO,'
      '  DT_ULT_COMPRA = :DT_ULT_COMPRA,'
      '  DT_ULT_VENDA = :DT_ULT_VENDA,'
      '  EST_MAX = :EST_MAX,'
      '  EST_MIN = :EST_MIN,'
      '  ETIQUETA_ENT = :ETIQUETA_ENT,'
      '  FATOR_CONVERSAO = :FATOR_CONVERSAO,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  GRUPO = :GRUPO,'
      '  IMG_1 = :IMG_1,'
      '  IMG_2 = :IMG_2,'
      '  IMG_3 = :IMG_3,'
      '  IMG_4 = :IMG_4,'
      '  IPI = :IPI,'
      '  LOCALIZACAO_1 = :LOCALIZACAO_1,'
      '  LOCALIZACAO_2 = :LOCALIZACAO_2,'
      '  LOCALIZACAO_3 = :LOCALIZACAO_3,'
      '  MARCA = :MARCA,'
      '  MARGEM_BRUTA = :MARGEM_BRUTA,'
      '  MATERIAL = :MATERIAL,'
      '  MODELO = :MODELO,'
      '  NAO_COBR_JUR_ATE = :NAO_COBR_JUR_ATE,'
      '  NEG_QTDADE_2 = :NEG_QTDADE_2,'
      '  NFE_EXP = :NFE_EXP,'
      '  NOME = :NOME,'
      '  NOME_MARCA = :NOME_MARCA,'
      '  NOME_MODELO = :NOME_MODELO,'
      '  ORIGEM = :ORIGEM,'
      '  PARTICIP_LUCRO = :PARTICIP_LUCRO,'
      '  PERC_FRETE = :PERC_FRETE,'
      '  PESO_LIQ = :PESO_LIQ,'
      '  PIS = :PIS,'
      '  POSSUI_LOTE = :POSSUI_LOTE,'
      '  PRC_CUSTO_ANT = :PRC_CUSTO_ANT,'
      '  PRC_CUSTO_CODIF = :PRC_CUSTO_CODIF,'
      '  PRC_CUSTO_MED = :PRC_CUSTO_MED,'
      '  PRC_REPOS = :PRC_REPOS,'
      '  PRC_VENDA = :PRC_VENDA,'
      '  PRC_VENDA_ANT = :PRC_VENDA_ANT,'
      '  PRC_VENDA_MED = :PRC_VENDA_MED,'
      '  PREVISAO_ENTREGA = :PREVISAO_ENTREGA,'
      '  PROD_PESAVEL = :PROD_PESAVEL,'
      '  QNTDE_EXPOSTA = :QNTDE_EXPOSTA,'
      '  QNTDE_MAXIMA_VENDA = :QNTDE_MAXIMA_VENDA,'
      '  QNTDE_MINIMA_VENDA = :QNTDE_MINIMA_VENDA,'
      '  QNTDE_PDR_CARGA = :QNTDE_PDR_CARGA,'
      '  QNTDE_PEDIDA = :QNTDE_PEDIDA,'
      '  QT_ULT_COMPRA = :QT_ULT_COMPRA,'
      '  QTDADE_1 = :QTDADE_1,'
      '  QTDADE_2 = :QTDADE_2,'
      '  QTDADE_MAX = :QTDADE_MAX,'
      '  QTDADE_MIN = :QTDADE_MIN,'
      '  REDUCAO = :REDUCAO,'
      '  SECAO = :SECAO,'
      '  SELECIONADO = :SELECIONADO,'
      '  SERIE = :SERIE,'
      '  SERVICO = :SERVICO,'
      '  SINCRONIZA_FILIAIS = :SINCRONIZA_FILIAIS,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  TRIB_ALIQ_EST = :TRIB_ALIQ_EST,'
      '  TRIB_ALIQ_INT = :TRIB_ALIQ_INT,'
      '  TRIB_COFINS = :TRIB_COFINS,'
      '  TRIB_IPI = :TRIB_IPI,'
      '  TRIB_MODALIDADE = :TRIB_MODALIDADE,'
      '  TRIB_PIS = :TRIB_PIS,'
      '  ULTIMO_FORNECEDOR = :ULTIMO_FORNECEDOR,'
      '  UND_CARREGAMENTO = :UND_CARREGAMENTO,'
      '  UND_PRIMARIA = :UND_PRIMARIA,'
      '  UNIDADE = :UNIDADE,'
      '  VALIDA_MULT_QTDE_MIN = :VALIDA_MULT_QTDE_MIN,'
      '  VALIDADE = :VALIDADE,'
      '  VENCTO_PRC_VENDA = :VENCTO_PRC_VENDA,'
      '  VENDE_FRACIONADO = :VENDE_FRACIONADO,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'EST_PRODUTOS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 731
    Top = 268
    object edtProdutosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object edtProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 15
    end
    object edtProdutosCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object edtProdutosCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object edtProdutosCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PRODUTOS"."COD_AGRUP"'
      Size = 15
    end
    object edtProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object edtProdutosMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"EST_PRODUTOS"."MARCA"'
    end
    object edtProdutosNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"EST_PRODUTOS"."NOME_MARCA"'
      Size = 50
    end
    object edtProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_PRODUTOS"."GRUPO"'
    end
    object edtProdutosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_PRODUTOS"."SUBGRUPO"'
    end
    object edtProdutosREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"EST_PRODUTOS"."REDUCAO"'
    end
    object edtProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object edtProdutosUND_PRIMARIA: TIBStringField
      FieldName = 'UND_PRIMARIA'
      Origin = '"EST_PRODUTOS"."UND_PRIMARIA"'
      FixedChar = True
      Size = 4
    end
    object edtProdutosCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"EST_PRODUTOS"."CTE"'
    end
    object edtProdutosCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"EST_PRODUTOS"."CTIE"'
    end
    object edtProdutosQTDADE_1: TFloatField
      FieldName = 'QTDADE_1'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
    end
    object edtProdutosQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object edtProdutosLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object edtProdutosLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object edtProdutosLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object edtProdutosNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"EST_PRODUTOS"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"EST_PRODUTOS"."QTDADE_MIN"'
    end
    object edtProdutosQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"EST_PRODUTOS"."QTDADE_MAX"'
    end
    object edtProdutosCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."DT_ULT_COMPRA"'
    end
    object edtProdutosQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."QT_ULT_COMPRA"'
    end
    object edtProdutosDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"EST_PRODUTOS"."DT_ULT_VENDA"'
    end
    object edtProdutosMARGEM_BRUTA: TFloatField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"EST_PRODUTOS"."MARGEM_BRUTA"'
    end
    object edtProdutosPRC_REPOS: TFloatField
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
    end
    object edtProdutosPRC_CUSTO_ANT: TFloatField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_ANT"'
    end
    object edtProdutosPRC_CUSTO_MED: TFloatField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_MED"'
    end
    object edtProdutosPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
    object edtProdutosPRC_VENDA_ANT: TFloatField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_ANT"'
    end
    object edtProdutosPRC_VENDA_MED: TFloatField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_MED"'
    end
    object edtProdutosALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"EST_PRODUTOS"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object edtProdutosORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"EST_PRODUTOS"."ORIGEM"'
    end
    object edtProdutosPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
      Origin = '"EST_PRODUTOS"."PESO_LIQ"'
    end
    object edtProdutosPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
      Origin = '"EST_PRODUTOS"."PERC_FRETE"'
    end
    object edtProdutosIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"EST_PRODUTOS"."IPI"'
    end
    object edtProdutosVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"EST_PRODUTOS"."VOLUME"'
    end
    object edtProdutosPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"EST_PRODUTOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"EST_PRODUTOS"."ULTIMO_FORNECEDOR"'
    end
    object edtProdutosFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_PRODUTOS"."FORNECEDOR"'
    end
    object edtProdutosSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PRODUTOS"."SUBUNIDADE"'
    end
    object edtProdutosPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_CODIF"'
      Size = 15
    end
    object edtProdutosCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"EST_PRODUTOS"."CODIGO_INTERNO"'
    end
    object edtProdutosDT_ULT_ATU_PRECO: TDateTimeField
      FieldName = 'DT_ULT_ATU_PRECO'
      Origin = '"EST_PRODUTOS"."DT_ULT_ATU_PRECO"'
    end
    object edtProdutosCUSTO_AQUISICAO: TFloatField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"EST_PRODUTOS"."CUSTO_AQUISICAO"'
    end
    object edtProdutosVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosQNTDE_EXPOSTA: TFloatField
      FieldName = 'QNTDE_EXPOSTA'
      Origin = '"EST_PRODUTOS"."QNTDE_EXPOSTA"'
    end
    object edtProdutosPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"EST_PRODUTOS"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosQNTDE_MAXIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MAXIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MAXIMA_VENDA"'
    end
    object edtProdutosPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"EST_PRODUTOS"."PIS"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosCOFINS: TIBStringField
      FieldName = 'COFINS'
      Origin = '"EST_PRODUTOS"."COFINS"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosCOM_VENDA_VLR: TFloatField
      FieldName = 'COM_VENDA_VLR'
      Origin = '"EST_PRODUTOS"."COM_VENDA_VLR"'
    end
    object edtProdutosCOM_VENDA_PCT: TFloatField
      FieldName = 'COM_VENDA_PCT'
      Origin = '"EST_PRODUTOS"."COM_VENDA_PCT"'
    end
    object edtProdutosPARTICIP_LUCRO: TFloatField
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"EST_PRODUTOS"."PARTICIP_LUCRO"'
    end
    object edtProdutosNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"EST_PRODUTOS"."NAO_COBR_JUR_ATE"'
    end
    object edtProdutosPREVISAO_ENTREGA: TDateTimeField
      FieldName = 'PREVISAO_ENTREGA'
      Origin = '"EST_PRODUTOS"."PREVISAO_ENTREGA"'
    end
    object edtProdutosQNTDE_PEDIDA: TFloatField
      FieldName = 'QNTDE_PEDIDA'
      Origin = '"EST_PRODUTOS"."QNTDE_PEDIDA"'
    end
    object edtProdutosATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"EST_PRODUTOS"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"EST_PRODUTOS"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"EST_PRODUTOS"."VALIDADE"'
    end
    object edtProdutosCUSTO_INDEXADO: TFloatField
      FieldName = 'CUSTO_INDEXADO'
      Origin = '"EST_PRODUTOS"."CUSTO_INDEXADO"'
    end
    object edtProdutosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
    object edtProdutosATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = '"EST_PRODUTOS"."ATUALIZAR"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosEST_MIN: TFloatField
      FieldName = 'EST_MIN'
      Origin = '"EST_PRODUTOS"."EST_MIN"'
    end
    object edtProdutosEST_MAX: TFloatField
      FieldName = 'EST_MAX'
      Origin = '"EST_PRODUTOS"."EST_MAX"'
    end
    object edtProdutosMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"EST_PRODUTOS"."MODELO"'
    end
    object edtProdutosNOME_MODELO: TIBStringField
      FieldName = 'NOME_MODELO'
      Origin = '"EST_PRODUTOS"."NOME_MODELO"'
      Size = 80
    end
    object edtProdutosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object edtProdutosDEBITA_ICMS: TIBStringField
      FieldName = 'DEBITA_ICMS'
      Origin = '"EST_PRODUTOS"."DEBITA_ICMS"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosSECAO: TIntegerField
      FieldName = 'SECAO'
      Origin = '"EST_PRODUTOS"."SECAO"'
    end
    object edtProdutosNFE_EXP: TIBStringField
      FieldName = 'NFE_EXP'
      Origin = '"EST_PRODUTOS"."NFE_EXP"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"EST_PRODUTOS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosQNTDE_MINIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MINIMA_VENDA"'
    end
    object edtProdutosVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"EST_PRODUTOS"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosFATOR_CONVERSAO: TFloatField
      FieldName = 'FATOR_CONVERSAO'
      Origin = '"EST_PRODUTOS"."FATOR_CONVERSAO"'
    end
    object edtProdutosSINCRONIZA_FILIAIS: TIBStringField
      FieldName = 'SINCRONIZA_FILIAIS'
      Origin = '"EST_PRODUTOS"."SINCRONIZA_FILIAIS"'
      FixedChar = True
      Size = 1
    end
    object edtProdutosQNTDE_PDR_CARGA: TFloatField
      FieldName = 'QNTDE_PDR_CARGA'
      Origin = '"EST_PRODUTOS"."QNTDE_PDR_CARGA"'
    end
    object edtProdutosUND_CARREGAMENTO: TIBStringField
      FieldName = 'UND_CARREGAMENTO'
      Origin = '"EST_PRODUTOS"."UND_CARREGAMENTO"'
      FixedChar = True
      Size = 4
    end
    object edtProdutosTRIB_ALIQ_EST: TFloatField
      FieldName = 'TRIB_ALIQ_EST'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_EST"'
    end
    object edtProdutosTRIB_ALIQ_INT: TFloatField
      FieldName = 'TRIB_ALIQ_INT'
      Origin = '"EST_PRODUTOS"."TRIB_ALIQ_INT"'
    end
    object edtProdutosTRIB_MODALIDADE: TIBStringField
      FieldName = 'TRIB_MODALIDADE'
      Origin = '"EST_PRODUTOS"."TRIB_MODALIDADE"'
      Size = 50
    end
    object edtProdutosBCH_CODIGO: TIntegerField
      FieldName = 'BCH_CODIGO'
      Origin = '"EST_PRODUTOS"."BCH_CODIGO"'
    end
    object edtProdutosCODIGO_NCM: TIBStringField
      FieldName = 'CODIGO_NCM'
      Origin = '"EST_PRODUTOS"."CODIGO_NCM"'
      Size = 50
    end
    object edtProdutosAPLICACAO: TMemoField
      FieldName = 'APLICACAO'
      Origin = '"EST_PRODUTOS"."APLICACAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object edtProdutosIMG_2: TBlobField
      FieldName = 'IMG_2'
      Origin = '"EST_PRODUTOS"."IMG_2"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object edtProdutosIMG_1: TBlobField
      FieldName = 'IMG_1'
      Origin = '"EST_PRODUTOS"."IMG_1"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object edtProdutosIMG_3: TBlobField
      FieldName = 'IMG_3'
      Origin = '"EST_PRODUTOS"."IMG_3"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object edtProdutosIMG_4: TBlobField
      FieldName = 'IMG_4'
      Origin = '"EST_PRODUTOS"."IMG_4"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object edtProdutosCODIGO_FABRICANTE: TIBStringField
      FieldName = 'CODIGO_FABRICANTE'
      Origin = '"EST_PRODUTOS"."CODIGO_FABRICANTE"'
      Size = 50
    end
    object edtProdutosCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"EST_PRODUTOS"."COR"'
    end
    object edtProdutosMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
      Origin = '"EST_PRODUTOS"."MATERIAL"'
    end
    object edtProdutosTRIB_PIS: TIBStringField
      FieldName = 'TRIB_PIS'
      Origin = '"EST_PRODUTOS"."TRIB_PIS"'
      FixedChar = True
      Size = 2
    end
    object edtProdutosTRIB_COFINS: TIBStringField
      FieldName = 'TRIB_COFINS'
      Origin = '"EST_PRODUTOS"."TRIB_COFINS"'
      FixedChar = True
      Size = 2
    end
    object edtProdutosTRIB_IPI: TIBStringField
      FieldName = 'TRIB_IPI'
      Origin = '"EST_PRODUTOS"."TRIB_IPI"'
      FixedChar = True
      Size = 2
    end
    object edtProdutosVENCTO_PRC_VENDA: TDateField
      FieldName = 'VENCTO_PRC_VENDA'
      Origin = '"EST_PRODUTOS"."VENCTO_PRC_VENDA"'
    end
    object edtProdutosCSOSN: TIntegerField
      FieldName = 'CSOSN'
      Origin = '"EST_PRODUTOS"."CSOSN"'
    end
    object edtProdutosCOD_GETIN: TIBStringField
      FieldName = 'COD_GETIN'
      Origin = '"EST_PRODUTOS"."COD_GETIN"'
      Size = 15
    end
    object edtProdutosCOD_LOCALIZACAO_1: TIntegerField
      FieldName = 'COD_LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."COD_LOCALIZACAO_1"'
    end
    object edtProdutosCOD_LOCALIZACAO_2: TIntegerField
      FieldName = 'COD_LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."COD_LOCALIZACAO_2"'
    end
    object edtProdutosCOD_LOCALIZACAO_3: TIntegerField
      FieldName = 'COD_LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."COD_LOCALIZACAO_3"'
    end
  end
  object Produto_Fornecedor: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from est_produto_fornecedor'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into est_produto_fornecedor'
      
        '  (CNPJ, COD_PRD_FORNECEDOR, CODIGO, FATOR, FORNECEDOR, PRODUTO,' +
        ' UNIDADE)'
      'values'
      
        '  (:CNPJ, :COD_PRD_FORNECEDOR, :CODIGO, :FATOR, :FORNECEDOR, :PR' +
        'ODUTO, '
      '   :UNIDADE)')
    RefreshSQL.Strings = (
      'Select *'
      'from est_produto_fornecedor '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from est_produto_fornecedor f'
      
        'where f.cnpj = :cnpj and f.PRODUTO = :produto and f.fornecedor =' +
        ' :fornecedor')
    ModifySQL.Strings = (
      'update est_produto_fornecedor'
      'set'
      '  CNPJ = :CNPJ,'
      '  COD_PRD_FORNECEDOR = :COD_PRD_FORNECEDOR,'
      '  CODIGO = :CODIGO,'
      '  FATOR = :FATOR,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  PRODUTO = :PRODUTO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_EST_PRODUTOS_FORNECEDOR_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 679
    Top = 158
    object Produto_FornecedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTO_FORNECEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Produto_FornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTO_FORNECEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Produto_FornecedorPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTO_FORNECEDOR"."PRODUTO"'
      Size = 15
    end
    object Produto_FornecedorFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_PRODUTO_FORNECEDOR"."FORNECEDOR"'
    end
    object Produto_FornecedorFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = '"EST_PRODUTO_FORNECEDOR"."FATOR"'
    end
    object Produto_FornecedorUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTO_FORNECEDOR"."UNIDADE"'
      FixedChar = True
      Size = 3
    end
    object Produto_FornecedorCOD_PRD_FORNECEDOR: TIBStringField
      FieldName = 'COD_PRD_FORNECEDOR'
      Origin = '"EST_PRODUTO_FORNECEDOR"."COD_PRD_FORNECEDOR"'
    end
  end
  object QryRetProduto: TIBQuery
    Database = Database
    Transaction = Transaction
    SQL.Strings = (
      
        'select * from PCD_RET_COD_PRODUTO(:cnpj,:fornecedor,:cod_barras,' +
        ':codigo)')
    Left = 680
    Top = 112
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_barras'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object QryRetProdutoRET_PRODUTO: TIBStringField
      FieldName = 'RET_PRODUTO'
      Origin = '"PCD_RET_COD_PRODUTO"."RET_PRODUTO"'
      Size = 15
    end
    object QryRetProdutoRET_DESC_PRODUTO: TIBStringField
      FieldName = 'RET_DESC_PRODUTO'
      Origin = '"PCD_RET_COD_PRODUTO"."RET_DESC_PRODUTO"'
      Size = 60
    end
    object QryRetProdutoFATOR: TIBBCDField
      FieldName = 'FATOR'
      Origin = '"PCD_RET_COD_PRODUTO"."FATOR"'
      Precision = 18
      Size = 4
    end
  end
  object IBDataSet1: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from glo_bairros'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_bairros'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select * '
      'from glo_bairros '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from glo_bairros br'
      'where br.cnpj = :cnpj and br.nome = :nome')
    ModifySQL.Strings = (
      'update glo_bairros'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GLO_BAIRROS_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 688
    Top = 368
    object IBStringField1: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_BAIRROS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object IntegerField1: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_BAIRROS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object IBStringField2: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
  end
  object Unidades: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from EST_UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into EST_UNIDADES'
      '  (CNPJ, NOME, SIGLA, UNIDADES)'
      'values'
      '  (:CNPJ, :NOME, :SIGLA, :UNIDADES)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  SIGLA,'
      '  NOME,'
      '  UNIDADES'
      'from EST_UNIDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               SIGLA, '
      '               NOME,'
      '               UNIDADES'
      'FROM EST_UNIDADES'
      'WHERE CNPJ = :CNPJ'
      'and SIGLA = :SIGLA'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_UNIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA,'
      '  UNIDADES = :UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    Left = 672
    Top = 218
    object UnidadesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_UNIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object UnidadesSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"EST_UNIDADES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object UnidadesNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'EST_UNIDADES_MED.NOME'
      Required = True
      Size = 50
    end
    object UnidadesUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = '"EST_UNIDADES"."UNIDADES"'
    end
  end
  object QryParceiro: TIBDataSet
    Database = Database
    Transaction = Transaction
    DeleteSQL.Strings = (
      'delete from SIS_PARC'
      'where'
      '  PARC_CNPJ = :OLD_PARC_CNPJ')
    InsertSQL.Strings = (
      'insert into SIS_PARC'
      
        '  (PARC_CNPJ, PARC_EMAIL, PARC_FONE, PARC_LOGO, PARC_NOME_FANTAS' +
        'IA, PARC_PATH_ICONE, '
      
        '   PARC_RAZAO_SOCIAL, PARC_SITE, PARC_SLOGAN, PARC_SUPORTE_EMAIL' +
        ', PARC_SUPORTE_FONE, '
      '   PARC_SUPORTE_SITE, PARC_TEXTO_RELATORIO)'
      'values'
      
        '  (:PARC_CNPJ, :PARC_EMAIL, :PARC_FONE, :PARC_LOGO, :PARC_NOME_F' +
        'ANTASIA, '
      
        '   :PARC_PATH_ICONE, :PARC_RAZAO_SOCIAL, :PARC_SITE, :PARC_SLOGA' +
        'N, :PARC_SUPORTE_EMAIL, '
      
        '   :PARC_SUPORTE_FONE, :PARC_SUPORTE_SITE, :PARC_TEXTO_RELATORIO' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  PARC_RAZAO_SOCIAL,'
      '  PARC_NOME_FANTASIA,'
      '  PARC_CNPJ,'
      '  PARC_FONE,'
      '  PARC_SITE,'
      '  PARC_EMAIL,'
      '  PARC_SLOGAN,'
      '  PARC_SUPORTE_EMAIL,'
      '  PARC_SUPORTE_FONE,'
      '  PARC_SUPORTE_SITE,'
      '  PARC_LOGO,'
      '  PARC_TEXTO_RELATORIO,'
      '  PARC_PATH_ICONE'
      'from SIS_PARC '
      'where'
      '  PARC_CNPJ = :PARC_CNPJ')
    SelectSQL.Strings = (
      'select PARC_RAZAO_SOCIAL ,'
      '    PARC_NOME_FANTASIA ,'
      '    PARC_CNPJ          ,'
      '    PARC_FONE          ,'
      '    PARC_SITE          ,'
      '    PARC_EMAIL         ,'
      '    PARC_SLOGAN        ,'
      '    PARC_SUPORTE_EMAIL ,'
      '    PARC_SUPORTE_FONE  ,'
      '    PARC_SUPORTE_SITE  ,'
      '    PARC_LOGO,  '
      'PARC_TEXTO_RELATORIO,'
      'PARC_PATH_ICONE'
      ' from SIS_PARC')
    ModifySQL.Strings = (
      'update SIS_PARC'
      'set'
      '  PARC_CNPJ = :PARC_CNPJ,'
      '  PARC_EMAIL = :PARC_EMAIL,'
      '  PARC_FONE = :PARC_FONE,'
      '  PARC_LOGO = :PARC_LOGO,'
      '  PARC_NOME_FANTASIA = :PARC_NOME_FANTASIA,'
      '  PARC_PATH_ICONE = :PARC_PATH_ICONE,'
      '  PARC_RAZAO_SOCIAL = :PARC_RAZAO_SOCIAL,'
      '  PARC_SITE = :PARC_SITE,'
      '  PARC_SLOGAN = :PARC_SLOGAN,'
      '  PARC_SUPORTE_EMAIL = :PARC_SUPORTE_EMAIL,'
      '  PARC_SUPORTE_FONE = :PARC_SUPORTE_FONE,'
      '  PARC_SUPORTE_SITE = :PARC_SUPORTE_SITE,'
      '  PARC_TEXTO_RELATORIO = :PARC_TEXTO_RELATORIO'
      'where'
      '  PARC_CNPJ = :OLD_PARC_CNPJ')
    Left = 456
    Top = 272
    object QryParceiroPARC_RAZAO_SOCIAL: TIBStringField
      FieldName = 'PARC_RAZAO_SOCIAL'
      Origin = '"SIS_PARC"."PARC_RAZAO_SOCIAL"'
      Size = 50
    end
    object QryParceiroPARC_NOME_FANTASIA: TIBStringField
      FieldName = 'PARC_NOME_FANTASIA'
      Origin = '"SIS_PARC"."PARC_NOME_FANTASIA"'
      Size = 50
    end
    object QryParceiroPARC_CNPJ: TIBStringField
      FieldName = 'PARC_CNPJ'
      Origin = '"SIS_PARC"."PARC_CNPJ"'
      FixedChar = True
      Size = 14
    end
    object QryParceiroPARC_FONE: TIBStringField
      FieldName = 'PARC_FONE'
      Origin = '"SIS_PARC"."PARC_FONE"'
      Size = 16
    end
    object QryParceiroPARC_SITE: TIBStringField
      FieldName = 'PARC_SITE'
      Origin = '"SIS_PARC"."PARC_SITE"'
      Size = 50
    end
    object QryParceiroPARC_EMAIL: TIBStringField
      FieldName = 'PARC_EMAIL'
      Origin = '"SIS_PARC"."PARC_EMAIL"'
      Size = 50
    end
    object QryParceiroPARC_SLOGAN: TIBStringField
      FieldName = 'PARC_SLOGAN'
      Origin = '"SIS_PARC"."PARC_SLOGAN"'
      Size = 200
    end
    object QryParceiroPARC_SUPORTE_EMAIL: TIBStringField
      FieldName = 'PARC_SUPORTE_EMAIL'
      Origin = '"SIS_PARC"."PARC_SUPORTE_EMAIL"'
      Size = 50
    end
    object QryParceiroPARC_SUPORTE_FONE: TIBStringField
      FieldName = 'PARC_SUPORTE_FONE'
      Origin = '"SIS_PARC"."PARC_SUPORTE_FONE"'
      Size = 16
    end
    object QryParceiroPARC_SUPORTE_SITE: TIBStringField
      FieldName = 'PARC_SUPORTE_SITE'
      Origin = '"SIS_PARC"."PARC_SUPORTE_SITE"'
      Size = 50
    end
    object QryParceiroPARC_LOGO: TBlobField
      FieldName = 'PARC_LOGO'
      Origin = '"SIS_PARC"."PARC_LOGO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object QryParceiroPARC_TEXTO_RELATORIO: TIBStringField
      FieldName = 'PARC_TEXTO_RELATORIO'
      Origin = '"SIS_PARC"."PARC_TEXTO_RELATORIO"'
      Size = 200
    end
    object QryParceiroPARC_PATH_ICONE: TIBStringField
      FieldName = 'PARC_PATH_ICONE'
      Origin = '"SIS_PARC"."PARC_PATH_ICONE"'
      Size = 200
    end
  end
end
