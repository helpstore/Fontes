object DmServicos: TDmServicos
  OldCreateOrder = False
  Left = 8
  Top = 1
  Height = 517
  Width = 669
  object Servicos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = ServicosBeforeOpen
    BeforePost = ServicosBeforePost
    OnNewRecord = ServicosNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_SERVICOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_SERVICOS'
      '  (CNPJ, CODIGO, NOME, VALOR)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  VALOR'
      'from OFC_SERVICOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME, '
      '          VALOR '
      'from OFC_SERVICOS'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update OFC_SERVICOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  VALOR = :VALOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 8
    Top = 19
    object ServicosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_SERVICOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ServicosCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_SERVICOS"."CODIGO"'
      Required = True
    end
    object ServicosNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_SERVICOS"."NOME"'
      Required = True
      Size = 50
    end
    object ServicosVALOR: TFloatField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_SERVICOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Motores: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = ServicosBeforeOpen
    BeforePost = ServicosBeforePost
    DeleteSQL.Strings = (
      'delete from OFC_MOTORES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_MOTORES'
      '  (CNPJ, CODIGO, NOME, CILINDROS, COMBUSTIVEL, TIPO)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :CILINDROS, :COMBUSTIVEL, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  TIPO,'
      '  CILINDROS,'
      '  COMBUSTIVEL'
      'from OFC_MOTORES '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME,'
      '          CILINDROS, '
      '          COMBUSTIVEL, '
      '          TIPO'
      'from OFC_MOTORES'
      'WHERE CNPJ = :CNPJ '
      'Order by NOME')
    ModifySQL.Strings = (
      'update OFC_MOTORES'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  CILINDROS = :CILINDROS,'
      '  COMBUSTIVEL = :COMBUSTIVEL,'
      '  TIPO = :TIPO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 8
    Top = 67
    object MotoresCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTORES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MotoresCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_MOTORES"."CODIGO"'
      Required = True
    end
    object MotoresNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      DisplayWidth = 80
      FieldName = 'NOME'
      Origin = '"OFC_MOTORES"."NOME"'
      Required = True
      Size = 80
    end
    object MotoresCILINDROS: TIBStringField
      DisplayLabel = 'Cilindros'
      FieldName = 'CILINDROS'
      Origin = '"OFC_MOTORES"."CILINDROS"'
      Size = 15
    end
    object MotoresCOMBUSTIVEL: TIBStringField
      DisplayLabel = 'Combust'#237'vel'
      DisplayWidth = 30
      FieldName = 'COMBUSTIVEL'
      Origin = '"OFC_MOTORES"."COMBUSTIVEL"'
      Size = 30
    end
    object MotoresTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"OFC_MOTORES"."TIPO"'
      Size = 10
    end
  end
  object Motores_Servicos: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = Motores_ServicosAfterInsert
    BeforeOpen = ServicosBeforeOpen
    OnNewRecord = Motores_ServicosNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_MOTORES_SERVICOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  MOTOR = :OLD_MOTOR and'
      '  SERVICO = :OLD_SERVICO')
    InsertSQL.Strings = (
      'insert into OFC_MOTORES_SERVICOS'
      '  (CNPJ, MOTOR, SERVICO, NOME_SERVICO, ATIVO, VALOR)'
      'values'
      '  (:CNPJ, :MOTOR, :SERVICO, :NOME_SERVICO, :ATIVO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  MOTOR,'
      '  SERVICO,'
      '  NOME_SERVICO,'
      '  ATIVO,'
      '  VALOR'
      'from OFC_MOTORES_SERVICOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  MOTOR = :MOTOR and'
      '  SERVICO = :SERVICO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          MOTOR, '
      '          SERVICO,'
      '          NOME_SERVICO,'
      '          ATIVO,'
      '          VALOR '
      'from OFC_MOTORES_SERVICOS'
      'Where CNPJ = :CNPJ and MOTOR = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_MOTORES_SERVICOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  MOTOR = :MOTOR,'
      '  SERVICO = :SERVICO,'
      '  NOME_SERVICO = :NOME_SERVICO,'
      '  ATIVO = :ATIVO,'
      '  VALOR = :VALOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  MOTOR = :OLD_MOTOR and'
      '  SERVICO = :OLD_SERVICO')
    Left = 24
    Top = 107
    object Motores_ServicosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTORES_SERVICOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Motores_ServicosMOTOR: TIntegerField
      Tag = 1
      DisplayLabel = 'Motor'
      FieldName = 'MOTOR'
      Origin = '"OFC_MOTORES_SERVICOS"."MOTOR"'
      Required = True
    end
    object Motores_ServicosSERVICO: TIntegerField
      Tag = 1
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"OFC_MOTORES_SERVICOS"."SERVICO"'
      Required = True
      OnValidate = Motores_ServicosSERVICOValidate
    end
    object Motores_ServicosNOME_SERVICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'NOME_SERVICO'
      Origin = '"OFC_MOTORES_SERVICOS"."NOME_SERVICO"'
      Size = 50
    end
    object Motores_ServicosATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"OFC_MOTORES_SERVICOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Motores_ServicosVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_MOTORES_SERVICOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object SelServicos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME, '
      '          VALOR '
      'from OFC_SERVICOS'
      'WHERE CNPJ = :CNPJ')
    Left = 96
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelServicosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_SERVICOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelServicosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_SERVICOS"."CODIGO"'
      Required = True
    end
    object SelServicosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_SERVICOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelServicosVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_SERVICOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsMotores: TDataSource
    AutoEdit = False
    DataSet = SelMotor
    Left = 96
    Top = 115
  end
  object SelMotor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from OFC_MOTORES'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    Left = 96
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMotorCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTORES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMotorCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_MOTORES"."CODIGO"'
      Required = True
    end
    object SelMotorNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_MOTORES"."NOME"'
      Required = True
      Size = 80
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 192
    Top = 115
  end
  object SelTipoDocto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               SIGLA, '
      '               NOME '
      'FROM GLO_TIPOS_DOCTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 8
    Top = 162
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelTipoDoctoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_TIPOS_DOCTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelTipoDoctoSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_TIPOS_DOCTO"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelTipoDoctoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPOS_DOCTO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelPlano: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select * from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ'
      'AND BANCO IS NOT NULL'
      'Order By NOME')
    Left = 96
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelPlanoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_PLANOCONTA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelPlanoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_PLANOCONTA"."CONTA"'
      Required = True
    end
    object SelPlanoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CTB_PLANOCONTA"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelPlanoCONTAPAI: TIBStringField
      DisplayLabel = 'Conta Pai'
      FieldName = 'CONTAPAI'
      Origin = '"CTB_PLANOCONTA"."CONTAPAI"'
      Required = True
      Size = 10
    end
    object SelPlanoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_PLANOCONTA"."NOME"'
      Size = 50
    end
    object SelPlanoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"CTB_PLANOCONTA"."BANCO"'
      FixedChar = True
      Size = 3
    end
  end
  object SelFormaPgto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'Select * From FIN_FORMAS_PAGTO'
      'Where Cnpj = :CNPJ'
      'Order By Nome')
    Left = 192
    Top = 19
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelFormaPgtoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FORMAS_PAGTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelFormaPgtoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FORMAS_PAGTO"."CODIGO"'
      Required = True
    end
    object SelFormaPgtoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Required = True
      Size = 50
    end
    object SelFormaPgtoACRESCIMO: TFloatField
      DisplayLabel = 'Acr'#233'scimo'
      FieldName = 'ACRESCIMO'
      Origin = '"FIN_FORMAS_PAGTO"."ACRESCIMO"'
      Required = True
      DisplayFormat = '% ##0.00'
    end
    object SelFormaPgtoDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FIN_FORMAS_PAGTO"."DESCONTO"'
      Required = True
      DisplayFormat = '% ##0.00'
    end
    object SelFormaPgtoNPARCELAS: TIntegerField
      DisplayLabel = 'N'#186' Parcelas'
      FieldName = 'NPARCELAS'
      Origin = '"FIN_FORMAS_PAGTO"."NPARCELAS"'
      Required = True
    end
    object SelFormaPgtoCOMENTRADA: TIBStringField
      DisplayLabel = 'Com Entrada'
      FieldName = 'COMENTRADA'
      Origin = '"FIN_FORMAS_PAGTO"."COMENTRADA"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoINTERVALO: TIntegerField
      DisplayLabel = 'Intervalo'
      FieldName = 'INTERVALO'
      Origin = '"FIN_FORMAS_PAGTO"."INTERVALO"'
    end
    object SelFormaPgtoAVISTA: TIBStringField
      DisplayLabel = 'A Vista'
      FieldName = 'AVISTA'
      Origin = '"FIN_FORMAS_PAGTO"."AVISTA"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fatura Futura'
      FieldName = 'FATURA_FUTURA'
      Origin = '"FIN_FORMAS_PAGTO"."FATURA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object SelFormaPgtoFORMA_ECF: TIBStringField
      DisplayLabel = 'Forma Ecf'
      FieldName = 'FORMA_ECF'
      Origin = '"FIN_FORMAS_PAGTO"."FORMA_ECF"'
      Size = 30
    end
    object SelFormaPgtoTIPO_PAGAMENTO: TIBStringField
      DisplayLabel = 'Tipo Pagto'
      FieldName = 'TIPO_PAGAMENTO'
      Origin = '"FIN_FORMAS_PAGTO"."TIPO_PAGAMENTO"'
      Size = 30
    end
  end
  object Ordem: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterPost = OrdemAfterPost
    BeforeOpen = OrdemBeforeOpen
    BeforePost = OrdemBeforePost
    OnNewRecord = OrdemNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO'
      
        '  (ALIQUOTA_ISS, ASSUNTO, CAUSA_CHAMADO, CHASSI, CLIENTE, CNPJ, ' +
        'COD_CONTATO, '
      
        '   COD_GRAVIDADE, COD_STATUS, CODIGO, CONDICAO_FINAL_EQUIPAMENTO' +
        ', CONTADOR_CILINDRO, '
      
        '   CONTADOR_COR, CONTADOR_IMPRESSAO, CONTADOR_PRETO, CONTADOR_RE' +
        'VELADOR, '
      
        '   CONTADOR_TOTAL, CONTROLE, CREDITOS, CT_CILINDRO, CT_REVELADOR' +
        ', CUSTO_OS, '
      
        '   DATA, DATA_FECHAMENTO, DEBITOS, DEFEITO_RECLAMADO, DESC_ACRES' +
        'C, DT_ATRIBUICAO, '
      
        '   DT_CILINDRO, DT_FINALIZACAO, DT_INICIALIZACAO, DT_REVELADOR, ' +
        'ENTRADA, '
      
        '   ENVIADA_CAIXA, FECHADO, FORMA_PAGTO, HISTORICO, HORA_CHEGADA,' +
        ' HORA_SAIDA, '
      
        '   HORAS_TRABALHADAS, HR_ATRIBUICAO, HR_ENTRADA, HR_FECHAMENTO, ' +
        'HR_FINALIZACAO, '
      
        '   HR_INICIALIZACAO, ID_CONTRATO, ID_MOTIVO_CHAMADO, ID_TIPO_ATE' +
        'NDIMENTO, '
      
        '   INFORMACOES, KM, KM_FINAL, KM_INICIAL, KM_RODADO, LOCAL_COBRA' +
        'NCA, MAP_LAT, '
      
        '   MAP_LONG, MECANICO, MED_BIELA, MED_CARCACA, MED_CILINDRO, MED' +
        '_VIRABREQUIM, '
      
        '   MOTOR, NATUREZA, NF, NOME, NOME_DEFEITO, NOME_FORMA, NOME_MEC' +
        'ANICO, '
      
        '   NOME_MOTOR, NOME_NATUREZA, NOME_PROPRIEDADE, NOME_VIAJANTE, N' +
        'UMERO_VENDA, '
      
        '   OBS_FECHAMENTO, ORCAMENTO, OS_RECHAMADO, PESSOA_FJ, PLACA, PR' +
        'EVENTIVO, '
      
        '   PRIORIDADE, PRODUTO, PROPRIEDADE, PROTOCOLO, SERIE, TEMPO_RES' +
        'POSTA, '
      
        '   TIPO_ATENDIMENTO, TIPO_DOCTO, TIPO_TECNICO, TOTAL, VEICULO, V' +
        'ENDA, VIAJANTE, '
      '   VLR_ENTRADA, VLR_PARC_LC)'
      'values'
      
        '  (:ALIQUOTA_ISS, :ASSUNTO, :CAUSA_CHAMADO, :CHASSI, :CLIENTE, :' +
        'CNPJ, :COD_CONTATO, '
      
        '   :COD_GRAVIDADE, :COD_STATUS, :CODIGO, :CONDICAO_FINAL_EQUIPAM' +
        'ENTO, :CONTADOR_CILINDRO, '
      
        '   :CONTADOR_COR, :CONTADOR_IMPRESSAO, :CONTADOR_PRETO, :CONTADO' +
        'R_REVELADOR, '
      
        '   :CONTADOR_TOTAL, :CONTROLE, :CREDITOS, :CT_CILINDRO, :CT_REVE' +
        'LADOR, '
      
        '   :CUSTO_OS, :DATA, :DATA_FECHAMENTO, :DEBITOS, :DEFEITO_RECLAM' +
        'ADO, :DESC_ACRESC, '
      
        '   :DT_ATRIBUICAO, :DT_CILINDRO, :DT_FINALIZACAO, :DT_INICIALIZA' +
        'CAO, :DT_REVELADOR, '
      
        '   :ENTRADA, :ENVIADA_CAIXA, :FECHADO, :FORMA_PAGTO, :HISTORICO,' +
        ' :HORA_CHEGADA, '
      
        '   :HORA_SAIDA, :HORAS_TRABALHADAS, :HR_ATRIBUICAO, :HR_ENTRADA,' +
        ' :HR_FECHAMENTO, '
      
        '   :HR_FINALIZACAO, :HR_INICIALIZACAO, :ID_CONTRATO, :ID_MOTIVO_' +
        'CHAMADO, '
      
        '   :ID_TIPO_ATENDIMENTO, :INFORMACOES, :KM, :KM_FINAL, :KM_INICI' +
        'AL, :KM_RODADO, '
      
        '   :LOCAL_COBRANCA, :MAP_LAT, :MAP_LONG, :MECANICO, :MED_BIELA, ' +
        ':MED_CARCACA, '
      
        '   :MED_CILINDRO, :MED_VIRABREQUIM, :MOTOR, :NATUREZA, :NF, :NOM' +
        'E, :NOME_DEFEITO, '
      
        '   :NOME_FORMA, :NOME_MECANICO, :NOME_MOTOR, :NOME_NATUREZA, :NO' +
        'ME_PROPRIEDADE, '
      
        '   :NOME_VIAJANTE, :NUMERO_VENDA, :OBS_FECHAMENTO, :ORCAMENTO, :' +
        'OS_RECHAMADO, '
      
        '   :PESSOA_FJ, :PLACA, :PREVENTIVO, :PRIORIDADE, :PRODUTO, :PROP' +
        'RIEDADE, '
      
        '   :PROTOCOLO, :SERIE, :TEMPO_RESPOSTA, :TIPO_ATENDIMENTO, :TIPO' +
        '_DOCTO, '
      
        '   :TIPO_TECNICO, :TOTAL, :VEICULO, :VENDA, :VIAJANTE, :VLR_ENTR' +
        'ADA, :VLR_PARC_LC)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  NOME,'
      '  NATUREZA,'
      '  MECANICO,'
      '  VIAJANTE,'
      '  ENTRADA,'
      '  HR_ENTRADA,'
      '  HISTORICO,'
      '  CHASSI,'
      '  INFORMACOES,'
      '  TOTAL,'
      '  DESC_ACRESC,'
      '  CLIENTE,'
      '  FECHADO,'
      '  NOME_NATUREZA,'
      '  NOME_MECANICO,'
      '  NOME_VIAJANTE,'
      '  MOTOR,'
      '  NOME_MOTOR,'
      '  ENVIADA_CAIXA,'
      '  PLACA,'
      '  DATA_FECHAMENTO,'
      '  HR_FECHAMENTO,'
      '  OBS_FECHAMENTO,'
      '  FORMA_PAGTO,'
      '  NOME_FORMA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  VLR_ENTRADA,'
      '  CREDITOS,'
      '  DEBITOS,'
      '  NF,'
      '  ALIQUOTA_ISS,'
      '  ORCAMENTO,'
      '  MED_VIRABREQUIM,'
      '  MED_BIELA,'
      '  MED_CILINDRO,'
      '  MED_CARCACA,'
      '  NUMERO_VENDA,'
      '  DEFEITO_RECLAMADO,'
      '  CONDICAO_FINAL_EQUIPAMENTO,'
      '  HORA_CHEGADA,'
      '  HORA_SAIDA,'
      '  CONTADOR_TOTAL,'
      '  CONTADOR_CILINDRO,'
      '  CONTADOR_REVELADOR,'
      '  NOME_DEFEITO,'
      '  PROPRIEDADE,'
      '  NOME_PROPRIEDADE,'
      '  CAUSA_CHAMADO,'
      '  TIPO_ATENDIMENTO,'
      '  CONTADOR_COR,'
      '  CONTADOR_PRETO,'
      '  CONTADOR_IMPRESSAO,'
      '  VENDA,'
      '  PRODUTO,'
      '  ID_MOTIVO_CHAMADO,'
      '  ID_TIPO_ATENDIMENTO,'
      '  COD_STATUS,'
      '  DT_ATRIBUICAO,'
      '  HR_ATRIBUICAO,'
      '  DT_INICIALIZACAO,'
      '  HR_INICIALIZACAO,'
      '  DT_FINALIZACAO,'
      '  HR_FINALIZACAO,'
      '  CT_REVELADOR,'
      '  DT_REVELADOR,'
      '  DT_CILINDRO,'
      '  CT_CILINDRO,'
      '  KM_INICIAL,'
      '  KM_FINAL,'
      '  OS_RECHAMADO,'
      '  KM_RODADO,'
      '  HORAS_TRABALHADAS,'
      '  TEMPO_RESPOSTA,'
      '  TIPO_TECNICO,'
      '  PREVENTIVO,'
      '  ID_CONTRATO,'
      '  COD_CONTATO,'
      '  PRIORIDADE,'
      '  CUSTO_OS,'
      '  CONTROLE,'
      '  ASSUNTO,'
      '  VEICULO,'
      '  KM,'
      '  PROTOCOLO,'
      '  COD_GRAVIDADE,'
      '  MAP_LAT,'
      '  MAP_LONG,'
      '  TAG,'
      '  SERIE'
      'from OFC_ORDEM_SERVICO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select OFC_ORDEM_SERVICO.*,'
      '        ofc_gravidade.cnpj gcnpj,'
      '        ofc_gravidade.codigo gcodigo,'
      '        ofc_gravidade.titulo,'
      '        st.fechado st_fechado'
      'from OFC_ORDEM_SERVICO'
      
        'left join ofc_gravidade on (ofc_gravidade.cnpj = ofc_ordem_servi' +
        'co.cnpj and ofc_gravidade.codigo = ofc_ordem_servico.cod_gravida' +
        'de)'
      
        'left join ofc_status st on (st.cnpj = ofc_ordem_servico.cnpj and' +
        ' ofc_ordem_servico.cod_status = st.codigo)'
      
        'Where ofc_ordem_servico.CNPJ = :CNPJ AND ofc_ordem_servico.CODIG' +
        'O = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO'
      'set'
      '  ALIQUOTA_ISS = :ALIQUOTA_ISS,'
      '  ASSUNTO = :ASSUNTO,'
      '  CAUSA_CHAMADO = :CAUSA_CHAMADO,'
      '  CHASSI = :CHASSI,'
      '  CLIENTE = :CLIENTE,'
      '  CNPJ = :CNPJ,'
      '  COD_CONTATO = :COD_CONTATO,'
      '  COD_GRAVIDADE = :COD_GRAVIDADE,'
      '  COD_STATUS = :COD_STATUS,'
      '  CODIGO = :CODIGO,'
      '  CONDICAO_FINAL_EQUIPAMENTO = :CONDICAO_FINAL_EQUIPAMENTO,'
      '  CONTADOR_CILINDRO = :CONTADOR_CILINDRO,'
      '  CONTADOR_COR = :CONTADOR_COR,'
      '  CONTADOR_IMPRESSAO = :CONTADOR_IMPRESSAO,'
      '  CONTADOR_PRETO = :CONTADOR_PRETO,'
      '  CONTADOR_REVELADOR = :CONTADOR_REVELADOR,'
      '  CONTADOR_TOTAL = :CONTADOR_TOTAL,'
      '  CONTROLE = :CONTROLE,'
      '  CREDITOS = :CREDITOS,'
      '  CT_CILINDRO = :CT_CILINDRO,'
      '  CT_REVELADOR = :CT_REVELADOR,'
      '  CUSTO_OS = :CUSTO_OS,'
      '  DATA = :DATA,'
      '  DATA_FECHAMENTO = :DATA_FECHAMENTO,'
      '  DEBITOS = :DEBITOS,'
      '  DEFEITO_RECLAMADO = :DEFEITO_RECLAMADO,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  DT_ATRIBUICAO = :DT_ATRIBUICAO,'
      '  DT_CILINDRO = :DT_CILINDRO,'
      '  DT_FINALIZACAO = :DT_FINALIZACAO,'
      '  DT_INICIALIZACAO = :DT_INICIALIZACAO,'
      '  DT_REVELADOR = :DT_REVELADOR,'
      '  ENTRADA = :ENTRADA,'
      '  ENVIADA_CAIXA = :ENVIADA_CAIXA,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  HISTORICO = :HISTORICO,'
      '  HORA_CHEGADA = :HORA_CHEGADA,'
      '  HORA_SAIDA = :HORA_SAIDA,'
      '  HORAS_TRABALHADAS = :HORAS_TRABALHADAS,'
      '  HR_ATRIBUICAO = :HR_ATRIBUICAO,'
      '  HR_ENTRADA = :HR_ENTRADA,'
      '  HR_FECHAMENTO = :HR_FECHAMENTO,'
      '  HR_FINALIZACAO = :HR_FINALIZACAO,'
      '  HR_INICIALIZACAO = :HR_INICIALIZACAO,'
      '  ID_CONTRATO = :ID_CONTRATO,'
      '  ID_MOTIVO_CHAMADO = :ID_MOTIVO_CHAMADO,'
      '  ID_TIPO_ATENDIMENTO = :ID_TIPO_ATENDIMENTO,'
      '  INFORMACOES = :INFORMACOES,'
      '  KM = :KM,'
      '  KM_FINAL = :KM_FINAL,'
      '  KM_INICIAL = :KM_INICIAL,'
      '  KM_RODADO = :KM_RODADO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  MAP_LAT = :MAP_LAT,'
      '  MAP_LONG = :MAP_LONG,'
      '  MECANICO = :MECANICO,'
      '  MED_BIELA = :MED_BIELA,'
      '  MED_CARCACA = :MED_CARCACA,'
      '  MED_CILINDRO = :MED_CILINDRO,'
      '  MED_VIRABREQUIM = :MED_VIRABREQUIM,'
      '  MOTOR = :MOTOR,'
      '  NATUREZA = :NATUREZA,'
      '  NF = :NF,'
      '  NOME = :NOME,'
      '  NOME_DEFEITO = :NOME_DEFEITO,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  NOME_MECANICO = :NOME_MECANICO,'
      '  NOME_MOTOR = :NOME_MOTOR,'
      '  NOME_NATUREZA = :NOME_NATUREZA,'
      '  NOME_PROPRIEDADE = :NOME_PROPRIEDADE,'
      '  NOME_VIAJANTE = :NOME_VIAJANTE,'
      '  NUMERO_VENDA = :NUMERO_VENDA,'
      '  OBS_FECHAMENTO = :OBS_FECHAMENTO,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  OS_RECHAMADO = :OS_RECHAMADO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLACA = :PLACA,'
      '  PREVENTIVO = :PREVENTIVO,'
      '  PRIORIDADE = :PRIORIDADE,'
      '  PRODUTO = :PRODUTO,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  PROTOCOLO = :PROTOCOLO,'
      '  SERIE = :SERIE,'
      '  TEMPO_RESPOSTA = :TEMPO_RESPOSTA,'
      '  TIPO_ATENDIMENTO = :TIPO_ATENDIMENTO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TIPO_TECNICO = :TIPO_TECNICO,'
      '  TOTAL = :TOTAL,'
      '  VEICULO = :VEICULO,'
      '  VENDA = :VENDA,'
      '  VIAJANTE = :VIAJANTE,'
      '  VLR_ENTRADA = :VLR_ENTRADA,'
      '  VLR_PARC_LC = :VLR_PARC_LC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'OFC_ORDEM_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1000
    Top = 75
    object OrdemCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OrdemCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object OrdemCHASSI: TIBStringField
      DisplayLabel = 'Chassi'
      FieldName = 'CHASSI'
      Origin = '"OFC_ORDEM_SERVICO"."CHASSI"'
      Size = 30
    end
    object OrdemCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"OFC_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object OrdemDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
    end
    object OrdemDESC_ACRESC: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC'
      Origin = '"OFC_ORDEM_SERVICO"."DESC_ACRESC"'
      OnChange = Ctrl_QualidadeMONTADOR_AJUSTEValidate
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemENTRADA: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."ENTRADA"'
    end
    object OrdemDT_ATRIBUICAO: TDateTimeField
      FieldName = 'DT_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_ATRIBUICAO"'
    end
    object OrdemFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"OFC_ORDEM_SERVICO"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object OrdemHISTORICO: TIBStringField
      DisplayLabel = 'Historico'
      FieldName = 'HISTORICO'
      Origin = '"OFC_ORDEM_SERVICO"."HISTORICO"'
      Size = 100
    end
    object OrdemINFORMACOES: TBlobField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      Size = 8
    end
    object OrdemMECANICO: TIntegerField
      DisplayLabel = 'Mec'#226'nico'
      FieldName = 'MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."MECANICO"'
      Required = True
    end
    object OrdemNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NATUREZA"'
    end
    object OrdemNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object OrdemPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa F/J'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_ORDEM_SERVICO"."PESSOA_FJ"'
      Required = True
      OnChange = OrdemPESSOA_FJChange
    end
    object OrdemTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemVIAJANTE: TIntegerField
      DisplayLabel = 'Viajante'
      FieldName = 'VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."VIAJANTE"'
    end
    object OrdemNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object OrdemNOME_MECANICO: TIBStringField
      DisplayLabel = 'Mec'#226'nico'
      FieldName = 'NOME_MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object OrdemNOME_VIAJANTE: TIBStringField
      DisplayLabel = 'Viajante'
      FieldName = 'NOME_VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object OrdemLiquido: TFloatField
      DisplayLabel = 'Liqu'#237'do'
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemMOTOR: TIntegerField
      FieldName = 'MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."MOTOR"'
    end
    object OrdemNOME_MOTOR: TIBStringField
      FieldName = 'NOME_MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MOTOR"'
      Size = 50
    end
    object OrdemENVIADA_CAIXA: TIBStringField
      FieldName = 'ENVIADA_CAIXA'
      Origin = '"OFC_ORDEM_SERVICO"."ENVIADA_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object OrdemPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"OFC_ORDEM_SERVICO"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object OrdemDATA_FECHAMENTO: TDateTimeField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'DATA_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
    end
    object OrdemOBS_FECHAMENTO: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      Size = 8
    end
    object OrdemFORMA_PAGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PAGTO'
      Origin = '"OFC_ORDEM_SERVICO"."FORMA_PAGTO"'
    end
    object OrdemNOME_FORMA: TIBStringField
      DisplayLabel = 'Nome Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_FORMA"'
      Size = 50
    end
    object OrdemTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object OrdemLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"OFC_ORDEM_SERVICO"."LOCAL_COBRANCA"'
    end
    object OrdemTOTAL_PARCELAR: TFloatField
      DisplayLabel = 'Total a Parcelar'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PARCELAR'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemDiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemVLR_PARC_LC: TFloatField
      DisplayLabel = 'Parcelado'
      FieldName = 'VLR_PARC_LC'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object OrdemVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemCREDITOS: TFloatField
      FieldName = 'CREDITOS'
      Origin = '"OFC_ORDEM_SERVICO"."CREDITOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemDEBITOS: TFloatField
      FieldName = 'DEBITOS'
      Origin = '"OFC_ORDEM_SERVICO"."DEBITOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object OrdemNF: TIntegerField
      FieldName = 'NF'
      Origin = '"OFC_ORDEM_SERVICO"."NF"'
    end
    object OrdemA_VISTA: TStringField
      FieldKind = fkCalculated
      FieldName = 'A_VISTA'
      Size = 1
      Calculated = True
    end
    object OrdemMED_VIRABREQUIM: TIBStringField
      FieldName = 'MED_VIRABREQUIM'
      Origin = '"OFC_ORDEM_SERVICO"."MED_VIRABREQUIM"'
    end
    object OrdemMED_BIELA: TIBStringField
      FieldName = 'MED_BIELA'
      Origin = '"OFC_ORDEM_SERVICO"."MED_BIELA"'
    end
    object OrdemMED_CILINDRO: TIBStringField
      FieldName = 'MED_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."MED_CILINDRO"'
    end
    object OrdemMED_CARCACA: TIBStringField
      FieldName = 'MED_CARCACA'
      Origin = '"OFC_ORDEM_SERVICO"."MED_CARCACA"'
    end
    object OrdemORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."ORCAMENTO"'
    end
    object OrdemNUMERO_VENDA: TIntegerField
      FieldName = 'NUMERO_VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."NUMERO_VENDA"'
    end
    object OrdemDEFEITO_RECLAMADO: TIntegerField
      FieldName = 'DEFEITO_RECLAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."DEFEITO_RECLAMADO"'
      OnValidate = OrdemDEFEITO_RECLAMADOValidate
    end
    object OrdemCONDICAO_FINAL_EQUIPAMENTO: TIBStringField
      FieldName = 'CONDICAO_FINAL_EQUIPAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."CONDICAO_FINAL_EQUIPAMENTO"'
      Size = 50
    end
    object OrdemHORA_CHEGADA: TTimeField
      FieldName = 'HORA_CHEGADA'
      Origin = '"OFC_ORDEM_SERVICO"."HORA_CHEGADA"'
    end
    object OrdemHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = '"OFC_ORDEM_SERVICO"."HORA_SAIDA"'
    end
    object OrdemCONTADOR_TOTAL: TFloatField
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_TOTAL"'
    end
    object OrdemCONTADOR_CILINDRO: TFloatField
      FieldName = 'CONTADOR_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_CILINDRO"'
    end
    object OrdemCONTADOR_REVELADOR: TFloatField
      FieldName = 'CONTADOR_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_REVELADOR"'
    end
    object OrdemNOME_DEFEITO: TIBStringField
      FieldName = 'NOME_DEFEITO'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_DEFEITO"'
      Size = 50
    end
    object OrdemPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PROPRIEDADE"'
    end
    object OrdemNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object OrdemTIPO_ATENDIMENTO: TIBStringField
      DisplayLabel = 'Tipo Atendimento'
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_ATENDIMENTO"'
      Size = 50
    end
    object OrdemCAUSA_CHAMADO: TIBStringField
      FieldName = 'CAUSA_CHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."CAUSA_CHAMADO"'
      Size = 200
    end
    object OrdemCONTADOR_COR: TFloatField
      FieldName = 'CONTADOR_COR'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_COR"'
    end
    object OrdemCONTADOR_PRETO: TFloatField
      FieldName = 'CONTADOR_PRETO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_PRETO"'
    end
    object OrdemCONTADOR_IMPRESSAO: TFloatField
      FieldName = 'CONTADOR_IMPRESSAO'
      Origin = '"OFC_ORDEM_SERVICO"."CONTADOR_IMPRESSAO"'
    end
    object OrdemVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."VENDA"'
    end
    object OrdemALIQUOTA_ISS: TFloatField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"OFC_ORDEM_SERVICO"."ALIQUOTA_ISS"'
    end
    object OrdemPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"OFC_ORDEM_SERVICO"."PRODUTO"'
      OnValidate = OrdemPRODUTOValidate
      Size = 15
    end
    object OrdemID_MOTIVO_CHAMADO: TIntegerField
      FieldName = 'ID_MOTIVO_CHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_MOTIVO_CHAMADO"'
    end
    object OrdemID_TIPO_ATENDIMENTO: TIntegerField
      FieldName = 'ID_TIPO_ATENDIMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_TIPO_ATENDIMENTO"'
    end
    object OrdemCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO"."COD_STATUS"'
    end
    object OrdemHR_INICIALIZACAO: TTimeField
      FieldName = 'HR_INICIALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_INICIALIZACAO"'
    end
    object OrdemDT_FINALIZACAO: TDateTimeField
      FieldName = 'DT_FINALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_FINALIZACAO"'
    end
    object OrdemHR_FINALIZACAO: TTimeField
      FieldName = 'HR_FINALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FINALIZACAO"'
    end
    object OrdemDT_INICIALIZACAO: TDateTimeField
      FieldName = 'DT_INICIALIZACAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_INICIALIZACAO"'
    end
    object OrdemHR_ENTRADA: TTimeField
      FieldName = 'HR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ENTRADA"'
    end
    object OrdemHR_ATRIBUICAO: TTimeField
      FieldName = 'HR_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ATRIBUICAO"'
    end
    object OrdemCT_REVELADOR: TIntegerField
      FieldName = 'CT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."CT_REVELADOR"'
    end
    object OrdemDT_REVELADOR: TDateTimeField
      FieldName = 'DT_REVELADOR'
      Origin = '"OFC_ORDEM_SERVICO"."DT_REVELADOR"'
    end
    object OrdemDT_CILINDRO: TDateTimeField
      FieldName = 'DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_CILINDRO"'
    end
    object OrdemCT_CILINDRO: TIntegerField
      FieldName = 'CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CT_CILINDRO"'
    end
    object OrdemKM_INICIAL: TFloatField
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO"."KM_INICIAL"'
    end
    object OrdemKM_FINAL: TFloatField
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO"."KM_FINAL"'
    end
    object OrdemHR_FECHAMENTO: TTimeField
      FieldName = 'HR_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FECHAMENTO"'
    end
    object OrdemTEMPO_RESPOSTA: TFloatField
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"OFC_ORDEM_SERVICO"."TEMPO_RESPOSTA"'
    end
    object OrdemOS_RECHAMADO: TIntegerField
      FieldName = 'OS_RECHAMADO'
      Origin = '"OFC_ORDEM_SERVICO"."OS_RECHAMADO"'
    end
    object OrdemKM_RODADO: TFloatField
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO"."KM_RODADO"'
    end
    object OrdemHORAS_TRABALHADAS: TFloatField
      FieldName = 'HORAS_TRABALHADAS'
      Origin = '"OFC_ORDEM_SERVICO"."HORAS_TRABALHADAS"'
    end
    object OrdemTIPO_TECNICO: TIBStringField
      FieldName = 'TIPO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_TECNICO"'
      FixedChar = True
      Size = 1
    end
    object OrdemPREVENTIVO: TIBStringField
      FieldName = 'PREVENTIVO'
      Origin = '"OFC_ORDEM_SERVICO"."PREVENTIVO"'
      FixedChar = True
      Size = 1
    end
    object OrdemID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_CONTRATO"'
    end
    object OrdemCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO"."COD_CONTATO"'
    end
    object OrdemPRIORIDADE: TIntegerField
      FieldName = 'PRIORIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PRIORIDADE"'
    end
    object OrdemCUSTO_OS: TFloatField
      FieldName = 'CUSTO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."CUSTO_OS"'
    end
    object OrdemCONTROLE: TIntegerField
      FieldName = 'CONTROLE'
      Origin = '"OFC_ORDEM_SERVICO"."CONTROLE"'
    end
    object OrdemASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = '"OFC_ORDEM_SERVICO"."ASSUNTO"'
      Size = 200
    end
    object OrdemVEICULO: TIntegerField
      FieldName = 'VEICULO'
      Origin = '"OFC_ORDEM_SERVICO"."VEICULO"'
    end
    object OrdemKM: TIntegerField
      FieldName = 'KM'
      Origin = '"OFC_ORDEM_SERVICO"."KM"'
    end
    object OrdemCOD_GRAVIDADE: TIntegerField
      FieldName = 'COD_GRAVIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."COD_GRAVIDADE"'
    end
    object OrdemPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"OFC_ORDEM_SERVICO"."PROTOCOLO"'
      Size = 15
    end
    object OrdemGCNPJ: TIBStringField
      FieldName = 'GCNPJ'
      Origin = '"OFC_GRAVIDADE"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object OrdemGCODIGO: TIntegerField
      FieldName = 'GCODIGO'
      Origin = '"OFC_GRAVIDADE"."CODIGO"'
    end
    object OrdemTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = '"OFC_GRAVIDADE"."TITULO"'
      Size = 30
    end
    object OrdemST_FECHADO: TIBStringField
      FieldName = 'ST_FECHADO'
      Origin = '"OFC_STATUS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object OrdemMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LAT"'
      Size = 200
    end
    object OrdemMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LONG"'
      Size = 200
    end
    object OrdemTAG: TIBStringField
      FieldName = 'TAG'
      Origin = '"OFC_ORDEM_SERVICO"."TAG"'
      FixedChar = True
      Size = 1
    end
    object OrdemSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"OFC_ORDEM_SERVICO"."SERIE"'
      OnChange = OrdemSERIEChange
      Size = 30
    end
  end
  object SelOrdens_Servicos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    OnCalcFields = SelOrdens_ServicosCalcFields
    SQL.Strings = (
      'select distinct'
      'ofc.controle,'
      'ofc.protocolo, '
      'st.codigo st_codigo,'
      'ofc.hr_atribuicao ofc_hr_atribuicao,'
      'ofc.hr_entrada ofc_hr_entrada,'
      'ofc.codigo ofc_codigo,'
      'ofc.data ofc_data,'
      'ofc.entrada ofc_dt_entrada,'
      'ofc.dt_atribuicao ofc_dt_atribuicao,'
      'ofc.HR_FECHAMENTO ofc_HR_FECHAMENTO,'
      'ofc.data_fechamento ofc_data_fechamento,'
      'ofc.total ofc_total,'
      'ofc.cliente ofc_solicitante,'
      'ofc.venda ofc_venda,'
      'ofc.KM_RODADO ofc_KM_RODADO,'
      'ofc.HORAS_TRABALHADAS ofc_HORAS_TRABALHADAS,'
      'mec.codigo mec_codigo,'
      'mec.nome mec_nome,'
      'def.codigo def_codigo,'
      'def.nome def_nome,'
      'mtc.codigo mtc_codigo,'
      'mtc.nome mtc_nome,'
      'tpa.codigo tpa_codigo,'
      'tpa.nome tpa_nome,'
      'st.cor st_cor,'
      'st.nome st_nome,'
      'cli.codigo cli_codigo,'
      'cli.nome_razao cli_nome_razao,'
      'reg.codigo reg_codigo,'
      'reg.nome reg_descricao,'
      'prd.codigo prd_codigo,'
      'prd.nome prd_nome,'
      'prd.serie prd_serie,'
      'mdl.codigo mdl_codigo,'
      'mdl.nome mdl_nome,'
      'ct.cod_contrato cp_cod_contrato,'
      'tpc.nome tpc_nome, cdd.nome cidade,'
      'ofc.tempo_resposta,'
      'ofc.id_contrato,'
      'cti.tempo_resposta cp_tempo_resposta,'
      'ofc.prioridade,'
      'ofc.custo_os,'
      'ofc.informacoes,'
      'ofc.obs_fechamento,'
      'v.modelo veiculo,'
      'v.placa,'
      'ofc.map_lat ,'
      'ofc.map_long,'
      'ofc.DT_CILINDRO, ofc.CT_CILINDRO,'
      'ofc.ult_dt_cilindro, ofc.ult_ct_cilindro,'
      ''
      'case '
      
        ' when (cast(ofc.DT_CILINDRO as date) - cast(ofc.ult_dt_cilindro ' +
        'as date)) > 0 then  (cast(ofc.DT_CILINDRO as date) - cast(ofc.ul' +
        't_dt_cilindro as date))'
      ' else 0'
      'end ct_cilindro_saldo_dias,'
      ''
      'case '
      
        ' when (ofc.contador_total - ofc.ult_ct_cilindro) > 0 then  (ofc.' +
        'contador_total - ofc.ult_ct_cilindro)'
      ' else 0'
      'end ct_cilindro_saldo_contador'
      'from ofc_ordem_servico ofc'
      
        'left join ofc_status st on (st.codigo = ofc.cod_status and st.cn' +
        'pj=ofc.cnpj)'
      
        'left join ofc_mecanicos mec on (mec.codigo = ofc.mecanico and me' +
        'c.cnpj = ofc.cnpj)'
      
        'left join ofc_defeito def on (def.codigo = ofc.defeito_reclamado' +
        ' and def.cnpj = ofc.cnpj)'
      
        'left join ofc_motivo_chamado mtc on (mtc.codigo = ofc.id_motivo_' +
        'chamado and mtc.cnpj = ofc.cnpj)'
      
        'left join ofc_tipo_atendimento tpa on (tpa.cnpj= ofc.id_tipo_ate' +
        'ndimento and tpa.codigo = ofc.cnpj)'
      
        'left join glo_pessoas_fj cli on (cli.codigo = ofc.pessoa_fj and ' +
        'cli.cnpj = ofc.cnpj)'
      
        'left join glo_cidades cdd on (cdd.codigo = cli.cidade and cli.cn' +
        'pj = cdd.cnpj)'
      
        'left join glo_regioes reg on (reg.codigo = cli.regiao and reg.cn' +
        'pj = ofc.cnpj)'
      
        'left join est_produtos prd on (prd.codigo = ofc.produto and prd.' +
        'cnpj = ofc.cnpj)'
      
        'left join ofc_contratos_itens cti on (ofc.cnpj = cti.cnpj and ct' +
        'i.cod_produto = ofc.produto and ofc.id_contrato = cti.contrato)'
      
        'left join ofc_contratos ct on (cli.cnpj = ct.cnpj and cli.codigo' +
        ' = ct.cod_cliente and ct.codigo = cti.contrato)'
      
        'left join glo_tipo_contrato tpc on (tpc.cnpj = ct.cnpj and tpc.c' +
        'odigo = ct.cod_contrato)'
      
        'left join glo_modelo_propriedade mdl on (mdl.codigo = prd.modelo' +
        '  and mdl.cnpj = prd.cnpj)'
      
        'left join glo_veiculos v on (v.cnpj = ofc.cnpj and v.pessoa_fj =' +
        ' ofc.pessoa_fj and v.codigo = ofc.veiculo)'
      
        'where (cast(ofc.data as date) >= cast( :OFC_DATA_BASE_MAN_OS as ' +
        'date) ) and  ofc.cnpj = :cnpj')
    Left = 1000
    Top = 195
    ParamData = <
      item
        DataType = ftDate
        Name = 'OFC_DATA_BASE_MAN_OS'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelOrdens_ServicosOFC_CODIGO: TIntegerField
      DisplayLabel = 'Ord. Servi'#231'o'
      FieldName = 'OFC_CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object SelOrdens_ServicosOFC_DATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OFC_DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object SelOrdens_ServicosOFC_DT_ATRIBUICAO: TDateTimeField
      DisplayLabel = 'Dt. Programa'#231#227'o'
      FieldName = 'OFC_DT_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_ATRIBUICAO"'
      EditMask = '!99/99/00;1;_'
    end
    object SelOrdens_ServicosOFC_DATA_FECHAMENTO: TDateTimeField
      DisplayLabel = 'Dt. Fechamento'
      FieldName = 'OFC_DATA_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
      EditMask = '!99/99/00;1;_'
    end
    object SelOrdens_ServicosOFC_TOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'OFC_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."TOTAL"'
      EditFormat = '###,##0.00'
    end
    object SelOrdens_ServicosOFC_SOLICITANTE: TIBStringField
      DisplayLabel = 'Solicitante'
      FieldName = 'OFC_SOLICITANTE'
      Origin = '"OFC_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object SelOrdens_ServicosOFC_VENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'OFC_VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."VENDA"'
    end
    object SelOrdens_ServicosOFC_KM_RODADO: TFloatField
      DisplayLabel = 'Km Rodado'
      FieldName = 'OFC_KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO"."KM_RODADO"'
    end
    object SelOrdens_ServicosOFC_HORAS_TRABALHADAS: TFloatField
      DisplayLabel = 'Horas Trabalhadas'
      FieldName = 'OFC_HORAS_TRABALHADAS'
      Origin = '"OFC_ORDEM_SERVICO"."HORAS_TRABALHADAS"'
    end
    object SelOrdens_ServicosMEC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. T'#233'cnico'
      FieldName = 'MEC_CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
    end
    object SelOrdens_ServicosMEC_NOME: TIBStringField
      DisplayLabel = 'T'#233'cnico/Consultor'
      FieldName = 'MEC_NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosDEF_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Defeito'
      FieldName = 'DEF_CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
    end
    object SelOrdens_ServicosDEF_NOME: TIBStringField
      DisplayLabel = 'Defeito'
      FieldName = 'DEF_NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMTC_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Problema identificado'
      FieldName = 'MTC_CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
    end
    object SelOrdens_ServicosMTC_NOME: TIBStringField
      DisplayLabel = 'Problema identificado'
      FieldName = 'MTC_NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosTPA_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Servi'#231'o Executado'
      FieldName = 'TPA_CODIGO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CODIGO"'
    end
    object SelOrdens_ServicosTPA_NOME: TIBStringField
      DisplayLabel = 'Servi'#231'o Executado'
      FieldName = 'TPA_NOME'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosST_COR: TIntegerField
      DisplayLabel = 'C'#243'd. Cor'
      FieldName = 'ST_COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object SelOrdens_ServicosST_NOME: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ST_NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosCLI_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CLI_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object SelOrdens_ServicosCLI_NOME_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelOrdens_ServicosREG_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Regi'#227'o'
      FieldName = 'REG_CODIGO'
      Origin = '"GLO_REGIOES"."CODIGO"'
    end
    object SelOrdens_ServicosPRD_CODIGO: TIBStringField
      DisplayLabel = 'C'#243'd. Equipamento'
      FieldName = 'PRD_CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object SelOrdens_ServicosPRD_NOME: TIBStringField
      DisplayLabel = 'Equipamento'
      FieldName = 'PRD_NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosPRD_SERIE: TIBStringField
      DisplayLabel = 'N'#186' de S'#233'rie'
      FieldName = 'PRD_SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object SelOrdens_ServicosMDL_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Modelo'
      FieldName = 'MDL_CODIGO'
      Origin = '"OFC_MOTORES"."CODIGO"'
    end
    object SelOrdens_ServicosST_CODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Status'
      FieldName = 'ST_CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
    end
    object SelOrdens_ServicosCP_TEMPO_RESPOSTA: TIntegerField
      DisplayLabel = 'Tmp. Max. de Resposta'
      FieldName = 'CP_TEMPO_RESPOSTA'
      Origin = '"GLO_CLIENTES_PRODUTOS"."TEMPO_RESPOSTA"'
      DisplayFormat = '###,##0.00'
    end
    object SelOrdens_ServicosOFC_DT_ENTRADA: TDateTimeField
      DisplayLabel = 'Dt. Solicita'#231#227'o'
      FieldName = 'OFC_DT_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."ENTRADA"'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object SelOrdens_ServicosOFC_HR_ATRIBUICAO: TTimeField
      DisplayLabel = 'Hora Programa'#231#227'o'
      FieldName = 'OFC_HR_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ATRIBUICAO"'
    end
    object SelOrdens_ServicosOFC_HR_ENTRADA: TTimeField
      DisplayLabel = 'Hora Solicita'#231#227'o'
      FieldName = 'OFC_HR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ENTRADA"'
    end
    object SelOrdens_ServicosCP_COD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CP_COD_CONTRATO'
      Origin = '"GLO_CLIENTES_PRODUTOS"."COD_CONTRATO"'
    end
    object SelOrdens_ServicosTPC_NOME: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'TPC_NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosOFC_HR_FECHAMENTO: TTimeField
      DisplayLabel = 'Hora Fechamento'
      FieldName = 'OFC_HR_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FECHAMENTO"'
    end
    object SelOrdens_ServicosCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosTEMPO_GASTO: TFloatField
      DisplayLabel = 'Tmp. Decorrido'
      FieldKind = fkCalculated
      FieldName = 'TEMPO_GASTO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object SelOrdens_ServicosTEMPO_RESPOSTA: TFloatField
      DisplayLabel = 'Tmp. Resposta'
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"OFC_ORDEM_SERVICO"."TEMPO_RESPOSTA"'
    end
    object SelOrdens_ServicosREG_DESCRICAO: TIBStringField
      DisplayLabel = 'Id Descri'#231#227'o'
      FieldName = 'REG_DESCRICAO'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMDL_NOME: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MDL_NOME'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosID_CONTRATO: TIntegerField
      DisplayLabel = 'Id. Contrato'
      FieldName = 'ID_CONTRATO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_CONTRATO"'
    end
    object SelOrdens_ServicosPRIORIDADE: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'PRIORIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PRIORIDADE"'
    end
    object SelOrdens_ServicosCUSTO_OS: TFloatField
      DisplayLabel = 'Custo OS'
      FieldName = 'CUSTO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."CUSTO_OS"'
      DisplayFormat = '###,##0.00'
    end
    object SelOrdens_ServicosINFORMACOES: TBlobField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SelOrdens_ServicosOBS_FECHAMENTO: TBlobField
      DisplayLabel = 'Obs. Fechamento'
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object SelOrdens_ServicosCONTROLE: TIntegerField
      DisplayLabel = 'Controle'
      FieldName = 'CONTROLE'
      Origin = '"OFC_ORDEM_SERVICO"."CONTROLE"'
    end
    object SelOrdens_ServicosVEICULO: TIBStringField
      DisplayLabel = 'Veiculo'
      FieldName = 'VEICULO'
      Origin = '"GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object SelOrdens_ServicosPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object SelOrdens_ServicosPROTOCOLO: TIBStringField
      FieldName = 'PROTOCOLO'
      Origin = '"OFC_ORDEM_SERVICO"."PROTOCOLO"'
      Size = 15
    end
    object SelOrdens_ServicosMAP_LAT: TIBStringField
      DisplayLabel = 'Latitude'
      FieldName = 'MAP_LAT'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LAT"'
      Size = 200
    end
    object SelOrdens_ServicosMAP_LONG: TIBStringField
      DisplayLabel = 'Longitude'
      FieldName = 'MAP_LONG'
      Origin = '"OFC_ORDEM_SERVICO"."MAP_LONG"'
      Size = 200
    end
    object SelOrdens_ServicosDT_CILINDRO: TDateTimeField
      DisplayLabel = 'Dt. Troca Cilindro'
      FieldName = 'DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_CILINDRO"'
    end
    object SelOrdens_ServicosCT_CILINDRO: TIntegerField
      DisplayLabel = 'Ct. Troca Cilindro'
      FieldName = 'CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."CT_CILINDRO"'
    end
    object SelOrdens_ServicosULT_DT_CILINDRO: TDateField
      DisplayLabel = 'Dt. Troca Cilindro Ant.'
      FieldName = 'ULT_DT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."ULT_DT_CILINDRO"'
    end
    object SelOrdens_ServicosULT_CT_CILINDRO: TIntegerField
      DisplayLabel = 'Ct. Troca Cilindro Ant.'
      FieldName = 'ULT_CT_CILINDRO'
      Origin = '"OFC_ORDEM_SERVICO"."ULT_CT_CILINDRO"'
    end
    object SelOrdens_ServicosCT_CILINDRO_SALDO_DIAS: TIntegerField
      DisplayLabel = 'Sld. Troca Cilindro Dias'
      FieldName = 'CT_CILINDRO_SALDO_DIAS'
      ProviderFlags = []
    end
    object SelOrdens_ServicosCT_CILINDRO_SALDO_CONTADOR: TFloatField
      DisplayLabel = 'Sld. Troca Cilindro Copias'
      FieldName = 'CT_CILINDRO_SALDO_CONTADOR'
      ProviderFlags = []
    end
  end
  object SelPessoasFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
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
    Left = 192
    Top = 162
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelPessoasFJEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object SelPessoasFJPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      Required = True
    end
    object SelPessoasFJCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelPessoasFJNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 50
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
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
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasFJFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_CLIENTE"."FONE"'
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
      '         CPF_CNPJ,'
      '         Controla_Placa,'
      '         Controla_Km,'
      '         Assina_Nota,'
      '         Nao_Cobr_Jur_Ate,'
      '         Taxa_Juros,'
      '         Uf '
      'from Valida_Cliente ( :CNPJ, :CODIGO )')
    Left = 192
    Top = 258
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
  end
  object SelNatureza: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME,'
      '               INTERESTADUAL '
      'FROM EST_NATUREZA'
      'WHERE CNPJ = :CNPJ AND'
      '               ES = '#39'S'#39
      'ORDER BY NOME')
    Left = 96
    Top = 258
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelNaturezaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      Required = True
    end
    object SelNaturezaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Required = True
      Size = 50
    end
    object SelNaturezaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_NATUREZA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelNaturezaINTERESTADUAL: TIBStringField
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
  end
  object SelMecanico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          COM_PRAZO, '
      '          COM_VISTA, '
      '          NOME, '
      '          PESSOA_FJ '
      'from OFC_MECANICOS'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    Left = 288
    Top = 19
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMecanicoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MECANICOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMecanicoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object SelMecanicoCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"OFC_MECANICOS"."COM_PRAZO"'
    end
    object SelMecanicoCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"OFC_MECANICOS"."COM_VISTA"'
    end
    object SelMecanicoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelMecanicoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_MECANICOS"."PESSOA_FJ"'
      Required = True
    end
  end
  object SelViajante: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select CODIGO, '
      '          NOME, '
      '          PESSOA_FJ '
      'from OFC_VIAJANTES'
      'Where CNPJ = :CNPJ '
      'Order by NOME')
    Left = 288
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelViajanteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_VIAJANTES"."CODIGO"'
      Required = True
    end
    object SelViajanteNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_VIAJANTES"."NOME"'
      Size = 50
    end
    object SelViajantePESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_VIAJANTES"."PESSOA_FJ"'
      Required = True
    end
  end
  object Servicos_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterPost = Servicos_ItensAfterPost
    OnCalcFields = Servicos_ItensCalcFields
    OnNewRecord = Servicos_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_SERVICO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO_SERVICO'
      
        '  (CNPJ, CODIGO, CODIGO_TECNICO, NOME, PRODUTO, QUANTIDADE, SELE' +
        'CIONADO, '
      '   SERVICO, UNITARIO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :CODIGO_TECNICO, :NOME, :PRODUTO, :QUANTIDADE' +
        ', :SELECIONADO, '
      '   :SERVICO, :UNITARIO)')
    RefreshSQL.Strings = (
      'select osi.*,'
      'prd.nome nome_produto, case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      '                       end tipo_servico,'
      '                       tec.nome as nometec'
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join ofc_mecanicos  tec on(tec.codigo = osi.codigo_tecnico ' +
        'and osi.cnpj = tec.cnpj)'
      'where'
      '  osi.CNPJ = :CNPJ and'
      '  osi.CODIGO = :CODIGO and'
      '  osi.PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select osi.*,'
      'prd.nome nome_produto, case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      '                       end tipo_servico,'
      '                       tec.nome as nometec'
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join ofc_mecanicos  tec on(tec.codigo = osi.codigo_tecnico ' +
        'and osi.cnpj = tec.cnpj)'
      'where osi.cnpj = :cnpj and osi.codigo = :codigo')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO_SERVICO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_TECNICO = :CODIGO_TECNICO,'
      '  NOME = :NOME,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SELECIONADO = :SELECIONADO,'
      '  SERVICO = :SERVICO,'
      '  UNITARIO = :UNITARIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = DsOrdem
    Left = 1144
    Top = 200
    object Servicos_ItensCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object Servicos_ItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO"'
    end
    object Servicos_ItensNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."NOME"'
      Size = 50
    end
    object Servicos_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
      OnValidate = Servicos_ItensQUANTIDADEValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Servicos_ItensSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SERVICO"'
      OnValidate = Servicos_ItensSERVICOValidate
    end
    object Servicos_ItensUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'UNITARIO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Servicos_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Servicos_ItensSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SELECIONADO"'
      OnValidate = Servicos_ItensSELECIONADOValidate
      FixedChar = True
      Size = 1
    end
    object Servicos_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object Servicos_ItensPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PRODUTO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."PRODUTO"'
      OnValidate = Servicos_ItensPRODUTOValidate
      Size = 15
    end
    object Servicos_ItensTIPO_SERVICO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 7
    end
    object Servicos_ItensCODIGO_TECNICO: TIntegerField
      FieldName = 'CODIGO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO_TECNICO"'
    end
    object Servicos_ItensNOMETEC: TIBStringField
      FieldName = 'NOMETEC'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
  end
  object DsOrdem: TDataSource
    AutoEdit = False
    DataSet = Ordem
    Left = 288
    Top = 115
  end
  object SelMotoresServicos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CNPJ, '
      '          MOTOR, '
      '          SERVICO,'
      '          NOME_SERVICO,'
      '          ATIVO,'
      '          VALOR '
      'from OFC_MOTORES_SERVICOS'
      'Where CNPJ = :CNPJ and MOTOR = :CODIGO'
      'and ATIVO = '#39'S'#39)
    Left = 288
    Top = 258
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
    object SelMotoresServicosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTORES_SERVICOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMotoresServicosMOTOR: TIntegerField
      DisplayLabel = 'Motor'
      FieldName = 'MOTOR'
      Origin = '"OFC_MOTORES_SERVICOS"."MOTOR"'
      Required = True
    end
    object SelMotoresServicosSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"OFC_MOTORES_SERVICOS"."SERVICO"'
      Required = True
    end
    object SelMotoresServicosNOME_SERVICO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_SERVICO'
      Origin = '"OFC_MOTORES_SERVICOS"."NOME_SERVICO"'
      Size = 50
    end
    object SelMotoresServicosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_MOTORES_SERVICOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object SelMotoresServicosVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_MOTORES_SERVICOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Consulta_Ordem: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_OrdemCalcFields
    SQL.Strings = (
      'SELECT'
      '    DATA           ,'
      '    PESSOA_FJ ,'
      '    NOME          ,'
      '    NATUREZA ,'
      '    MECANICO  ,'
      '    VIAJANTE    ,'
      '    ENTRADA    ,'
      '    HISTORICO  ,'
      '    CHASSI         ,'
      '    TOTAL          ,'
      '    DESC_ACRESC,'
      '    CLIENTE        ,'
      '    FECHADO      ,'
      '    NOME_NATUREZA  ,'
      '    NOME_MECANICO ,'
      '    NOME_VIAJANTE ,'
      '    VLR_ENTRADA ,'
      '    NF,'
      '    ALIQUOTA_ISS,'
      '    MED_VIRABREQUIM,'
      '    MED_BIELA ,'
      '    MED_CILINDRO ,'
      '    MED_CARCACA ,'
      '    ORCAMENTO,'
      ''
      '    PROPRIETARIO   ,'
      '    IE             ,'
      '    ENDERECO       ,'
      '    COMPLEMENTO    ,'
      '    CIDADE         ,'
      '    UF             ,'
      '    CEP            ,'
      '    AREA_TOTAL     ,'
      '    OBS            ,'
      '    NUMERO         ,'
      '    BAIRRO         ,'
      '    ATIVA          ,'
      '    TIPO_CONTRATO  ,'
      '    MODELO         ,'
      '    GARANTIA       ,'
      '    CPF            ,'
      '    VENDEDOR       ,'
      '    TECNICO        ,'
      '    CONTRATO ,'
      '    NUMERO_VENDA ,'
      '    DEFEITO_RECLAMADO ,'
      '    CONDICAO_FINAL_EQUIPAMENTO ,'
      '    HORA_CHEGADA ,'
      '    HORA_SAIDA ,'
      '    CONTADOR_TOTAL ,'
      '    CONTADOR_CILINDRO ,'
      '    CONTADOR_REVELADOR ,'
      '    NOME_DEFEITO ,'
      '    PROPRIEDADE ,'
      '    NOME_PROPRIEDADE ,'
      '    CAUSA_CHAMADO ,'
      '    TIPO_ATENDIMENTO ,'
      '    CONTADOR_COR,'
      '    CONTADOR_PRETO, '
      '    CONTADOR_IMPRESSAO,'
      '    VENDA      '
      'FROM CONSULTA_ORDEM_SERVICO ( :CNPJ, :CODIGO )')
    Left = 192
    Top = 307
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
    object Consulta_OrdemDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."DATA"'
    end
    object Consulta_OrdemPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CONSULTA_ORDEM_SERVICO"."PESSOA_FJ"'
    end
    object Consulta_OrdemNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object Consulta_OrdemNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NATUREZA"'
    end
    object Consulta_OrdemMECANICO: TIntegerField
      FieldName = 'MECANICO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."MECANICO"'
    end
    object Consulta_OrdemVIAJANTE: TIntegerField
      FieldName = 'VIAJANTE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."VIAJANTE"'
    end
    object Consulta_OrdemHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."HISTORICO"'
      Size = 100
    end
    object Consulta_OrdemCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CHASSI"'
      Size = 30
    end
    object Consulta_OrdemTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CONSULTA_ORDEM_SERVICO"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"CONSULTA_ORDEM_SERVICO"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object Consulta_OrdemFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."FECHADO"'
      Size = 50
    end
    object Consulta_OrdemNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object Consulta_OrdemNOME_MECANICO: TIBStringField
      FieldName = 'NOME_MECANICO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object Consulta_OrdemNOME_VIAJANTE: TIBStringField
      FieldName = 'NOME_VIAJANTE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object Consulta_OrdemLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      Calculated = True
    end
    object Consulta_OrdemENTRADA: TDateField
      FieldName = 'ENTRADA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."ENTRADA"'
    end
    object Consulta_OrdemVLR_ENTRADA: TIBBCDField
      FieldName = 'VLR_ENTRADA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."VLR_ENTRADA"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemNF: TIntegerField
      FieldName = 'NF'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NF"'
    end
    object Consulta_OrdemALIQUOTA_ISS: TIBBCDField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"CONSULTA_ORDEM_SERVICO"."ALIQUOTA_ISS"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemMED_VIRABREQUIM: TIBStringField
      FieldName = 'MED_VIRABREQUIM'
      Origin = '"CONSULTA_ORDEM_SERVICO"."MED_VIRABREQUIM"'
    end
    object Consulta_OrdemMED_BIELA: TIBStringField
      FieldName = 'MED_BIELA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."MED_BIELA"'
    end
    object Consulta_OrdemMED_CILINDRO: TIBStringField
      FieldName = 'MED_CILINDRO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."MED_CILINDRO"'
    end
    object Consulta_OrdemMED_CARCACA: TIBStringField
      FieldName = 'MED_CARCACA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."MED_CARCACA"'
    end
    object Consulta_OrdemORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."ORCAMENTO"'
    end
    object Consulta_OrdemPROPRIETARIO: TIBStringField
      FieldName = 'PROPRIETARIO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."PROPRIETARIO"'
      Size = 50
    end
    object Consulta_OrdemIE: TIBStringField
      FieldName = 'IE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."IE"'
      Size = 15
    end
    object Consulta_OrdemENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."ENDERECO"'
      Size = 50
    end
    object Consulta_OrdemCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."COMPLEMENTO"'
      Size = 30
    end
    object Consulta_OrdemCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CIDADE"'
      Size = 50
    end
    object Consulta_OrdemUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CONSULTA_ORDEM_SERVICO"."UF"'
      Size = 2
    end
    object Consulta_OrdemCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CEP"'
      Size = 8
    end
    object Consulta_OrdemAREA_TOTAL: TIBStringField
      FieldName = 'AREA_TOTAL'
      Origin = '"CONSULTA_ORDEM_SERVICO"."AREA_TOTAL"'
      Size = 30
    end
    object Consulta_OrdemOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"CONSULTA_ORDEM_SERVICO"."OBS"'
      Size = 8
    end
    object Consulta_OrdemNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NUMERO"'
      Size = 15
    end
    object Consulta_OrdemBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."BAIRRO"'
      Size = 50
    end
    object Consulta_OrdemATIVA: TIBStringField
      FieldName = 'ATIVA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."ATIVA"'
      FixedChar = True
      Size = 1
    end
    object Consulta_OrdemTIPO_CONTRATO: TIBStringField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."TIPO_CONTRATO"'
      Size = 50
    end
    object Consulta_OrdemMODELO: TIBStringField
      FieldName = 'MODELO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."MODELO"'
      Size = 50
    end
    object Consulta_OrdemGARANTIA: TDateField
      FieldName = 'GARANTIA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."GARANTIA"'
    end
    object Consulta_OrdemCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CPF"'
    end
    object Consulta_OrdemVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"CONSULTA_ORDEM_SERVICO"."VENDEDOR"'
    end
    object Consulta_OrdemTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."TECNICO"'
    end
    object Consulta_OrdemCONTRATO: TIBStringField
      FieldName = 'CONTRATO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONTRATO"'
    end
    object Consulta_OrdemNUMERO_VENDA: TIntegerField
      FieldName = 'NUMERO_VENDA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NUMERO_VENDA"'
    end
    object Consulta_OrdemDEFEITO_RECLAMADO: TIBStringField
      FieldName = 'DEFEITO_RECLAMADO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."DEFEITO_RECLAMADO"'
      Size = 50
    end
    object Consulta_OrdemCONDICAO_FINAL_EQUIPAMENTO: TIBStringField
      FieldName = 'CONDICAO_FINAL_EQUIPAMENTO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONDICAO_FINAL_EQUIPAMENTO"'
      Size = 50
    end
    object Consulta_OrdemHORA_CHEGADA: TTimeField
      FieldName = 'HORA_CHEGADA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."HORA_CHEGADA"'
    end
    object Consulta_OrdemHORA_SAIDA: TTimeField
      FieldName = 'HORA_SAIDA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."HORA_SAIDA"'
    end
    object Consulta_OrdemCONTADOR_TOTAL: TIBBCDField
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONTADOR_TOTAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemCONTADOR_CILINDRO: TIBBCDField
      FieldName = 'CONTADOR_CILINDRO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONTADOR_CILINDRO"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemCONTADOR_REVELADOR: TIBBCDField
      FieldName = 'CONTADOR_REVELADOR'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONTADOR_REVELADOR"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemNOME_DEFEITO: TIBStringField
      FieldName = 'NOME_DEFEITO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_DEFEITO"'
      Size = 50
    end
    object Consulta_OrdemPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."PROPRIEDADE"'
    end
    object Consulta_OrdemNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object Consulta_OrdemTIPO_ATENDIMENTO: TIBStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."TIPO_ATENDIMENTO"'
      Size = 50
    end
    object Consulta_OrdemCAUSA_CHAMADO: TIBStringField
      FieldName = 'CAUSA_CHAMADO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CAUSA_CHAMADO"'
      Size = 200
    end
    object Consulta_OrdemCONTADOR_COR: TIBBCDField
      FieldName = 'CONTADOR_COR'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONTADOR_COR"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemCONTADOR_PRETO: TIBBCDField
      FieldName = 'CONTADOR_PRETO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONTADOR_PRETO"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemCONTADOR_IMPRESSAO: TIBBCDField
      FieldName = 'CONTADOR_IMPRESSAO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CONTADOR_IMPRESSAO"'
      Precision = 18
      Size = 4
    end
    object Consulta_OrdemVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."VENDA"'
    end
  end
  object Consulta_Ordem_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_Ordem_ItensCalcFields
    SQL.Strings = (
      'select'
      '  SERVICO ,'
      '  NOME ,'
      '  QUANTIDADE ,'
      '  UNITARIO ,'
      '  SELECIONADO '
      'from CONSULTA_ORDEM_SERVICO_ITENS'
      '( :CNPJ, :CODIGO )')
    Left = 288
    Top = 307
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
    object Consulta_Ordem_ItensSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."SERVICO"'
    end
    object Consulta_Ordem_ItensNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."NOME"'
      Size = 50
    end
    object Consulta_Ordem_ItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Consulta_Ordem_ItensUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Ordem_ItensSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_Ordem_ItensTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object Ver_Pessoa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select * from Ver_Pessoa ( :CNPJ, :COD )')
    Left = 8
    Top = 354
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD'
        ParamType = ptUnknown
      end>
    object Ver_PessoaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA"."CODIGO"'
    end
    object Ver_PessoaNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA"."NOME_RAZAO"'
      Size = 50
    end
    object Ver_PessoaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA"."FANTASIA"'
      Size = 50
    end
    object Ver_PessoaCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOA"."COD_ATIVIDADE"'
    end
    object Ver_PessoaATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOA"."ATIVIDADE"'
      Size = 50
    end
    object Ver_PessoaCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOA"."COD_ENDERECO"'
    end
    object Ver_PessoaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA"."ENDERECO"'
      Size = 50
    end
    object Ver_PessoaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOA"."NUMERO"'
      Size = 15
    end
    object Ver_PessoaCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOA"."COMPLEMENTO"'
      Size = 30
    end
    object Ver_PessoaCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOA"."COD_BAIRRO"'
    end
    object Ver_PessoaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOA"."BAIRRO"'
      Size = 50
    end
    object Ver_PessoaCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOA"."COD_CIDADE"'
    end
    object Ver_PessoaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOA"."CIDADE"'
      Size = 50
    end
    object Ver_PessoaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOA"."UF"'
      FixedChar = True
      Size = 2
    end
    object Ver_PessoaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOA"."CEP"'
      Size = 8
    end
    object Ver_PessoaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOA"."FONE"'
    end
    object Ver_PessoaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOA"."FAX"'
    end
    object Ver_PessoaCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOA"."CELULAR"'
    end
    object Ver_PessoaPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOA"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object Ver_PessoaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA"."CPF_CGC"'
      Size = 15
    end
    object Ver_PessoaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA"."RG_IE"'
      Size = 15
    end
    object Ver_PessoaCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOA"."CONTATO"'
      Size = 30
    end
    object Ver_PessoaDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOA"."DT_NASCIMENTO"'
    end
    object Ver_PessoaDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOA"."DT_CADASTRO"'
    end
    object Ver_PessoaEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOA"."EMAIL"'
      Size = 80
    end
    object Ver_PessoaOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOA"."OBS"'
      Size = 8
    end
    object Ver_PessoaINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOA"."INSC_MUNIC"'
      Size = 15
    end
  end
  object Valida_Forma: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select '
      '          ACRESCIMO, '
      '          AVISTA, '
      '          CNPJ, '
      '          CODIGO, '
      '          COMENTRADA, '
      '          DESCONTO, '
      '          FATURA_FUTURA, '
      '          FORMA_ECF, '
      '          INTERVALO, '
      '          NOME, '
      '          NPARCELAS, '
      '          TIPO_PAGAMENTO '
      'from FIN_FORMAS_PAGTO'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    Left = 96
    Top = 354
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
  end
  object Ordem_Parcelamento: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = Ordem_ParcelamentoNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_PARCELAMENTO'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO_PARCELAMENTO'
      '  (BOLETO, CODIGO, VALOR, VENCTO, CNPJ)'
      'values'
      '  (:BOLETO, :CODIGO, :VALOR, :VENCTO, :CNPJ)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  VENCTO,'
      '  PARCELA,'
      '  VALOR,'
      '  BOLETO'
      'from OFC_ORDEM_SERVICO_PARCELAMENTO '
      'where'
      '  CODIGO = :CODIGO and'
      '  VENCTO = :VENCTO')
    SelectSQL.Strings = (
      'select BOLETO, '
      '          CODIGO, '
      '          VALOR, '
      '          VENCTO ,'
      '         CNPJ'
      'from OFC_ORDEM_SERVICO_PARCELAMENTO'
      'where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO_PARCELAMENTO'
      'set'
      '  BOLETO = :BOLETO,'
      '  CODIGO = :CODIGO,'
      '  VALOR = :VALOR,'
      '  VENCTO = :VENCTO,'
      '  CNPJ = :CNPJ'
      'where'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    DataSource = DsOrdem
    Left = 112
    Top = 307
    object Ordem_ParcelamentoBOLETO: TIntegerField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"OFC_ORDEM_SERVICO_PARCELAMENTO"."BOLETO"'
    end
    object Ordem_ParcelamentoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Ordem_ParcelamentoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_ORDEM_SERVICO_PARCELAMENTO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ordem_ParcelamentoVENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCTO'
      Origin = '"OFC_ORDEM_SERVICO_PARCELAMENTO"."VENCTO"'
    end
    object Ordem_ParcelamentoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object Ctrl_Qualidade: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = Ctrl_QualidadeAfterInsert
    BeforeOpen = Ctrl_QualidadeBeforeOpen
    DeleteSQL.Strings = (
      'delete from OFC_CTRL_QUALIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_CTRL_QUALIDADE'
      
        '  (CNPJ, CODIGO, VIRABREQUIM, MEDIDA_MANCAL, MEDIDA_BIELA, FOLGA' +
        '_AXIAL_VIRABREQUIM, '
      
        '   CABECOTE, ALTURA_CABECOTE, ALTURA_VALV_ADMISSAO, ALTURA_VALV_' +
        'ESCAPE, '
      
        '   BLOCO, FOLGA_CILINDRO, FOLGA_RADIAL_BLOCO, BIELA, FOLGA_RADIA' +
        'L_BIELA, '
      
        '   FOLGA_PINO, FOLGA_AXIAL_BIELA, AJUSTADO, TORQUE_MANCAL, TORQU' +
        'E_BIELA, '
      
        '   ALTURA_PISTAO, MONTADOR, NOME_MONTADOR, OBSERVACAO, MONTADOR_' +
        'VIRABREQUIM, '
      
        '   NOME_MONTADOR_VIRABREQUIM, MONTADOR_CABECOTE, NOME_MONTADOR_C' +
        'ABECOTE, '
      
        '   MONTADOR_BLOCO, NOME_MONTADOR_BLOCO, MONTADOR_BIELA, NOME_MON' +
        'TADOR_BIELA, '
      '   MONTADOR_AJUSTE, NOME_MONTADOR_AJUSTE)'
      'values'
      
        '  (:CNPJ, :CODIGO, :VIRABREQUIM, :MEDIDA_MANCAL, :MEDIDA_BIELA, ' +
        ':FOLGA_AXIAL_VIRABREQUIM, '
      
        '   :CABECOTE, :ALTURA_CABECOTE, :ALTURA_VALV_ADMISSAO, :ALTURA_V' +
        'ALV_ESCAPE, '
      
        '   :BLOCO, :FOLGA_CILINDRO, :FOLGA_RADIAL_BLOCO, :BIELA, :FOLGA_' +
        'RADIAL_BIELA, '
      
        '   :FOLGA_PINO, :FOLGA_AXIAL_BIELA, :AJUSTADO, :TORQUE_MANCAL, :' +
        'TORQUE_BIELA, '
      
        '   :ALTURA_PISTAO, :MONTADOR, :NOME_MONTADOR, :OBSERVACAO, :MONT' +
        'ADOR_VIRABREQUIM, '
      
        '   :NOME_MONTADOR_VIRABREQUIM, :MONTADOR_CABECOTE, :NOME_MONTADO' +
        'R_CABECOTE, '
      
        '   :MONTADOR_BLOCO, :NOME_MONTADOR_BLOCO, :MONTADOR_BIELA, :NOME' +
        '_MONTADOR_BIELA, '
      '   :MONTADOR_AJUSTE, :NOME_MONTADOR_AJUSTE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  VIRABREQUIM,'
      '  MEDIDA_MANCAL,'
      '  MEDIDA_BIELA,'
      '  FOLGA_AXIAL_VIRABREQUIM,'
      '  CABECOTE,'
      '  ALTURA_CABECOTE,'
      '  ALTURA_VALV_ADMISSAO,'
      '  ALTURA_VALV_ESCAPE,'
      '  BLOCO,'
      '  FOLGA_CILINDRO,'
      '  FOLGA_RADIAL_BLOCO,'
      '  BIELA,'
      '  FOLGA_RADIAL_BIELA,'
      '  FOLGA_PINO,'
      '  FOLGA_AXIAL_BIELA,'
      '  AJUSTADO,'
      '  TORQUE_MANCAL,'
      '  TORQUE_BIELA,'
      '  ALTURA_PISTAO,'
      '  MONTADOR,'
      '  NOME_MONTADOR,'
      '  OBSERVACAO,'
      '  MONTADOR_VIRABREQUIM,'
      '  NOME_MONTADOR_VIRABREQUIM,'
      '  MONTADOR_CABECOTE,'
      '  NOME_MONTADOR_CABECOTE,'
      '  MONTADOR_BLOCO,'
      '  NOME_MONTADOR_BLOCO,'
      '  MONTADOR_BIELA,'
      '  NOME_MONTADOR_BIELA,'
      '  MONTADOR_AJUSTE,'
      '  NOME_MONTADOR_AJUSTE'
      'from OFC_CTRL_QUALIDADE '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT'
      '    CNPJ,'
      '    CODIGO,'
      '    VIRABREQUIM,'
      '    MEDIDA_MANCAL,'
      '    MEDIDA_BIELA,'
      '    FOLGA_AXIAL_VIRABREQUIM,'
      '    CABECOTE,'
      '    ALTURA_CABECOTE,'
      '    ALTURA_VALV_ADMISSAO,'
      '    ALTURA_VALV_ESCAPE,'
      '    BLOCO,'
      '    FOLGA_CILINDRO,'
      '    FOLGA_RADIAL_BLOCO,'
      '    BIELA,'
      '    FOLGA_RADIAL_BIELA,'
      '    FOLGA_PINO,'
      '    FOLGA_AXIAL_BIELA,'
      '    AJUSTADO,'
      '    TORQUE_MANCAL,'
      '    TORQUE_BIELA,'
      '    ALTURA_PISTAO,'
      '    MONTADOR,'
      '    NOME_MONTADOR,'
      '    OBSERVACAO,'
      '    MONTADOR_VIRABREQUIM       ,'
      '    NOME_MONTADOR_VIRABREQUIM  ,'
      '    MONTADOR_CABECOTE          ,'
      '    NOME_MONTADOR_CABECOTE     ,'
      '    MONTADOR_BLOCO             ,'
      '    NOME_MONTADOR_BLOCO        ,'
      '    MONTADOR_BIELA             ,'
      '    NOME_MONTADOR_BIELA        ,'
      '    MONTADOR_AJUSTE            ,'
      '    NOME_MONTADOR_AJUSTE'
      'FROM OFC_CTRL_QUALIDADE'
      'Where CNPJ = :CNPJ and CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_CTRL_QUALIDADE'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  VIRABREQUIM = :VIRABREQUIM,'
      '  MEDIDA_MANCAL = :MEDIDA_MANCAL,'
      '  MEDIDA_BIELA = :MEDIDA_BIELA,'
      '  FOLGA_AXIAL_VIRABREQUIM = :FOLGA_AXIAL_VIRABREQUIM,'
      '  CABECOTE = :CABECOTE,'
      '  ALTURA_CABECOTE = :ALTURA_CABECOTE,'
      '  ALTURA_VALV_ADMISSAO = :ALTURA_VALV_ADMISSAO,'
      '  ALTURA_VALV_ESCAPE = :ALTURA_VALV_ESCAPE,'
      '  BLOCO = :BLOCO,'
      '  FOLGA_CILINDRO = :FOLGA_CILINDRO,'
      '  FOLGA_RADIAL_BLOCO = :FOLGA_RADIAL_BLOCO,'
      '  BIELA = :BIELA,'
      '  FOLGA_RADIAL_BIELA = :FOLGA_RADIAL_BIELA,'
      '  FOLGA_PINO = :FOLGA_PINO,'
      '  FOLGA_AXIAL_BIELA = :FOLGA_AXIAL_BIELA,'
      '  AJUSTADO = :AJUSTADO,'
      '  TORQUE_MANCAL = :TORQUE_MANCAL,'
      '  TORQUE_BIELA = :TORQUE_BIELA,'
      '  ALTURA_PISTAO = :ALTURA_PISTAO,'
      '  MONTADOR = :MONTADOR,'
      '  NOME_MONTADOR = :NOME_MONTADOR,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  MONTADOR_VIRABREQUIM = :MONTADOR_VIRABREQUIM,'
      '  NOME_MONTADOR_VIRABREQUIM = :NOME_MONTADOR_VIRABREQUIM,'
      '  MONTADOR_CABECOTE = :MONTADOR_CABECOTE,'
      '  NOME_MONTADOR_CABECOTE = :NOME_MONTADOR_CABECOTE,'
      '  MONTADOR_BLOCO = :MONTADOR_BLOCO,'
      '  NOME_MONTADOR_BLOCO = :NOME_MONTADOR_BLOCO,'
      '  MONTADOR_BIELA = :MONTADOR_BIELA,'
      '  NOME_MONTADOR_BIELA = :NOME_MONTADOR_BIELA,'
      '  MONTADOR_AJUSTE = :MONTADOR_AJUSTE,'
      '  NOME_MONTADOR_AJUSTE = :NOME_MONTADOR_AJUSTE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 8
    Top = 211
    object Ctrl_QualidadeCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_CTRL_QUALIDADE"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ctrl_QualidadeCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_CTRL_QUALIDADE"."CODIGO"'
      Required = True
    end
    object Ctrl_QualidadeVIRABREQUIM: TIBStringField
      DisplayLabel = 'Virabrequim'
      FieldName = 'VIRABREQUIM'
      Origin = '"OFC_CTRL_QUALIDADE"."VIRABREQUIM"'
      Size = 15
    end
    object Ctrl_QualidadeMEDIDA_MANCAL: TIBStringField
      DisplayLabel = 'Med. Mancal'
      FieldName = 'MEDIDA_MANCAL'
      Origin = '"OFC_CTRL_QUALIDADE"."MEDIDA_MANCAL"'
      Size = 15
    end
    object Ctrl_QualidadeMEDIDA_BIELA: TIBStringField
      DisplayLabel = 'Med. Biela'
      FieldName = 'MEDIDA_BIELA'
      Origin = '"OFC_CTRL_QUALIDADE"."MEDIDA_BIELA"'
      Size = 15
    end
    object Ctrl_QualidadeFOLGA_AXIAL_VIRABREQUIM: TIBStringField
      DisplayLabel = 'Folga Axial Virabrequim'
      FieldName = 'FOLGA_AXIAL_VIRABREQUIM'
      Origin = '"OFC_CTRL_QUALIDADE"."FOLGA_AXIAL_VIRABREQUIM"'
      Size = 15
    end
    object Ctrl_QualidadeCABECOTE: TIBStringField
      DisplayLabel = 'Cabe'#231'ote'
      FieldName = 'CABECOTE'
      Origin = '"OFC_CTRL_QUALIDADE"."CABECOTE"'
      Size = 15
    end
    object Ctrl_QualidadeALTURA_CABECOTE: TIBStringField
      DisplayLabel = 'Alt. Cabe'#231'ote'
      FieldName = 'ALTURA_CABECOTE'
      Origin = '"OFC_CTRL_QUALIDADE"."ALTURA_CABECOTE"'
      Size = 15
    end
    object Ctrl_QualidadeALTURA_VALV_ADMISSAO: TIBStringField
      DisplayLabel = 'Alt. Valv. Admiss'#227'o'
      FieldName = 'ALTURA_VALV_ADMISSAO'
      Origin = '"OFC_CTRL_QUALIDADE"."ALTURA_VALV_ADMISSAO"'
      Size = 15
    end
    object Ctrl_QualidadeALTURA_VALV_ESCAPE: TIBStringField
      DisplayLabel = 'Alt. Valv. Escape'
      FieldName = 'ALTURA_VALV_ESCAPE'
      Origin = '"OFC_CTRL_QUALIDADE"."ALTURA_VALV_ESCAPE"'
      Size = 15
    end
    object Ctrl_QualidadeBLOCO: TIBStringField
      DisplayLabel = 'Bloco'
      FieldName = 'BLOCO'
      Origin = '"OFC_CTRL_QUALIDADE"."BLOCO"'
      Size = 15
    end
    object Ctrl_QualidadeFOLGA_CILINDRO: TIBStringField
      DisplayLabel = 'Folga Cilindro'
      FieldName = 'FOLGA_CILINDRO'
      Origin = '"OFC_CTRL_QUALIDADE"."FOLGA_CILINDRO"'
      Size = 15
    end
    object Ctrl_QualidadeFOLGA_RADIAL_BLOCO: TIBStringField
      DisplayLabel = 'Folga Radial Bloco'
      FieldName = 'FOLGA_RADIAL_BLOCO'
      Origin = '"OFC_CTRL_QUALIDADE"."FOLGA_RADIAL_BLOCO"'
      Size = 15
    end
    object Ctrl_QualidadeBIELA: TIBStringField
      DisplayLabel = 'Biela'
      FieldName = 'BIELA'
      Origin = '"OFC_CTRL_QUALIDADE"."BIELA"'
      Size = 15
    end
    object Ctrl_QualidadeFOLGA_RADIAL_BIELA: TIBStringField
      DisplayLabel = 'Folga Radial Biela'
      FieldName = 'FOLGA_RADIAL_BIELA'
      Origin = '"OFC_CTRL_QUALIDADE"."FOLGA_RADIAL_BIELA"'
      Size = 15
    end
    object Ctrl_QualidadeFOLGA_PINO: TIBStringField
      DisplayLabel = 'Folga Pino'
      FieldName = 'FOLGA_PINO'
      Origin = '"OFC_CTRL_QUALIDADE"."FOLGA_PINO"'
      Size = 15
    end
    object Ctrl_QualidadeFOLGA_AXIAL_BIELA: TIBStringField
      DisplayLabel = 'Folga Axial Biela'
      FieldName = 'FOLGA_AXIAL_BIELA'
      Origin = '"OFC_CTRL_QUALIDADE"."FOLGA_AXIAL_BIELA"'
      Size = 15
    end
    object Ctrl_QualidadeAJUSTADO: TIBStringField
      DisplayLabel = 'Ajustado'
      FieldName = 'AJUSTADO'
      Origin = '"OFC_CTRL_QUALIDADE"."AJUSTADO"'
      Size = 15
    end
    object Ctrl_QualidadeTORQUE_MANCAL: TIBStringField
      DisplayLabel = 'Torque Mancal'
      FieldName = 'TORQUE_MANCAL'
      Origin = '"OFC_CTRL_QUALIDADE"."TORQUE_MANCAL"'
      Size = 15
    end
    object Ctrl_QualidadeTORQUE_BIELA: TIBStringField
      DisplayLabel = 'Torque Biela'
      FieldName = 'TORQUE_BIELA'
      Origin = '"OFC_CTRL_QUALIDADE"."TORQUE_BIELA"'
      Size = 15
    end
    object Ctrl_QualidadeALTURA_PISTAO: TIBStringField
      DisplayLabel = 'Alt. Pist'#227'o'
      FieldName = 'ALTURA_PISTAO'
      Origin = '"OFC_CTRL_QUALIDADE"."ALTURA_PISTAO"'
      Size = 15
    end
    object Ctrl_QualidadeMONTADOR: TIntegerField
      DisplayLabel = 'Montador'
      FieldName = 'MONTADOR'
      Origin = '"OFC_CTRL_QUALIDADE"."MONTADOR"'
      OnValidate = Ctrl_QualidadeMONTADORValidate
    end
    object Ctrl_QualidadeNOME_MONTADOR: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_MONTADOR'
      Origin = '"OFC_CTRL_QUALIDADE"."NOME_MONTADOR"'
      Size = 50
    end
    object Ctrl_QualidadeOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Origin = '"OFC_CTRL_QUALIDADE"."OBSERVACAO"'
      Size = 8
    end
    object Ctrl_QualidadeMONTADOR_VIRABREQUIM: TIntegerField
      FieldName = 'MONTADOR_VIRABREQUIM'
      Origin = '"OFC_CTRL_QUALIDADE"."MONTADOR_VIRABREQUIM"'
      OnValidate = Ctrl_QualidadeMONTADOR_VIRABREQUIMValidate
    end
    object Ctrl_QualidadeNOME_MONTADOR_VIRABREQUIM: TIBStringField
      FieldName = 'NOME_MONTADOR_VIRABREQUIM'
      Origin = '"OFC_CTRL_QUALIDADE"."NOME_MONTADOR_VIRABREQUIM"'
      Size = 50
    end
    object Ctrl_QualidadeMONTADOR_CABECOTE: TIntegerField
      FieldName = 'MONTADOR_CABECOTE'
      Origin = '"OFC_CTRL_QUALIDADE"."MONTADOR_CABECOTE"'
      OnValidate = Ctrl_QualidadeMONTADOR_CABECOTEValidate
    end
    object Ctrl_QualidadeNOME_MONTADOR_CABECOTE: TIBStringField
      FieldName = 'NOME_MONTADOR_CABECOTE'
      Origin = '"OFC_CTRL_QUALIDADE"."NOME_MONTADOR_CABECOTE"'
      Size = 50
    end
    object Ctrl_QualidadeMONTADOR_BLOCO: TIntegerField
      FieldName = 'MONTADOR_BLOCO'
      Origin = '"OFC_CTRL_QUALIDADE"."MONTADOR_BLOCO"'
      OnValidate = Ctrl_QualidadeMONTADOR_BLOCOValidate
    end
    object Ctrl_QualidadeNOME_MONTADOR_BLOCO: TIBStringField
      FieldName = 'NOME_MONTADOR_BLOCO'
      Origin = '"OFC_CTRL_QUALIDADE"."NOME_MONTADOR_BLOCO"'
      Size = 50
    end
    object Ctrl_QualidadeMONTADOR_BIELA: TIntegerField
      FieldName = 'MONTADOR_BIELA'
      Origin = '"OFC_CTRL_QUALIDADE"."MONTADOR_BIELA"'
      OnValidate = Ctrl_QualidadeMONTADOR_BIELAValidate
    end
    object Ctrl_QualidadeNOME_MONTADOR_BIELA: TIBStringField
      FieldName = 'NOME_MONTADOR_BIELA'
      Origin = '"OFC_CTRL_QUALIDADE"."NOME_MONTADOR_BIELA"'
      Size = 50
    end
    object Ctrl_QualidadeMONTADOR_AJUSTE: TIntegerField
      FieldName = 'MONTADOR_AJUSTE'
      Origin = '"OFC_CTRL_QUALIDADE"."MONTADOR_AJUSTE"'
      OnValidate = Ctrl_QualidadeMONTADOR_AJUSTEValidate
    end
    object Ctrl_QualidadeNOME_MONTADOR_AJUSTE: TIBStringField
      FieldName = 'NOME_MONTADOR_AJUSTE'
      Origin = '"OFC_CTRL_QUALIDADE"."NOME_MONTADOR_AJUSTE"'
      Size = 50
    end
  end
  object Ver_Ctrl_Qualidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    CODIGO,'
      '    MONTADOR,'
      '    NOME_MONTADOR,'
      '    PESSOA_FJ,'
      '    NOME_CLIENTE,'
      '    DATA    '
      'FROM VER_OFC_CTRL_QUALIDADE ( :CNPJ )'
      'ORDER BY CODIGO')
    Left = 96
    Top = 211
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Ver_Ctrl_QualidadeCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_OFC_CTRL_QUALIDADE"."CODIGO"'
    end
    object Ver_Ctrl_QualidadeMONTADOR: TIntegerField
      DisplayLabel = 'Montador'
      FieldName = 'MONTADOR'
      Origin = '"VER_OFC_CTRL_QUALIDADE"."MONTADOR"'
    end
    object Ver_Ctrl_QualidadeNOME_MONTADOR: TIBStringField
      DisplayLabel = 'Nome Montador'
      FieldName = 'NOME_MONTADOR'
      Origin = '"VER_OFC_CTRL_QUALIDADE"."NOME_MONTADOR"'
      Size = 50
    end
    object Ver_Ctrl_QualidadePESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_OFC_CTRL_QUALIDADE"."PESSOA_FJ"'
    end
    object Ver_Ctrl_QualidadeNOME_CLIENTE: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_CLIENTE'
      Origin = '"VER_OFC_CTRL_QUALIDADE"."NOME_CLIENTE"'
      Size = 50
    end
    object Ver_Ctrl_QualidadeDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_OFC_CTRL_QUALIDADE"."DATA"'
    end
  end
  object Imp_Ctrl_Qualidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    CABECOTE ,'
      '    VIRABREQUIM,'
      '    ALTURA_CABECOTE ,'
      '    ALTURA_VALV_ADMISSAO ,'
      '    ALTURA_VALV_ESCAPE ,'
      '    BLOCO ,'
      '    FOLGA_CILINDRO ,'
      '    FOLGA_RADIAL_BLOCO ,'
      '    BIELA ,'
      '    FOLGA_RADIAL_BIELA ,'
      '    FOLGA_PINO ,'
      '    FOLGA_AXIAL_BIELA ,'
      '    AJUSTADO ,'
      '    TORQUE_MANCAL ,'
      '    TORQUE_BIELA ,'
      '    ALTURA_PISTAO ,'
      '    MONTADOR ,'
      '    NOME_MONTADOR ,'
      '    PESSOA_FJ ,'
      '    NOME_CLIENTE ,'
      '    DATA ,'
      '    MOTOR,'
      '    NOME_MOTOR,'
      '    MEDIDA_MANCAL,'
      '    MEDIDA_BIELA,'
      '    FOLGA_AXIAL_VIRABREQUIM,'
      '    OBSERVACAO,'
      '    NOME_MONTADOR_VIRABREQUIM ,'
      '    NOME_MONTADOR_CABECOTE ,'
      '    NOME_MONTADOR_BLOCO,'
      '    NOME_MONTADOR_BIELA ,'
      '    NOME_MONTADOR_AJUSTE'
      'FROM IMP_OFC_CTRL_QUALIDADE ( :CNPJ, :CONTROLE )'
      'ORDER BY CODIGO')
    Left = 288
    Top = 67
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONTROLE'
        ParamType = ptUnknown
      end>
    object Imp_Ctrl_QualidadeCABECOTE: TIBStringField
      FieldName = 'CABECOTE'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."CABECOTE"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeVIRABREQUIM: TIBStringField
      FieldName = 'VIRABREQUIM'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."VIRABREQUIM"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeALTURA_CABECOTE: TIBStringField
      FieldName = 'ALTURA_CABECOTE'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."ALTURA_CABECOTE"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeALTURA_VALV_ADMISSAO: TIBStringField
      FieldName = 'ALTURA_VALV_ADMISSAO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."ALTURA_VALV_ADMISSAO"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeALTURA_VALV_ESCAPE: TIBStringField
      FieldName = 'ALTURA_VALV_ESCAPE'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."ALTURA_VALV_ESCAPE"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeBLOCO: TIBStringField
      FieldName = 'BLOCO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."BLOCO"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeFOLGA_CILINDRO: TIBStringField
      FieldName = 'FOLGA_CILINDRO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."FOLGA_CILINDRO"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeFOLGA_RADIAL_BLOCO: TIBStringField
      FieldName = 'FOLGA_RADIAL_BLOCO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."FOLGA_RADIAL_BLOCO"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeBIELA: TIBStringField
      FieldName = 'BIELA'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."BIELA"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeFOLGA_RADIAL_BIELA: TIBStringField
      FieldName = 'FOLGA_RADIAL_BIELA'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."FOLGA_RADIAL_BIELA"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeFOLGA_PINO: TIBStringField
      FieldName = 'FOLGA_PINO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."FOLGA_PINO"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeFOLGA_AXIAL_BIELA: TIBStringField
      FieldName = 'FOLGA_AXIAL_BIELA'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."FOLGA_AXIAL_BIELA"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeAJUSTADO: TIBStringField
      FieldName = 'AJUSTADO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."AJUSTADO"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeTORQUE_MANCAL: TIBStringField
      FieldName = 'TORQUE_MANCAL'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."TORQUE_MANCAL"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeTORQUE_BIELA: TIBStringField
      FieldName = 'TORQUE_BIELA'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."TORQUE_BIELA"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeALTURA_PISTAO: TIBStringField
      FieldName = 'ALTURA_PISTAO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."ALTURA_PISTAO"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeMONTADOR: TIntegerField
      FieldName = 'MONTADOR'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."MONTADOR"'
    end
    object Imp_Ctrl_QualidadeNOME_MONTADOR: TIBStringField
      FieldName = 'NOME_MONTADOR'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_MONTADOR"'
      Size = 50
    end
    object Imp_Ctrl_QualidadePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."PESSOA_FJ"'
    end
    object Imp_Ctrl_QualidadeNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_CLIENTE"'
      Size = 50
    end
    object Imp_Ctrl_QualidadeDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."DATA"'
    end
    object Imp_Ctrl_QualidadeMOTOR: TIntegerField
      FieldName = 'MOTOR'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."MOTOR"'
    end
    object Imp_Ctrl_QualidadeNOME_MOTOR: TIBStringField
      FieldName = 'NOME_MOTOR'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_MOTOR"'
      Size = 50
    end
    object Imp_Ctrl_QualidadeMEDIDA_MANCAL: TIBStringField
      FieldName = 'MEDIDA_MANCAL'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."MEDIDA_MANCAL"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeMEDIDA_BIELA: TIBStringField
      FieldName = 'MEDIDA_BIELA'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."MEDIDA_BIELA"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeFOLGA_AXIAL_VIRABREQUIM: TIBStringField
      FieldName = 'FOLGA_AXIAL_VIRABREQUIM'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."FOLGA_AXIAL_VIRABREQUIM"'
      Size = 15
    end
    object Imp_Ctrl_QualidadeOBSERVACAO: TBlobField
      FieldName = 'OBSERVACAO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."OBSERVACAO"'
      Size = 8
    end
    object Imp_Ctrl_QualidadeNOME_MONTADOR_VIRABREQUIM: TIBStringField
      FieldName = 'NOME_MONTADOR_VIRABREQUIM'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_MONTADOR_VIRABREQUIM"'
      Size = 50
    end
    object Imp_Ctrl_QualidadeNOME_MONTADOR_CABECOTE: TIBStringField
      FieldName = 'NOME_MONTADOR_CABECOTE'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_MONTADOR_CABECOTE"'
      Size = 50
    end
    object Imp_Ctrl_QualidadeNOME_MONTADOR_BLOCO: TIBStringField
      FieldName = 'NOME_MONTADOR_BLOCO'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_MONTADOR_BLOCO"'
      Size = 50
    end
    object Imp_Ctrl_QualidadeNOME_MONTADOR_BIELA: TIBStringField
      FieldName = 'NOME_MONTADOR_BIELA'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_MONTADOR_BIELA"'
      Size = 50
    end
    object Imp_Ctrl_QualidadeNOME_MONTADOR_AJUSTE: TIBStringField
      FieldName = 'NOME_MONTADOR_AJUSTE'
      Origin = '"IMP_OFC_CTRL_QUALIDADE"."NOME_MONTADOR_AJUSTE"'
      Size = 50
    end
  end
  object OS_MOVIMENTOS: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = OS_MOVIMENTOSAfterInsert
    BeforeOpen = ServicosBeforeOpen
    BeforePost = OS_MOVIMENTOSBeforePost
    OnNewRecord = OS_MOVIMENTOSNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_MOVIMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO_MOVIMENTO'
      
        '  (CNPJ, CODIGO, SEQUENCIA, HISTORICO, VALOR, TIPO, DATA, TIPO_D' +
        'ESPESA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :SEQUENCIA, :HISTORICO, :VALOR, :TIPO, :DATA,' +
        ' :TIPO_DESPESA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  SEQUENCIA,'
      '  VALOR,'
      '  HISTORICO,'
      '  TIPO,'
      '  DATA,'
      '  TIPO_DESPESA'
      'from OFC_ORDEM_SERVICO_MOVIMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          SEQUENCIA, '
      '          HISTORICO, '
      '          VALOR,'
      '          TIPO ,'
      '          DATA,'
      '          TIPO_DESPESA'
      '      '
      'from OFC_ORDEM_SERVICO_MOVIMENTO'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO_MOVIMENTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  HISTORICO = :HISTORICO,'
      '  VALOR = :VALOR,'
      '  TIPO = :TIPO,'
      '  DATA = :DATA,'
      '  TIPO_DESPESA = :TIPO_DESPESA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    DataSource = DsOrdem
    Left = 24
    Top = 266
    object OS_MOVIMENTOSCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OS_MOVIMENTOSCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."CODIGO"'
      Required = True
    end
    object OS_MOVIMENTOSSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."SEQUENCIA"'
      Required = True
    end
    object OS_MOVIMENTOSHISTORICO: TBlobField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."HISTORICO"'
      Size = 8
    end
    object OS_MOVIMENTOSVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object OS_MOVIMENTOSTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object OS_MOVIMENTOSDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."DATA"'
    end
    object OS_MOVIMENTOSTIPO_DESPESA: TIBStringField
      FieldName = 'TIPO_DESPESA'
      Origin = '"OFC_ORDEM_SERVICO_MOVIMENTO"."TIPO_DESPESA"'
      OnGetText = OS_MOVIMENTOSTIPO_DESPESAGetText
      OnSetText = OS_MOVIMENTOSTIPO_DESPESASetText
      FixedChar = True
      Size = 3
    end
  end
  object Ordem_Orc: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = OrdemBeforeOpen
    BeforePost = ServicosBeforePost
    OnCalcFields = Ordem_OrcCalcFields
    OnNewRecord = Ordem_OrcNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_ORC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO_ORC'
      
        '  (CNPJ, CODIGO, CHASSI, CLIENTE, DATA, DESC_ACRESC, ENTRADA, FE' +
        'CHADO, '
      
        '   HISTORICO, INFORMACOES, MECANICO, NATUREZA, NOME, PESSOA_FJ, ' +
        'TOTAL, '
      
        '   VIAJANTE, NOME_NATUREZA, NOME_MECANICO, NOME_VIAJANTE, NOME_M' +
        'OTOR, ENVIADA_CAIXA, '
      
        '   MOTOR, KM_ATUAL_FECHAMENTO, PLACA, DATA_FECHAMENTO, OBS_FECHA' +
        'MENTO, '
      
        '   FORMA_PAGTO, NOME_FORMA, TIPO_DOCTO, LOCAL_COBRANCA, VLR_PARC' +
        '_LC, VLR_ENTRADA, '
      '   CREDITOS, DEBITOS, VALIDADE, NUMERO_ORDEM, NUMERO_VENDA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :CHASSI, :CLIENTE, :DATA, :DESC_ACRESC, :ENTR' +
        'ADA, :FECHADO, '
      
        '   :HISTORICO, :INFORMACOES, :MECANICO, :NATUREZA, :NOME, :PESSO' +
        'A_FJ, :TOTAL, '
      
        '   :VIAJANTE, :NOME_NATUREZA, :NOME_MECANICO, :NOME_VIAJANTE, :N' +
        'OME_MOTOR, '
      
        '   :ENVIADA_CAIXA, :MOTOR, :KM_ATUAL_FECHAMENTO, :PLACA, :DATA_F' +
        'ECHAMENTO, '
      
        '   :OBS_FECHAMENTO, :FORMA_PAGTO, :NOME_FORMA, :TIPO_DOCTO, :LOC' +
        'AL_COBRANCA, '
      
        '   :VLR_PARC_LC, :VLR_ENTRADA, :CREDITOS, :DEBITOS, :VALIDADE, :' +
        'NUMERO_ORDEM, '
      '   :NUMERO_VENDA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  NOME,'
      '  NATUREZA,'
      '  MECANICO,'
      '  VIAJANTE,'
      '  ENTRADA,'
      '  HISTORICO,'
      '  CHASSI,'
      '  INFORMACOES,'
      '  TOTAL,'
      '  DESC_ACRESC,'
      '  CLIENTE,'
      '  FECHADO,'
      '  NOME_NATUREZA,'
      '  NOME_MECANICO,'
      '  NOME_VIAJANTE,'
      '  MOTOR,'
      '  NOME_MOTOR,'
      '  ENVIADA_CAIXA,'
      '  KM_ATUAL_FECHAMENTO,'
      '  PLACA,'
      '  DATA_FECHAMENTO,'
      '  OBS_FECHAMENTO,'
      '  FORMA_PAGTO,'
      '  NOME_FORMA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  VLR_ENTRADA,'
      '  CREDITOS,'
      '  DEBITOS,'
      '  VALIDADE,'
      '  NUMERO_ORDEM,'
      '  NUMERO_VENDA'
      'from OFC_ORDEM_SERVICO_ORC '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select '
      '         CNPJ, '
      '         CODIGO, '
      '         CHASSI, '
      '         CLIENTE, '
      '         DATA, '
      '         DESC_ACRESC, '
      '         ENTRADA, '
      '         FECHADO, '
      '         HISTORICO, '
      '         INFORMACOES, '
      '         MECANICO, '
      '         NATUREZA, '
      '         NOME, '
      '         PESSOA_FJ, '
      '         TOTAL, '
      '         VIAJANTE,'
      '         NOME_NATUREZA,'
      '         NOME_MECANICO,'
      '         NOME_VIAJANTE ,'
      '         NOME_MOTOR,'
      '         ENVIADA_CAIXA,'
      '         MOTOR,'
      '         KM_ATUAL_FECHAMENTO  ,'
      '         PLACA                ,'
      '         DATA_FECHAMENTO      ,'
      '         OBS_FECHAMENTO       ,'
      '         FORMA_PAGTO          ,'
      '         NOME_FORMA           ,'
      '         TIPO_DOCTO,'
      '         LOCAL_COBRANCA,'
      '         VLR_PARC_LC,'
      '         VLR_ENTRADA,'
      '         CREDITOS,'
      '         DEBITOS,'
      '         VALIDADE,'
      '         NUMERO_ORDEM,'
      '         NUMERO_VENDA'
      'from OFC_ORDEM_SERVICO_ORC'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO_ORC'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CHASSI = :CHASSI,'
      '  CLIENTE = :CLIENTE,'
      '  DATA = :DATA,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  ENTRADA = :ENTRADA,'
      '  FECHADO = :FECHADO,'
      '  HISTORICO = :HISTORICO,'
      '  INFORMACOES = :INFORMACOES,'
      '  MECANICO = :MECANICO,'
      '  NATUREZA = :NATUREZA,'
      '  NOME = :NOME,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TOTAL = :TOTAL,'
      '  VIAJANTE = :VIAJANTE,'
      '  NOME_NATUREZA = :NOME_NATUREZA,'
      '  NOME_MECANICO = :NOME_MECANICO,'
      '  NOME_VIAJANTE = :NOME_VIAJANTE,'
      '  NOME_MOTOR = :NOME_MOTOR,'
      '  ENVIADA_CAIXA = :ENVIADA_CAIXA,'
      '  MOTOR = :MOTOR,'
      '  KM_ATUAL_FECHAMENTO = :KM_ATUAL_FECHAMENTO,'
      '  PLACA = :PLACA,'
      '  DATA_FECHAMENTO = :DATA_FECHAMENTO,'
      '  OBS_FECHAMENTO = :OBS_FECHAMENTO,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  VLR_ENTRADA = :VLR_ENTRADA,'
      '  CREDITOS = :CREDITOS,'
      '  DEBITOS = :DEBITOS,'
      '  VALIDADE = :VALIDADE,'
      '  NUMERO_ORDEM = :NUMERO_ORDEM,'
      '  NUMERO_VENDA = :NUMERO_VENDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 392
    Top = 19
    object Ordem_OrcCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ordem_OrcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object Ordem_OrcCHASSI: TIBStringField
      DisplayLabel = 'Chassi'
      FieldName = 'CHASSI'
      Origin = '"OFC_ORDEM_SERVICO"."CHASSI"'
      Size = 30
    end
    object Ordem_OrcCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"OFC_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object Ordem_OrcDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
    end
    object Ordem_OrcDESC_ACRESC: TFloatField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC'
      Origin = '"OFC_ORDEM_SERVICO"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ordem_OrcENTRADA: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."ENTRADA"'
    end
    object Ordem_OrcFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"OFC_ORDEM_SERVICO"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Ordem_OrcHISTORICO: TIBStringField
      DisplayLabel = 'Historico'
      FieldName = 'HISTORICO'
      Origin = '"OFC_ORDEM_SERVICO"."HISTORICO"'
      Size = 100
    end
    object Ordem_OrcINFORMACOES: TBlobField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      Size = 8
    end
    object Ordem_OrcMECANICO: TIntegerField
      DisplayLabel = 'Mec'#226'nico'
      FieldName = 'MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."MECANICO"'
      Required = True
      OnValidate = Ordem_OrcMECANICOValidate
    end
    object Ordem_OrcNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NATUREZA"'
      Required = True
      OnValidate = Ordem_OrcNATUREZAValidate
    end
    object Ordem_OrcNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object Ordem_OrcPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa F/J'
      FieldName = 'PESSOA_FJ'
      Origin = '"OFC_ORDEM_SERVICO"."PESSOA_FJ"'
      Required = True
      OnValidate = Ordem_OrcPESSOA_FJValidate
    end
    object Ordem_OrcTOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ordem_OrcVIAJANTE: TIntegerField
      DisplayLabel = 'Viajante'
      FieldName = 'VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."VIAJANTE"'
      Required = True
      OnValidate = Ordem_OrcVIAJANTEValidate
    end
    object Ordem_OrcNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object Ordem_OrcNOME_MECANICO: TIBStringField
      DisplayLabel = 'Mec'#226'nico'
      FieldName = 'NOME_MECANICO'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object Ordem_OrcNOME_VIAJANTE: TIBStringField
      DisplayLabel = 'Viajante'
      FieldName = 'NOME_VIAJANTE'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object Ordem_OrcLiquido: TFloatField
      DisplayLabel = 'Liqu'#237'do'
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Ordem_OrcMOTOR: TIntegerField
      FieldName = 'MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."MOTOR"'
      OnValidate = Ordem_OrcMOTORValidate
    end
    object Ordem_OrcNOME_MOTOR: TIBStringField
      FieldName = 'NOME_MOTOR'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_MOTOR"'
      Size = 50
    end
    object Ordem_OrcENVIADA_CAIXA: TIBStringField
      FieldName = 'ENVIADA_CAIXA'
      Origin = '"OFC_ORDEM_SERVICO"."ENVIADA_CAIXA"'
      FixedChar = True
      Size = 1
    end
    object Ordem_OrcKM_ATUAL_FECHAMENTO: TFloatField
      DisplayLabel = 'Km Fechamento'
      FieldName = 'KM_ATUAL_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."KM_ATUAL_FECHAMENTO"'
    end
    object Ordem_OrcPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"OFC_ORDEM_SERVICO"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object Ordem_OrcDATA_FECHAMENTO: TDateTimeField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'DATA_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
    end
    object Ordem_OrcOBS_FECHAMENTO: TBlobField
      DisplayLabel = 'Obs'
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      Size = 8
    end
    object Ordem_OrcFORMA_PAGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PAGTO'
      Origin = '"OFC_ORDEM_SERVICO"."FORMA_PAGTO"'
      OnValidate = Ordem_OrcFORMA_PAGTOValidate
    end
    object Ordem_OrcNOME_FORMA: TIBStringField
      DisplayLabel = 'Nome Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"OFC_ORDEM_SERVICO"."NOME_FORMA"'
      Size = 50
    end
    object Ordem_OrcTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"OFC_ORDEM_SERVICO"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Ordem_OrcLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"OFC_ORDEM_SERVICO"."LOCAL_COBRANCA"'
    end
    object Ordem_OrcTOTAL_PARCELAR: TFloatField
      DisplayLabel = 'Total a Parcelar'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PARCELAR'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Ordem_OrcDiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Ordem_OrcVLR_PARC_LC: TFloatField
      DisplayLabel = 'Parcelado'
      FieldName = 'VLR_PARC_LC'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ordem_OrcAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Ordem_OrcVLR_ENTRADA: TFloatField
      FieldName = 'VLR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."VLR_ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ordem_OrcCREDITOS: TFloatField
      FieldName = 'CREDITOS'
      Origin = '"OFC_ORDEM_SERVICO"."CREDITOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ordem_OrcDEBITOS: TFloatField
      FieldName = 'DEBITOS'
      Origin = '"OFC_ORDEM_SERVICO"."DEBITOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Ordem_OrcVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"OFC_ORDEM_SERVICO_ORC"."VALIDADE"'
    end
    object Ordem_OrcNUMERO_ORDEM: TIntegerField
      FieldName = 'NUMERO_ORDEM'
      Origin = '"OFC_ORDEM_SERVICO_ORC"."NUMERO_ORDEM"'
    end
    object Ordem_OrcNUMERO_VENDA: TIntegerField
      FieldName = 'NUMERO_VENDA'
      Origin = '"OFC_ORDEM_SERVICO_ORC"."NUMERO_VENDA"'
    end
  end
  object Servicos_Itens_Orc: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Servicos_Itens_OrcCalcFields
    OnNewRecord = Servicos_Itens_OrcNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_SERVICO_ORC'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SERVICO = :OLD_SERVICO')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO_SERVICO_ORC'
      
        '  (CNPJ, CODIGO, NOME, QUANTIDADE, SERVICO, UNITARIO, SELECIONAD' +
        'O)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME, :QUANTIDADE, :SERVICO, :UNITARIO, :SEL' +
        'ECIONADO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  SERVICO,'
      '  NOME,'
      '  QUANTIDADE,'
      '  UNITARIO,'
      '  SELECIONADO'
      'from OFC_ORDEM_SERVICO_SERVICO_ORC '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  SERVICO = :SERVICO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME, '
      '          QUANTIDADE, '
      '          SERVICO, '
      '          UNITARIO,'
      '          SELECIONADO '
      'from OFC_ORDEM_SERVICO_SERVICO_ORC'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO_SERVICO_ORC'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SERVICO = :SERVICO,'
      '  UNITARIO = :UNITARIO,'
      '  SELECIONADO = :SELECIONADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SERVICO = :OLD_SERVICO')
    DataSource = DsOrdem_Orc
    Left = 392
    Top = 67
    object Servicos_Itens_OrcCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Servicos_Itens_OrcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO"'
      Required = True
    end
    object Servicos_Itens_OrcNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."NOME"'
      Required = True
      Size = 50
    end
    object Servicos_Itens_OrcQUANTIDADE: TFloatField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
      OnValidate = Servicos_Itens_OrcQUANTIDADEValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Servicos_Itens_OrcSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SERVICO"'
      Required = True
      OnValidate = Servicos_Itens_OrcSERVICOValidate
    end
    object Servicos_Itens_OrcUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'UNITARIO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Servicos_Itens_OrcTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Servicos_Itens_OrcSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SELECIONADO"'
      OnValidate = Servicos_Itens_OrcSELECIONADOValidate
      FixedChar = True
      Size = 1
    end
  end
  object SelServicos_Itens_Orc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = SelServicos_Itens_OrcCalcFields
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME, '
      '          QUANTIDADE, '
      '          SERVICO, '
      '          UNITARIO,'
      '          SELECIONADO '
      'from OFC_ORDEM_SERVICO_SERVICO_ORC'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    Left = 392
    Top = 115
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
    object SelServicos_Itens_OrcCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelServicos_Itens_OrcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO"'
      Required = True
    end
    object SelServicos_Itens_OrcNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."NOME"'
      Required = True
      Size = 50
    end
    object SelServicos_Itens_OrcQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelServicos_Itens_OrcSERVICO: TIntegerField
      DisplayLabel = 'Servi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SERVICO"'
      Required = True
    end
    object SelServicos_Itens_OrcUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'UNITARIO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelServicos_Itens_OrcSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object SelServicos_Itens_OrcTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object SelOrdens_Servicos_Orc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    CODIGO         ,'
      '    DATA           ,'
      '    PESSOA_FJ ,'
      '    NOME          ,'
      '    NATUREZA ,'
      '    MECANICO  ,'
      '    VIAJANTE    ,'
      '    ENTRADA    ,'
      '    HISTORICO  ,'
      '    CHASSI         ,'
      '    TOTAL          ,'
      '    DESC_ACRESC,'
      '    CLIENTE        ,'
      '    FECHADO      ,'
      '    NOME_NATUREZA  ,'
      '    NOME_MECANICO ,'
      '    NOME_VIAJANTE ,'
      '    MOTOR,'
      '    NOME_MOTOR'
      'FROM VER_ORDEM_SERVICO_ORC ( :CNPJ )')
    Left = 392
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelOrdens_Servicos_OrcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_ORDEM_SERVICO"."CODIGO"'
    end
    object SelOrdens_Servicos_OrcDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_ORDEM_SERVICO"."DATA"'
    end
    object SelOrdens_Servicos_OrcPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_ORDEM_SERVICO"."PESSOA_FJ"'
    end
    object SelOrdens_Servicos_OrcNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object SelOrdens_Servicos_OrcNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_ORDEM_SERVICO"."NATUREZA"'
    end
    object SelOrdens_Servicos_OrcMECANICO: TIntegerField
      DisplayLabel = 'Mec'#226'nico'
      FieldName = 'MECANICO'
      Origin = '"VER_ORDEM_SERVICO"."MECANICO"'
    end
    object SelOrdens_Servicos_OrcVIAJANTE: TIntegerField
      DisplayLabel = 'Viajante'
      FieldName = 'VIAJANTE'
      Origin = '"VER_ORDEM_SERVICO"."VIAJANTE"'
    end
    object SelOrdens_Servicos_OrcENTRADA: TDateTimeField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_ORDEM_SERVICO"."ENTRADA"'
    end
    object SelOrdens_Servicos_OrcHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_ORDEM_SERVICO"."HISTORICO"'
      Size = 100
    end
    object SelOrdens_Servicos_OrcCHASSI: TIBStringField
      DisplayLabel = 'Chassi'
      FieldName = 'CHASSI'
      Origin = '"VER_ORDEM_SERVICO"."CHASSI"'
      Size = 30
    end
    object SelOrdens_Servicos_OrcTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_ORDEM_SERVICO"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelOrdens_Servicos_OrcDESC_ACRESC: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_ORDEM_SERVICO"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelOrdens_Servicos_OrcCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"VER_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object SelOrdens_Servicos_OrcFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"VER_ORDEM_SERVICO"."FECHADO"'
      Size = 50
    end
    object SelOrdens_Servicos_OrcNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_ORDEM_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object SelOrdens_Servicos_OrcNOME_MECANICO: TIBStringField
      DisplayLabel = 'Mecanico'
      FieldName = 'NOME_MECANICO'
      Origin = '"VER_ORDEM_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object SelOrdens_Servicos_OrcNOME_VIAJANTE: TIBStringField
      DisplayLabel = 'Viajante'
      FieldName = 'NOME_VIAJANTE'
      Origin = '"VER_ORDEM_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object SelOrdens_Servicos_OrcMOTOR: TIntegerField
      DisplayLabel = 'Motor'
      FieldName = 'MOTOR'
      Origin = '"VER_ORDEM_SERVICO_ORC"."MOTOR"'
    end
    object SelOrdens_Servicos_OrcNOME_MOTOR: TIBStringField
      DisplayLabel = 'Motor'
      FieldName = 'NOME_MOTOR'
      Origin = '"VER_ORDEM_SERVICO_ORC"."NOME_MOTOR"'
      Size = 50
    end
  end
  object DsOrdem_Orc: TDataSource
    AutoEdit = False
    DataSet = Ordem_Orc
    Left = 473
    Top = 19
  end
  object Consulta_Ordem_Orc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_Ordem_OrcCalcFields
    SQL.Strings = (
      'SELECT'
      '    DATA           ,'
      '    PESSOA_FJ ,'
      '    NOME          ,'
      '    NATUREZA ,'
      '    MECANICO  ,'
      '    VIAJANTE    ,'
      '    ENTRADA    ,'
      '    HISTORICO  ,'
      '    CHASSI         ,'
      '    TOTAL          ,'
      '    DESC_ACRESC,'
      '    CLIENTE        ,'
      '    FECHADO      ,'
      '    NOME_NATUREZA  ,'
      '    NOME_MECANICO ,'
      '    NOME_VIAJANTE ,'
      '    VLR_ENTRADA,'
      '    VALIDADE'
      'FROM CONSULTA_ORDEM_SERVICO_ORC ( :CNPJ, :CODIGO )')
    Left = 392
    Top = 211
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
    object Consulta_Ordem_OrcDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."DATA"'
    end
    object Consulta_Ordem_OrcPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CONSULTA_ORDEM_SERVICO"."PESSOA_FJ"'
    end
    object Consulta_Ordem_OrcNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME"'
      Size = 50
    end
    object Consulta_Ordem_OrcNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NATUREZA"'
    end
    object Consulta_Ordem_OrcMECANICO: TIntegerField
      FieldName = 'MECANICO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."MECANICO"'
    end
    object Consulta_Ordem_OrcVIAJANTE: TIntegerField
      FieldName = 'VIAJANTE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."VIAJANTE"'
    end
    object Consulta_Ordem_OrcHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."HISTORICO"'
      Size = 100
    end
    object Consulta_Ordem_OrcCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CHASSI"'
      Size = 30
    end
    object Consulta_Ordem_OrcTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CONSULTA_ORDEM_SERVICO"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_Ordem_OrcDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"CONSULTA_ORDEM_SERVICO"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object Consulta_Ordem_OrcCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object Consulta_Ordem_OrcFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."FECHADO"'
      Size = 50
    end
    object Consulta_Ordem_OrcNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object Consulta_Ordem_OrcNOME_MECANICO: TIBStringField
      FieldName = 'NOME_MECANICO'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object Consulta_Ordem_OrcNOME_VIAJANTE: TIBStringField
      FieldName = 'NOME_VIAJANTE'
      Origin = '"CONSULTA_ORDEM_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object Consulta_Ordem_OrcLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      Calculated = True
    end
    object Consulta_Ordem_OrcENTRADA: TDateField
      FieldName = 'ENTRADA'
      Origin = '"CONSULTA_ORDEM_SERVICO_ORC"."ENTRADA"'
    end
    object Consulta_Ordem_OrcVLR_ENTRADA: TIBBCDField
      FieldName = 'VLR_ENTRADA'
      Origin = '"CONSULTA_ORDEM_SERVICO_ORC"."VLR_ENTRADA"'
      Precision = 18
      Size = 4
    end
    object Consulta_Ordem_OrcVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = '"CONSULTA_ORDEM_SERVICO_ORC"."VALIDADE"'
    end
  end
  object Consulta_Ordem_Itens_Orc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Consulta_Ordem_Itens_OrcCalcFields
    SQL.Strings = (
      'select'
      '  SERVICO ,'
      '  NOME ,'
      '  QUANTIDADE ,'
      '  UNITARIO ,'
      '  SELECIONADO '
      'from CONSULTA_ORDEM_SERV_ITENS_ORC'
      '( :CNPJ, :CODIGO )')
    Left = 392
    Top = 258
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
    object Consulta_Ordem_Itens_OrcSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."SERVICO"'
    end
    object Consulta_Ordem_Itens_OrcNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."NOME"'
      Size = 50
    end
    object Consulta_Ordem_Itens_OrcQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Consulta_Ordem_Itens_OrcUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Ordem_Itens_OrcSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_Ordem_Itens_OrcTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
  end
  object Departamento: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = ServicosBeforeOpen
    BeforePost = ServicosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_DEPARTAMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_DEPARTAMENTO'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_DEPARTAMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from GLO_DEPARTAMENTO'
      'Where CNPJ = :CNPJ '
      'Order by NOME')
    ModifySQL.Strings = (
      'update GLO_DEPARTAMENTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 560
    Top = 19
    object DepartamentoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_DEPARTAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object DepartamentoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_DEPARTAMENTO"."CODIGO"'
      Required = True
    end
    object DepartamentoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_DEPARTAMENTO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Patrimonio: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = ServicosBeforeOpen
    BeforePost = ServicosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_PATRIMONIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_PATRIMONIO'
      '  (CNPJ, CODIGO, NOME, DEPARTAMENTO, PLACA, DESCRICAO, SERIE)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME, :DEPARTAMENTO, :PLACA, :DESCRICAO, :SE' +
        'RIE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  PLACA,'
      '  DESCRICAO,'
      '  DEPARTAMENTO,'
      '  SERIE'
      'from GLO_PATRIMONIO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          DEPARTAMENTO,'
      '          PLACA,'
      '          DESCRICAO,'
      '          SERIE'
      'from GLO_PATRIMONIO'
      'Where CNPJ = :CNPJ '
      'Order by NOME')
    ModifySQL.Strings = (
      'update GLO_PATRIMONIO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  DEPARTAMENTO = :DEPARTAMENTO,'
      '  PLACA = :PLACA,'
      '  DESCRICAO = :DESCRICAO,'
      '  SERIE = :SERIE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 560
    Top = 67
    object PatrimonioCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_DEPARTAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object PatrimonioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_DEPARTAMENTO"."CODIGO"'
      Required = True
    end
    object PatrimonioNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_DEPARTAMENTO"."NOME"'
      Required = True
      Size = 50
    end
    object PatrimonioDEPARTAMENTO: TIntegerField
      DisplayLabel = 'Depto'
      FieldName = 'DEPARTAMENTO'
      Origin = '"GLO_PATRIMONIO"."DEPARTAMENTO"'
      Required = True
    end
    object PatrimonioPLACA: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_PATRIMONIO"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object PatrimonioDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"GLO_PATRIMONIO"."DESCRICAO"'
      Size = 8
    end
    object PatrimonioSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"GLO_PATRIMONIO"."SERIE"'
      Size = 30
    end
  end
  object Saida_Patrimonio: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    OnNewRecord = Saida_PatrimonioNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_PATRIMONIO_SAIDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  HORA_SAIDA = :OLD_HORA_SAIDA')
    InsertSQL.Strings = (
      'insert into GLO_PATRIMONIO_SAIDA'
      
        '  (CNPJ, CODIGO, DATA_CHEGADA, DATA_SAIDA, DESCRICAO, FUNCIONARI' +
        'O, HORA_SAIDA, '
      '   KM_CHEGADA, KM_SAIDA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA_CHEGADA, :DATA_SAIDA, :DESCRICAO, :FUNC' +
        'IONARIO, '
      '   :HORA_SAIDA, :KM_CHEGADA, :KM_SAIDA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  KM_SAIDA,'
      '  KM_CHEGADA,'
      '  DATA_SAIDA,'
      '  DATA_CHEGADA,'
      '  HORA_SAIDA,'
      '  FUNCIONARIO,'
      '  DESCRICAO'
      'from GLO_PATRIMONIO_SAIDA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  HORA_SAIDA = :HORA_SAIDA')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          DATA_CHEGADA, '
      '          DATA_SAIDA, '
      '          DESCRICAO, '
      '          FUNCIONARIO, '
      '          HORA_SAIDA, '
      '          KM_CHEGADA, '
      '          KM_SAIDA '
      'from GLO_PATRIMONIO_SAIDA'
      'Where ((CNPJ = :CNPJ) and ( DATA_CHEGADA IS NULL ))'
      'ORDER BY DATA_SAIDA')
    ModifySQL.Strings = (
      'update GLO_PATRIMONIO_SAIDA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA_CHEGADA = :DATA_CHEGADA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  DESCRICAO = :DESCRICAO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  HORA_SAIDA = :HORA_SAIDA,'
      '  KM_CHEGADA = :KM_CHEGADA,'
      '  KM_SAIDA = :KM_SAIDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  HORA_SAIDA = :OLD_HORA_SAIDA')
    Left = 473
    Top = 115
    object Saida_PatrimonioCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_PATRIMONIO_SAIDA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Saida_PatrimonioCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PATRIMONIO_SAIDA"."CODIGO"'
      Required = True
    end
    object Saida_PatrimonioDATA_CHEGADA: TDateTimeField
      DisplayLabel = 'Dt Chegada'
      FieldName = 'DATA_CHEGADA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."DATA_CHEGADA"'
    end
    object Saida_PatrimonioDATA_SAIDA: TDateTimeField
      DisplayLabel = 'Dt Sa'#237'da'
      FieldName = 'DATA_SAIDA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."DATA_SAIDA"'
    end
    object Saida_PatrimonioDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"GLO_PATRIMONIO_SAIDA"."DESCRICAO"'
      Size = 8
    end
    object Saida_PatrimonioFUNCIONARIO: TIntegerField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNCIONARIO'
      Origin = '"GLO_PATRIMONIO_SAIDA"."FUNCIONARIO"'
      Required = True
    end
    object Saida_PatrimonioHORA_SAIDA: TTimeField
      DisplayLabel = 'Hora Sa'#237'da'
      FieldName = 'HORA_SAIDA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."HORA_SAIDA"'
      Required = True
    end
    object Saida_PatrimonioKM_CHEGADA: TFloatField
      DisplayLabel = 'Km Chegada'
      FieldName = 'KM_CHEGADA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."KM_CHEGADA"'
      DisplayFormat = '###,##0.00'
    end
    object Saida_PatrimonioKM_SAIDA: TFloatField
      DisplayLabel = 'Km Sa'#237'da'
      FieldName = 'KM_SAIDA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."KM_SAIDA"'
      DisplayFormat = '###,##0.00'
    end
  end
  object SelFuncionarios: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select '
      '          PESSOA_FJ,'
      '          CARGO, '
      '          CTPS, '
      '          DT_ADMISSAO, '
      '          SERIE ,'
      '          NOME'
      'from VER_FIN_FUNCIONARIOS'
      '( :CNPJ )'
      'order by NOME')
    Left = 473
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelFuncionariosCARGO: TIBStringField
      DisplayLabel = 'Cargo'
      FieldName = 'CARGO'
      Origin = '"VER_FIN_FUNCIONARIOS"."CARGO"'
      Size = 50
    end
    object SelFuncionariosCTPS: TIBStringField
      DisplayLabel = 'Ctps'
      FieldName = 'CTPS'
      Origin = '"VER_FIN_FUNCIONARIOS"."CTPS"'
      Size = 15
    end
    object SelFuncionariosDT_ADMISSAO: TDateTimeField
      DisplayLabel = 'Admiss'#227'o'
      FieldName = 'DT_ADMISSAO'
      Origin = '"VER_FIN_FUNCIONARIOS"."DT_ADMISSAO"'
    end
    object SelFuncionariosSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"VER_FIN_FUNCIONARIOS"."SERIE"'
      Size = 5
    end
    object SelFuncionariosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_FUNCIONARIOS"."NOME"'
      Size = 50
    end
    object SelFuncionariosPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_FUNCIONARIOS"."PESSOA_FJ"'
    end
  end
  object Chegada_Patrimonio: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    DeleteSQL.Strings = (
      'delete from GLO_PATRIMONIO_SAIDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  HORA_SAIDA = :OLD_HORA_SAIDA')
    InsertSQL.Strings = (
      'insert into GLO_PATRIMONIO_SAIDA'
      
        '  (CNPJ, CODIGO, DATA_CHEGADA, DATA_SAIDA, DESCRICAO, FUNCIONARI' +
        'O, HORA_SAIDA, '
      '   KM_CHEGADA, KM_SAIDA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA_CHEGADA, :DATA_SAIDA, :DESCRICAO, :FUNC' +
        'IONARIO, '
      '   :HORA_SAIDA, :KM_CHEGADA, :KM_SAIDA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  KM_SAIDA,'
      '  KM_CHEGADA,'
      '  DATA_SAIDA,'
      '  DATA_CHEGADA,'
      '  HORA_SAIDA,'
      '  FUNCIONARIO,'
      '  DESCRICAO'
      'from GLO_PATRIMONIO_SAIDA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  HORA_SAIDA = :HORA_SAIDA')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          DATA_CHEGADA, '
      '          DATA_SAIDA, '
      '          DESCRICAO, '
      '          FUNCIONARIO, '
      '          HORA_SAIDA, '
      '          KM_CHEGADA, '
      '          KM_SAIDA '
      'from GLO_PATRIMONIO_SAIDA'
      'Where ((CNPJ = :CNPJ) and ( DATA_CHEGADA IS NULL ))'
      'ORDER BY DATA_SAIDA')
    ModifySQL.Strings = (
      'update GLO_PATRIMONIO_SAIDA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA_CHEGADA = :DATA_CHEGADA,'
      '  DATA_SAIDA = :DATA_SAIDA,'
      '  DESCRICAO = :DESCRICAO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  HORA_SAIDA = :HORA_SAIDA,'
      '  KM_CHEGADA = :KM_CHEGADA,'
      '  KM_SAIDA = :KM_SAIDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  HORA_SAIDA = :OLD_HORA_SAIDA')
    Left = 473
    Top = 211
    object Chegada_PatrimonioCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_PATRIMONIO_SAIDA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Chegada_PatrimonioCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PATRIMONIO_SAIDA"."CODIGO"'
      Required = True
    end
    object Chegada_PatrimonioDATA_CHEGADA: TDateTimeField
      DisplayLabel = 'Chegada'
      FieldName = 'DATA_CHEGADA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."DATA_CHEGADA"'
    end
    object Chegada_PatrimonioDATA_SAIDA: TDateTimeField
      DisplayLabel = 'Data Sa'#237'da'
      FieldName = 'DATA_SAIDA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."DATA_SAIDA"'
    end
    object Chegada_PatrimonioDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"GLO_PATRIMONIO_SAIDA"."DESCRICAO"'
      Size = 8
    end
    object Chegada_PatrimonioFUNCIONARIO: TIntegerField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNCIONARIO'
      Origin = '"GLO_PATRIMONIO_SAIDA"."FUNCIONARIO"'
      Required = True
    end
    object Chegada_PatrimonioHORA_SAIDA: TTimeField
      DisplayLabel = 'Hora Sa'#237'da'
      FieldName = 'HORA_SAIDA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."HORA_SAIDA"'
      Required = True
    end
    object Chegada_PatrimonioKM_CHEGADA: TFloatField
      DisplayLabel = 'Km Chegada'
      FieldName = 'KM_CHEGADA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."KM_CHEGADA"'
      DisplayFormat = '###,##0.00'
    end
    object Chegada_PatrimonioKM_SAIDA: TFloatField
      DisplayLabel = 'Km Sa'#237'da'
      FieldName = 'KM_SAIDA'
      Origin = '"GLO_PATRIMONIO_SAIDA"."KM_SAIDA"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Pecas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = ServicosBeforeOpen
    BeforePost = ServicosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_PECAS_PATRIMONIO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_PECAS_PATRIMONIO'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from GLO_PECAS_PATRIMONIO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from GLO_PECAS_PATRIMONIO'
      'Where CNPJ = :CNPJ '
      'Order by NOME')
    ModifySQL.Strings = (
      'update GLO_PECAS_PATRIMONIO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 473
    Top = 258
    object PecasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_PECAS_PATRIMONIO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object PecasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PECAS_PATRIMONIO"."CODIGO"'
      Required = True
    end
    object PecasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_PECAS_PATRIMONIO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Garantias_Patrimonio: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    OnNewRecord = Garantias_PatrimonioNewRecord
    DeleteSQL.Strings = (
      'delete from GLO_PATRIMONIO_GARANTIAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  DATA = :OLD_DATA and'
      '  PECA = :OLD_PECA')
    InsertSQL.Strings = (
      'insert into GLO_PATRIMONIO_GARANTIAS'
      
        '  (CNPJ, CODIGO, DATA, DESCRICAO, FUNCIONARIO, NOME, PECA, SERIE' +
        ', GARANTIA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DESCRICAO, :FUNCIONARIO, :NOME, :PECA' +
        ', :SERIE, '
      '   :GARANTIA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  SERIE,'
      '  DATA,'
      '  PECA,'
      '  FUNCIONARIO,'
      '  DESCRICAO,'
      '  GARANTIA'
      'from GLO_PATRIMONIO_GARANTIAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  DATA = :DATA and'
      '  PECA = :PECA')
    SelectSQL.Strings = (
      'select '
      '         CNPJ, '
      '         CODIGO, '
      '         DATA, '
      '         DESCRICAO, '
      '         FUNCIONARIO, '
      '         NOME, '
      '         PECA, '
      '         SERIE,'
      '         GARANTIA'
      'from GLO_PATRIMONIO_GARANTIAS'
      'Where (CNPJ = :CNPJ) '
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update GLO_PATRIMONIO_GARANTIAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESCRICAO = :DESCRICAO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  NOME = :NOME,'
      '  PECA = :PECA,'
      '  SERIE = :SERIE,'
      '  GARANTIA = :GARANTIA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  DATA = :OLD_DATA and'
      '  PECA = :OLD_PECA')
    Left = 560
    Top = 307
    object Garantias_PatrimonioCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Garantias_PatrimonioCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."CODIGO"'
      Required = True
    end
    object Garantias_PatrimonioDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."DATA"'
    end
    object Garantias_PatrimonioDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."DESCRICAO"'
      Size = 8
    end
    object Garantias_PatrimonioFUNCIONARIO: TIntegerField
      DisplayLabel = 'Funcion'#225'rio'
      FieldName = 'FUNCIONARIO'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."FUNCIONARIO"'
      Required = True
    end
    object Garantias_PatrimonioNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."NOME"'
      Required = True
      Size = 50
    end
    object Garantias_PatrimonioPECA: TIntegerField
      DisplayLabel = 'Pe'#231'a'
      FieldName = 'PECA'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."PECA"'
      Required = True
    end
    object Garantias_PatrimonioSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."SERIE"'
      Size = 30
    end
    object Garantias_PatrimonioGARANTIA: TIntegerField
      DisplayLabel = 'Garantia'
      FieldName = 'GARANTIA'
      Origin = '"GLO_PATRIMONIO_GARANTIAS"."GARANTIA"'
    end
  end
  object Declaracao_venda: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = ServicosBeforeOpen
    BeforePost = ServicosBeforePost
    DeleteSQL.Strings = (
      'delete from GLO_DECLARACAO_VENDA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into GLO_DECLARACAO_VENDA'
      '  (CNPJ, CODIGO, DATA, DESCRICAO, PESSOA_FJ, SERIE, VALOR)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DESCRICAO, :PESSOA_FJ, :SERIE, :VALOR' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PESSOA_FJ,'
      '  DATA,'
      '  VALOR,'
      '  SERIE,'
      '  DESCRICAO'
      'from GLO_DECLARACAO_VENDA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          DATA, '
      '          DESCRICAO, '
      '          PESSOA_FJ, '
      '          SERIE, '
      '          VALOR '
      'from GLO_DECLARACAO_VENDA'
      'Where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update GLO_DECLARACAO_VENDA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESCRICAO = :DESCRICAO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SERIE = :SERIE,'
      '  VALOR = :VALOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 560
    Top = 354
    object Declaracao_vendaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_DECLARACAO_VENDA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Declaracao_vendaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_DECLARACAO_VENDA"."CODIGO"'
      Required = True
    end
    object Declaracao_vendaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"GLO_DECLARACAO_VENDA"."DATA"'
    end
    object Declaracao_vendaDESCRICAO: TIBStringField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"GLO_DECLARACAO_VENDA"."DESCRICAO"'
      Size = 50
    end
    object Declaracao_vendaPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_DECLARACAO_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object Declaracao_vendaSERIE: TIBStringField
      DisplayLabel = 'S'#233'rie'
      FieldName = 'SERIE'
      Origin = '"GLO_DECLARACAO_VENDA"."SERIE"'
    end
    object Declaracao_vendaVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"GLO_DECLARACAO_VENDA"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
  end
  object Garantias: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = OrdemBeforeOpen
    BeforePost = ServicosBeforePost
    OnCalcFields = GarantiasCalcFields
    OnNewRecord = GarantiasNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_GARANTIAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_GARANTIAS'
      
        '  (CNPJ, CODIGO, DATA, DESC_ACRESC, DESC_ACRESC_2, FECHADO, FORM' +
        'A_PGTO, '
      
        '   NOME_CONSUMIDOR, OBSERVACAO, PESSOA_FJ, TOTAL, USUARIO, DATA_' +
        'CAIXA, '
      
        '   VENDEDOR, NOME, VALIDADE, TOTAL_2, CLIENTE, NOME_VENDEDOR, EN' +
        'VIADA_CX, '
      
        '   NOME_FORMA, ENTRADA, TIPO_DOCTO, LOCAL_COBRANCA, VLR_PARC_LC,' +
        ' PGTO_AVISTA, '
      '   CANCELADA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DESC_ACRESC, :DESC_ACRESC_2, :FECHADO' +
        ', :FORMA_PGTO, '
      
        '   :NOME_CONSUMIDOR, :OBSERVACAO, :PESSOA_FJ, :TOTAL, :USUARIO, ' +
        ':DATA_CAIXA, '
      
        '   :VENDEDOR, :NOME, :VALIDADE, :TOTAL_2, :CLIENTE, :NOME_VENDED' +
        'OR, :ENVIADA_CX, '
      
        '   :NOME_FORMA, :ENTRADA, :TIPO_DOCTO, :LOCAL_COBRANCA, :VLR_PAR' +
        'C_LC, :PGTO_AVISTA, '
      '   :CANCELADA)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  VENDEDOR,'
      '  FORMA_PGTO,'
      '  OBSERVACAO,'
      '  NOME_CONSUMIDOR,'
      '  TOTAL,'
      '  FECHADO,'
      '  DESC_ACRESC,'
      '  PESO,'
      '  VOLUME,'
      '  NOME,'
      '  VALIDADE,'
      '  TOTAL_2,'
      '  DESC_ACRESC_2,'
      '  CLIENTE,'
      '  ENVIADA_CX,'
      '  DATA_CAIXA,'
      '  NOME_VENDEDOR,'
      '  NOME_FORMA,'
      '  ENTRADA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  PGTO_AVISTA,'
      '  CONTA_CAIXA,'
      '  DINHEIRO,'
      '  CARTAO,'
      '  CHEQUE,'
      '  TICKET,'
      '  CANCELADA,'
      '  DATA_CANCELAMENTO,'
      '  TURNO'
      'from FAT_GARANTIAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      '      CNPJ, '
      '      CODIGO, '
      '      DATA, '
      '      DESC_ACRESC, '
      '      DESC_ACRESC_2, '
      '      FECHADO, '
      '      FORMA_PGTO, '
      '      NOME_CONSUMIDOR, '
      '      OBSERVACAO,       '
      '      PESSOA_FJ, '
      '      TOTAL, '
      '      USUARIO,       '
      '      DATA_CAIXA,'
      '      VENDEDOR,'
      '      NOME,'
      '      VALIDADE,'
      '      TOTAL_2,'
      '      CLIENTE,'
      '      NOME_VENDEDOR,'
      '      ENVIADA_CX,'
      '      NOME_FORMA,'
      '      ENTRADA,'
      '      TIPO_DOCTO,'
      '      LOCAL_COBRANCA,'
      '      VLR_PARC_LC,'
      '      PGTO_AVISTA,'
      '      CANCELADA'
      'from FAT_GARANTIAS'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO'
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
    ModifySQL.Strings = (
      'update FAT_GARANTIAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  DESC_ACRESC_2 = :DESC_ACRESC_2,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TOTAL = :TOTAL,'
      '  USUARIO = :USUARIO,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  VENDEDOR = :VENDEDOR,'
      '  NOME = :NOME,'
      '  VALIDADE = :VALIDADE,'
      '  TOTAL_2 = :TOTAL_2,'
      '  CLIENTE = :CLIENTE,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  ENTRADA = :ENTRADA,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  PGTO_AVISTA = :PGTO_AVISTA,'
      '  CANCELADA = :CANCELADA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 8
    Top = 402
    object GarantiasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_ORCAMENTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object GarantiasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_ORCAMENTOS"."CODIGO"'
      Required = True
    end
    object GarantiasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_ORCAMENTOS"."DATA"'
    end
    object GarantiasFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma Pagto'
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_ORCAMENTOS"."FORMA_PGTO"'
      OnValidate = GarantiasFORMA_PGTOValidate
    end
    object GarantiasNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_ORCAMENTOS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object GarantiasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_ORCAMENTOS"."OBSERVACAO"'
      Size = 80
    end
    object GarantiasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_ORCAMENTOS"."PESSOA_FJ"'
      Required = True
      OnValidate = GarantiasPESSOA_FJValidate
    end
    object GarantiasUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_ORCAMENTOS"."USUARIO"'
      Required = True
    end
    object GarantiasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_ORCAMENTOS"."VENDEDOR"'
      Required = True
      OnValidate = GarantiasVENDEDORValidate
    end
    object GarantiasDESC_ACRESC: TFloatField
      DisplayLabel = 'Desc/Acresc Ent'
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_ORCAMENTOS"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
    end
    object GarantiasTOTAL: TFloatField
      DisplayLabel = 'Total Ent'
      FieldName = 'TOTAL'
      Origin = '"FAT_ORCAMENTOS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object GarantiasFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"FAT_ORCAMENTOS"."FECHADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object GarantiasGERAL: TFloatField
      DisplayLabel = 'Geral Ent'
      FieldKind = fkCalculated
      FieldName = 'GERAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object GarantiasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_ORCAMENTOS"."NOME"'
      Size = 50
    end
    object GarantiasVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"FAT_ORCAMENTOS"."VALIDADE"'
    end
    object GarantiasTOTAL_2: TFloatField
      DisplayLabel = 'Total Sai'
      FieldName = 'TOTAL_2'
      Origin = '"FAT_ORCAMENTOS"."TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object GarantiasGeral2: TFloatField
      DisplayLabel = 'Geral Sai'
      FieldKind = fkCalculated
      FieldName = 'Geral2'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object GarantiasCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"FAT_ORCAMENTOS"."CLIENTE"'
      Size = 30
    end
    object GarantiasDESC_ACRESC_2: TFloatField
      DisplayLabel = 'Desc/Acresc Sai'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"FAT_ORCAMENTOS"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object GarantiasDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_TROCAS"."DATA_CAIXA"'
    end
    object GarantiasLiquido: TFloatField
      DisplayLabel = 'L'#237'quido'
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object GarantiasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object GarantiasENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object GarantiasNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object GarantiasENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"FAT_TROCAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object GarantiasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_TROCAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object GarantiasLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local Cobran'#231'a'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_TROCAS"."LOCAL_COBRANCA"'
    end
    object GarantiasVLR_PARC_LC: TFloatField
      DisplayLabel = 'Vlr Parcelas'
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_TROCAS"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object GarantiasTotal_Parcelar: TFloatField
      DisplayLabel = 'Total Parcelar'
      FieldKind = fkCalculated
      FieldName = 'Total_Parcelar'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object GarantiasDiferenca: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object GarantiasAVista: TFloatField
      DisplayLabel = #193' Vista'
      FieldKind = fkCalculated
      FieldName = 'AVista'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object GarantiasPGTO_AVISTA: TIBStringField
      FieldName = 'PGTO_AVISTA'
      Origin = '"FAT_TROCAS"."PGTO_AVISTA"'
      FixedChar = True
      Size = 1
    end
    object GarantiasCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"FAT_TROCAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
  end
  object SelGarantias: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      '    PESSOA_FJ ,'
      '    CODIGO ,'
      '    DATA ,'
      '    VALIDADE ,'
      '    TOTAL,'
      '    FECHADO ,'
      '    OBSERVACAO ,'
      '    NOME_RAZAO,'
      '    NOME_FORMA ,'
      '    NOME_VENDEDOR,'
      '    VENDEDOR ,'
      '    VLR_TOTAL,'
      '    DESC_ACRESC,'
      '    DESC_ACRESC_2,'
      '    CLIENTE,'
      '    PESO,'
      '    VOLUME,'
      '    FORMA '
      'FROM VER_FAT_GARANTIAS'
      '(:CNPJ, :ORCAMENTO)'
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
    Left = 96
    Top = 402
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ORCAMENTO'
        ParamType = ptUnknown
      end>
    object SelGarantiasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_TROCAS"."PESSOA_FJ"'
    end
    object SelGarantiasCODIGO: TIntegerField
      DisplayLabel = 'Troca'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_TROCAS"."CODIGO"'
    end
    object SelGarantiasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_TROCAS"."DATA"'
    end
    object SelGarantiasVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"VER_FAT_TROCAS"."VALIDADE"'
    end
    object SelGarantiasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_TROCAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelGarantiasFECHADO: TIBStringField
      DisplayLabel = 'Fechado'
      FieldName = 'FECHADO'
      Origin = '"VER_FAT_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object SelGarantiasOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object SelGarantiasNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FAT_TROCAS"."NOME_RAZAO"'
      Size = 50
    end
    object SelGarantiasNOME_FORMA: TIBStringField
      DisplayLabel = 'Forma'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object SelGarantiasNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelGarantiasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_TROCAS"."VENDEDOR"'
    end
    object SelGarantiasVLR_TOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'VLR_TOTAL'
      Origin = '"VER_FAT_TROCAS"."VLR_TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelGarantiasDESC_ACRESC: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelGarantiasDESC_ACRESC_2: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_FAT_TROCAS"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelGarantiasCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"VER_FAT_TROCAS"."CLIENTE"'
      Size = 30
    end
    object SelGarantiasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_TROCAS"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelGarantiasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_TROCAS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelGarantiasFORMA: TIntegerField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA'
      Origin = '"VER_FAT_TROCAS"."FORMA"'
    end
  end
  object Garantias_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    OnCalcFields = Garantias_ItensCalcFields
    OnNewRecord = Garantias_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_GARANTIAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into FAT_GARANTIAS_ITENS'
      
        '  (CNPJ, CODIGO, DESCONTO, ICM, ICM_SUBS, IPI, NOME_PRODUTO, PES' +
        'O, PORC_DESC, '
      
        '   PRC_CUSTO, PRC_UNIT_ORIGINAL, PRC_UNITARIO, PRODUTO, QUANTIDA' +
        'DE, SEQUENCIA, '
      '   UNIDADE, VOLUME, SUBUNIDADE, MARCA, TIPO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DESCONTO, :ICM, :ICM_SUBS, :IPI, :NOME_PRODU' +
        'TO, :PESO, '
      
        '   :PORC_DESC, :PRC_CUSTO, :PRC_UNIT_ORIGINAL, :PRC_UNITARIO, :P' +
        'RODUTO, '
      
        '   :QUANTIDADE, :SEQUENCIA, :UNIDADE, :VOLUME, :SUBUNIDADE, :MAR' +
        'CA, :TIPO)')
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
      '  SUBUNIDADE,'
      '  MARCA,'
      '  TIPO'
      'from FAT_GARANTIAS_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select  CNPJ, '
      '           CODIGO, '
      '           DESCONTO, '
      '           ICM, '
      '           ICM_SUBS, '
      '           IPI, '
      '           NOME_PRODUTO, '
      '           PESO, '
      '           PORC_DESC, '
      '           PRC_CUSTO, '
      '           PRC_UNIT_ORIGINAL, '
      '           PRC_UNITARIO, '
      '           PRODUTO, '
      '           QUANTIDADE, '
      '           SEQUENCIA, '
      '           UNIDADE, '
      '           VOLUME,'
      '           SUBUNIDADE,'
      '           MARCA,'
      '           TIPO '
      'from FAT_GARANTIAS_ITENS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_GARANTIAS_ITENS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCONTO = :DESCONTO,'
      '  ICM = :ICM,'
      '  ICM_SUBS = :ICM_SUBS,'
      '  IPI = :IPI,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  PESO = :PESO,'
      '  PORC_DESC = :PORC_DESC,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  PRC_UNIT_ORIGINAL = :PRC_UNIT_ORIGINAL,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  UNIDADE = :UNIDADE,'
      '  VOLUME = :VOLUME,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  MARCA = :MARCA,'
      '  TIPO = :TIPO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = DsGarantias
    Left = 8
    Top = 458
    object Garantias_ItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Garantias_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object Garantias_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      OnValidate = Garantias_ItensPRODUTOValidate
      Size = 15
    end
    object Garantias_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Garantias_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensICM: TFloatField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensICM_SUBS: TFloatField
      DisplayLabel = 'Subst'
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_VENDAS_ITENS"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensIPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS_ITENS"."IPI"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
      OnValidate = Garantias_ItensDESCONTOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensPORC_DESC: TFloatField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
      OnValidate = Garantias_ItensDESCONTOValidate
      DisplayFormat = '% ##0.00'
    end
    object Garantias_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Garantias_ItensPRC_UNIT_ORIGINAL: TFloatField
      DisplayLabel = 'Unit. Orig'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Garantias_ItensPeso_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Peso_Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Garantias_ItensVolume_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Volume_Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Garantias_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_ORCAMENTOS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Garantias_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_ORCAMENTOS_ITENS"."SUBUNIDADE"'
    end
    object Garantias_ItensMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"FAT_ORCAMENTOS_ITENS"."MARCA"'
      Size = 30
    end
    object Garantias_ItensTIPO: TIBStringField
      DisplayLabel = 'E/S'
      FieldName = 'TIPO'
      Origin = '"FAT_TROCAS_ITENS"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object DsGarantias: TDataSource
    AutoEdit = False
    DataSet = Garantias
    Left = 96
    Top = 458
  end
  object Garantias_Parc: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = OrdemBeforeOpen
    OnNewRecord = Garantias_ParcNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_GARANTIAS_PARCELAMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    InsertSQL.Strings = (
      'insert into FAT_GARANTIAS_PARCELAMENTO'
      '  (CNPJ, BOLETO, CODIGO, PARCELA, VALOR, VENCTO)'
      'values'
      '  (:CNPJ, :BOLETO, :CODIGO, :PARCELA, :VALOR, :VENCTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  VENCTO,'
      '  PARCELA,'
      '  VALOR,'
      '  BOLETO'
      'from FAT_GARANTIAS_PARCELAMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  VENCTO = :VENCTO')
    SelectSQL.Strings = (
      'select CNPJ,'
      '          BOLETO,  '
      '          CODIGO, '
      '          PARCELA, '
      '          VALOR, '
      '          VENCTO '
      'from FAT_GARANTIAS_PARCELAMENTO'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_GARANTIAS_PARCELAMENTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  BOLETO = :BOLETO,'
      '  CODIGO = :CODIGO,'
      '  PARCELA = :PARCELA,'
      '  VALOR = :VALOR,'
      '  VENCTO = :VENCTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  VENCTO = :OLD_VENCTO')
    DataSource = DsGarantias
    Left = 192
    Top = 354
    object Garantias_ParcCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Garantias_ParcCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Garantias_ParcVENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCTO'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VENCTO"'
      EditMask = '!99/99/9999;1; '
    end
    object Garantias_ParcPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."PARCELA"'
      Size = 6
    end
    object Garantias_ParcVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FAT_VENDAS_PARCELAMENTO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Garantias_ParcBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."BOLETO"'
    end
  end
  object SelVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'Select * From FAT_VENDEDOR'
      'Where Cnpj = :CNPJ AND ATIVO = '#39'S'#39
      'Order By Nome')
    Left = 192
    Top = 402
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVendedorCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelVendedorCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object SelVendedorNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelVendedorCOM_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorCOM_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object SelVendedorSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
  end
  object FaturaGarantias: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = OrdemBeforeOpen
    BeforePost = ServicosBeforePost
    OnCalcFields = FaturaGarantiasCalcFields
    DeleteSQL.Strings = (
      'delete from FAT_TROCAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_TROCAS'
      
        '  (CARTAO, CHEQUE, CLIENTE, CNPJ, CODIGO, CONTA_CAIXA, DATA, DAT' +
        'A_CAIXA, '
      
        '   DESC_ACRESC, DESC_ACRESC_2, DINHEIRO, ENTRADA, ENVIADA_CX, FE' +
        'CHADO, '
      
        '   FORMA_PGTO, LOCAL_COBRANCA, NOME, NOME_CONSUMIDOR, NOME_FORMA' +
        ', NOME_VENDEDOR, '
      
        '   OBSERVACAO, PESO, PESSOA_FJ, PGTO_AVISTA, TICKET, TIPO_DOCTO,' +
        ' TOTAL, '
      '   TOTAL_2, USUARIO, VALIDADE, VENDEDOR, VLR_PARC_LC, VOLUME)'
      'values'
      
        '  (:CARTAO, :CHEQUE, :CLIENTE, :CNPJ, :CODIGO, :CONTA_CAIXA, :DA' +
        'TA, :DATA_CAIXA, '
      
        '   :DESC_ACRESC, :DESC_ACRESC_2, :DINHEIRO, :ENTRADA, :ENVIADA_C' +
        'X, :FECHADO, '
      
        '   :FORMA_PGTO, :LOCAL_COBRANCA, :NOME, :NOME_CONSUMIDOR, :NOME_' +
        'FORMA, '
      
        '   :NOME_VENDEDOR, :OBSERVACAO, :PESO, :PESSOA_FJ, :PGTO_AVISTA,' +
        ' :TICKET, '
      
        '   :TIPO_DOCTO, :TOTAL, :TOTAL_2, :USUARIO, :VALIDADE, :VENDEDOR' +
        ', :VLR_PARC_LC, '
      '   :VOLUME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PESSOA_FJ,'
      '  USUARIO,'
      '  VENDEDOR,'
      '  FORMA_PGTO,'
      '  OBSERVACAO,'
      '  NOME_CONSUMIDOR,'
      '  TOTAL,'
      '  FECHADO,'
      '  DESC_ACRESC,'
      '  PESO,'
      '  VOLUME,'
      '  NOME,'
      '  VALIDADE,'
      '  TOTAL_2,'
      '  DESC_ACRESC_2,'
      '  CLIENTE,'
      '  ENVIADA_CX,'
      '  DATA_CAIXA,'
      '  NOME_VENDEDOR,'
      '  NOME_FORMA,'
      '  ENTRADA,'
      '  TIPO_DOCTO,'
      '  LOCAL_COBRANCA,'
      '  VLR_PARC_LC,'
      '  PGTO_AVISTA,'
      '  CONTA_CAIXA,'
      '  DINHEIRO,'
      '  CARTAO,'
      '  CHEQUE,'
      '  TICKET'
      'from FAT_TROCAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      '          CARTAO, '
      '          CHEQUE, '
      '          CLIENTE, '
      '          CNPJ, '
      '          CODIGO, '
      '          CONTA_CAIXA, '
      '          DATA, '
      '          DATA_CAIXA, '
      '          DESC_ACRESC, '
      '          DESC_ACRESC_2, '
      '          DINHEIRO, '
      '          ENTRADA, '
      '          ENVIADA_CX, '
      '          FECHADO, '
      '          FORMA_PGTO, '
      '          LOCAL_COBRANCA, '
      '          NOME, '
      '          NOME_CONSUMIDOR, '
      '          NOME_FORMA, '
      '          NOME_VENDEDOR, '
      '          OBSERVACAO, '
      '          PESO, '
      '          PESSOA_FJ, '
      '          PGTO_AVISTA, '
      '          TICKET, '
      '          TIPO_DOCTO, '
      '          TOTAL, '
      '          TOTAL_2, '
      '          USUARIO, '
      '          VALIDADE, '
      '          VENDEDOR, '
      '          VLR_PARC_LC, '
      '          VOLUME'
      'from FAT_GARANTIAS'
      'WHERE CNPJ = :CNPJ AND'
      '               CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_TROCAS'
      'set'
      '  CARTAO = :CARTAO,'
      '  CHEQUE = :CHEQUE,'
      '  CLIENTE = :CLIENTE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONTA_CAIXA = :CONTA_CAIXA,'
      '  DATA = :DATA,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  DESC_ACRESC = :DESC_ACRESC,'
      '  DESC_ACRESC_2 = :DESC_ACRESC_2,'
      '  DINHEIRO = :DINHEIRO,'
      '  ENTRADA = :ENTRADA,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  FECHADO = :FECHADO,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  NOME = :NOME,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PESO = :PESO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PGTO_AVISTA = :PGTO_AVISTA,'
      '  TICKET = :TICKET,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TOTAL = :TOTAL,'
      '  TOTAL_2 = :TOTAL_2,'
      '  USUARIO = :USUARIO,'
      '  VALIDADE = :VALIDADE,'
      '  VENDEDOR = :VENDEDOR,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 288
    Top = 354
    object FaturaGarantiasCARTAO: TFloatField
      FieldName = 'CARTAO'
      Origin = '"FAT_TROCAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasCHEQUE: TFloatField
      FieldName = 'CHEQUE'
      Origin = '"FAT_TROCAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"FAT_TROCAS"."CLIENTE"'
      Size = 30
    end
    object FaturaGarantiasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_TROCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FaturaGarantiasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_TROCAS"."CODIGO"'
      Required = True
    end
    object FaturaGarantiasCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"FAT_TROCAS"."CONTA_CAIXA"'
    end
    object FaturaGarantiasDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FAT_TROCAS"."DATA"'
    end
    object FaturaGarantiasDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_TROCAS"."DATA_CAIXA"'
    end
    object FaturaGarantiasDESC_ACRESC: TFloatField
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_TROCAS"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasDESC_ACRESC_2: TFloatField
      FieldName = 'DESC_ACRESC_2'
      Origin = '"FAT_TROCAS"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      Origin = '"FAT_TROCAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasENTRADA: TFloatField
      FieldName = 'ENTRADA'
      Origin = '"FAT_TROCAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_TROCAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object FaturaGarantiasFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"FAT_TROCAS"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object FaturaGarantiasFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_TROCAS"."FORMA_PGTO"'
    end
    object FaturaGarantiasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_TROCAS"."LOCAL_COBRANCA"'
    end
    object FaturaGarantiasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_TROCAS"."NOME"'
      Size = 50
    end
    object FaturaGarantiasNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_TROCAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object FaturaGarantiasNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_TROCAS"."NOME_FORMA"'
      Size = 50
    end
    object FaturaGarantiasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_TROCAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object FaturaGarantiasOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_TROCAS"."OBSERVACAO"'
      Size = 80
    end
    object FaturaGarantiasPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_TROCAS"."PESO"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_TROCAS"."PESSOA_FJ"'
      Required = True
    end
    object FaturaGarantiasPGTO_AVISTA: TIBStringField
      FieldName = 'PGTO_AVISTA'
      Origin = '"FAT_TROCAS"."PGTO_AVISTA"'
      FixedChar = True
      Size = 1
    end
    object FaturaGarantiasTICKET: TFloatField
      FieldName = 'TICKET'
      Origin = '"FAT_TROCAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_TROCAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object FaturaGarantiasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_TROCAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasTOTAL_2: TFloatField
      FieldName = 'TOTAL_2'
      Origin = '"FAT_TROCAS"."TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FAT_TROCAS"."USUARIO"'
      Required = True
    end
    object FaturaGarantiasVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"FAT_TROCAS"."VALIDADE"'
    end
    object FaturaGarantiasVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_TROCAS"."VENDEDOR"'
      Required = True
    end
    object FaturaGarantiasVLR_PARC_LC: TFloatField
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_TROCAS"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_TROCAS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturaGarantiasDiferenca: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Diferenca'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaGarantiastotal_parcelar: TFloatField
      FieldKind = fkCalculated
      FieldName = 'total_parcelar'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaGarantiasAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaGarantiasTOTAL_GERAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_GERAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaGarantiasTOTAL_GERAL2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_GERAL2'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturaGarantiasLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Parametros: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               VENDEDOR, '
      '               DESCONTOS, '
      '               CUSTO_VARIAVEL, '
      '               PROPAGANDA '
      'FROM SIS_EMPRESAS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ')
    Left = 288
    Top = 402
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object ParametrosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ParametrosVENDEDOR: TFloatField
      FieldName = 'VENDEDOR'
      Origin = '"SIS_EMPRESAS"."VENDEDOR"'
      DisplayFormat = '#,##0.00'
    end
    object ParametrosDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"SIS_EMPRESAS"."DESCONTOS"'
      DisplayFormat = '#,##0.00'
    end
    object ParametrosCUSTO_VARIAVEL: TFloatField
      FieldName = 'CUSTO_VARIAVEL'
      Origin = '"SIS_EMPRESAS"."CUSTO_VARIAVEL"'
      DisplayFormat = '#,##0.00'
    end
    object ParametrosPROPAGANDA: TFloatField
      FieldName = 'PROPAGANDA'
      Origin = '"SIS_EMPRESAS"."PROPAGANDA"'
      DisplayFormat = '#,##0.00'
    end
  end
  object SelUnidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               SIGLA, '
      '               NOME, '
      '               UNIDADES '
      'FROM EST_UNIDADES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ, SIGLA')
    Left = 392
    Top = 307
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelUnidadeCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_UNIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelUnidadeSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"EST_UNIDADES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SelUnidadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_UNIDADES"."NOME"'
      Required = True
      Size = 50
    end
    object SelUnidadeUNIDADES: TFloatField
      FieldName = 'UNIDADES'
      Origin = '"EST_UNIDADES"."UNIDADES"'
    end
  end
  object Valida_Produto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT   '
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
      '             SERVICO'
      'FROM VALIDA_PRODUTO (:CNPJ, :PRODUTO,:VENDEDOR)')
    Left = 392
    Top = 354
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
    object Valida_ProdutoIPI: TIntegerField
      FieldName = 'IPI'
      Origin = '"VALIDA_PRODUTO"."IPI"'
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
  end
  object Consulta_Garantia_Parc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select BOLETO, '
      '          CNPJ, '
      '          CODIGO, '
      '          PARCELA, '
      '          VALOR, '
      '          VENCTO '
      'from FAT_GARANTIAS_PARCELAMENTO'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO')
    Left = 288
    Top = 458
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
    object Consulta_Garantia_ParcBOLETO: TIntegerField
      FieldName = 'BOLETO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."BOLETO"'
    end
    object Consulta_Garantia_ParcCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Consulta_Garantia_ParcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Consulta_Garantia_ParcPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."PARCELA"'
      Size = 6
    end
    object Consulta_Garantia_ParcVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."VALOR"'
    end
    object Consulta_Garantia_ParcVENCTO: TDateTimeField
      FieldName = 'VENCTO'
      Origin = '"FAT_TROCAS_PARCELAMENTO"."VENCTO"'
    end
  end
  object Consulta_Garantia: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    PESSOA_FJ,'
      '    NOME,'
      '    CODIGO,'
      '    DATA,'
      '    TOTAL,'
      '    FECHADO,'
      '    VENDEDOR,'
      '    USUARIO,'
      '    NOME_CONSUMIDOR,'
      '    OBSERVACAO,'
      '    FORMA_PGTO,'
      '    CARTAO,'
      '    CHEQUE,'
      '    DESC_ACRESC,'
      '    DESC_ACRESC_2,'
      '    DINHEIRO,'
      '    ENTRADA,'
      '    TICKET,'
      '    LOCAL_COBRANCA,'
      '    TIPO_DOCTO,'
      '    NOME_VENDEDOR,'
      '    VLR_TOTAL,'
      '    NOME_FORMA ,'
      '    NOME_DOCUMENTO,'
      '    NOME_LOCAL ,'
      '    TOTAL_2'
      'FROM CONSULTA_GARANTIA ( :CNPJ, :CODIGO )')
    Left = 192
    Top = 458
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
    object Consulta_GarantiaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CONSULTA_TROCA"."PESSOA_FJ"'
    end
    object Consulta_GarantiaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_TROCA"."NOME"'
      Size = 50
    end
    object Consulta_GarantiaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CONSULTA_TROCA"."CODIGO"'
    end
    object Consulta_GarantiaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CONSULTA_TROCA"."DATA"'
    end
    object Consulta_GarantiaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"CONSULTA_TROCA"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"CONSULTA_TROCA"."FECHADO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_GarantiaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"CONSULTA_TROCA"."VENDEDOR"'
    end
    object Consulta_GarantiaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"CONSULTA_TROCA"."USUARIO"'
    end
    object Consulta_GarantiaNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"CONSULTA_TROCA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Consulta_GarantiaOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"CONSULTA_TROCA"."OBSERVACAO"'
      Size = 80
    end
    object Consulta_GarantiaFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"CONSULTA_TROCA"."FORMA_PGTO"'
    end
    object Consulta_GarantiaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"CONSULTA_TROCA"."CARTAO"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"CONSULTA_TROCA"."CHEQUE"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"CONSULTA_TROCA"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"CONSULTA_TROCA"."DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"CONSULTA_TROCA"."ENTRADA"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"CONSULTA_TROCA"."TICKET"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"CONSULTA_TROCA"."LOCAL_COBRANCA"'
    end
    object Consulta_GarantiaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"CONSULTA_TROCA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Consulta_GarantiaNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"CONSULTA_TROCA"."NOME_VENDEDOR"'
      Size = 50
    end
    object Consulta_GarantiaVLR_TOTAL: TIBBCDField
      FieldName = 'VLR_TOTAL'
      Origin = '"CONSULTA_TROCA"."VLR_TOTAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"CONSULTA_TROCA"."NOME_FORMA"'
      Size = 50
    end
    object Consulta_GarantiaNOME_DOCUMENTO: TIBStringField
      FieldName = 'NOME_DOCUMENTO'
      Origin = '"CONSULTA_TROCA"."NOME_DOCUMENTO"'
      Size = 50
    end
    object Consulta_GarantiaNOME_LOCAL: TIBStringField
      FieldName = 'NOME_LOCAL'
      Origin = '"CONSULTA_TROCA"."NOME_LOCAL"'
      Size = 50
    end
    object Consulta_GarantiaGeral: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Geral'
      Calculated = True
    end
    object Consulta_GarantiaGeral2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Geral2'
      Calculated = True
    end
    object Consulta_GarantiaLiquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Liquido'
      Calculated = True
    end
    object Consulta_GarantiaTOTAL_2: TIBBCDField
      FieldName = 'TOTAL_2'
      Origin = '"CONSULTA_TROCA"."TOTAL_2"'
      Precision = 18
      Size = 4
    end
    object Consulta_GarantiaDESC_ACRESC_2: TIBBCDField
      FieldName = 'DESC_ACRESC_2'
      Origin = '"CONSULTA_TROCA"."DESC_ACRESC_2"'
      Precision = 18
      Size = 4
    end
  end
  object Consulta_Garantia_Itens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    DESCONTO ,'
      '    ICM ,'
      '    ICM_SUBS ,'
      '    IPI ,'
      '    PESO ,'
      '    PORC_DESC ,'
      '    PRC_CUSTO ,'
      '    PRC_UNIT_ORIGINAL ,'
      '    PRC_UNITARIO ,'
      '    PRODUTO ,'
      '    QUANTIDADE ,'
      '    SEQUENCIA ,'
      '    UNIDADE ,'
      '    SUBUNIDADE ,'
      '    VOLUME ,'
      '    NOME_PRODUTO ,'
      '    TIPO '
      'FROM VER_GARANTIA_ITENS'
      '( :CNPJ, :CODIGO )')
    Left = 392
    Top = 402
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
    object Consulta_Garantia_ItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_TROCA_ITENS"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_TROCA_ITENS"."ICM"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_TROCA_ITENS"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_TROCA_ITENS"."IPI"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_TROCA_ITENS"."PESO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_TROCA_ITENS"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_TROCA_ITENS"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_TROCA_ITENS"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_TROCA_ITENS"."PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_TROCA_ITENS"."PRODUTO"'
      Size = 15
    end
    object Consulta_Garantia_ItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_TROCA_ITENS"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_TROCA_ITENS"."SEQUENCIA"'
    end
    object Consulta_Garantia_ItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_TROCA_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Consulta_Garantia_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_TROCA_ITENS"."SUBUNIDADE"'
    end
    object Consulta_Garantia_ItensVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_TROCA_ITENS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Consulta_Garantia_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_TROCA_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Consulta_Garantia_ItensTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_TROCA_ITENS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_Garantia_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object Serie: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    DeleteSQL.Strings = (
      'delete from Sis_SerieNf'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SERIE = :OLD_SERIE')
    InsertSQL.Strings = (
      'insert into Sis_SerieNf'
      
        '  (CNPJ, SERIE, ULTIMO_NUMERO, TIPO, NOTA_NUM_DST, NOTA_NUM_ALT,' +
        ' NOTA_NUMRECIBO_DST, '
      
        '   NOTA_NUMRECIBO_ALT, NOTA_ENT_SAI_DST, NOTA_ENT_SAI_ALT, NOTA_' +
        'NATUREZA_DST, '
      
        '   NOTA_NATUREZA_ALT, NOTA_CFOP_DST, NOTA_CFOP_ALT, NOTA_SUBS_TR' +
        'IB_DST, '
      
        '   NOTA_SUBS_TRIB_ALT, NOTA_CNDPG_DST, NOTA_CNDPG_ALT, CLI_NOME_' +
        'DST, CLI_NOME_ALT, '
      
        '   CLI_CGCCPF_DST, CLI_CGCCPF_ALT, CLI_END_DST, CLI_END_ALT, CLI' +
        '_BAIRRO_DST, '
      
        '   CLI_BAIRRO_ALT, CLI_CEP_DST, CLI_CEP_ALT, CLI_CID_DST, CLI_CI' +
        'D_ALT, '
      
        '   CLI_FONE_DST, CLI_FONE_ALT, CLI_FAX_DST, CLI_FAX_ALT, CLI_UF_' +
        'DST, CLI_UF_ALT, '
      
        '   CLI_INSCEST_DST, CLI_INSCEST_ALT, CLI_DATEMIS_DST, CLI_DATEMI' +
        'S_ALT, '
      
        '   CLI_DATENTSAI_DST, CLI_DATENTSAI_ALT, CLI_HORASAI_DST, CLI_HO' +
        'RASAI_ALT, '
      
        '   CLI_PEDNUM_DST, CLI_PEDNUM_ALT, CLI_INSCMUN_DST, CLI_INSCMUN_' +
        'ALT, CLI_DUPLNUM_DST, '
      
        '   CLI_DUPLNUM_ALT, CLI_DUPLVENC_DST, CLI_DUPLVENC_ALT, CLI_DUPL' +
        'VALOR_DST, '
      
        '   CLI_DUPLVALOR_ALT, PROD_COD_DST, PROD_COD_ALT, PROD_PROD_DST,' +
        ' PROD_PROD_ALT, '
      
        '   PROD_CF_DST, PROD_CF_ALT, PROD_SITTRIB_DST, PROD_SITTRIB_ALT,' +
        ' PROD_UNIDADE_DST, '
      
        '   PROD_UNIDADE_ALT, PROD_QUANT_DST, PROD_QUANT_ALT, PROD_VALORU' +
        'NIT_DST, '
      
        '   PROD_VALORUNIT_ALT, PROD_VALORTOT_DST, PROD_VALORTOT_ALT, PRO' +
        'D_ICMS_DST, '
      
        '   PROD_ICMS_ALT, PROD_IPI_DST, PROD_IPI_ALT, PROD_VALORIPI_DST,' +
        ' PROD_VALORIPI_ALT, '
      
        '   FEC_BASEICMS_DST, FEC_BASEICMS_ALT, FEC_VALORFRETE_DST, FEC_V' +
        'ALORFRETE_ALT, '
      
        '   FEC_VALORICMS_DST, FEC_VALORICMS_ALT, FEC_VALORSEGURO_DST, FE' +
        'C_VALORSEGURO_ALT, '
      
        '   FEC_BASECALCICMS_DST, FEC_BASECALCICMS_ALT, FEC_DESPESAS_DST,' +
        ' FEC_DESPESAS_ALT, '
      
        '   FEC_VALORICMSSUB_DST, FEC_VALORICMSSUB_ALT, FEC_IPI_DST, FEC_' +
        'IPI_ALT, '
      
        '   FEC_VALORTOTAL_DST, FEC_ISS_DST, FEC_VALORTOTAL_ALT, FEC_ISS_' +
        'ALT, FEC_VALORNOTA_DST, '
      
        '   FEC_VALORNOTA_ALT, TRANS_NOME_DST, TRANS_NOME_ALT, TRANS_END_' +
        'DST, TRANS_END_ALT, '
      
        '   TRANS_QUANTIDADE_DST, TRANS_QUANTIDADE_ALT, TRANS_ESPECIE_DST' +
        ', TRANS_ESPECIE_ALT, '
      
        '   TRANS_MARCA_DST, TRANS_MARCA_ALT, TRANS_FRETECONTA_DST, TRANS' +
        '_FRETECONTA_ALT, '
      
        '   TRANS_CID_DST, TRANS_CID_ALT, TRANS_NUMERO_DST, TRANS_NUMERO_' +
        'ALT, TRANS_PLACA_DST, '
      
        '   TRANS_PLACA_ALT, TRANS_UFVEI_DST, TRANS_UFVEIALT, TRANS_UF_DS' +
        'T, TRANS_UF_ALT, '
      
        '   TRANS_CGCCPF_DST, TRANS_CGCCPF_ALT, TRANS_INSCEST_DST, TRANS_' +
        'INSCEST_ALT, '
      
        '   TRANS_PESBRT_DST, TRANS_PESOBRT_ALT, TRANS_PESOLIQ_DST, TRANS' +
        '_PESOLIQ_ALT, '
      
        '   TRANS_OBS_DST, TRANS_OBS_ALT, IMPRESSORA_PULO, IMPRESSORA_LPP' +
        ', PRODUTOSNOTA, '
      
        '   LOCALDUPLICATAS, NUMERODELINHASDANOTA, PROD_DESC_DST, PROD_DE' +
        'SC_ALT, '
      
        '   DATA_ANO_ALT, DATA_ANO_DST, DATA_DIA_ALT, DATA_DIA_DST, DATA_' +
        'MES_ALT, '
      
        '   DATA_MES_DST, OBS_ALT, OBS_DST, NOTA_VENDEDOR_DST, NOTA_VENDE' +
        'DOR_ALT, '
      
        '   NOTA_ECF_DST, NOTA_ECF_ALT, NOTA_DESCONTO_DST, NOTA_DESCONTO_' +
        'ALT, NOTA_INDCOMPL_DST, '
      
        '   NOTA_INFCOMPL_ALT, CLI_DUPLLARGURA_COLUNA, CLI_DUPLNUM_COLUNA' +
        ', NOTA_MSGNAT_DST, '
      
        '   NOTA_MSGNAT_ALT, NOTA_NUMRDP_DST, NOTA_NUMRDP_ALT, PORTA_IMPR' +
        'ESSAO, '
      
        '   NOTA_DESCONTO_ALT2, NOTA_DESCONTO_DST2, PROD_QNTD_UNID_ALT, P' +
        'ROD_QNTD_UNID_DST, '
      '   PROD_TIPO_UNID_ALT, PROD_TIPO_UNID_DST)'
      'values'
      
        '  (:CNPJ, :SERIE, :ULTIMO_NUMERO, :TIPO, :NOTA_NUM_DST, :NOTA_NU' +
        'M_ALT, '
      
        '   :NOTA_NUMRECIBO_DST, :NOTA_NUMRECIBO_ALT, :NOTA_ENT_SAI_DST, ' +
        ':NOTA_ENT_SAI_ALT, '
      
        '   :NOTA_NATUREZA_DST, :NOTA_NATUREZA_ALT, :NOTA_CFOP_DST, :NOTA' +
        '_CFOP_ALT, '
      
        '   :NOTA_SUBS_TRIB_DST, :NOTA_SUBS_TRIB_ALT, :NOTA_CNDPG_DST, :N' +
        'OTA_CNDPG_ALT, '
      
        '   :CLI_NOME_DST, :CLI_NOME_ALT, :CLI_CGCCPF_DST, :CLI_CGCCPF_AL' +
        'T, :CLI_END_DST, '
      
        '   :CLI_END_ALT, :CLI_BAIRRO_DST, :CLI_BAIRRO_ALT, :CLI_CEP_DST,' +
        ' :CLI_CEP_ALT, '
      
        '   :CLI_CID_DST, :CLI_CID_ALT, :CLI_FONE_DST, :CLI_FONE_ALT, :CL' +
        'I_FAX_DST, '
      
        '   :CLI_FAX_ALT, :CLI_UF_DST, :CLI_UF_ALT, :CLI_INSCEST_DST, :CL' +
        'I_INSCEST_ALT, '
      
        '   :CLI_DATEMIS_DST, :CLI_DATEMIS_ALT, :CLI_DATENTSAI_DST, :CLI_' +
        'DATENTSAI_ALT, '
      
        '   :CLI_HORASAI_DST, :CLI_HORASAI_ALT, :CLI_PEDNUM_DST, :CLI_PED' +
        'NUM_ALT, '
      
        '   :CLI_INSCMUN_DST, :CLI_INSCMUN_ALT, :CLI_DUPLNUM_DST, :CLI_DU' +
        'PLNUM_ALT, '
      
        '   :CLI_DUPLVENC_DST, :CLI_DUPLVENC_ALT, :CLI_DUPLVALOR_DST, :CL' +
        'I_DUPLVALOR_ALT, '
      
        '   :PROD_COD_DST, :PROD_COD_ALT, :PROD_PROD_DST, :PROD_PROD_ALT,' +
        ' :PROD_CF_DST, '
      
        '   :PROD_CF_ALT, :PROD_SITTRIB_DST, :PROD_SITTRIB_ALT, :PROD_UNI' +
        'DADE_DST, '
      
        '   :PROD_UNIDADE_ALT, :PROD_QUANT_DST, :PROD_QUANT_ALT, :PROD_VA' +
        'LORUNIT_DST, '
      
        '   :PROD_VALORUNIT_ALT, :PROD_VALORTOT_DST, :PROD_VALORTOT_ALT, ' +
        ':PROD_ICMS_DST, '
      
        '   :PROD_ICMS_ALT, :PROD_IPI_DST, :PROD_IPI_ALT, :PROD_VALORIPI_' +
        'DST, :PROD_VALORIPI_ALT, '
      
        '   :FEC_BASEICMS_DST, :FEC_BASEICMS_ALT, :FEC_VALORFRETE_DST, :F' +
        'EC_VALORFRETE_ALT, '
      
        '   :FEC_VALORICMS_DST, :FEC_VALORICMS_ALT, :FEC_VALORSEGURO_DST,' +
        ' :FEC_VALORSEGURO_ALT, '
      
        '   :FEC_BASECALCICMS_DST, :FEC_BASECALCICMS_ALT, :FEC_DESPESAS_D' +
        'ST, :FEC_DESPESAS_ALT, '
      
        '   :FEC_VALORICMSSUB_DST, :FEC_VALORICMSSUB_ALT, :FEC_IPI_DST, :' +
        'FEC_IPI_ALT, '
      
        '   :FEC_VALORTOTAL_DST, :FEC_ISS_DST, :FEC_VALORTOTAL_ALT, :FEC_' +
        'ISS_ALT, '
      
        '   :FEC_VALORNOTA_DST, :FEC_VALORNOTA_ALT, :TRANS_NOME_DST, :TRA' +
        'NS_NOME_ALT, '
      
        '   :TRANS_END_DST, :TRANS_END_ALT, :TRANS_QUANTIDADE_DST, :TRANS' +
        '_QUANTIDADE_ALT, '
      
        '   :TRANS_ESPECIE_DST, :TRANS_ESPECIE_ALT, :TRANS_MARCA_DST, :TR' +
        'ANS_MARCA_ALT, '
      
        '   :TRANS_FRETECONTA_DST, :TRANS_FRETECONTA_ALT, :TRANS_CID_DST,' +
        ' :TRANS_CID_ALT, '
      
        '   :TRANS_NUMERO_DST, :TRANS_NUMERO_ALT, :TRANS_PLACA_DST, :TRAN' +
        'S_PLACA_ALT, '
      
        '   :TRANS_UFVEI_DST, :TRANS_UFVEIALT, :TRANS_UF_DST, :TRANS_UF_A' +
        'LT, :TRANS_CGCCPF_DST, '
      
        '   :TRANS_CGCCPF_ALT, :TRANS_INSCEST_DST, :TRANS_INSCEST_ALT, :T' +
        'RANS_PESBRT_DST, '
      
        '   :TRANS_PESOBRT_ALT, :TRANS_PESOLIQ_DST, :TRANS_PESOLIQ_ALT, :' +
        'TRANS_OBS_DST, '
      
        '   :TRANS_OBS_ALT, :IMPRESSORA_PULO, :IMPRESSORA_LPP, :PRODUTOSN' +
        'OTA, :LOCALDUPLICATAS, '
      
        '   :NUMERODELINHASDANOTA, :PROD_DESC_DST, :PROD_DESC_ALT, :DATA_' +
        'ANO_ALT, '
      
        '   :DATA_ANO_DST, :DATA_DIA_ALT, :DATA_DIA_DST, :DATA_MES_ALT, :' +
        'DATA_MES_DST, '
      
        '   :OBS_ALT, :OBS_DST, :NOTA_VENDEDOR_DST, :NOTA_VENDEDOR_ALT, :' +
        'NOTA_ECF_DST, '
      
        '   :NOTA_ECF_ALT, :NOTA_DESCONTO_DST, :NOTA_DESCONTO_ALT, :NOTA_' +
        'INDCOMPL_DST, '
      
        '   :NOTA_INFCOMPL_ALT, :CLI_DUPLLARGURA_COLUNA, :CLI_DUPLNUM_COL' +
        'UNA, :NOTA_MSGNAT_DST, '
      
        '   :NOTA_MSGNAT_ALT, :NOTA_NUMRDP_DST, :NOTA_NUMRDP_ALT, :PORTA_' +
        'IMPRESSAO, '
      
        '   :NOTA_DESCONTO_ALT2, :NOTA_DESCONTO_DST2, :PROD_QNTD_UNID_ALT' +
        ', :PROD_QNTD_UNID_DST, '
      '   :PROD_TIPO_UNID_ALT, :PROD_TIPO_UNID_DST)')
    RefreshSQL.Strings = (
      'Select *'
      'from Sis_SerieNf '
      'where'
      '  CNPJ = :CNPJ and'
      '  SERIE = :SERIE')
    SelectSQL.Strings = (
      'select   *   From Sis_SerieNf'
      ''
      'Where Cnpj = :CNPJ AND TIPO = '#39'S'#39
      ''
      'Order By Serie')
    ModifySQL.Strings = (
      'update Sis_SerieNf'
      'set'
      '  CNPJ = :CNPJ,'
      '  SERIE = :SERIE,'
      '  ULTIMO_NUMERO = :ULTIMO_NUMERO,'
      '  TIPO = :TIPO,'
      '  NOTA_NUM_DST = :NOTA_NUM_DST,'
      '  NOTA_NUM_ALT = :NOTA_NUM_ALT,'
      '  NOTA_NUMRECIBO_DST = :NOTA_NUMRECIBO_DST,'
      '  NOTA_NUMRECIBO_ALT = :NOTA_NUMRECIBO_ALT,'
      '  NOTA_ENT_SAI_DST = :NOTA_ENT_SAI_DST,'
      '  NOTA_ENT_SAI_ALT = :NOTA_ENT_SAI_ALT,'
      '  NOTA_NATUREZA_DST = :NOTA_NATUREZA_DST,'
      '  NOTA_NATUREZA_ALT = :NOTA_NATUREZA_ALT,'
      '  NOTA_CFOP_DST = :NOTA_CFOP_DST,'
      '  NOTA_CFOP_ALT = :NOTA_CFOP_ALT,'
      '  NOTA_SUBS_TRIB_DST = :NOTA_SUBS_TRIB_DST,'
      '  NOTA_SUBS_TRIB_ALT = :NOTA_SUBS_TRIB_ALT,'
      '  NOTA_CNDPG_DST = :NOTA_CNDPG_DST,'
      '  NOTA_CNDPG_ALT = :NOTA_CNDPG_ALT,'
      '  CLI_NOME_DST = :CLI_NOME_DST,'
      '  CLI_NOME_ALT = :CLI_NOME_ALT,'
      '  CLI_CGCCPF_DST = :CLI_CGCCPF_DST,'
      '  CLI_CGCCPF_ALT = :CLI_CGCCPF_ALT,'
      '  CLI_END_DST = :CLI_END_DST,'
      '  CLI_END_ALT = :CLI_END_ALT,'
      '  CLI_BAIRRO_DST = :CLI_BAIRRO_DST,'
      '  CLI_BAIRRO_ALT = :CLI_BAIRRO_ALT,'
      '  CLI_CEP_DST = :CLI_CEP_DST,'
      '  CLI_CEP_ALT = :CLI_CEP_ALT,'
      '  CLI_CID_DST = :CLI_CID_DST,'
      '  CLI_CID_ALT = :CLI_CID_ALT,'
      '  CLI_FONE_DST = :CLI_FONE_DST,'
      '  CLI_FONE_ALT = :CLI_FONE_ALT,'
      '  CLI_FAX_DST = :CLI_FAX_DST,'
      '  CLI_FAX_ALT = :CLI_FAX_ALT,'
      '  CLI_UF_DST = :CLI_UF_DST,'
      '  CLI_UF_ALT = :CLI_UF_ALT,'
      '  CLI_INSCEST_DST = :CLI_INSCEST_DST,'
      '  CLI_INSCEST_ALT = :CLI_INSCEST_ALT,'
      '  CLI_DATEMIS_DST = :CLI_DATEMIS_DST,'
      '  CLI_DATEMIS_ALT = :CLI_DATEMIS_ALT,'
      '  CLI_DATENTSAI_DST = :CLI_DATENTSAI_DST,'
      '  CLI_DATENTSAI_ALT = :CLI_DATENTSAI_ALT,'
      '  CLI_HORASAI_DST = :CLI_HORASAI_DST,'
      '  CLI_HORASAI_ALT = :CLI_HORASAI_ALT,'
      '  CLI_PEDNUM_DST = :CLI_PEDNUM_DST,'
      '  CLI_PEDNUM_ALT = :CLI_PEDNUM_ALT,'
      '  CLI_INSCMUN_DST = :CLI_INSCMUN_DST,'
      '  CLI_INSCMUN_ALT = :CLI_INSCMUN_ALT,'
      '  CLI_DUPLNUM_DST = :CLI_DUPLNUM_DST,'
      '  CLI_DUPLNUM_ALT = :CLI_DUPLNUM_ALT,'
      '  CLI_DUPLVENC_DST = :CLI_DUPLVENC_DST,'
      '  CLI_DUPLVENC_ALT = :CLI_DUPLVENC_ALT,'
      '  CLI_DUPLVALOR_DST = :CLI_DUPLVALOR_DST,'
      '  CLI_DUPLVALOR_ALT = :CLI_DUPLVALOR_ALT,'
      '  PROD_COD_DST = :PROD_COD_DST,'
      '  PROD_COD_ALT = :PROD_COD_ALT,'
      '  PROD_PROD_DST = :PROD_PROD_DST,'
      '  PROD_PROD_ALT = :PROD_PROD_ALT,'
      '  PROD_CF_DST = :PROD_CF_DST,'
      '  PROD_CF_ALT = :PROD_CF_ALT,'
      '  PROD_SITTRIB_DST = :PROD_SITTRIB_DST,'
      '  PROD_SITTRIB_ALT = :PROD_SITTRIB_ALT,'
      '  PROD_UNIDADE_DST = :PROD_UNIDADE_DST,'
      '  PROD_UNIDADE_ALT = :PROD_UNIDADE_ALT,'
      '  PROD_QUANT_DST = :PROD_QUANT_DST,'
      '  PROD_QUANT_ALT = :PROD_QUANT_ALT,'
      '  PROD_VALORUNIT_DST = :PROD_VALORUNIT_DST,'
      '  PROD_VALORUNIT_ALT = :PROD_VALORUNIT_ALT,'
      '  PROD_VALORTOT_DST = :PROD_VALORTOT_DST,'
      '  PROD_VALORTOT_ALT = :PROD_VALORTOT_ALT,'
      '  PROD_ICMS_DST = :PROD_ICMS_DST,'
      '  PROD_ICMS_ALT = :PROD_ICMS_ALT,'
      '  PROD_IPI_DST = :PROD_IPI_DST,'
      '  PROD_IPI_ALT = :PROD_IPI_ALT,'
      '  PROD_VALORIPI_DST = :PROD_VALORIPI_DST,'
      '  PROD_VALORIPI_ALT = :PROD_VALORIPI_ALT,'
      '  FEC_BASEICMS_DST = :FEC_BASEICMS_DST,'
      '  FEC_BASEICMS_ALT = :FEC_BASEICMS_ALT,'
      '  FEC_VALORFRETE_DST = :FEC_VALORFRETE_DST,'
      '  FEC_VALORFRETE_ALT = :FEC_VALORFRETE_ALT,'
      '  FEC_VALORICMS_DST = :FEC_VALORICMS_DST,'
      '  FEC_VALORICMS_ALT = :FEC_VALORICMS_ALT,'
      '  FEC_VALORSEGURO_DST = :FEC_VALORSEGURO_DST,'
      '  FEC_VALORSEGURO_ALT = :FEC_VALORSEGURO_ALT,'
      '  FEC_BASECALCICMS_DST = :FEC_BASECALCICMS_DST,'
      '  FEC_BASECALCICMS_ALT = :FEC_BASECALCICMS_ALT,'
      '  FEC_DESPESAS_DST = :FEC_DESPESAS_DST,'
      '  FEC_DESPESAS_ALT = :FEC_DESPESAS_ALT,'
      '  FEC_VALORICMSSUB_DST = :FEC_VALORICMSSUB_DST,'
      '  FEC_VALORICMSSUB_ALT = :FEC_VALORICMSSUB_ALT,'
      '  FEC_IPI_DST = :FEC_IPI_DST,'
      '  FEC_IPI_ALT = :FEC_IPI_ALT,'
      '  FEC_VALORTOTAL_DST = :FEC_VALORTOTAL_DST,'
      '  FEC_ISS_DST = :FEC_ISS_DST,'
      '  FEC_VALORTOTAL_ALT = :FEC_VALORTOTAL_ALT,'
      '  FEC_ISS_ALT = :FEC_ISS_ALT,'
      '  FEC_VALORNOTA_DST = :FEC_VALORNOTA_DST,'
      '  FEC_VALORNOTA_ALT = :FEC_VALORNOTA_ALT,'
      '  TRANS_NOME_DST = :TRANS_NOME_DST,'
      '  TRANS_NOME_ALT = :TRANS_NOME_ALT,'
      '  TRANS_END_DST = :TRANS_END_DST,'
      '  TRANS_END_ALT = :TRANS_END_ALT,'
      '  TRANS_QUANTIDADE_DST = :TRANS_QUANTIDADE_DST,'
      '  TRANS_QUANTIDADE_ALT = :TRANS_QUANTIDADE_ALT,'
      '  TRANS_ESPECIE_DST = :TRANS_ESPECIE_DST,'
      '  TRANS_ESPECIE_ALT = :TRANS_ESPECIE_ALT,'
      '  TRANS_MARCA_DST = :TRANS_MARCA_DST,'
      '  TRANS_MARCA_ALT = :TRANS_MARCA_ALT,'
      '  TRANS_FRETECONTA_DST = :TRANS_FRETECONTA_DST,'
      '  TRANS_FRETECONTA_ALT = :TRANS_FRETECONTA_ALT,'
      '  TRANS_CID_DST = :TRANS_CID_DST,'
      '  TRANS_CID_ALT = :TRANS_CID_ALT,'
      '  TRANS_NUMERO_DST = :TRANS_NUMERO_DST,'
      '  TRANS_NUMERO_ALT = :TRANS_NUMERO_ALT,'
      '  TRANS_PLACA_DST = :TRANS_PLACA_DST,'
      '  TRANS_PLACA_ALT = :TRANS_PLACA_ALT,'
      '  TRANS_UFVEI_DST = :TRANS_UFVEI_DST,'
      '  TRANS_UFVEIALT = :TRANS_UFVEIALT,'
      '  TRANS_UF_DST = :TRANS_UF_DST,'
      '  TRANS_UF_ALT = :TRANS_UF_ALT,'
      '  TRANS_CGCCPF_DST = :TRANS_CGCCPF_DST,'
      '  TRANS_CGCCPF_ALT = :TRANS_CGCCPF_ALT,'
      '  TRANS_INSCEST_DST = :TRANS_INSCEST_DST,'
      '  TRANS_INSCEST_ALT = :TRANS_INSCEST_ALT,'
      '  TRANS_PESBRT_DST = :TRANS_PESBRT_DST,'
      '  TRANS_PESOBRT_ALT = :TRANS_PESOBRT_ALT,'
      '  TRANS_PESOLIQ_DST = :TRANS_PESOLIQ_DST,'
      '  TRANS_PESOLIQ_ALT = :TRANS_PESOLIQ_ALT,'
      '  TRANS_OBS_DST = :TRANS_OBS_DST,'
      '  TRANS_OBS_ALT = :TRANS_OBS_ALT,'
      '  IMPRESSORA_PULO = :IMPRESSORA_PULO,'
      '  IMPRESSORA_LPP = :IMPRESSORA_LPP,'
      '  PRODUTOSNOTA = :PRODUTOSNOTA,'
      '  LOCALDUPLICATAS = :LOCALDUPLICATAS,'
      '  NUMERODELINHASDANOTA = :NUMERODELINHASDANOTA,'
      '  PROD_DESC_DST = :PROD_DESC_DST,'
      '  PROD_DESC_ALT = :PROD_DESC_ALT,'
      '  DATA_ANO_ALT = :DATA_ANO_ALT,'
      '  DATA_ANO_DST = :DATA_ANO_DST,'
      '  DATA_DIA_ALT = :DATA_DIA_ALT,'
      '  DATA_DIA_DST = :DATA_DIA_DST,'
      '  DATA_MES_ALT = :DATA_MES_ALT,'
      '  DATA_MES_DST = :DATA_MES_DST,'
      '  OBS_ALT = :OBS_ALT,'
      '  OBS_DST = :OBS_DST,'
      '  NOTA_VENDEDOR_DST = :NOTA_VENDEDOR_DST,'
      '  NOTA_VENDEDOR_ALT = :NOTA_VENDEDOR_ALT,'
      '  NOTA_ECF_DST = :NOTA_ECF_DST,'
      '  NOTA_ECF_ALT = :NOTA_ECF_ALT,'
      '  NOTA_DESCONTO_DST = :NOTA_DESCONTO_DST,'
      '  NOTA_DESCONTO_ALT = :NOTA_DESCONTO_ALT,'
      '  NOTA_INDCOMPL_DST = :NOTA_INDCOMPL_DST,'
      '  NOTA_INFCOMPL_ALT = :NOTA_INFCOMPL_ALT,'
      '  CLI_DUPLLARGURA_COLUNA = :CLI_DUPLLARGURA_COLUNA,'
      '  CLI_DUPLNUM_COLUNA = :CLI_DUPLNUM_COLUNA,'
      '  NOTA_MSGNAT_DST = :NOTA_MSGNAT_DST,'
      '  NOTA_MSGNAT_ALT = :NOTA_MSGNAT_ALT,'
      '  NOTA_NUMRDP_DST = :NOTA_NUMRDP_DST,'
      '  NOTA_NUMRDP_ALT = :NOTA_NUMRDP_ALT,'
      '  PORTA_IMPRESSAO = :PORTA_IMPRESSAO,'
      '  NOTA_DESCONTO_ALT2 = :NOTA_DESCONTO_ALT2,'
      '  NOTA_DESCONTO_DST2 = :NOTA_DESCONTO_DST2,'
      '  PROD_QNTD_UNID_ALT = :PROD_QNTD_UNID_ALT,'
      '  PROD_QNTD_UNID_DST = :PROD_QNTD_UNID_DST,'
      '  PROD_TIPO_UNID_ALT = :PROD_TIPO_UNID_ALT,'
      '  PROD_TIPO_UNID_DST = :PROD_TIPO_UNID_DST'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SERIE = :OLD_SERIE')
    Left = 473
    Top = 67
    object SerieCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_SERIENF"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SerieSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"SIS_SERIENF"."SERIE"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SerieULTIMO_NUMERO: TIntegerField
      FieldName = 'ULTIMO_NUMERO'
      Origin = '"SIS_SERIENF"."ULTIMO_NUMERO"'
    end
    object SerieTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"SIS_SERIENF"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SerieNOTA_NUM_DST: TIntegerField
      FieldName = 'NOTA_NUM_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUM_DST"'
    end
    object SerieNOTA_NUM_ALT: TIntegerField
      FieldName = 'NOTA_NUM_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUM_ALT"'
    end
    object SerieNOTA_NUMRECIBO_DST: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_DST"'
    end
    object SerieNOTA_NUMRECIBO_ALT: TIntegerField
      FieldName = 'NOTA_NUMRECIBO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRECIBO_ALT"'
    end
    object SerieNOTA_ENT_SAI_DST: TIntegerField
      FieldName = 'NOTA_ENT_SAI_DST'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_DST"'
    end
    object SerieNOTA_ENT_SAI_ALT: TIntegerField
      FieldName = 'NOTA_ENT_SAI_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ENT_SAI_ALT"'
    end
    object SerieNOTA_NATUREZA_DST: TIntegerField
      FieldName = 'NOTA_NATUREZA_DST'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_DST"'
    end
    object SerieNOTA_NATUREZA_ALT: TIntegerField
      FieldName = 'NOTA_NATUREZA_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NATUREZA_ALT"'
    end
    object SerieNOTA_CFOP_DST: TIntegerField
      FieldName = 'NOTA_CFOP_DST'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_DST"'
    end
    object SerieNOTA_CFOP_ALT: TIntegerField
      FieldName = 'NOTA_CFOP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CFOP_ALT"'
    end
    object SerieNOTA_SUBS_TRIB_DST: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_DST'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_DST"'
    end
    object SerieNOTA_SUBS_TRIB_ALT: TIntegerField
      FieldName = 'NOTA_SUBS_TRIB_ALT'
      Origin = '"SIS_SERIENF"."NOTA_SUBS_TRIB_ALT"'
    end
    object SerieNOTA_CNDPG_DST: TIntegerField
      FieldName = 'NOTA_CNDPG_DST'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_DST"'
    end
    object SerieNOTA_CNDPG_ALT: TIntegerField
      FieldName = 'NOTA_CNDPG_ALT'
      Origin = '"SIS_SERIENF"."NOTA_CNDPG_ALT"'
    end
    object SerieCLI_NOME_DST: TIntegerField
      FieldName = 'CLI_NOME_DST'
      Origin = '"SIS_SERIENF"."CLI_NOME_DST"'
    end
    object SerieCLI_NOME_ALT: TIntegerField
      FieldName = 'CLI_NOME_ALT'
      Origin = '"SIS_SERIENF"."CLI_NOME_ALT"'
    end
    object SerieCLI_CGCCPF_DST: TIntegerField
      FieldName = 'CLI_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_DST"'
    end
    object SerieCLI_CGCCPF_ALT: TIntegerField
      FieldName = 'CLI_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."CLI_CGCCPF_ALT"'
    end
    object SerieCLI_END_DST: TIntegerField
      FieldName = 'CLI_END_DST'
      Origin = '"SIS_SERIENF"."CLI_END_DST"'
    end
    object SerieCLI_END_ALT: TIntegerField
      FieldName = 'CLI_END_ALT'
      Origin = '"SIS_SERIENF"."CLI_END_ALT"'
    end
    object SerieCLI_BAIRRO_DST: TIntegerField
      FieldName = 'CLI_BAIRRO_DST'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_DST"'
    end
    object SerieCLI_BAIRRO_ALT: TIntegerField
      FieldName = 'CLI_BAIRRO_ALT'
      Origin = '"SIS_SERIENF"."CLI_BAIRRO_ALT"'
    end
    object SerieCLI_CEP_DST: TIntegerField
      FieldName = 'CLI_CEP_DST'
      Origin = '"SIS_SERIENF"."CLI_CEP_DST"'
    end
    object SerieCLI_CEP_ALT: TIntegerField
      FieldName = 'CLI_CEP_ALT'
      Origin = '"SIS_SERIENF"."CLI_CEP_ALT"'
    end
    object SerieCLI_CID_DST: TIntegerField
      FieldName = 'CLI_CID_DST'
      Origin = '"SIS_SERIENF"."CLI_CID_DST"'
    end
    object SerieCLI_CID_ALT: TIntegerField
      FieldName = 'CLI_CID_ALT'
      Origin = '"SIS_SERIENF"."CLI_CID_ALT"'
    end
    object SerieCLI_FONE_DST: TIntegerField
      FieldName = 'CLI_FONE_DST'
      Origin = '"SIS_SERIENF"."CLI_FONE_DST"'
    end
    object SerieCLI_FONE_ALT: TIntegerField
      FieldName = 'CLI_FONE_ALT'
      Origin = '"SIS_SERIENF"."CLI_FONE_ALT"'
    end
    object SerieCLI_FAX_DST: TIntegerField
      FieldName = 'CLI_FAX_DST'
      Origin = '"SIS_SERIENF"."CLI_FAX_DST"'
    end
    object SerieCLI_FAX_ALT: TIntegerField
      FieldName = 'CLI_FAX_ALT'
      Origin = '"SIS_SERIENF"."CLI_FAX_ALT"'
    end
    object SerieCLI_UF_DST: TIntegerField
      FieldName = 'CLI_UF_DST'
      Origin = '"SIS_SERIENF"."CLI_UF_DST"'
    end
    object SerieCLI_UF_ALT: TIntegerField
      FieldName = 'CLI_UF_ALT'
      Origin = '"SIS_SERIENF"."CLI_UF_ALT"'
    end
    object SerieCLI_INSCEST_DST: TIntegerField
      FieldName = 'CLI_INSCEST_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_DST"'
    end
    object SerieCLI_INSCEST_ALT: TIntegerField
      FieldName = 'CLI_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCEST_ALT"'
    end
    object SerieCLI_DATEMIS_DST: TIntegerField
      FieldName = 'CLI_DATEMIS_DST'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_DST"'
    end
    object SerieCLI_DATEMIS_ALT: TIntegerField
      FieldName = 'CLI_DATEMIS_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATEMIS_ALT"'
    end
    object SerieCLI_DATENTSAI_DST: TIntegerField
      FieldName = 'CLI_DATENTSAI_DST'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_DST"'
    end
    object SerieCLI_DATENTSAI_ALT: TIntegerField
      FieldName = 'CLI_DATENTSAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_DATENTSAI_ALT"'
    end
    object SerieCLI_HORASAI_DST: TIntegerField
      FieldName = 'CLI_HORASAI_DST'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_DST"'
    end
    object SerieCLI_HORASAI_ALT: TIntegerField
      FieldName = 'CLI_HORASAI_ALT'
      Origin = '"SIS_SERIENF"."CLI_HORASAI_ALT"'
    end
    object SerieCLI_PEDNUM_DST: TIntegerField
      FieldName = 'CLI_PEDNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_DST"'
    end
    object SerieCLI_PEDNUM_ALT: TIntegerField
      FieldName = 'CLI_PEDNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_PEDNUM_ALT"'
    end
    object SerieCLI_INSCMUN_DST: TIntegerField
      FieldName = 'CLI_INSCMUN_DST'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_DST"'
    end
    object SerieCLI_INSCMUN_ALT: TIntegerField
      FieldName = 'CLI_INSCMUN_ALT'
      Origin = '"SIS_SERIENF"."CLI_INSCMUN_ALT"'
    end
    object SerieCLI_DUPLNUM_DST: TIntegerField
      FieldName = 'CLI_DUPLNUM_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_DST"'
    end
    object SerieCLI_DUPLVENC_DST: TIntegerField
      FieldName = 'CLI_DUPLVENC_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_DST"'
    end
    object SerieCLI_DUPLVENC_ALT: TIntegerField
      FieldName = 'CLI_DUPLVENC_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVENC_ALT"'
    end
    object SerieCLI_DUPLVALOR_DST: TIntegerField
      FieldName = 'CLI_DUPLVALOR_DST'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_DST"'
    end
    object SerieCLI_DUPLVALOR_ALT: TIntegerField
      FieldName = 'CLI_DUPLVALOR_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLVALOR_ALT"'
    end
    object SeriePROD_COD_DST: TIntegerField
      FieldName = 'PROD_COD_DST'
      Origin = '"SIS_SERIENF"."PROD_COD_DST"'
    end
    object SeriePROD_COD_ALT: TIntegerField
      FieldName = 'PROD_COD_ALT'
      Origin = '"SIS_SERIENF"."PROD_COD_ALT"'
    end
    object SeriePROD_PROD_DST: TIntegerField
      FieldName = 'PROD_PROD_DST'
      Origin = '"SIS_SERIENF"."PROD_PROD_DST"'
    end
    object SeriePROD_PROD_ALT: TIntegerField
      FieldName = 'PROD_PROD_ALT'
      Origin = '"SIS_SERIENF"."PROD_PROD_ALT"'
    end
    object SeriePROD_CF_DST: TIntegerField
      FieldName = 'PROD_CF_DST'
      Origin = '"SIS_SERIENF"."PROD_CF_DST"'
    end
    object SeriePROD_CF_ALT: TIntegerField
      FieldName = 'PROD_CF_ALT'
      Origin = '"SIS_SERIENF"."PROD_CF_ALT"'
    end
    object SeriePROD_SITTRIB_DST: TIntegerField
      FieldName = 'PROD_SITTRIB_DST'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_DST"'
    end
    object SeriePROD_SITTRIB_ALT: TIntegerField
      FieldName = 'PROD_SITTRIB_ALT'
      Origin = '"SIS_SERIENF"."PROD_SITTRIB_ALT"'
    end
    object SeriePROD_UNIDADE_DST: TIntegerField
      FieldName = 'PROD_UNIDADE_DST'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_DST"'
    end
    object SeriePROD_UNIDADE_ALT: TIntegerField
      FieldName = 'PROD_UNIDADE_ALT'
      Origin = '"SIS_SERIENF"."PROD_UNIDADE_ALT"'
    end
    object SeriePROD_QUANT_DST: TIntegerField
      FieldName = 'PROD_QUANT_DST'
      Origin = '"SIS_SERIENF"."PROD_QUANT_DST"'
    end
    object SeriePROD_QUANT_ALT: TIntegerField
      FieldName = 'PROD_QUANT_ALT'
      Origin = '"SIS_SERIENF"."PROD_QUANT_ALT"'
    end
    object SeriePROD_VALORUNIT_DST: TIntegerField
      FieldName = 'PROD_VALORUNIT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_DST"'
    end
    object SeriePROD_VALORUNIT_ALT: TIntegerField
      FieldName = 'PROD_VALORUNIT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORUNIT_ALT"'
    end
    object SeriePROD_VALORTOT_DST: TIntegerField
      FieldName = 'PROD_VALORTOT_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_DST"'
    end
    object SeriePROD_VALORTOT_ALT: TIntegerField
      FieldName = 'PROD_VALORTOT_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORTOT_ALT"'
    end
    object SeriePROD_ICMS_DST: TIntegerField
      FieldName = 'PROD_ICMS_DST'
      Origin = '"SIS_SERIENF"."PROD_ICMS_DST"'
    end
    object SeriePROD_ICMS_ALT: TIntegerField
      FieldName = 'PROD_ICMS_ALT'
      Origin = '"SIS_SERIENF"."PROD_ICMS_ALT"'
    end
    object SeriePROD_IPI_DST: TIntegerField
      FieldName = 'PROD_IPI_DST'
      Origin = '"SIS_SERIENF"."PROD_IPI_DST"'
    end
    object SeriePROD_IPI_ALT: TIntegerField
      FieldName = 'PROD_IPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_IPI_ALT"'
    end
    object SeriePROD_VALORIPI_DST: TIntegerField
      FieldName = 'PROD_VALORIPI_DST'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_DST"'
    end
    object SeriePROD_VALORIPI_ALT: TIntegerField
      FieldName = 'PROD_VALORIPI_ALT'
      Origin = '"SIS_SERIENF"."PROD_VALORIPI_ALT"'
    end
    object SerieFEC_BASEICMS_DST: TIntegerField
      FieldName = 'FEC_BASEICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_DST"'
    end
    object SerieFEC_BASEICMS_ALT: TIntegerField
      FieldName = 'FEC_BASEICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASEICMS_ALT"'
    end
    object SerieFEC_VALORFRETE_DST: TIntegerField
      FieldName = 'FEC_VALORFRETE_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_DST"'
    end
    object SerieFEC_VALORFRETE_ALT: TIntegerField
      FieldName = 'FEC_VALORFRETE_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORFRETE_ALT"'
    end
    object SerieFEC_VALORICMS_DST: TIntegerField
      FieldName = 'FEC_VALORICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_DST"'
    end
    object SerieFEC_VALORICMS_ALT: TIntegerField
      FieldName = 'FEC_VALORICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMS_ALT"'
    end
    object SerieFEC_VALORSEGURO_DST: TIntegerField
      FieldName = 'FEC_VALORSEGURO_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_DST"'
    end
    object SerieFEC_VALORSEGURO_ALT: TIntegerField
      FieldName = 'FEC_VALORSEGURO_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORSEGURO_ALT"'
    end
    object SerieFEC_BASECALCICMS_DST: TIntegerField
      FieldName = 'FEC_BASECALCICMS_DST'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_DST"'
    end
    object SerieFEC_BASECALCICMS_ALT: TIntegerField
      FieldName = 'FEC_BASECALCICMS_ALT'
      Origin = '"SIS_SERIENF"."FEC_BASECALCICMS_ALT"'
    end
    object SerieFEC_DESPESAS_DST: TIntegerField
      FieldName = 'FEC_DESPESAS_DST'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_DST"'
    end
    object SerieFEC_DESPESAS_ALT: TIntegerField
      FieldName = 'FEC_DESPESAS_ALT'
      Origin = '"SIS_SERIENF"."FEC_DESPESAS_ALT"'
    end
    object SerieFEC_VALORICMSSUB_DST: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_DST"'
    end
    object SerieFEC_VALORICMSSUB_ALT: TIntegerField
      FieldName = 'FEC_VALORICMSSUB_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORICMSSUB_ALT"'
    end
    object SerieFEC_IPI_DST: TIntegerField
      FieldName = 'FEC_IPI_DST'
      Origin = '"SIS_SERIENF"."FEC_IPI_DST"'
    end
    object SerieFEC_IPI_ALT: TIntegerField
      FieldName = 'FEC_IPI_ALT'
      Origin = '"SIS_SERIENF"."FEC_IPI_ALT"'
    end
    object SerieFEC_VALORTOTAL_DST: TIntegerField
      FieldName = 'FEC_VALORTOTAL_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_DST"'
    end
    object SerieFEC_ISS_DST: TIntegerField
      FieldName = 'FEC_ISS_DST'
      Origin = '"SIS_SERIENF"."FEC_ISS_DST"'
    end
    object SerieFEC_VALORTOTAL_ALT: TIntegerField
      FieldName = 'FEC_VALORTOTAL_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORTOTAL_ALT"'
    end
    object SerieFEC_ISS_ALT: TIntegerField
      FieldName = 'FEC_ISS_ALT'
      Origin = '"SIS_SERIENF"."FEC_ISS_ALT"'
    end
    object SerieFEC_VALORNOTA_DST: TIntegerField
      FieldName = 'FEC_VALORNOTA_DST'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_DST"'
    end
    object SerieFEC_VALORNOTA_ALT: TIntegerField
      FieldName = 'FEC_VALORNOTA_ALT'
      Origin = '"SIS_SERIENF"."FEC_VALORNOTA_ALT"'
    end
    object SerieTRANS_NOME_DST: TIntegerField
      FieldName = 'TRANS_NOME_DST'
      Origin = '"SIS_SERIENF"."TRANS_NOME_DST"'
    end
    object SerieTRANS_NOME_ALT: TIntegerField
      FieldName = 'TRANS_NOME_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NOME_ALT"'
    end
    object SerieTRANS_END_DST: TIntegerField
      FieldName = 'TRANS_END_DST'
      Origin = '"SIS_SERIENF"."TRANS_END_DST"'
    end
    object SerieTRANS_END_ALT: TIntegerField
      FieldName = 'TRANS_END_ALT'
      Origin = '"SIS_SERIENF"."TRANS_END_ALT"'
    end
    object SerieTRANS_QUANTIDADE_DST: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_DST'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_DST"'
    end
    object SerieTRANS_QUANTIDADE_ALT: TIntegerField
      FieldName = 'TRANS_QUANTIDADE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_QUANTIDADE_ALT"'
    end
    object SerieTRANS_ESPECIE_DST: TIntegerField
      FieldName = 'TRANS_ESPECIE_DST'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_DST"'
    end
    object SerieTRANS_ESPECIE_ALT: TIntegerField
      FieldName = 'TRANS_ESPECIE_ALT'
      Origin = '"SIS_SERIENF"."TRANS_ESPECIE_ALT"'
    end
    object SerieTRANS_MARCA_DST: TIntegerField
      FieldName = 'TRANS_MARCA_DST'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_DST"'
    end
    object SerieTRANS_MARCA_ALT: TIntegerField
      FieldName = 'TRANS_MARCA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_MARCA_ALT"'
    end
    object SerieTRANS_FRETECONTA_DST: TIntegerField
      FieldName = 'TRANS_FRETECONTA_DST'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_DST"'
    end
    object SerieTRANS_FRETECONTA_ALT: TIntegerField
      FieldName = 'TRANS_FRETECONTA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_FRETECONTA_ALT"'
    end
    object SerieTRANS_CID_DST: TIntegerField
      FieldName = 'TRANS_CID_DST'
      Origin = '"SIS_SERIENF"."TRANS_CID_DST"'
    end
    object SerieTRANS_CID_ALT: TIntegerField
      FieldName = 'TRANS_CID_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CID_ALT"'
    end
    object SerieTRANS_NUMERO_DST: TIntegerField
      FieldName = 'TRANS_NUMERO_DST'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_DST"'
    end
    object SerieTRANS_NUMERO_ALT: TIntegerField
      FieldName = 'TRANS_NUMERO_ALT'
      Origin = '"SIS_SERIENF"."TRANS_NUMERO_ALT"'
    end
    object SerieTRANS_PLACA_DST: TIntegerField
      FieldName = 'TRANS_PLACA_DST'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_DST"'
    end
    object SerieTRANS_PLACA_ALT: TIntegerField
      FieldName = 'TRANS_PLACA_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PLACA_ALT"'
    end
    object SerieTRANS_UFVEI_DST: TIntegerField
      FieldName = 'TRANS_UFVEI_DST'
      Origin = '"SIS_SERIENF"."TRANS_UFVEI_DST"'
    end
    object SerieTRANS_UFVEIALT: TIntegerField
      FieldName = 'TRANS_UFVEIALT'
      Origin = '"SIS_SERIENF"."TRANS_UFVEIALT"'
    end
    object SerieTRANS_UF_DST: TIntegerField
      FieldName = 'TRANS_UF_DST'
      Origin = '"SIS_SERIENF"."TRANS_UF_DST"'
    end
    object SerieTRANS_UF_ALT: TIntegerField
      FieldName = 'TRANS_UF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_UF_ALT"'
    end
    object SerieTRANS_CGCCPF_DST: TIntegerField
      FieldName = 'TRANS_CGCCPF_DST'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_DST"'
    end
    object SerieTRANS_CGCCPF_ALT: TIntegerField
      FieldName = 'TRANS_CGCCPF_ALT'
      Origin = '"SIS_SERIENF"."TRANS_CGCCPF_ALT"'
    end
    object SerieTRANS_INSCEST_DST: TIntegerField
      FieldName = 'TRANS_INSCEST_DST'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_DST"'
    end
    object SerieTRANS_INSCEST_ALT: TIntegerField
      FieldName = 'TRANS_INSCEST_ALT'
      Origin = '"SIS_SERIENF"."TRANS_INSCEST_ALT"'
    end
    object SerieTRANS_PESBRT_DST: TIntegerField
      FieldName = 'TRANS_PESBRT_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESBRT_DST"'
    end
    object SerieTRANS_PESOBRT_ALT: TIntegerField
      FieldName = 'TRANS_PESOBRT_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOBRT_ALT"'
    end
    object SerieTRANS_PESOLIQ_DST: TIntegerField
      FieldName = 'TRANS_PESOLIQ_DST'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_DST"'
    end
    object SerieTRANS_PESOLIQ_ALT: TIntegerField
      FieldName = 'TRANS_PESOLIQ_ALT'
      Origin = '"SIS_SERIENF"."TRANS_PESOLIQ_ALT"'
    end
    object SerieTRANS_OBS_DST: TIntegerField
      FieldName = 'TRANS_OBS_DST'
      Origin = '"SIS_SERIENF"."TRANS_OBS_DST"'
    end
    object SerieTRANS_OBS_ALT: TIntegerField
      FieldName = 'TRANS_OBS_ALT'
      Origin = '"SIS_SERIENF"."TRANS_OBS_ALT"'
    end
    object SerieIMPRESSORA_PULO: TIntegerField
      FieldName = 'IMPRESSORA_PULO'
      Origin = '"SIS_SERIENF"."IMPRESSORA_PULO"'
    end
    object SerieIMPRESSORA_LPP: TIBStringField
      FieldName = 'IMPRESSORA_LPP'
      Origin = '"SIS_SERIENF"."IMPRESSORA_LPP"'
      Size = 10
    end
    object SeriePRODUTOSNOTA: TIntegerField
      FieldName = 'PRODUTOSNOTA'
      Origin = '"SIS_SERIENF"."PRODUTOSNOTA"'
    end
    object SerieLOCALDUPLICATAS: TStringField
      FieldName = 'LOCALDUPLICATAS'
      Size = 1
    end
    object SerieNUMERODELINHASDANOTA: TIntegerField
      FieldName = 'NUMERODELINHASDANOTA'
    end
    object SerieCLI_DUPLNUM_ALT: TIntegerField
      FieldName = 'CLI_DUPLNUM_ALT'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_ALT"'
    end
    object SeriePROD_DESC_DST: TIntegerField
      FieldName = 'PROD_DESC_DST'
      Origin = '"SIS_SERIENF"."PROD_DESC_DST"'
    end
    object SeriePROD_DESC_ALT: TIntegerField
      FieldName = 'PROD_DESC_ALT'
      Origin = '"SIS_SERIENF"."PROD_DESC_ALT"'
    end
    object SerieDATA_ANO_ALT: TIntegerField
      FieldName = 'DATA_ANO_ALT'
      Origin = '"SIS_SERIENF"."DATA_ANO_ALT"'
    end
    object SerieDATA_ANO_DST: TIntegerField
      FieldName = 'DATA_ANO_DST'
      Origin = '"SIS_SERIENF"."DATA_ANO_DST"'
    end
    object SerieDATA_DIA_ALT: TIntegerField
      FieldName = 'DATA_DIA_ALT'
      Origin = '"SIS_SERIENF"."DATA_DIA_ALT"'
    end
    object SerieDATA_DIA_DST: TIntegerField
      FieldName = 'DATA_DIA_DST'
      Origin = '"SIS_SERIENF"."DATA_DIA_DST"'
    end
    object SerieDATA_MES_ALT: TIntegerField
      FieldName = 'DATA_MES_ALT'
      Origin = '"SIS_SERIENF"."DATA_MES_ALT"'
    end
    object SerieDATA_MES_DST: TIntegerField
      FieldName = 'DATA_MES_DST'
      Origin = '"SIS_SERIENF"."DATA_MES_DST"'
    end
    object SerieOBS_ALT: TIntegerField
      FieldName = 'OBS_ALT'
      Origin = '"SIS_SERIENF"."OBS_ALT"'
    end
    object SerieOBS_DST: TIntegerField
      FieldName = 'OBS_DST'
      Origin = '"SIS_SERIENF"."OBS_DST"'
    end
    object SerieNOTA_VENDEDOR_DST: TIntegerField
      FieldName = 'NOTA_VENDEDOR_DST'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_DST"'
    end
    object SerieNOTA_VENDEDOR_ALT: TIntegerField
      FieldName = 'NOTA_VENDEDOR_ALT'
      Origin = '"SIS_SERIENF"."NOTA_VENDEDOR_ALT"'
    end
    object SerieNOTA_ECF_DST: TIntegerField
      FieldName = 'NOTA_ECF_DST'
      Origin = '"SIS_SERIENF"."NOTA_ECF_DST"'
    end
    object SerieNOTA_ECF_ALT: TIntegerField
      FieldName = 'NOTA_ECF_ALT'
      Origin = '"SIS_SERIENF"."NOTA_ECF_ALT"'
    end
    object SerieNOTA_DESCONTO_DST: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST"'
    end
    object SerieNOTA_DESCONTO_ALT: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT"'
    end
    object SerieNOTA_INDCOMPL_DST: TIntegerField
      FieldName = 'NOTA_INDCOMPL_DST'
      Origin = '"SIS_SERIENF"."NOTA_INDCOMPL_DST"'
    end
    object SerieNOTA_INFCOMPL_ALT: TIntegerField
      FieldName = 'NOTA_INFCOMPL_ALT'
      Origin = '"SIS_SERIENF"."NOTA_INFCOMPL_ALT"'
    end
    object SerieCLI_DUPLLARGURA_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLLARGURA_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLLARGURA_COLUNA"'
    end
    object SerieCLI_DUPLNUM_COLUNA: TIntegerField
      FieldName = 'CLI_DUPLNUM_COLUNA'
      Origin = '"SIS_SERIENF"."CLI_DUPLNUM_COLUNA"'
    end
    object SerieNOTA_MSGNAT_DST: TIntegerField
      FieldName = 'NOTA_MSGNAT_DST'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_DST"'
    end
    object SerieNOTA_MSGNAT_ALT: TIntegerField
      FieldName = 'NOTA_MSGNAT_ALT'
      Origin = '"SIS_SERIENF"."NOTA_MSGNAT_ALT"'
    end
    object SerieNOTA_NUMRDP_DST: TIntegerField
      FieldName = 'NOTA_NUMRDP_DST'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_DST"'
    end
    object SerieNOTA_NUMRDP_ALT: TIntegerField
      FieldName = 'NOTA_NUMRDP_ALT'
      Origin = '"SIS_SERIENF"."NOTA_NUMRDP_ALT"'
    end
    object SeriePORTA_IMPRESSAO: TIBStringField
      FieldName = 'PORTA_IMPRESSAO'
      Origin = '"SIS_SERIENF"."PORTA_IMPRESSAO"'
      Size = 30
    end
    object SerieNOTA_DESCONTO_ALT2: TIntegerField
      FieldName = 'NOTA_DESCONTO_ALT2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_ALT2"'
    end
    object SerieNOTA_DESCONTO_DST2: TIntegerField
      FieldName = 'NOTA_DESCONTO_DST2'
      Origin = '"SIS_SERIENF"."NOTA_DESCONTO_DST2"'
    end
    object SeriePROD_QNTD_UNID_ALT: TIntegerField
      FieldName = 'PROD_QNTD_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_ALT"'
    end
    object SeriePROD_QNTD_UNID_DST: TIntegerField
      FieldName = 'PROD_QNTD_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_QNTD_UNID_DST"'
    end
    object SeriePROD_TIPO_UNID_ALT: TIntegerField
      FieldName = 'PROD_TIPO_UNID_ALT'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_ALT"'
    end
    object SeriePROD_TIPO_UNID_DST: TIntegerField
      FieldName = 'PROD_TIPO_UNID_DST'
      Origin = '"SIS_SERIENF"."PROD_TIPO_UNID_DST"'
    end
  end
  object VALOR_SERVICO_MOTOR: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'VALOR_SERVICO_MOTOR'
    Left = 96
    Top = 563
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
        DataType = ftInteger
        Name = 'MOTOR'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SERVICO'
        ParamType = ptInput
      end>
  end
  object APAGA_ITEM_SERVICO: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'APAGA_ORDEM_SERVICO_SERVICO'
    Left = 8
    Top = 563
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
        Name = 'PRODUTO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'SERVICO'
        ParamType = ptInput
      end>
  end
  object APAGA_ORDEM_SERVICO_SERVICO_ORC: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'APAGA_ORDEM_SERVICO_SERVICO_ORC'
    Left = 392
    Top = 507
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
        Name = 'SERVICO'
        ParamType = ptInput
      end>
  end
  object Defeito: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = ServicosAfterInsert
    BeforeOpen = DefeitoBeforeOpen
    BeforePost = ServicosBeforePost
    DeleteSQL.Strings = (
      'delete from OFC_DEFEITO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_DEFEITO'
      '  (ATIVO, CNPJ, CODIGO, NOME)'
      'values'
      '  (:ATIVO, :CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  ATIVO'
      'from OFC_DEFEITO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, CODIGO, NOME, ATIVO  '
      'from OFC_DEFEITO'
      'Where CNPJ = :CNPJ '
      'order by NOME')
    ModifySQL.Strings = (
      'update OFC_DEFEITO'
      'set'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 192
    Top = 563
    object DefeitoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_DEFEITO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object DefeitoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
      Required = True
    end
    object DefeitoNOME: TIBStringField
      Tag = 1
      DisplayLabel = '.'
      FieldName = 'NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Required = True
      Size = 50
    end
    object DefeitoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_DEFEITO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object SelDefeitos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME '
      'from OFC_DEFEITO'
      'Where CNPJ = :CNPJ '
      'Order by NOME')
    Left = 560
    Top = 115
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelDefeitosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_DEFEITO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelDefeitosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
      Required = True
    end
    object SelDefeitosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelPropriedades: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    NOME,'
      '    PROPRIEDADE,'
      '    PROPRIETARIO,'
      '    IE,'
      '    ENDERECO,'
      '    COMPLEMENTO,'
      '    CIDADE,'
      '    UF,'
      '    CEP,'
      '    AREA_TOTAL ,'
      '    NUMERO,'
      '    BAIRRO,'
      '    CPF'
      'from VER_PROPRIEDADES ( :CNPJ, :PESSOA_FJ )')
    Left = 560
    Top = 162
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object SelPropriedadesNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object SelPropriedadesPROPRIETARIO: TIBStringField
      DisplayLabel = 'Propriet'#225'rio'
      FieldName = 'PROPRIETARIO'
      Origin = '"VER_PROPRIEDADE"."PROPRIETARIO"'
      Size = 50
    end
    object SelPropriedadesIE: TIBStringField
      DisplayLabel = 'Ie'
      FieldName = 'IE'
      Origin = '"VER_PROPRIEDADE"."IE"'
      Size = 15
    end
    object SelPropriedadesENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_PROPRIEDADE"."ENDERECO"'
      Size = 50
    end
    object SelPropriedadesCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PROPRIEDADE"."COMPLEMENTO"'
      Size = 30
    end
    object SelPropriedadesCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_PROPRIEDADE"."CIDADE"'
      Size = 50
    end
    object SelPropriedadesUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_PROPRIEDADE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPropriedadesCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_PROPRIEDADE"."CEP"'
      Size = 8
    end
    object SelPropriedadesAREA_TOTAL: TIBStringField
      DisplayLabel = #193'rea'
      FieldName = 'AREA_TOTAL'
      Origin = '"VER_PROPRIEDADE"."AREA_TOTAL"'
      Size = 30
    end
    object SelPropriedadesNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"VER_PROPRIEDADE"."NUMERO"'
      Size = 15
    end
    object SelPropriedadesBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_PROPRIEDADE"."BAIRRO"'
      Size = 50
    end
    object SelPropriedadesCPF: TIBStringField
      DisplayLabel = 'Cpf'
      FieldName = 'CPF'
      Origin = '"VER_PROPRIEDADE"."CPF"'
    end
    object SelPropriedadesPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_PROPRIEDADES"."PROPRIEDADE"'
    end
  end
  object Selorcamentos_Movimentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    SEQUENCIA ,'
      '    VALOR ,'
      '    DATA ,'
      '    HISTORICO ,'
      '    TIPO ,'
      '    TIPO_DESPESA'
      'FROM VER_OFC_ORD_SERV_MOVTO'
      '( :CNPJ, :CODIGO )'
      '')
    Left = 473
    Top = 307
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO'
        ParamType = ptUnknown
      end>
    object Selorcamentos_MovimentosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_OFC_ORD_SERV_MOVTO"."SEQUENCIA"'
    end
    object Selorcamentos_MovimentosVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_OFC_ORD_SERV_MOVTO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Selorcamentos_MovimentosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_OFC_ORD_SERV_MOVTO"."DATA"'
    end
    object Selorcamentos_MovimentosHISTORICO: TBlobField
      FieldName = 'HISTORICO'
      Origin = '"VER_OFC_ORD_SERV_MOVTO"."HISTORICO"'
      Size = 8
    end
    object Selorcamentos_MovimentosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_OFC_ORD_SERV_MOVTO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object Selorcamentos_MovimentosTIPO_DESPESA: TIBStringField
      FieldName = 'TIPO_DESPESA'
      Origin = '"VER_OFC_ORD_SERV_MOVTO"."TIPO_DESPESA"'
      FixedChar = True
      Size = 3
    end
  end
  object Ultimos_Atendimentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * '
      'FROM'
      'VER_ULTIMAS_ORDENS_SERVICO'
      '( :CNPJ, :CODIGO_CLIENTE,:PROPRIEDADE, :COD_ATUAL)')
    Left = 473
    Top = 354
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROPRIEDADE'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_ATUAL'
        ParamType = ptUnknown
      end>
    object Ultimos_AtendimentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CODIGO"'
    end
    object Ultimos_AtendimentosDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."DATA"'
    end
    object Ultimos_AtendimentosPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."PESSOA_FJ"'
    end
    object Ultimos_AtendimentosENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Ultimos_AtendimentosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."NOME"'
      Size = 50
    end
    object Ultimos_AtendimentosNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."NATUREZA"'
    end
    object Ultimos_AtendimentosMECANICO: TIntegerField
      FieldName = 'MECANICO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."MECANICO"'
    end
    object Ultimos_AtendimentosVIAJANTE: TIntegerField
      FieldName = 'VIAJANTE'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."VIAJANTE"'
    end
    object Ultimos_AtendimentosENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."ENTRADA"'
    end
    object Ultimos_AtendimentosMOTOR: TIntegerField
      FieldName = 'MOTOR'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."MOTOR"'
    end
    object Ultimos_AtendimentosHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."HISTORICO"'
      Size = 100
    end
    object Ultimos_AtendimentosCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CHASSI"'
      Size = 30
    end
    object Ultimos_AtendimentosTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CLIENTE"'
      Size = 50
    end
    object Ultimos_AtendimentosFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."FECHADO"'
      Size = 50
    end
    object Ultimos_AtendimentosNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."NOME_NATUREZA"'
      Size = 50
    end
    object Ultimos_AtendimentosNOME_MECANICO: TIBStringField
      FieldName = 'NOME_MECANICO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."NOME_MECANICO"'
      Size = 50
    end
    object Ultimos_AtendimentosNOME_VIAJANTE: TIBStringField
      FieldName = 'NOME_VIAJANTE'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."NOME_VIAJANTE"'
      Size = 50
    end
    object Ultimos_AtendimentosNOME_MOTOR: TIBStringField
      FieldName = 'NOME_MOTOR'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."NOME_MOTOR"'
      Size = 50
    end
    object Ultimos_AtendimentosNF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."NF"'
    end
    object Ultimos_AtendimentosALIQUOTA_ISS: TIBBCDField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."ALIQUOTA_ISS"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosCONTADOR_TOTAL: TIBBCDField
      FieldName = 'CONTADOR_TOTAL'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CONTADOR_TOTAL"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosCONTADOR_COR: TIBBCDField
      FieldName = 'CONTADOR_COR'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CONTADOR_COR"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosCONTADOR_PRETO: TIBBCDField
      FieldName = 'CONTADOR_PRETO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CONTADOR_PRETO"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosCONTADOR_CILINDRO: TIBBCDField
      FieldName = 'CONTADOR_CILINDRO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CONTADOR_CILINDRO"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosCONTADOR_REVELADOR: TIBBCDField
      FieldName = 'CONTADOR_REVELADOR'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CONTADOR_REVELADOR"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosCONTADOR_IMPRESSAO: TIBBCDField
      FieldName = 'CONTADOR_IMPRESSAO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CONTADOR_IMPRESSAO"'
      Precision = 18
      Size = 4
    end
    object Ultimos_AtendimentosSOLICITANTE: TIBStringField
      FieldName = 'SOLICITANTE'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."SOLICITANTE"'
      Size = 50
    end
    object Ultimos_AtendimentosDEFEITO_RECLAMADO: TIBStringField
      FieldName = 'DEFEITO_RECLAMADO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."DEFEITO_RECLAMADO"'
      Size = 50
    end
    object Ultimos_AtendimentosTIPO_ATENDIMENTO: TIBStringField
      FieldName = 'TIPO_ATENDIMENTO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."TIPO_ATENDIMENTO"'
      Size = 50
    end
    object Ultimos_AtendimentosCONDICAO_FINAL_EQUIPAMENTO: TIBStringField
      FieldName = 'CONDICAO_FINAL_EQUIPAMENTO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CONDICAO_FINAL_EQUIPAMENTO"'
      Size = 50
    end
    object Ultimos_AtendimentosCAUSA_CHAMADO: TIBStringField
      FieldName = 'CAUSA_CHAMADO'
      Origin = '"VER_ULTIMAS_ORDENS_SERVICO"."CAUSA_CHAMADO"'
      Size = 200
    end
  end
  object SelPropriedade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    NOME ,'
      '    PROPRIETARIO ,'
      '    IE ,'
      '    ENDERECO ,'
      '    COMPLEMENTO ,'
      '    CIDADE ,'
      '    UF ,'
      '    CEP ,'
      '    AREA_TOTAL,'
      '    OBS,'
      '    NUMERO, '
      '    BAIRRO,'
      '    CPF'
      'from VER_PROPRIEDADE ( :CNPJ, :PESSOA_FJ, :PROPRIEDADE )'
      ''
      '')
    Left = 560
    Top = 258
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PROPRIEDADE'
        ParamType = ptUnknown
      end>
    object SelPropriedadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object SelPropriedadePROPRIETARIO: TIBStringField
      FieldName = 'PROPRIETARIO'
      Origin = '"VER_PROPRIEDADE"."PROPRIETARIO"'
      Size = 50
    end
    object SelPropriedadeIE: TIBStringField
      FieldName = 'IE'
      Origin = '"VER_PROPRIEDADE"."IE"'
      Size = 15
    end
    object SelPropriedadeENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PROPRIEDADE"."ENDERECO"'
      Size = 50
    end
    object SelPropriedadeCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PROPRIEDADE"."COMPLEMENTO"'
      Size = 30
    end
    object SelPropriedadeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PROPRIEDADE"."CIDADE"'
      Size = 50
    end
    object SelPropriedadeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PROPRIEDADE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPropriedadeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PROPRIEDADE"."CEP"'
      Size = 8
    end
    object SelPropriedadeAREA_TOTAL: TIBStringField
      FieldName = 'AREA_TOTAL'
      Origin = '"VER_PROPRIEDADE"."AREA_TOTAL"'
      Size = 30
    end
    object SelPropriedadeOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PROPRIEDADE"."OBS"'
      Size = 8
    end
    object SelPropriedadeNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"VER_PROPRIEDADE"."NUMERO"'
      Size = 15
    end
    object SelPropriedadeBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_PROPRIEDADE"."BAIRRO"'
      Size = 50
    end
    object SelPropriedadeCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VER_PROPRIEDADE"."CPF"'
    end
  end
  object Fat_VendasItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Fat_VendasItensCalcFields
    SQL.Strings = (
      'Select *'
      'from VER_FAT_VENDAS_ITENS( :CNPJ, :CODIGO) ')
    Left = 560
    Top = 211
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
    object Fat_VendasItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasItensSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_ITENS"."SEQUENCIA"'
    end
    object Fat_VendasItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."QUANTIDADE"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME"'
      Size = 50
    end
    object Fat_VendasItensPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_ITENS"."ICM"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_ITENS"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_ITENS"."IPI"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_ITENS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PESO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."DESCONTO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_ITENS"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasItensPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Fat_VendasItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Fat_VendasItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_ITENS"."CTE"'
    end
    object Fat_VendasItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_ITENS"."CTIE"'
    end
    object Fat_VendasItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Fat_VendasItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Fat_VendasItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."SUBUNIDADE"'
    end
    object Fat_VendasItensDESCONTO_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DESCONTO_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object TipoAtendimento: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = TipoAtendimentoAfterClose
    AfterInsert = TipoAtendimentoAfterInsert
    BeforeOpen = TipoAtendimentoBeforeOpen
    DeleteSQL.Strings = (
      'delete from OFC_TIPO_ATENDIMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_TIPO_ATENDIMENTO'
      '  (CNPJ, CODIGO, NOME, RETORNO)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME, :RETORNO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  RETORNO'
      'from OFC_TIPO_ATENDIMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, CODIGO, NOME, retorno'
      'from OFC_TIPO_ATENDIMENTO'
      'Where CNPJ = :CNPJ '
      'order by NOME')
    ModifySQL.Strings = (
      'update OFC_TIPO_ATENDIMENTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  RETORNO = :RETORNO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_TIPO_ATENDIMENTO_ID'
    Left = 768
    Top = 131
    object TipoAtendimentoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object TipoAtendimentoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CODIGO"'
      Required = True
    end
    object TipoAtendimentoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
    object TipoAtendimentoRETORNO: TIBStringField
      FieldName = 'RETORNO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."RETORNO"'
      FixedChar = True
      Size = 1
    end
  end
  object MotivoChamado: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = MotivoChamadoAfterClose
    AfterInsert = MotivoChamadoAfterInsert
    BeforeOpen = MotivoChamadoBeforeOpen
    DeleteSQL.Strings = (
      'delete from OFC_MOTIVO_CHAMADO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_MOTIVO_CHAMADO'
      '  (ATIVO, CNPJ, CODIGO, NOME)'
      'values'
      '  (:ATIVO, :CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  ATIVO'
      'from OFC_MOTIVO_CHAMADO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, CODIGO, NOME, ativo'
      'from OFC_MOTIVO_CHAMADO'
      'Where CNPJ = :CNPJ '
      'order by NOME')
    ModifySQL.Strings = (
      'update OFC_MOTIVO_CHAMADO'
      'set'
      '  ATIVO = :ATIVO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_MOTIVO_CHAMADO_ID'
    Left = 96
    Top = 507
    object MotivoChamadoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTIVO_CHAMADO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MotivoChamadoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
      Required = True
    end
    object MotivoChamadoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object MotivoChamadoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_MOTIVO_CHAMADO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object SelTecnico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email, t.assinatura from ofc_mecanico' +
        's t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj')
    Left = 1000
    Top = 258
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelTecnicoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      Required = True
    end
    object SelTecnicoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelTecnicoEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object SelTecnicoASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object SelEquipCliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      
        'select distinct cti.codigo cod_item, prd.codigo||'#39'-'#39'||prd.nome c' +
        'odigo_nome, prd.codigo, substring(prd.nome from 1 for 25) nome, ' +
        ' prd.serie, DT_FIM,'
      'ct.codigo codigo_contrato,cti.ativo ativo2,'
      'case coalesce(cti.ativo,'#39'N'#39')'
      '     when '#39'S'#39' then '#39'Ativo'#39
      '     when '#39'N'#39' then '#39'Inativo'#39
      'end ativo,'
      'cti.informacoes_itens,'
      'mdl.nome modelo,'
      'tp.nome tipo_contrato'
      ''
      'from ofc_contratos_itens cti'
      
        'inner join ofc_contratos ct on (ct.codigo = cti.contrato and ct.' +
        'cnpj = cti.cnpj)'
      
        'inner join est_produtos prd on (prd.cnpj = cti.cnpj and prd.codi' +
        'go = cti.cod_produto)'
      
        'left join glo_tipo_contrato tp on (tp.cnpj = ct.cnpj and tp.codi' +
        'go = ct.COD_CONTRATO)'
      
        'left join glo_modelo_propriedade mdl on (prd.cnpj = mdl.cnpj and' +
        ' prd.modelo = mdl.codigo)'
      
        'where ct.cnpj = :cnpj and ct.ativo = '#39'S'#39' and ct.cod_cliente = :c' +
        'od_cliente '
      'and ((cti.ativo = :ativo) or (:ativo = '#39'T'#39'))'
      
        'order by  coalesce(cti.ativo,'#39'N'#39'), prd.codigo||'#39'-'#39'||prd.nome des' +
        'c')
    Left = 1001
    Top = 307
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ativo'
        ParamType = ptUnknown
      end>
    object SelEquipClienteCODIGO_NOME: TIBStringField
      FieldName = 'CODIGO_NOME'
      Required = True
      Size = 66
    end
    object SelEquipClienteCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelEquipClienteSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object SelEquipClienteDT_FIM: TDateTimeField
      FieldName = 'DT_FIM'
      Origin = '"OFC_CONTRATOS"."DT_FIM"'
    end
    object SelEquipClienteCODIGO_CONTRATO: TIntegerField
      FieldName = 'CODIGO_CONTRATO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      Required = True
    end
    object SelEquipClienteATIVO: TIBStringField
      FieldName = 'ATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 7
    end
    object SelEquipClienteINFORMACOES_ITENS: TMemoField
      FieldName = 'INFORMACOES_ITENS'
      Origin = '"OFC_CONTRATOS_ITENS"."INFORMACOES_ITENS"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelEquipClienteMODELO: TIBStringField
      DisplayWidth = 25
      FieldName = 'MODELO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object SelEquipClienteNOME: TIBStringField
      DisplayWidth = 25
      FieldName = 'NOME'
      ProviderFlags = []
      Size = 50
    end
    object SelEquipClienteATIVO2: TIBStringField
      FieldName = 'ATIVO2'
      Origin = '"OFC_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object SelEquipClienteCOD_ITEM: TIntegerField
      FieldName = 'COD_ITEM'
      Origin = '"OFC_CONTRATOS_ITENS"."CODIGO"'
      Required = True
    end
    object SelEquipClienteTIPO_CONTRATO: TIBStringField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
  end
  object SelStatus: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      'select codigo,nome from ofc_status'
      'where cnpj = :cnpj'
      'order by nome')
    Left = 392
    Top = 458
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelStatusCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      Required = True
    end
    object SelStatusNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
  end
  object SelTA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      'select * from ofc_tipo_atendimento ta'
      'where ta.cnpj = :cnpj')
    Left = 769
    Top = 202
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
  end
  object SelMotivo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelModelosProdutoBeforeOpen
    SQL.Strings = (
      'select * from ofc_motivo_chamado mc'
      'where mc.cnpj = :cnpj'
      'order by mc.nome')
    Left = 192
    Top = 507
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMotivoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_MOTIVO_CHAMADO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMotivoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
      Required = True
    end
    object SelMotivoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
  end
  object INSERE_LOG_STATUS: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'insert into ofc_log_status (cnpj,old_status,new_status,usuario,d' +
        'ata,hora,cod_ordem,cod_cliente)'
      
        'values (:cnpj,:old_status,:new_status,:usuario,:data,:hora,:cod_' +
        'ordem,:cod_cliente)')
    Transaction = DmApp.Transaction
    Left = 288
    Top = 507
  end
  object ResumoGraficoOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      
        'COUNT(ofc.codigo) count_ofc_codigo ,ofc.cod_status ofc_cod_statu' +
        's, st.nome st_nome'
      'FROM ofc_ordem_servico ofc'
      
        'LEFT JOIN ofc_status st ON (st.codigo = ofc.cod_status AND st.cn' +
        'pj=ofc.cnpj)'
      'where (ofc.cnpj = :cnpj) and  (ofc.data_fechamento is null)'
      'GROUP BY ofc.cod_status, st.nome'
      'order by COUNT(ofc.codigo)')
    Left = 288
    Top = 563
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object ResumoGraficoOSCOUNT_OFC_CODIGO: TIntegerField
      FieldName = 'COUNT_OFC_CODIGO'
      Required = True
    end
    object ResumoGraficoOSOFC_COD_STATUS: TIntegerField
      FieldName = 'OFC_COD_STATUS'
    end
    object ResumoGraficoOSST_NOME: TIBStringField
      FieldName = 'ST_NOME'
      Size = 50
    end
  end
  object SelServicos_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = ContratosItensCalcFields
    OnNewRecord = Servicos_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_SERVICO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO')
    RefreshSQL.Strings = (
      'select osi.cnpj,'
      '  osi.codigo,'
      '  osi.nome,'
      '  osi.quantidade,'
      '  osi.servico,'
      '  osi.unitario,'
      '  osi.selecionado,'
      '  prd.codigo as cod_produto,'
      '  osi.codigo_tecnico,'
      '  prd.nome nome_produto,'
      '  tec.nome as nometec,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      '                       end tipo_servico'
      ''
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join ofc_mecanicos  tec on(tec.codigo = osi.codigo_tecnico ' +
        'and osi.cnpj = tec.cnpj)'
      'where '
      '  osi.CNPJ = :OLD_CNPJ and'
      '  osi.CODIGO = :OLD_CODIGO and'
      '  osi.PRODUTO = :OLD_PRODUTO')
    SelectSQL.Strings = (
      'select osi.cnpj,'
      '  osi.codigo,'
      '  osi.nome,'
      '  osi.quantidade,'
      '  osi.servico,'
      '  osi.unitario,'
      '  osi.selecionado,'
      '  prd.codigo as cod_produto,'
      '  osi.codigo_tecnico,'
      '  prd.nome nome_produto,'
      '  tec.nome as nometec,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      '                       end tipo_servico'
      ''
      'from ofc_ordem_servico_servico osi'
      
        'left join est_produtos prd on (prd.cnpj = osi.cnpj and osi.produ' +
        'to = prd.codigo)'
      
        'left join ofc_mecanicos  tec on(tec.codigo = osi.codigo_tecnico ' +
        'and osi.cnpj = tec.cnpj)'
      'where osi.cnpj = :cnpj and osi.codigo = :codigo')
    DataSource = DsOrdem
    Left = 1000
    Top = 134
    object SelServicos_ItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelServicos_ItensCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO"'
      Required = True
      DisplayFormat = 'C'#243'digo'
    end
    object SelServicos_ItensNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."NOME"'
      Size = 50
    end
    object SelServicos_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelServicos_ItensSERVICO: TIntegerField
      DisplayLabel = 'Sevi'#231'o'
      FieldName = 'SERVICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SERVICO"'
    end
    object SelServicos_ItensUNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'UNITARIO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelServicos_ItensSELECIONADO: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object SelServicos_ItensCOD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Item'
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object SelServicos_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Item'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object SelServicos_ItensTIPO_SERVICO: TIBStringField
      DisplayLabel = 'Tp. Servi'#231'o'
      FieldName = 'TIPO_SERVICO'
      FixedChar = True
      Size = 7
    end
    object SelServicos_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object SelServicos_ItensNOMETEC: TIBStringField
      DisplayLabel = 'Nome T'#233'cnico'
      FieldName = 'NOMETEC'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelServicos_ItensCODIGO_TECNICO: TIntegerField
      FieldName = 'CODIGO_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_SERVICO"."CODIGO_TECNICO"'
    end
  end
  object SelModelosProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelModelosProdutoBeforeOpen
    SQL.Strings = (
      'select * from glo_modelo_propriedade'
      'where cnpj = :cnpj'
      'order by nome'
      '')
    Left = 392
    Top = 562
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelModelosProdutoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelModelosProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CODIGO"'
      Required = True
    end
    object SelModelosProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Required = True
      Size = 50
    end
  end
  object OS_INTERVALO: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterInsert = OS_INTERVALOAfterInsert
    AfterPost = OS_INTERVALOAfterPost
    BeforeOpen = ServicosBeforeOpen
    BeforePost = OS_INTERVALOBeforePost
    OnNewRecord = OS_INTERVALONewRecord
    DeleteSQL.Strings = (
      'delete from OFC_ORDEM_SERVICO_INTERVALO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into OFC_ORDEM_SERVICO_INTERVALO'
      '  (CNPJ, cod_tipo_movto, cod_contato,'
      '   cod_status,'
      
        '   cod_veiculo, TIPO, COD_TECNICO, CODIGO, DT_FIM, DT_INICIO, HR' +
        '_FIM, HR_INICIO, KM_FINAL, '
      
        '   KM_INICIAL, KM_RODADO, OBSERVACAO, QTDE_HORA, SEQUENCIA, TEMP' +
        'O_VIAJEM, '
      '   USUARIO,'
      'dt_lancto,'
      '   dt_vencto,'
      '   dt_conclusao)'
      'values'
      '  (:CNPJ, :cod_tipo_movto, :cod_contato,'
      '   :cod_status,'
      
        '   :cod_veiculo, :TIPO, :COD_TECNICO, :CODIGO, :DT_FIM, :DT_INIC' +
        'IO, :HR_FIM, :HR_INICIO, '
      
        '   :KM_FINAL, :KM_INICIAL, :KM_RODADO, :OBSERVACAO, :QTDE_HORA, ' +
        ':SEQUENCIA, '
      '   :TEMPO_VIAJEM, :USUARIO,'
      ':dt_lancto,'
      '   :dt_vencto,'
      '   :dt_conclusao)')
    RefreshSQL.Strings = (
      'select'
      '   s.CNPJ,'
      '   s.CODIGO, '
      '   s.DT_FIM, '
      '   s.DT_INICIO, '
      '   s.HR_INICIO, '
      '   s.HR_FIM, '
      '   s.SEQUENCIA,'
      '   s.OBSERVACAO, '
      '   s.QTDE_HORA,'
      '   s.KM_RODADO,'
      '   s.KM_INICIAL,'
      '   s.KM_FINAL,'
      '   s.TEMPO_VIAJEM,'
      '   s.usuario,'
      ' S.cod_tipo_movto,'
      '   case s.usuario'
      '    when (null) then 0'
      '    else s.usuario||'#39'-'#39'||coalesce(u.nome,'#39#39')'
      '   end nome_usuario, '
      ''
      '   t.nome nome_tecnico,'
      '   s.cod_tecnico,'
      '  '
      '   s.custo_hora, '
      '   s.custo_intervalo custo_atividade,'
      '   s.tipo,'
      '   s.dt_lancto,'
      '   s.dt_vencto,'
      '   s.dt_conclusao,'
      's.cod_contato,'
      '   s.cod_status,'
      '   s.cod_veiculo'
      'from OFC_ORDEM_SERVICO_INTERVALO s'
      'left join sis_usuarios u on (u.codigo = s.usuario)'
      
        'left join ofc_mecanicos t on (t.cnpj = s.cnpj and t.codigo = s.c' +
        'od_tecnico)'
      'where'
      '  s.CNPJ = :CNPJ and'
      '  s.CODIGO = :CODIGO and'
      '  s.SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select'
      '   s.CNPJ,'
      '   s.CODIGO, '
      '   s.DT_FIM, '
      '   s.DT_INICIO, '
      '   s.HR_INICIO, '
      '   s.HR_FIM, '
      '   s.SEQUENCIA,'
      '   s.OBSERVACAO, '
      '   s.QTDE_HORA,'
      '   s.KM_RODADO,'
      '   s.KM_INICIAL,'
      '   s.KM_FINAL,'
      '   s.TEMPO_VIAJEM,'
      '   s.usuario,'
      ' S.cod_tipo_movto,'
      '   case s.usuario'
      '    when (null) then 0'
      '    else s.usuario||'#39'-'#39'||coalesce(u.nome,'#39#39')'
      '   end nome_usuario, '
      ''
      '   t.nome nome_tecnico,'
      '   s.cod_tecnico,'
      '  '
      '   s.custo_hora, '
      '   s.custo_intervalo custo_atividade,'
      '   s.tipo,'
      '   s.dt_lancto,'
      '   s.dt_vencto,'
      '   s.dt_conclusao,'
      's.cod_contato,'
      '   s.cod_status,'
      '   s.cod_veiculo'
      'from OFC_ORDEM_SERVICO_INTERVALO s'
      'left join sis_usuarios u on (u.codigo = s.usuario)'
      
        'left join ofc_mecanicos t on (t.cnpj = s.cnpj and t.codigo = s.c' +
        'od_tecnico)'
      
        'WHERE s.CNPJ = :CNPJ AND s.CODIGO = :CODIGO /*and s.Sequencia = ' +
        ':Sequencia*/'
      'ORDER BY  DT_INICIO, HR_INICIO ')
    ModifySQL.Strings = (
      'update OFC_ORDEM_SERVICO_INTERVALO'
      'set'
      '  CNPJ = :CNPJ,'
      '  TIPO = :TIPO,'
      '  cod_contato = :cod_contato,'
      '   cod_status = :cod_status,'
      '   cod_veiculo = :cod_veiculo,'
      '  cod_tipo_movto'#13' = :cod_tipo_movto, '#10'  '
      '  COD_TECNICO = :COD_TECNICO,'
      '  CODIGO = :CODIGO,'
      '  DT_FIM = :DT_FIM,'
      '  DT_INICIO = :DT_INICIO,'
      '  HR_FIM = :HR_FIM,'
      '  HR_INICIO = :HR_INICIO,'
      '  KM_FINAL = :KM_FINAL,'
      '  KM_INICIAL = :KM_INICIAL,'
      '  KM_RODADO = :KM_RODADO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  QTDE_HORA = :QTDE_HORA,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  TEMPO_VIAJEM = :TEMPO_VIAJEM,'
      '  USUARIO = :USUARIO,'
      '  dt_lancto = :dt_lancto,'
      '  dt_vencto = :dt_vencto,'
      '  dt_conclusao = :dt_conclusao'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    DataSource = DsOrdem
    Left = 1144
    Top = 259
    object OS_INTERVALOCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OS_INTERVALOSEQUENCIA: TIntegerField
      DisplayLabel = 'Seq.'
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."SEQUENCIA"'
      Required = True
    end
    object OS_INTERVALOCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CODIGO"'
      Required = True
    end
    object OS_INTERVALOHR_INICIO: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HR_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_INICIO"'
    end
    object OS_INTERVALOHR_FIM: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HR_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_FIM"'
    end
    object OS_INTERVALOKM_RODADO: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_RODADO"'
      ReadOnly = True
    end
    object OS_INTERVALOKM_INICIAL: TFloatField
      DisplayLabel = 'Km. Inicial'
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_INICIAL"'
      OnChange = OS_INTERVALOKM_INICIALChange
    end
    object OS_INTERVALOKM_FINAL: TFloatField
      DisplayLabel = 'Km. Final'
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_FINAL"'
      OnChange = OS_INTERVALOKM_INICIALChange
    end
    object OS_INTERVALOQTDE_HORA: TFloatField
      DisplayLabel = 'Hrs. Trabalhadas'
      FieldName = 'QTDE_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."QTDE_HORA"'
      DisplayFormat = '###,##0.0000'
    end
    object OS_INTERVALOTEMPO_VIAJEM: TFloatField
      DisplayLabel = 'Tmp. de Viajem (Hrs)'
      FieldName = 'TEMPO_VIAJEM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TEMPO_VIAJEM"'
      DisplayFormat = '###,##0.00'
    end
    object OS_INTERVALOUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."USUARIO"'
    end
    object OS_INTERVALONOME_USUARIO: TIBStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 61
    end
    object OS_INTERVALOCUSTO_HORA: TFloatField
      DisplayLabel = 'Custo Hora'
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_MECANICOS"."CUSTO_HORA"'
      DisplayFormat = '###,##0.00'
    end
    object OS_INTERVALONOME_TECNICO: TIBStringField
      DisplayLabel = 'T'#233'cnico'
      FieldName = 'NOME_TECNICO'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object OS_INTERVALOCOD_TECNICO: TIntegerField
      DisplayLabel = 'C'#243'd. T'#233'cnico'
      FieldName = 'COD_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TECNICO"'
    end
    object OS_INTERVALOCUSTO_ATIVIDADE: TFloatField
      DisplayLabel = 'Custo Atividade'
      FieldName = 'CUSTO_ATIVIDADE'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object OS_INTERVALOTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object OS_INTERVALODT_INICIO: TDateField
      FieldName = 'DT_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_INICIO"'
    end
    object OS_INTERVALODT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_LANCTO"'
    end
    object OS_INTERVALODT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_VENCTO"'
    end
    object OS_INTERVALODT_CONCLUSAO: TDateField
      FieldName = 'DT_CONCLUSAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_CONCLUSAO"'
    end
    object OS_INTERVALODT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_FIM"'
    end
    object OS_INTERVALOCOD_TIPO_MOVTO: TIntegerField
      FieldName = 'COD_TIPO_MOVTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TIPO_MOVTO"'
    end
    object OS_INTERVALOCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_CONTATO"'
    end
    object OS_INTERVALOCOD_VEICULO: TIBStringField
      FieldName = 'COD_VEICULO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_VEICULO"'
      FixedChar = True
      Size = 8
    end
    object OS_INTERVALOCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_STATUS"'
    end
    object OS_INTERVALOOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."OBSERVACAO"'
      Size = 80
    end
  end
  object PreventivaOS: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SelectSQL.Strings = (
      'select *'
      'from PCD_LST_OS_PREVENTIVA(:CNPJ,'
      '    :COD_CIDADE,'
      '    :COD_TECNICO,'
      '    :COD_CLIENTE,'
      '    :DATA_BASE,  '
      '     :ATIVO)')
    Left = 560
    Top = 451
    object PreventivaOSCONTRATO_ATIVO: TIBStringField
      DisplayLabel = 'Contrato Ativo'
      FieldName = 'CONTRATO_ATIVO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_ATIVO"'
      OnGetText = PreventivaOSCONTRATO_ATIVOGetText
      FixedChar = True
      Size = 1
    end
    object PreventivaOSCONTRATO_CLIENTE: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'CONTRATO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_CLIENTE"'
    end
    object PreventivaOSCONTRATO_CODIGO: TIntegerField
      DisplayLabel = 'Cod. Contrato'
      FieldName = 'CONTRATO_CODIGO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_CODIGO"'
    end
    object PreventivaOSCONTRATO_DIAS_RECHAMADO: TIntegerField
      DisplayLabel = 'Rechamado'
      FieldName = 'CONTRATO_DIAS_RECHAMADO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_DIAS_RECHAMADO"'
    end
    object PreventivaOSCONTRATO_DT_FIM: TDateTimeField
      DisplayLabel = 'Contrato Fim'
      FieldName = 'CONTRATO_DT_FIM'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_DT_FIM"'
    end
    object PreventivaOSCONTRATO_DT_INICIO: TDateTimeField
      DisplayLabel = 'Contrato In'#237'cio'
      FieldName = 'CONTRATO_DT_INICIO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_DT_INICIO"'
    end
    object PreventivaOSNUMERO_CONTRATO: TIBStringField
      DisplayLabel = 'N'#250'mero Contrato'
      FieldName = 'NUMERO_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NUMERO_CONTRATO"'
      Size = 30
    end
    object PreventivaOSTEMPO_RESPOSTA: TIntegerField
      DisplayLabel = 'Tempo Resposta'
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."TEMPO_RESPOSTA"'
    end
    object PreventivaOSATIVIDADE_CLIENTE: TIntegerField
      DisplayLabel = 'Atividade Cliente'
      FieldName = 'ATIVIDADE_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."ATIVIDADE_CLIENTE"'
    end
    object PreventivaOSBAIRRO_CLIENTE: TIntegerField
      DisplayLabel = 'Bairro Cliente'
      FieldName = 'BAIRRO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."BAIRRO_CLIENTE"'
    end
    object PreventivaOSCIDADE_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'CIDADE_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CIDADE_CLIENTE"'
    end
    object PreventivaOSCODIGO_CLIENTE: TIntegerField
      DisplayLabel = 'Cod. Cliente'
      FieldName = 'CODIGO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_CLIENTE"'
    end
    object PreventivaOSCPF_CNPJ: TIBStringField
      DisplayLabel = 'CPF /CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CPF_CNPJ"'
      Size = 15
    end
    object PreventivaOSNOME_FANTASIA: TIBStringField
      DisplayLabel = 'Nome Fantasia'
      FieldName = 'NOME_FANTASIA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_FANTASIA"'
      Size = 50
    end
    object PreventivaOSRAZAO_SOCIAL: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'RAZAO_SOCIAL'
      Origin = '"PCD_LST_OS_PREVENTIVA"."RAZAO_SOCIAL"'
      Size = 50
    end
    object PreventivaOSREGIAO_CLIENTE: TIntegerField
      DisplayLabel = 'C'#243'd. Regi'#227'o'
      FieldName = 'REGIAO_CLIENTE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."REGIAO_CLIENTE"'
    end
    object PreventivaOSRG_INSC_ESTADUAL: TIBStringField
      DisplayLabel = 'RG / Insc. Estadual'
      FieldName = 'RG_INSC_ESTADUAL'
      Origin = '"PCD_LST_OS_PREVENTIVA"."RG_INSC_ESTADUAL"'
      Size = 15
    end
    object PreventivaOSUF: TIBStringField
      FieldName = 'UF'
      Origin = '"PCD_LST_OS_PREVENTIVA"."UF"'
      FixedChar = True
      Size = 2
    end
    object PreventivaOSPRODUTO_ATIVO: TIBStringField
      DisplayLabel = 'Produto Ativo'
      FieldName = 'PRODUTO_ATIVO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."PRODUTO_ATIVO"'
      FixedChar = True
      Size = 1
    end
    object PreventivaOSCODIGO_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'CODIGO_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_PRODUTO"'
      Size = 15
    end
    object PreventivaOSCODIGO_PRODUTO_SEC: TIBStringField
      DisplayLabel = 'C'#243'd. Sec. Produto'
      FieldName = 'CODIGO_PRODUTO_SEC'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_PRODUTO_SEC"'
      Size = 15
    end
    object PreventivaOSCODIGO_MARCA: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'CODIGO_MARCA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CODIGO_MARCA"'
    end
    object PreventivaOSNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_PRODUTO"'
      Size = 50
    end
    object PreventivaOSMARCA_PRODUTO: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."MARCA_PRODUTO"'
      Size = 50
    end
    object PreventivaOSMODELO_PRODUTO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO_PRODUTO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."MODELO_PRODUTO"'
      Size = 80
    end
    object PreventivaOSTIPO_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Tipo Contrato'
      FieldName = 'TIPO_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."TIPO_CONTRATO"'
    end
    object PreventivaOSNOME_CONTRATO: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'NOME_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_CONTRATO"'
      Size = 50
    end
    object PreventivaOSMEDIA_COPIA: TIntegerField
      DisplayLabel = 'M'#233'dia C'#243'pia'
      FieldName = 'MEDIA_COPIA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."MEDIA_COPIA"'
    end
    object PreventivaOSCONTRATO_COPIAS_PREVENTIVA: TIntegerField
      DisplayLabel = 'Nr. C'#243'pia para Preventiva'
      FieldName = 'CONTRATO_COPIAS_PREVENTIVA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTRATO_COPIAS_PREVENTIVA"'
    end
    object PreventivaOSQTDE_COPIA_ATUAL: TIntegerField
      DisplayLabel = 'M'#233'dia C'#243'pia Atual'
      FieldName = 'QTDE_COPIA_ATUAL'
      Origin = '"PCD_LST_OS_PREVENTIVA"."QTDE_COPIA_ATUAL"'
    end
    object PreventivaOSQTDE_COPIA_PREVISTA: TIntegerField
      DisplayLabel = 'M'#233'dia C'#243'pia Prevista'
      FieldName = 'QTDE_COPIA_PREVISTA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."QTDE_COPIA_PREVISTA"'
    end
    object PreventivaOSDT_FECHAMENTO_ULTIMO: TDateField
      DisplayLabel = 'Data Fechamento'
      FieldName = 'DT_FECHAMENTO_ULTIMO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."DT_FECHAMENTO_ULTIMO"'
    end
    object PreventivaOSCONTADOR_ULTIMO: TIntegerField
      DisplayLabel = #218'ltimo Contador'
      FieldName = 'CONTADOR_ULTIMO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."CONTADOR_ULTIMO"'
    end
    object PreventivaOSPONTO_VISITA_PREVENTIVA: TDateField
      DisplayLabel = 'Ponto de Atendimento Preventivo'
      FieldName = 'PONTO_VISITA_PREVENTIVA'
      Origin = '"PCD_LST_OS_PREVENTIVA"."PONTO_VISITA_PREVENTIVA"'
    end
    object PreventivaOSDIAS_EM_ATRASO: TIntegerField
      DisplayLabel = 'Atraso (dias)'
      FieldName = 'DIAS_EM_ATRASO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."DIAS_EM_ATRASO"'
    end
    object PreventivaOSNOME_CIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'NOME_CIDADE'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_CIDADE"'
      Size = 50
    end
    object PreventivaOSNOME_REGIAO: TIBStringField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'NOME_REGIAO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_REGIAO"'
      Size = 50
    end
    object PreventivaOSNOME_TIPO_CONTRATO: TIBStringField
      DisplayLabel = 'Tipo Contrato'
      FieldName = 'NOME_TIPO_CONTRATO'
      Origin = '"PCD_LST_OS_PREVENTIVA"."NOME_TIPO_CONTRATO"'
      Size = 50
    end
  end
  object SelContrato: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select coalesce(psa.nome_razao,'#39#39')||'#39'-'#39'||coalesce(psa.codigo,'#39#39')' +
        '||'#39' ('#39'||coalesce(ct.num_contrato,'#39#39')||'#39') - Ativo: '#39'||coalesce(ct' +
        '.ativo,'#39'N'#39') contrato,'
      'psa.codigo psa_codigo,  ct.codigo'
      'from glo_pessoas_fj psa'
      
        'inner join ofc_contratos ct on (ct.cod_cliente = psa.codigo  and' +
        ' ct.cnpj = psa.cnpj)'
      'order by psa.nome_razao')
    Left = 480
    Top = 563
    object SelContratoPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelContratoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTES_PRODUTOS"."CODIGO"'
      Required = True
    end
    object SelContratoCONTRATO: TIBStringField
      FieldName = 'CONTRATO'
      Size = 95
    end
  end
  object SelUserOrigem: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT CODIGO, '
      '               LOGIN, '
      '               NOME, '
      '               PERFIL, '
      '               SENHA'
      'FROM SIS_USUARIOS'
      'ORDER BY LOGIN')
    Left = 312
    Top = 621
    object SelUserOrigemCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      Required = True
    end
    object SelUserOrigemLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object SelUserOrigemNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelUserOrigemPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = '"SIS_USUARIOS"."PERFIL"'
      Required = True
    end
    object SelUserOrigemSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_USUARIOS"."SENHA"'
      Required = True
    end
  end
  object SelUserDestino: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT CODIGO, '
      '               LOGIN, '
      '               NOME, '
      '               PERFIL, '
      '               SENHA'
      'FROM SIS_USUARIOS'
      'ORDER BY LOGIN')
    Left = 416
    Top = 621
    object SelUserDestinoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      Required = True
    end
    object SelUserDestinoLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object SelUserDestinoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_USUARIOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelUserDestinoPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = '"SIS_USUARIOS"."PERFIL"'
      Required = True
    end
    object SelUserDestinoSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"SIS_USUARIOS"."SENHA"'
      Required = True
    end
  end
  object SelProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelModelosProdutoBeforeOpen
    SQL.Strings = (
      'select * from est_produtos prd'
      'where prd.cnpj = :cnpj'
      'order by nome')
    Left = 504
    Top = 621
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelProdutosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelProdutosCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object SelProdutosCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object SelProdutosCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PRODUTOS"."COD_AGRUP"'
      Size = 15
    end
    object SelProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelProdutosMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"EST_PRODUTOS"."MARCA"'
    end
    object SelProdutosNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"EST_PRODUTOS"."NOME_MARCA"'
      Size = 50
    end
    object SelProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_PRODUTOS"."GRUPO"'
    end
    object SelProdutosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_PRODUTOS"."SUBGRUPO"'
    end
    object SelProdutosREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"EST_PRODUTOS"."REDUCAO"'
    end
    object SelProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object SelProdutosCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"EST_PRODUTOS"."CTE"'
    end
    object SelProdutosCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"EST_PRODUTOS"."CTIE"'
    end
    object SelProdutosQTDADE_1: TFloatField
      FieldName = 'QTDADE_1'
      Origin = '"EST_PRODUTOS"."QTDADE_1"'
    end
    object SelProdutosQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object SelProdutosLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object SelProdutosLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object SelProdutosLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object SelProdutosNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"EST_PRODUTOS"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"EST_PRODUTOS"."QTDADE_MIN"'
    end
    object SelProdutosQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"EST_PRODUTOS"."QTDADE_MAX"'
    end
    object SelProdutosCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."DT_ULT_COMPRA"'
    end
    object SelProdutosQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."QT_ULT_COMPRA"'
    end
    object SelProdutosDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"EST_PRODUTOS"."DT_ULT_VENDA"'
    end
    object SelProdutosMARGEM_BRUTA: TFloatField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"EST_PRODUTOS"."MARGEM_BRUTA"'
    end
    object SelProdutosPRC_REPOS: TFloatField
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
    end
    object SelProdutosPRC_CUSTO_ANT: TFloatField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_ANT"'
    end
    object SelProdutosPRC_CUSTO_MED: TFloatField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_MED"'
    end
    object SelProdutosPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
    end
    object SelProdutosPRC_VENDA_ANT: TFloatField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_ANT"'
    end
    object SelProdutosPRC_VENDA_MED: TFloatField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"EST_PRODUTOS"."PRC_VENDA_MED"'
    end
    object SelProdutosALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"EST_PRODUTOS"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object SelProdutosORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"EST_PRODUTOS"."ORIGEM"'
    end
    object SelProdutosPESO_LIQ: TFloatField
      FieldName = 'PESO_LIQ'
      Origin = '"EST_PRODUTOS"."PESO_LIQ"'
    end
    object SelProdutosPERC_FRETE: TFloatField
      FieldName = 'PERC_FRETE'
      Origin = '"EST_PRODUTOS"."PERC_FRETE"'
    end
    object SelProdutosIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"EST_PRODUTOS"."IPI"'
    end
    object SelProdutosVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"EST_PRODUTOS"."VOLUME"'
    end
    object SelProdutosPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"EST_PRODUTOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"EST_PRODUTOS"."ULTIMO_FORNECEDOR"'
    end
    object SelProdutosFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_PRODUTOS"."FORNECEDOR"'
    end
    object SelProdutosSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PRODUTOS"."SUBUNIDADE"'
    end
    object SelProdutosPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"EST_PRODUTOS"."PRC_CUSTO_CODIF"'
      Size = 15
    end
    object SelProdutosCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"EST_PRODUTOS"."CODIGO_INTERNO"'
    end
    object SelProdutosDT_ULT_ATU_PRECO: TDateTimeField
      FieldName = 'DT_ULT_ATU_PRECO'
      Origin = '"EST_PRODUTOS"."DT_ULT_ATU_PRECO"'
    end
    object SelProdutosCUSTO_AQUISICAO: TFloatField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"EST_PRODUTOS"."CUSTO_AQUISICAO"'
    end
    object SelProdutosVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosQNTDE_EXPOSTA: TFloatField
      FieldName = 'QNTDE_EXPOSTA'
      Origin = '"EST_PRODUTOS"."QNTDE_EXPOSTA"'
    end
    object SelProdutosPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"EST_PRODUTOS"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosQNTDE_MAXIMA_VENDA: TFloatField
      FieldName = 'QNTDE_MAXIMA_VENDA'
      Origin = '"EST_PRODUTOS"."QNTDE_MAXIMA_VENDA"'
    end
    object SelProdutosPIS: TIBStringField
      FieldName = 'PIS'
      Origin = '"EST_PRODUTOS"."PIS"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosCOFINS: TIBStringField
      FieldName = 'COFINS'
      Origin = '"EST_PRODUTOS"."COFINS"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosCOM_VENDA_VLR: TFloatField
      FieldName = 'COM_VENDA_VLR'
      Origin = '"EST_PRODUTOS"."COM_VENDA_VLR"'
    end
    object SelProdutosCOM_VENDA_PCT: TFloatField
      FieldName = 'COM_VENDA_PCT'
      Origin = '"EST_PRODUTOS"."COM_VENDA_PCT"'
    end
    object SelProdutosPARTICIP_LUCRO: TFloatField
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"EST_PRODUTOS"."PARTICIP_LUCRO"'
    end
    object SelProdutosNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"EST_PRODUTOS"."NAO_COBR_JUR_ATE"'
    end
    object SelProdutosPREVISAO_ENTREGA: TDateTimeField
      FieldName = 'PREVISAO_ENTREGA'
      Origin = '"EST_PRODUTOS"."PREVISAO_ENTREGA"'
    end
    object SelProdutosQNTDE_PEDIDA: TFloatField
      FieldName = 'QNTDE_PEDIDA'
      Origin = '"EST_PRODUTOS"."QNTDE_PEDIDA"'
    end
    object SelProdutosATUALIZA_ARQ_EXTERNO: TIBStringField
      FieldName = 'ATUALIZA_ARQ_EXTERNO'
      Origin = '"EST_PRODUTOS"."ATUALIZA_ARQ_EXTERNO"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"EST_PRODUTOS"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"EST_PRODUTOS"."VALIDADE"'
    end
    object SelProdutosCUSTO_INDEXADO: TFloatField
      FieldName = 'CUSTO_INDEXADO'
      Origin = '"EST_PRODUTOS"."CUSTO_INDEXADO"'
    end
    object SelProdutosCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"EST_PRODUTOS"."COMPLEMENTO"'
      Size = 100
    end
    object SelProdutosATUALIZAR: TIBStringField
      FieldName = 'ATUALIZAR'
      Origin = '"EST_PRODUTOS"."ATUALIZAR"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosEST_MIN: TFloatField
      FieldName = 'EST_MIN'
      Origin = '"EST_PRODUTOS"."EST_MIN"'
    end
    object SelProdutosEST_MAX: TFloatField
      FieldName = 'EST_MAX'
      Origin = '"EST_PRODUTOS"."EST_MAX"'
    end
    object SelProdutosMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = '"EST_PRODUTOS"."MODELO"'
    end
    object SelProdutosNOME_MODELO: TIBStringField
      FieldName = 'NOME_MODELO'
      Origin = '"EST_PRODUTOS"."NOME_MODELO"'
      Size = 80
    end
    object SelProdutosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object SelProdutosDEBITA_ICMS: TIBStringField
      FieldName = 'DEBITA_ICMS'
      Origin = '"EST_PRODUTOS"."DEBITA_ICMS"'
      FixedChar = True
      Size = 1
    end
    object SelProdutosSECAO: TIntegerField
      FieldName = 'SECAO'
      Origin = '"EST_PRODUTOS"."SECAO"'
    end
  end
  object SelOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelModelosProdutoBeforeOpen
    SQL.Strings = (
      
        'select os.codigo, os.codigo||'#39'-'#39'||coalesce(psa.nome_razao,'#39#39')||'#39 +
        '('#39'||coalesce(prd.nome,'#39#39')||'#39')'#39' OS'
      'from ofc_ordem_servico os'
      
        'inner join glo_pessoas_fj psa on (os.pessoa_fj = psa.codigo and ' +
        'os.cnpj = psa.cnpj)'
      
        'inner join est_produtos prd on (prd.codigo = os.produto and os.c' +
        'npj = prd.cnpj)'
      'where os.cnpj = :cnpj'
      'order by os.codigo')
    Left = 568
    Top = 629
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object SelOSOS: TIBStringField
      FieldName = 'OS'
      Size = 114
    end
  end
  object OsPendencia: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = OsPendenciaNewRecord
    DeleteSQL.Strings = (
      'delete from ofc_pendencia'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ofc_pendencia'
      '  (CNPJ, CODIGO, DT_PENDENCIA, OBS, OS_VINCULADA, PRODUTO, '
      'QTDE_CREDITADA, '
      '   QTDE_PENDENTE, ST_SERVICO, ST_PEDIDO, USR_ESTOQUE, '
      'USR_RESPONSAVEL)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DT_PENDENCIA, :OBS, :OS_VINCULADA, :PRODUTO,' +
        ' '
      ':QTDE_CREDITADA, '
      '   :QTDE_PENDENTE, :ST_SERVICO, :ST_PEDIDO, :USR_ESTOQUE, '
      ':USR_RESPONSAVEL)')
    RefreshSQL.Strings = (
      'select pd.cnpj, pd.codigo, pd.dt_pendencia, pd.obs,'
      
        'pd.os_vinculada, pd.produto, pd.qtde_creditada, pd.qtde_pendente' +
        ','
      'pd.st_servico, pd.st_pedido, pd.usr_estoque, pd.usr_responsavel'
      ', usr1.nome "Usu'#225'rio requisitante",'
      '  usr2.nome "Usu'#225'rio Respons'#225'vel",'
      '  (prd.codigo||'#39'-'#39'||prd.nome) "Nome produto"'
      'from ofc_pendencia pd'
      
        'inner join sis_usuarios usr1 on (usr1.codigo = pd.usr_responsave' +
        'l)'
      'inner join sis_usuarios usr2 on (usr2.codigo = pd.usr_estoque)'
      
        'inner join est_produtos prd on (prd.codigo = pd.produto and prd.' +
        'cnpj = pd.cnpj)'
      'where'
      '  pd.CNPJ = :CNPJ and'
      '  pd.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select pd.cnpj, pd.codigo, pd.dt_pendencia, pd.obs,'
      
        'pd.os_vinculada, pd.produto, pd.qtde_creditada, pd.qtde_pendente' +
        ','
      'pd.st_servico, pd.st_pedido, pd.usr_estoque, pd.usr_responsavel'
      ', usr1.nome "Usu'#225'rio requisitante",'
      '  usr2.nome "Usu'#225'rio Respons'#225'vel",'
      '  (prd.codigo||'#39'-'#39'||prd.nome) "Nome produto"'
      'from ofc_pendencia pd'
      
        'inner join sis_usuarios usr1 on (usr1.codigo = pd.usr_responsave' +
        'l)'
      'inner join sis_usuarios usr2 on (usr2.codigo = pd.usr_estoque)'
      
        'inner join est_produtos prd on (prd.codigo = pd.produto and prd.' +
        'cnpj = pd.cnpj)'
      'where pd.cnpj = :cnpj'
      'order by pd.dt_pendencia')
    ModifySQL.Strings = (
      'update ofc_pendencia'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DT_PENDENCIA = :DT_PENDENCIA,'
      '  OBS = :OBS,'
      '  OS_VINCULADA = :OS_VINCULADA,'
      '  PRODUTO = :PRODUTO,'
      '  QTDE_CREDITADA = :QTDE_CREDITADA,'
      '  QTDE_PENDENTE = :QTDE_PENDENTE,'
      '  ST_SERVICO = :ST_SERVICO,'
      '  ST_PEDIDO = :ST_PEDIDO,'
      '  USR_ESTOQUE = :USR_ESTOQUE,'
      '  USR_RESPONSAVEL = :USR_RESPONSAVEL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 224
    Top = 622
    object OsPendenciaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_PENDENCIA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object OsPendenciaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_PENDENCIA"."CODIGO"'
      Required = True
    end
    object OsPendenciaDT_PENDENCIA: TDateTimeField
      DisplayLabel = 'Dt. Pend'#234'ncia'
      FieldName = 'DT_PENDENCIA'
      Origin = '"OFC_PENDENCIA"."DT_PENDENCIA"'
    end
    object OsPendenciaOBS: TBlobField
      DisplayLabel = 'Obs.:'
      FieldName = 'OBS'
      Origin = '"OFC_PENDENCIA"."OBS"'
      Size = 8
    end
    object OsPendenciaOS_VINCULADA: TIntegerField
      DisplayLabel = 'N'#186'  Os.'
      FieldName = 'OS_VINCULADA'
      Origin = '"OFC_PENDENCIA"."OS_VINCULADA"'
    end
    object OsPendenciaPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"OFC_PENDENCIA"."PRODUTO"'
      Size = 15
    end
    object OsPendenciaQTDE_CREDITADA: TFloatField
      DisplayLabel = 'Qtde. Creditada'
      FieldName = 'QTDE_CREDITADA'
      Origin = '"OFC_PENDENCIA"."QTDE_CREDITADA"'
    end
    object OsPendenciaQTDE_PENDENTE: TFloatField
      DisplayLabel = 'Qtde Pendente'
      FieldName = 'QTDE_PENDENTE'
      Origin = '"OFC_PENDENCIA"."QTDE_PENDENTE"'
    end
    object OsPendenciaST_SERVICO: TIBStringField
      DisplayLabel = 'Status Servi'#231'o'
      FieldName = 'ST_SERVICO'
      Origin = '"OFC_PENDENCIA"."ST_SERVICO"'
      Size = 50
    end
    object OsPendenciaUSR_ESTOQUE: TIntegerField
      FieldName = 'USR_ESTOQUE'
      Origin = '"OFC_PENDENCIA"."USR_ESTOQUE"'
    end
    object OsPendenciaUSR_RESPONSAVEL: TIntegerField
      FieldName = 'USR_RESPONSAVEL'
      Origin = '"OFC_PENDENCIA"."USR_RESPONSAVEL"'
    end
    object OsPendenciaUsuriorequisitante: TIBStringField
      FieldName = 'Usu'#225'rio requisitante'
      Origin = '"SIS_USUARIOS"."NOME"'
      Size = 50
    end
    object OsPendenciaUsurioResponsvel: TIBStringField
      FieldName = 'Usu'#225'rio Respons'#225'vel'
      Origin = '"SIS_USUARIOS"."NOME"'
      Size = 50
    end
    object OsPendenciaNomeproduto: TIBStringField
      FieldName = 'Nome produto'
      Size = 66
    end
    object OsPendenciaST_PEDIDO: TIBStringField
      FieldName = 'ST_PEDIDO'
      Origin = '"OFC_PENDENCIA"."ST_PEDIDO"'
      Size = 50
    end
  end
  object SelCidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelModelosProdutoBeforeOpen
    SQL.Strings = (
      
        'select cdd.codigo, coalesce(cdd.nome,'#39#39')||'#39'-'#39'||coalesce(cdd.uf,'#39 +
        #39') cidade from glo_cidades cdd'
      'where cdd.cnpj = :cnpj'
      'order by cdd.nome')
    Left = 560
    Top = 566
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      Required = True
    end
    object SelCidadeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Size = 53
    end
  end
  object SelContrato2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelContrato2BeforeOpen
    SQL.Strings = (
      
        'select coalesce(psa.codigo,'#39#39')||'#39'-'#39'||coalesce(psa.nome_razao,'#39#39')' +
        '||'#39' ('#39'||coalesce(cp.num_contrato,'#39#39')||'#39')'#39' contrato, psa.codigo p' +
        'sa_codigo, cp.codigo'
      'from est_produtos prd'
      
        'left join glo_clientes_produtos cp on (prd.codigo = cp.cod_produ' +
        'to   and prd.cnpj = cp.cnpj)'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = cp.cod_cliente   ' +
        'and psa.cnpj = cp.cnpj)'
      'where cp.ativo = '#39'S'#39' and cp.cnpj = :cnpj')
    Left = 560
    Top = 510
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelContrato2CONTRATO: TIBStringField
      FieldName = 'CONTRATO'
      Size = 95
    end
    object SelContrato2PSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelContrato2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTES_PRODUTOS"."CODIGO"'
      Required = True
    end
  end
  object ContratosItens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from glo_clientes_produtos_itens'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into glo_clientes_produtos_itens'
      '  (CNPJ, CODIGO, COD_PRODUTO, CONTRATO, DT_ADICAO, DATA, ATIVO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :COD_PRODUTO, :CONTRATO, :DT_ADICAO, :DATA, :' +
        'ATIVO)')
    RefreshSQL.Strings = (
      'select cti.*, prd.nome produto,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      'end tipo_produto'
      'from  glo_clientes_produtos_itens cti'
      
        'inner join est_produtos prd on (prd.codigo = cti.cod_produto and' +
        ' cti.cnpj = prd.cnpj)'
      'where  cti.CNPJ = :CNPJ and cti.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select cti.*, prd.nome produto,'
      'case prd.servico'
      '                         when '#39'S'#39' then '#39'Servi'#231'o'#39
      '                         else '#39'Produto'#39
      'end tipo_produto'
      'from  glo_clientes_produtos_itens cti'
      
        'inner join est_produtos prd on (prd.codigo = cti.cod_produto and' +
        ' cti.cnpj = prd.cnpj)'
      'where cti.contrato = :codigo and cti.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update glo_clientes_produtos_itens'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COD_PRODUTO = :COD_PRODUTO,'
      '  CONTRATO = :CONTRATO,'
      '  DT_ADICAO = :DT_ADICAO,'
      '  DATA = :DATA,'
      '  ATIVO = :ATIVO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    DataSource = DsOrdem
    Left = 128
    Top = 622
    object ContratosItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ContratosItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."CODIGO"'
      Required = True
    end
    object ContratosItensCOD_PRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'COD_PRODUTO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."COD_PRODUTO"'
      Size = 15
    end
    object ContratosItensCONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CONTRATO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."CONTRATO"'
    end
    object ContratosItensDT_ADICAO: TDateTimeField
      DisplayLabel = 'Dt. Adi'#231#227'o'
      FieldName = 'DT_ADICAO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."DT_ADICAO"'
    end
    object ContratosItensDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."DATA"'
    end
    object ContratosItensATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"GLO_CLIENTES_PRODUTOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ContratosItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object ContratosItensTIPO_PRODUTO: TIBStringField
      DisplayLabel = 'Tipo Produto'
      FieldName = 'TIPO_PRODUTO'
      Required = True
      FixedChar = True
      Size = 7
    end
  end
  object OS_INTERVALO_EMAIL: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    OnNewRecord = OS_INTERVALO_EMAILNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_O_S_INTERVALO_EMAIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_O_S_INTERVALO_EMAIL'
      
        '  (ASSUNTO, CNPJ, COD_INTERVALO, CODIGO, DATA, DE, ENVIADO, PARA' +
        ', SEQUENCIA, '
      '   TIPO)'
      'values'
      
        '  (:ASSUNTO, :CNPJ, :COD_INTERVALO, :CODIGO, :DATA, :DE, :ENVIAD' +
        'O, :PARA, '
      '   :SEQUENCIA, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  ASSUNTO,'
      '  DE,'
      '  PARA,'
      '  ENVIADO,'
      '  SEQUENCIA,'
      '  COD_INTERVALO,'
      '  DATA,'
      '  TIPO'
      'from OFC_O_S_INTERVALO_EMAIL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from OFC_O_S_INTERVALO_EMAIL e'
      
        'where e.cnpj= :cnpj and e.cod_intervalo = :codigo and e.sequenci' +
        'a = :sequencia')
    ModifySQL.Strings = (
      'update OFC_O_S_INTERVALO_EMAIL'
      'set'
      '  ASSUNTO = :ASSUNTO,'
      '  CNPJ = :CNPJ,'
      '  COD_INTERVALO = :COD_INTERVALO,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DE = :DE,'
      '  ENVIADO = :ENVIADO,'
      '  PARA = :PARA,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  TIPO = :TIPO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_O_S_INTERVALO_EMAIL_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsIntervalo
    Left = 992
    Top = 382
    object OS_INTERVALO_EMAILCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object OS_INTERVALO_EMAILCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OS_INTERVALO_EMAILASSUNTO: TIBStringField
      DisplayLabel = 'Assunto'
      FieldName = 'ASSUNTO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."ASSUNTO"'
      Size = 80
    end
    object OS_INTERVALO_EMAILDE: TIBStringField
      DisplayLabel = 'De'
      FieldName = 'DE'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."DE"'
      Size = 80
    end
    object OS_INTERVALO_EMAILENVIADO: TIBStringField
      DisplayLabel = 'Enviado'
      FieldName = 'ENVIADO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."ENVIADO"'
      FixedChar = True
      Size = 1
    end
    object OS_INTERVALO_EMAILSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."SEQUENCIA"'
    end
    object OS_INTERVALO_EMAILCOD_INTERVALO: TIntegerField
      DisplayLabel = 'C'#243'd. Intervalo'
      FieldName = 'COD_INTERVALO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."COD_INTERVALO"'
    end
    object OS_INTERVALO_EMAILDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."DATA"'
    end
    object OS_INTERVALO_EMAILPARA: TIBStringField
      DisplayLabel = 'Para'
      FieldName = 'PARA'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."PARA"'
      Size = 200
    end
    object OS_INTERVALO_EMAILTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object dsIntervalo: TDataSource
    AutoEdit = False
    DataSet = OS_INTERVALO
    Left = 672
    Top = 75
  end
  object SelTecnico2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email,  t.assinatura from ofc_mecanic' +
        'os t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj')
    Left = 672
    Top = 373
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelTecnico2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SelTecnico2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelTecnico2EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object SelTecnico2ASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object SelEmail: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select t.nome, t.email from ofc_mecanicos t'
      'where t.codigo = :codigo and t.cnpj = :cnpj')
    Left = 672
    Top = 126
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
    object SelEmailNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelEmailEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
  end
  object OS_INTERVALO_ANEXO: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    OnNewRecord = OS_INTERVALO_ANEXONewRecord
    DeleteSQL.Strings = (
      'delete from OFC_OS_ANEXOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into OFC_OS_ANEXOS'
      '  (ANEXO, CNPJ, CODIGO, FILENAME, SEQUENCIA, TAMANHO)'
      'values'
      '  (:ANEXO, :CNPJ, :CODIGO, :FILENAME, :SEQUENCIA, :TAMANHO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  FILENAME,'
      '  ANEXO,'
      '  SEQUENCIA,'
      '  TAMANHO'
      'from OFC_OS_ANEXOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select * from OFC_OS_ANEXOS ax'
      
        'where ax.cnpj= :cnpj and ax.codigo = :codigo and ax.sequencia = ' +
        ':sequencia')
    ModifySQL.Strings = (
      'update OFC_OS_ANEXOS'
      'set'
      '  ANEXO = :ANEXO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  FILENAME = :FILENAME,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  TAMANHO = :TAMANHO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_O_S_INTERVALO_EMAIL_ID'
    GeneratorField.ApplyEvent = gamOnPost
    DataSource = dsIntervalo
    Left = 992
    Top = 446
    object OS_INTERVALO_ANEXOCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"OFC_OS_ANEXOS"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object OS_INTERVALO_ANEXOCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"OFC_OS_ANEXOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OS_INTERVALO_ANEXOANEXO: TBlobField
      DisplayLabel = 'Anexo'
      FieldName = 'ANEXO'
      Origin = '"OFC_OS_ANEXOS"."ANEXO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object OS_INTERVALO_ANEXOSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_OS_ANEXOS"."SEQUENCIA"'
    end
    object OS_INTERVALO_ANEXOFILENAME: TIBStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'FILENAME'
      Origin = '"OFC_OS_ANEXOS"."FILENAME"'
      Size = 80
    end
    object OS_INTERVALO_ANEXOTAMANHO: TFloatField
      DisplayLabel = 'Tamanho (KB)'
      FieldName = 'TAMANHO'
      Origin = '"OFC_OS_ANEXOS"."TAMANHO"'
      DisplayFormat = '###,##0.000'
    end
  end
  object OS_INTERVALO_EMAIL_INSERT: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    BeforeOpen = ServicosBeforeOpen
    OnNewRecord = OS_INTERVALO_EMAIL_INSERTNewRecord
    DeleteSQL.Strings = (
      'delete from OFC_O_S_INTERVALO_EMAIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into OFC_O_S_INTERVALO_EMAIL'
      
        '  (ASSUNTO, CNPJ, COD_INTERVALO, CODIGO, DATA, DE, ENVIADO, PARA' +
        ', SEQUENCIA, '
      '   TIPO)'
      'values'
      
        '  (:ASSUNTO, :CNPJ, :COD_INTERVALO, :CODIGO, :DATA, :DE, :ENVIAD' +
        'O, :PARA, '
      '   :SEQUENCIA, :TIPO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  ASSUNTO,'
      '  DE,'
      '  PARA,'
      '  ENVIADO,'
      '  SEQUENCIA,'
      '  COD_INTERVALO,'
      '  DATA,'
      '  TIPO'
      'from OFC_O_S_INTERVALO_EMAIL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * from OFC_O_S_INTERVALO_EMAIL e'
      
        'where e.cnpj= :cnpj and e.cod_intervalo = :codigo and e.sequenci' +
        'a = :sequencia')
    ModifySQL.Strings = (
      'update OFC_O_S_INTERVALO_EMAIL'
      'set'
      '  ASSUNTO = :ASSUNTO,'
      '  CNPJ = :CNPJ,'
      '  COD_INTERVALO = :COD_INTERVALO,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DE = :DE,'
      '  ENVIADO = :ENVIADO,'
      '  PARA = :PARA,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  TIPO = :TIPO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_OFC_O_S_INTERVALO_EMAIL_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 1152
    Top = 374
    object OS_INTERVALO_EMAIL_INSERTCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object OS_INTERVALO_EMAIL_INSERTCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OS_INTERVALO_EMAIL_INSERTASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."ASSUNTO"'
      Size = 80
    end
    object OS_INTERVALO_EMAIL_INSERTDE: TIBStringField
      FieldName = 'DE'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."DE"'
      Size = 80
    end
    object OS_INTERVALO_EMAIL_INSERTPARA: TIBStringField
      FieldName = 'PARA'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."PARA"'
      Size = 200
    end
    object OS_INTERVALO_EMAIL_INSERTENVIADO: TIBStringField
      FieldName = 'ENVIADO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."ENVIADO"'
      FixedChar = True
      Size = 1
    end
    object OS_INTERVALO_EMAIL_INSERTSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."SEQUENCIA"'
    end
    object OS_INTERVALO_EMAIL_INSERTCOD_INTERVALO: TIntegerField
      FieldName = 'COD_INTERVALO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."COD_INTERVALO"'
    end
    object OS_INTERVALO_EMAIL_INSERTDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."DATA"'
    end
    object OS_INTERVALO_EMAIL_INSERTTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OFC_O_S_INTERVALO_EMAIL"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object SelPessoasFJ2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
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
    Left = 672
    Top = 317
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelPessoasFJ2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_CLIENTE"."CODIGO"'
    end
    object SelPessoasFJ2PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_CLIENTE"."PESSOA_FJ"'
    end
    object SelPessoasFJ2NOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_CLIENTE"."NOME_RAZAO"'
      Size = 50
    end
    object SelPessoasFJ2FONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_CLIENTE"."FONE"'
    end
    object SelPessoasFJ2FANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_CLIENTE"."FANTASIA"'
      Size = 50
    end
    object SelPessoasFJ2CPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_CLIENTE"."CPF_CGC"'
      Size = 15
    end
    object SelPessoasFJ2BLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasFJ2CLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoasFJ2UF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasFJ2EMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
  end
  object SelTecnico3: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      'select codigo,nome from ofc_status'
      'where cnpj = :cnpj')
    Left = 672
    Top = 488
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelTecnico3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SelTecnico3NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
  end
  object SelStatus2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      'select codigo,nome from ofc_status st'
      'where cnpj = :cnpj and coalesce(st.os,'#39'N'#39') = '#39'S'#39)
    Left = 672
    Top = 429
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelStatus2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SelStatus2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
  end
  object SelTecnico4: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      
        'select t.codigo, t.nome, t.email,  t.assinatura from ofc_mecanic' +
        'os t'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = t.cnpj and t.pessoa' +
        '_fj = psa.codigo)'
      'where t.cnpj = :cnpj and t.cod_usuario = :usuario')
    Left = 672
    Top = 557
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'usuario'
        ParamType = ptUnknown
      end>
    object SelTecnico4CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SelTecnico4NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelTecnico4EMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"OFC_MECANICOS"."EMAIL"'
      Size = 80
    end
    object SelTecnico4ASSINATURA: TMemoField
      FieldName = 'ASSINATURA'
      Origin = '"OFC_MECANICOS"."ASSINATURA"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
  end
  object SelStatus3: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      'select codigo,nome from ofc_status st'
      'where cnpj = :cnpj and coalesce(st.movimento,'#39'N'#39') = '#39'S'#39)
    Left = 24
    Top = 677
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelStatus3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SelStatus3NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
  end
  object SelMovimentos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelStatusBeforeOpen
    SQL.Strings = (
      'select'
      '   s.CNPJ,'
      '   s.CODIGO, '
      '   s.DT_FIM, '
      '   s.DT_INICIO, '
      '   s.HR_INICIO, '
      '   s.HR_FIM, '
      '   s.SEQUENCIA,'
      '   s.OBSERVACAO, '
      '   s.QTDE_HORA,'
      '   s.KM_RODADO,'
      '   s.KM_INICIAL,'
      '   s.KM_FINAL,'
      '   s.TEMPO_VIAJEM,'
      '   s.usuario,'
      ' S.cod_tipo_movto,'
      '   case s.usuario'
      '    when (null) then 0'
      '    else s.usuario||'#39'-'#39'||coalesce(u.nome,'#39#39')'
      '   end nome_usuario, '
      '   t.nome nome_tecnico,'
      '   s.cod_tecnico,'
      ''
      '   t2.nome nome_tecnico_os,'
      '   os.mecanico cod_tecnico_os,'
      ''
      '   s.custo_hora, '
      '   s.custo_intervalo custo_atividade,'
      '   s.tipo,'
      '   s.dt_lancto,'
      '   s.dt_vencto,'
      '   s.dt_conclusao,'
      's.cod_contato,'
      '   s.cod_status,'
      '   s.cod_veiculo,'
      '   s.cod_status,'
      '   st.cor st_cor,'
      '   st.nome status_movto,'
      '   s.cod_tipo_movto,'
      '   tp.nome tipo_movto,'
      '   st2.codigo cod_status_os,'
      '   st2.cor st_cor_os,'
      '   st2.nome status_os,'
      '   psa.codigo cod_contato_movto,'
      '   psa.nome_razao contato_movto,'
      '   psa2.codigo cod_contato_os,'
      '   psa2.nome_razao contato_os,'
      '   psa3.codigo cod_clientes,'
      '   psa3.nome_razao cliente_os,'
      '   def.codigo def_codigo,'
      '    def.nome def_nome,'
      '    mtc.codigo mtc_codigo,'
      '    mtc.nome mtc_nome,'
      '    tpa.codigo tpa_codigo,'
      '    tpa.nome tpa_nome'
      ''
      'from OFC_ORDEM_SERVICO_INTERVALO s'
      'left join sis_usuarios u on (u.codigo = s.usuario)'
      
        'left join ofc_mecanicos t on (t.cnpj = s.cnpj and t.codigo = s.c' +
        'od_tecnico)'
      
        'left join ofc_status st on (st.cnpj = s.cnpj and st.codigo = s.c' +
        'od_status)'
      
        'left join ofc_tipo_movto tp on (tp.cnpj = s.cnpj and tp.codigo =' +
        ' s.cod_tipo_movto)'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = s.cnpj and psa.codig' +
        'o = s.cod_contato)'
      ''
      
        'inner join ofc_ordem_servico os on (os.cnpj = s.cnpj and os.codi' +
        'go = s.codigo)'
      
        'inner join ofc_mecanicos t2 on (t.cnpj = os.cnpj and t2.codigo =' +
        ' os.mecanico)'
      
        'left join ofc_status st2 on (st2.cnpj = os.cnpj and st2.codigo =' +
        ' os.cod_status)'
      
        'left join glo_pessoas_fj psa2 on (psa2.cnpj = os.cnpj and psa2.c' +
        'odigo = os.cod_contato)'
      
        'left join glo_pessoas_fj psa3 on (psa3.cnpj = os.cnpj and psa3.c' +
        'odigo = os.pessoa_fj)'
      
        'left join ofc_defeito def on (def.codigo = os.defeito_reclamado ' +
        'and def.cnpj = os.cnpj)'
      
        'left join ofc_motivo_chamado mtc on (mtc.codigo = os.id_motivo_c' +
        'hamado and mtc.cnpj = os.cnpj)'
      
        'left join ofc_tipo_atendimento tpa on (tpa.cnpj= os.id_tipo_aten' +
        'dimento and tpa.codigo = os.cnpj)'
      ''
      'WHERE s.CNPJ = :CNPJ'
      'ORDER BY  DT_INICIO, HR_INICIO ')
    Left = 120
    Top = 677
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMovimentosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      FixedChar = True
      Size = 14
    end
    object SelMovimentosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SelMovimentosDT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_FIM"'
    end
    object SelMovimentosDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_INICIO"'
    end
    object SelMovimentosHR_INICIO: TTimeField
      FieldName = 'HR_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_INICIO"'
    end
    object SelMovimentosHR_FIM: TTimeField
      FieldName = 'HR_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_FIM"'
    end
    object SelMovimentosSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."SEQUENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object SelMovimentosOBSERVACAO: TMemoField
      FieldName = 'OBSERVACAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."OBSERVACAO"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object SelMovimentosQTDE_HORA: TFloatField
      FieldName = 'QTDE_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."QTDE_HORA"'
    end
    object SelMovimentosKM_RODADO: TFloatField
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_RODADO"'
    end
    object SelMovimentosKM_INICIAL: TFloatField
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_INICIAL"'
    end
    object SelMovimentosKM_FINAL: TFloatField
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_FINAL"'
    end
    object SelMovimentosTEMPO_VIAJEM: TFloatField
      FieldName = 'TEMPO_VIAJEM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TEMPO_VIAJEM"'
    end
    object SelMovimentosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."USUARIO"'
    end
    object SelMovimentosCOD_TIPO_MOVTO: TIntegerField
      FieldName = 'COD_TIPO_MOVTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TIPO_MOVTO"'
    end
    object SelMovimentosNOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 62
    end
    object SelMovimentosNOME_TECNICO: TIBStringField
      FieldName = 'NOME_TECNICO'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelMovimentosCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TECNICO"'
    end
    object SelMovimentosNOME_TECNICO_OS: TIBStringField
      FieldName = 'NOME_TECNICO_OS'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelMovimentosCOD_TECNICO_OS: TIntegerField
      FieldName = 'COD_TECNICO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."MECANICO"'
    end
    object SelMovimentosCUSTO_HORA: TFloatField
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_HORA"'
    end
    object SelMovimentosCUSTO_ATIVIDADE: TFloatField
      FieldName = 'CUSTO_ATIVIDADE'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_INTERVALO"'
    end
    object SelMovimentosTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SelMovimentosDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_LANCTO"'
    end
    object SelMovimentosDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_VENCTO"'
    end
    object SelMovimentosDT_CONCLUSAO: TDateField
      FieldName = 'DT_CONCLUSAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_CONCLUSAO"'
    end
    object SelMovimentosCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_CONTATO"'
    end
    object SelMovimentosCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_STATUS"'
    end
    object SelMovimentosCOD_VEICULO: TIBStringField
      FieldName = 'COD_VEICULO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_VEICULO"'
      FixedChar = True
      Size = 8
    end
    object SelMovimentosCOD_STATUS1: TIntegerField
      FieldName = 'COD_STATUS1'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_STATUS"'
    end
    object SelMovimentosST_COR: TIntegerField
      FieldName = 'ST_COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object SelMovimentosSTATUS_MOVTO: TIBStringField
      FieldName = 'STATUS_MOVTO'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object SelMovimentosCOD_TIPO_MOVTO1: TIntegerField
      FieldName = 'COD_TIPO_MOVTO1'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TIPO_MOVTO"'
    end
    object SelMovimentosTIPO_MOVTO: TIBStringField
      FieldName = 'TIPO_MOVTO'
      Origin = '"OFC_TIPO_MOVTO"."NOME"'
      Size = 50
    end
    object SelMovimentosCOD_STATUS_OS: TIntegerField
      FieldName = 'COD_STATUS_OS'
      Origin = '"OFC_STATUS"."CODIGO"'
    end
    object SelMovimentosST_COR_OS: TIntegerField
      FieldName = 'ST_COR_OS'
      Origin = '"OFC_STATUS"."COR"'
    end
    object SelMovimentosSTATUS_OS: TIBStringField
      FieldName = 'STATUS_OS'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object SelMovimentosCOD_CONTATO_MOVTO: TIntegerField
      FieldName = 'COD_CONTATO_MOVTO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object SelMovimentosCONTATO_MOVTO: TIBStringField
      FieldName = 'CONTATO_MOVTO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelMovimentosCOD_CONTATO_OS: TIntegerField
      FieldName = 'COD_CONTATO_OS'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object SelMovimentosCONTATO_OS: TIBStringField
      FieldName = 'CONTATO_OS'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelMovimentosCOD_CLIENTES: TIntegerField
      FieldName = 'COD_CLIENTES'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object SelMovimentosCLIENTE_OS: TIBStringField
      FieldName = 'CLIENTE_OS'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelMovimentosDEF_CODIGO: TIntegerField
      FieldName = 'DEF_CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
    end
    object SelMovimentosDEF_NOME: TIBStringField
      FieldName = 'DEF_NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Size = 50
    end
    object SelMovimentosMTC_CODIGO: TIntegerField
      FieldName = 'MTC_CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
    end
    object SelMovimentosMTC_NOME: TIBStringField
      FieldName = 'MTC_NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object SelMovimentosTPA_CODIGO: TIntegerField
      FieldName = 'TPA_CODIGO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CODIGO"'
    end
    object SelMovimentosTPA_NOME: TIBStringField
      FieldName = 'TPA_NOME'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
  end
  object SelOrdens_ServicosMovto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    OnCalcFields = SelOrdens_ServicosCalcFields
    SQL.Strings = (
      'select'
      '  os.assunto,'
      '  os.cod_gravidade,'
      '  ofc_gravidade.titulo,'
      '   s.CNPJ,'
      '   s.CODIGO, '
      '   s.DT_FIM, '
      '   s.DT_INICIO, '
      '   s.HR_INICIO, '
      '   s.HR_FIM, '
      '   s.SEQUENCIA,'
      '   s.OBSERVACAO, '
      '   s.QTDE_HORA,'
      '   s.KM_RODADO,'
      '   s.KM_INICIAL,'
      '   s.KM_FINAL,'
      '   s.TEMPO_VIAJEM,'
      '   s.usuario,'
      ' S.cod_tipo_movto,'
      '   case s.usuario'
      '    when (null) then 0'
      '    else s.usuario||'#39'-'#39'||coalesce(u.nome,'#39#39')'
      '   end nome_usuario, '
      '   t.nome nome_tecnico,'
      '   s.cod_tecnico,'
      ''
      '   t2.nome nome_tecnico_os,'
      '   os.mecanico cod_tecnico_os,'
      ''
      '   s.custo_hora, '
      '   s.custo_intervalo custo_atividade,'
      '   s.tipo,'
      '   s.dt_lancto,'
      '   s.dt_vencto,'
      '   s.dt_conclusao,'
      's.cod_contato,'
      '   s.cod_veiculo,'
      '   s.cod_status,'
      '   st.cor st_cor,'
      '   st.nome status_movto,'
      '   s.cod_tipo_movto,'
      '   tp.nome tipo_movto,'
      '   st2.codigo cod_status_os,'
      '   st2.cor st_cor_os,'
      '   st2.nome status_os,'
      '   psa.codigo cod_contato_movto,'
      '   psa.nome_razao contato_movto,'
      '   psa2.codigo cod_contato_os,'
      '   psa2.nome_razao contato_os,'
      '   psa3.codigo cod_clientes,'
      '   psa3.nome_razao cliente_os,'
      '   def.codigo def_codigo,'
      '    def.nome def_nome,'
      '    mtc.codigo mtc_codigo,'
      '    mtc.nome mtc_nome,'
      '    tpa.codigo tpa_codigo,'
      '    tpa.nome tpa_nome'
      ''
      'from OFC_ORDEM_SERVICO_INTERVALO s'
      'left join sis_usuarios u on (u.codigo = s.usuario)'
      
        'left join ofc_mecanicos t on (t.cnpj = s.cnpj and t.codigo = s.c' +
        'od_tecnico)'
      
        'left join ofc_status st on (st.cnpj = s.cnpj and st.codigo = s.c' +
        'od_status)'
      
        'left join ofc_tipo_movto tp on (tp.cnpj = s.cnpj and tp.codigo =' +
        ' s.cod_tipo_movto)'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = s.cnpj and psa.codig' +
        'o = s.cod_contato)'
      ''
      
        'inner join ofc_ordem_servico os on (os.cnpj = s.cnpj and os.codi' +
        'go = s.codigo)'
      
        'inner join ofc_mecanicos t2 on (t2.cnpj = os.cnpj and t2.codigo ' +
        '= os.mecanico)'
      
        'left join ofc_status st2 on (st2.cnpj = os.cnpj and st2.codigo =' +
        ' os.cod_status)'
      
        'left join glo_pessoas_fj psa2 on (psa2.cnpj = os.cnpj and psa2.c' +
        'odigo = os.cod_contato)'
      
        'left join glo_pessoas_fj psa3 on (psa3.cnpj = os.cnpj and psa3.c' +
        'odigo = os.pessoa_fj)'
      
        'left join ofc_defeito def on (def.codigo = os.defeito_reclamado ' +
        'and def.cnpj = os.cnpj)'
      
        'left join ofc_motivo_chamado mtc on (mtc.codigo = os.id_motivo_c' +
        'hamado and mtc.cnpj = os.cnpj)'
      
        'left join ofc_tipo_atendimento tpa on (tpa.cnpj= os.id_tipo_aten' +
        'dimento and tpa.codigo = os.cnpj)'
      
        'left join ofc_gravidade on (ofc_gravidade.cnpj = os.cnpj and ofc' +
        '_gravidade.codigo = os.cod_gravidade)'
      ''
      'WHERE s.CNPJ = :CNPJ')
    Left = 669
    Top = 258
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelOrdens_ServicosMovtoCOD_GRAVIDADE: TIntegerField
      FieldName = 'COD_GRAVIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."COD_GRAVIDADE"'
    end
    object SelOrdens_ServicosMovtoTITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = '"OFC_GRAVIDADE"."TITULO"'
      Size = 30
    end
    object SelOrdens_ServicosMovtoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelOrdens_ServicosMovtoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelOrdens_ServicosMovtoDT_FIM: TDateField
      FieldName = 'DT_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_FIM"'
    end
    object SelOrdens_ServicosMovtoDT_INICIO: TDateField
      FieldName = 'DT_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_INICIO"'
    end
    object SelOrdens_ServicosMovtoHR_INICIO: TTimeField
      FieldName = 'HR_INICIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_INICIO"'
    end
    object SelOrdens_ServicosMovtoHR_FIM: TTimeField
      FieldName = 'HR_FIM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."HR_FIM"'
    end
    object SelOrdens_ServicosMovtoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."SEQUENCIA"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelOrdens_ServicosMovtoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."OBSERVACAO"'
      Size = 80
    end
    object SelOrdens_ServicosMovtoQTDE_HORA: TFloatField
      FieldName = 'QTDE_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."QTDE_HORA"'
    end
    object SelOrdens_ServicosMovtoKM_RODADO: TFloatField
      FieldName = 'KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_RODADO"'
    end
    object SelOrdens_ServicosMovtoKM_INICIAL: TFloatField
      FieldName = 'KM_INICIAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_INICIAL"'
    end
    object SelOrdens_ServicosMovtoKM_FINAL: TFloatField
      FieldName = 'KM_FINAL'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."KM_FINAL"'
    end
    object SelOrdens_ServicosMovtoTEMPO_VIAJEM: TFloatField
      FieldName = 'TEMPO_VIAJEM'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TEMPO_VIAJEM"'
    end
    object SelOrdens_ServicosMovtoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."USUARIO"'
    end
    object SelOrdens_ServicosMovtoCOD_TIPO_MOVTO: TIntegerField
      FieldName = 'COD_TIPO_MOVTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TIPO_MOVTO"'
    end
    object SelOrdens_ServicosMovtoNOME_USUARIO: TIBStringField
      FieldName = 'NOME_USUARIO'
      ProviderFlags = []
      Size = 62
    end
    object SelOrdens_ServicosMovtoNOME_TECNICO: TIBStringField
      FieldName = 'NOME_TECNICO'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TECNICO"'
    end
    object SelOrdens_ServicosMovtoNOME_TECNICO_OS: TIBStringField
      FieldName = 'NOME_TECNICO_OS'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoCOD_TECNICO_OS: TIntegerField
      FieldName = 'COD_TECNICO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."MECANICO"'
    end
    object SelOrdens_ServicosMovtoCUSTO_HORA: TFloatField
      FieldName = 'CUSTO_HORA'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_HORA"'
    end
    object SelOrdens_ServicosMovtoCUSTO_ATIVIDADE: TFloatField
      FieldName = 'CUSTO_ATIVIDADE'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."CUSTO_INTERVALO"'
    end
    object SelOrdens_ServicosMovtoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object SelOrdens_ServicosMovtoDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_LANCTO"'
    end
    object SelOrdens_ServicosMovtoDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_VENCTO"'
    end
    object SelOrdens_ServicosMovtoDT_CONCLUSAO: TDateField
      FieldName = 'DT_CONCLUSAO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."DT_CONCLUSAO"'
    end
    object SelOrdens_ServicosMovtoCOD_CONTATO: TIntegerField
      FieldName = 'COD_CONTATO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_CONTATO"'
    end
    object SelOrdens_ServicosMovtoCOD_VEICULO: TIBStringField
      FieldName = 'COD_VEICULO'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_VEICULO"'
      FixedChar = True
      Size = 8
    end
    object SelOrdens_ServicosMovtoCOD_STATUS: TIntegerField
      FieldName = 'COD_STATUS'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_STATUS"'
    end
    object SelOrdens_ServicosMovtoST_COR: TIntegerField
      FieldName = 'ST_COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object SelOrdens_ServicosMovtoSTATUS_MOVTO: TIBStringField
      FieldName = 'STATUS_MOVTO'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoCOD_TIPO_MOVTO1: TIntegerField
      FieldName = 'COD_TIPO_MOVTO1'
      Origin = '"OFC_ORDEM_SERVICO_INTERVALO"."COD_TIPO_MOVTO"'
    end
    object SelOrdens_ServicosMovtoTIPO_MOVTO: TIBStringField
      FieldName = 'TIPO_MOVTO'
      Origin = '"OFC_TIPO_MOVTO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoCOD_STATUS_OS: TIntegerField
      FieldName = 'COD_STATUS_OS'
      Origin = '"OFC_STATUS"."CODIGO"'
    end
    object SelOrdens_ServicosMovtoST_COR_OS: TIntegerField
      FieldName = 'ST_COR_OS'
      Origin = '"OFC_STATUS"."COR"'
    end
    object SelOrdens_ServicosMovtoSTATUS_OS: TIBStringField
      FieldName = 'STATUS_OS'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoCOD_CONTATO_MOVTO: TIntegerField
      FieldName = 'COD_CONTATO_MOVTO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object SelOrdens_ServicosMovtoCONTATO_MOVTO: TIBStringField
      FieldName = 'CONTATO_MOVTO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoCOD_CONTATO_OS: TIntegerField
      FieldName = 'COD_CONTATO_OS'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object SelOrdens_ServicosMovtoCONTATO_OS: TIBStringField
      FieldName = 'CONTATO_OS'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoCOD_CLIENTES: TIntegerField
      FieldName = 'COD_CLIENTES'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object SelOrdens_ServicosMovtoCLIENTE_OS: TIBStringField
      FieldName = 'CLIENTE_OS'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoDEF_CODIGO: TIntegerField
      FieldName = 'DEF_CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
    end
    object SelOrdens_ServicosMovtoDEF_NOME: TIBStringField
      FieldName = 'DEF_NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoMTC_CODIGO: TIntegerField
      FieldName = 'MTC_CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
    end
    object SelOrdens_ServicosMovtoMTC_NOME: TIBStringField
      FieldName = 'MTC_NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoTPA_CODIGO: TIntegerField
      FieldName = 'TPA_CODIGO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CODIGO"'
    end
    object SelOrdens_ServicosMovtoTPA_NOME: TIBStringField
      FieldName = 'TPA_NOME'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
    object SelOrdens_ServicosMovtoASSUNTO: TIBStringField
      FieldName = 'ASSUNTO'
      Origin = '"OFC_ORDEM_SERVICO"."ASSUNTO"'
      Size = 200
    end
  end
  object SelPessoasF3: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
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
    Left = 664
    Top = 666
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelPessoasF3CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_CLIENTE"."CODIGO"'
    end
    object SelPessoasF3PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_CLIENTE"."PESSOA_FJ"'
    end
    object SelPessoasF3NOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_CLIENTE"."NOME_RAZAO"'
      Size = 50
    end
    object SelPessoasF3FONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_CLIENTE"."FONE"'
    end
    object SelPessoasF3FANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_CLIENTE"."FANTASIA"'
      Size = 50
    end
    object SelPessoasF3CPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_CLIENTE"."CPF_CGC"'
      Size = 15
    end
    object SelPessoasF3BLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasF3CLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoasF3UF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasF3EMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
  end
  object SelVeiculo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      'select '
      
        '    v.codigo, coalesce(v.modelo,'#39#39') ||'#39'-'#39'||coalesce(v.placa,'#39#39') ' +
        'modelo, v.placa, v.cor'
      'from glo_veiculos v'
      'where cnpj = :cnpj and v.ativo = '#39'S'#39
      '')
    Left = 448
    Top = 682
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVeiculoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_VEICULOS"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelVeiculoMODELO: TIBStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 59
    end
    object SelVeiculoPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
    object SelVeiculoCOR: TIBStringField
      FieldName = 'COR'
      Origin = '"GLO_VEICULOS"."COR"'
      Size = 50
    end
  end
  object qryCamposOrdemServico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    OnCalcFields = SelOrdens_ServicosCalcFields
    SQL.Strings = (
      'select'
      'ofc.controle,'
      'ofc.protocolo, '
      'st.codigo st_codigo,'
      'ofc.hr_atribuicao ofc_hr_atribuicao,'
      'ofc.hr_entrada ofc_hr_entrada,'
      'ofc.codigo ofc_codigo,'
      'ofc.data ofc_data,'
      'ofc.entrada ofc_dt_entrada,'
      'ofc.dt_atribuicao ofc_dt_atribuicao,'
      'ofc.HR_FECHAMENTO ofc_HR_FECHAMENTO,'
      'ofc.data_fechamento ofc_data_fechamento,'
      'ofc.total ofc_total,'
      'ofc.cliente ofc_solicitante,'
      'ofc.venda ofc_venda,'
      'ofc.KM_RODADO ofc_KM_RODADO,'
      'ofc.HORAS_TRABALHADAS ofc_HORAS_TRABALHADAS,'
      'mec.codigo mec_codigo,'
      'mec.nome mec_nome,'
      'def.codigo def_codigo,'
      'def.nome def_nome,'
      'mtc.codigo mtc_codigo,'
      'mtc.nome mtc_nome,'
      'tpa.codigo tpa_codigo,'
      'tpa.nome tpa_nome,'
      'st.cor st_cor,'
      'st.nome st_nome,'
      'cli.codigo cli_codigo,'
      'cli.nome_razao cli_nome_razao,'
      'reg.codigo reg_codigo,'
      'reg.nome reg_descricao,'
      'prd.codigo prd_codigo,'
      'prd.nome prd_nome,'
      'prd.serie prd_serie,'
      'mdl.codigo mdl_codigo,'
      'mdl.nome mdl_nome,'
      'ct.cod_contrato cp_cod_contrato,'
      'tpc.nome tpc_nome, cdd.nome cidade,'
      'ofc.tempo_resposta,'
      'ofc.id_contrato,'
      'cti.tempo_resposta cp_tempo_resposta,'
      'ofc.prioridade,'
      'ofc.custo_os,'
      'ofc.informacoes,'
      'ofc.obs_fechamento'
      ','
      ''
      'v.modelo veiculo,'
      'v.placa'
      'from ofc_ordem_servico ofc'
      
        'left join ofc_status st on (st.codigo = ofc.cod_status and st.cn' +
        'pj=ofc.cnpj)'
      
        'left join ofc_mecanicos mec on (mec.codigo = ofc.mecanico and me' +
        'c.cnpj = ofc.cnpj)'
      
        'left join ofc_defeito def on (def.codigo = ofc.defeito_reclamado' +
        ' and def.cnpj = ofc.cnpj)'
      
        'left join ofc_motivo_chamado mtc on (mtc.codigo = ofc.id_motivo_' +
        'chamado and mtc.cnpj = ofc.cnpj)'
      
        'left join ofc_tipo_atendimento tpa on (tpa.cnpj= ofc.id_tipo_ate' +
        'ndimento and tpa.codigo = ofc.cnpj)'
      
        'left join glo_pessoas_fj cli on (cli.codigo = ofc.pessoa_fj and ' +
        'cli.cnpj = ofc.cnpj)'
      
        'left join glo_cidades cdd on (cdd.codigo = cli.cidade and cli.cn' +
        'pj = cdd.cnpj)'
      
        'left join glo_regioes reg on (reg.codigo = cli.regiao and reg.cn' +
        'pj = ofc.cnpj)'
      
        'left join est_produtos prd on (prd.codigo = ofc.produto and prd.' +
        'cnpj = ofc.cnpj)'
      
        'left join ofc_contratos_itens cti on (ofc.cnpj = cti.cnpj and ct' +
        'i.cod_produto = ofc.produto and ofc.id_contrato = cti.contrato)'
      
        'left join ofc_contratos ct on (cli.cnpj = ct.cnpj and cli.codigo' +
        ' = ct.cod_cliente and ct.codigo = cti.contrato)'
      
        'left join glo_tipo_contrato tpc on (tpc.cnpj = ct.cnpj and tpc.c' +
        'odigo = ct.cod_contrato)'
      
        'left join glo_modelo_propriedade mdl on (mdl.codigo = prd.modelo' +
        '  and mdl.cnpj = prd.cnpj)'
      
        'left join glo_veiculos v on (v.cnpj = ofc.cnpj and v.pessoa_fj =' +
        ' ofc.pessoa_fj and v.codigo = ofc.veiculo)'
      'where ofc.cnpj = :cnpj')
    Left = 776
    Top = 619
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object IntegerField1: TIntegerField
      DisplayLabel = 'Ord. Servi'#231'o'
      FieldName = 'OFC_CODIGO'
      Origin = '"OFC_ORDEM_SERVICO"."CODIGO"'
      Required = True
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'OFC_DATA'
      Origin = '"OFC_ORDEM_SERVICO"."DATA"'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Dt. Programa'#231#227'o'
      FieldName = 'OFC_DT_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."DT_ATRIBUICAO"'
      EditMask = '!99/99/00;1;_'
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Dt. Fechamento'
      FieldName = 'OFC_DATA_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."DATA_FECHAMENTO"'
      EditMask = '!99/99/00;1;_'
    end
    object FloatField1: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'OFC_TOTAL'
      Origin = '"OFC_ORDEM_SERVICO"."TOTAL"'
      EditFormat = '###,##0.00'
    end
    object IBStringField1: TIBStringField
      DisplayLabel = 'Solicitante'
      FieldName = 'OFC_SOLICITANTE'
      Origin = '"OFC_ORDEM_SERVICO"."CLIENTE"'
      Size = 50
    end
    object IntegerField2: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'OFC_VENDA'
      Origin = '"OFC_ORDEM_SERVICO"."VENDA"'
    end
    object FloatField2: TFloatField
      DisplayLabel = 'Km Rodado'
      FieldName = 'OFC_KM_RODADO'
      Origin = '"OFC_ORDEM_SERVICO"."KM_RODADO"'
    end
    object FloatField3: TFloatField
      DisplayLabel = 'Horas Trabalhadas'
      FieldName = 'OFC_HORAS_TRABALHADAS'
      Origin = '"OFC_ORDEM_SERVICO"."HORAS_TRABALHADAS"'
    end
    object IntegerField3: TIntegerField
      DisplayLabel = 'C'#243'd. T'#233'cnico'
      FieldName = 'MEC_CODIGO'
      Origin = '"OFC_MECANICOS"."CODIGO"'
    end
    object IBStringField2: TIBStringField
      DisplayLabel = 'T'#233'cnico/Consultor'
      FieldName = 'MEC_NOME'
      Origin = '"OFC_MECANICOS"."NOME"'
      Size = 50
    end
    object IntegerField4: TIntegerField
      DisplayLabel = 'C'#243'd. Defeito'
      FieldName = 'DEF_CODIGO'
      Origin = '"OFC_DEFEITO"."CODIGO"'
    end
    object IBStringField3: TIBStringField
      DisplayLabel = 'Defeito'
      FieldName = 'DEF_NOME'
      Origin = '"OFC_DEFEITO"."NOME"'
      Size = 50
    end
    object IntegerField5: TIntegerField
      DisplayLabel = 'C'#243'd. Problema identificado'
      FieldName = 'MTC_CODIGO'
      Origin = '"OFC_MOTIVO_CHAMADO"."CODIGO"'
    end
    object IBStringField4: TIBStringField
      DisplayLabel = 'Problema identificado'
      FieldName = 'MTC_NOME'
      Origin = '"OFC_MOTIVO_CHAMADO"."NOME"'
      Size = 50
    end
    object IntegerField6: TIntegerField
      DisplayLabel = 'C'#243'd. Servi'#231'o Executado'
      FieldName = 'TPA_CODIGO'
      Origin = '"OFC_TIPO_ATENDIMENTO"."CODIGO"'
    end
    object IBStringField5: TIBStringField
      DisplayLabel = 'Servi'#231'o Executado'
      FieldName = 'TPA_NOME'
      Origin = '"OFC_TIPO_ATENDIMENTO"."NOME"'
      Size = 50
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'C'#243'd. Cor'
      FieldName = 'ST_COR'
      Origin = '"OFC_STATUS"."COR"'
    end
    object IBStringField6: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'ST_NOME'
      Origin = '"OFC_STATUS"."NOME"'
      Size = 50
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CLI_CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
    end
    object IBStringField7: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLI_NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object IntegerField9: TIntegerField
      DisplayLabel = 'C'#243'd. Regi'#227'o'
      FieldName = 'REG_CODIGO'
      Origin = '"GLO_REGIOES"."CODIGO"'
    end
    object IBStringField8: TIBStringField
      DisplayLabel = 'C'#243'd. Equipamento'
      FieldName = 'PRD_CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object IBStringField9: TIBStringField
      DisplayLabel = 'Equipamento'
      FieldName = 'PRD_NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object IBStringField10: TIBStringField
      DisplayLabel = 'N'#186' de S'#233'rie'
      FieldName = 'PRD_SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object IntegerField10: TIntegerField
      DisplayLabel = 'C'#243'd. Modelo'
      FieldName = 'MDL_CODIGO'
      Origin = '"OFC_MOTORES"."CODIGO"'
    end
    object IntegerField11: TIntegerField
      DisplayLabel = 'C'#243'd. Status'
      FieldName = 'ST_CODIGO'
      Origin = '"OFC_STATUS"."CODIGO"'
    end
    object IntegerField12: TIntegerField
      DisplayLabel = 'Tmp. Max. de Resposta'
      FieldName = 'CP_TEMPO_RESPOSTA'
      Origin = '"GLO_CLIENTES_PRODUTOS"."TEMPO_RESPOSTA"'
      DisplayFormat = '###,##0.00'
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = 'Dt. Solicita'#231#227'o'
      FieldName = 'OFC_DT_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."ENTRADA"'
      Required = True
      EditMask = '!99/99/00;1;_'
    end
    object TimeField1: TTimeField
      DisplayLabel = 'Hora Programa'#231#227'o'
      FieldName = 'OFC_HR_ATRIBUICAO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ATRIBUICAO"'
    end
    object TimeField2: TTimeField
      DisplayLabel = 'Hora Solicita'#231#227'o'
      FieldName = 'OFC_HR_ENTRADA'
      Origin = '"OFC_ORDEM_SERVICO"."HR_ENTRADA"'
    end
    object IntegerField13: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'CP_COD_CONTRATO'
      Origin = '"GLO_CLIENTES_PRODUTOS"."COD_CONTRATO"'
    end
    object IBStringField11: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'TPC_NOME'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object TimeField3: TTimeField
      DisplayLabel = 'Hora Fechamento'
      FieldName = 'OFC_HR_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."HR_FECHAMENTO"'
    end
    object IBStringField12: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object FloatField4: TFloatField
      DisplayLabel = 'Tmp. Decorrido'
      FieldKind = fkCalculated
      FieldName = 'TEMPO_GASTO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object FloatField5: TFloatField
      DisplayLabel = 'Tmp. Resposta'
      FieldName = 'TEMPO_RESPOSTA'
      Origin = '"OFC_ORDEM_SERVICO"."TEMPO_RESPOSTA"'
    end
    object IBStringField13: TIBStringField
      DisplayLabel = 'Id Descri'#231#227'o'
      FieldName = 'REG_DESCRICAO'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object IBStringField14: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MDL_NOME'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Size = 50
    end
    object IntegerField14: TIntegerField
      DisplayLabel = 'Id. Contrato'
      FieldName = 'ID_CONTRATO'
      Origin = '"OFC_ORDEM_SERVICO"."ID_CONTRATO"'
    end
    object IntegerField15: TIntegerField
      DisplayLabel = 'Protocolo'
      FieldName = 'PROTOCOLO'
      Origin = '"OFC_ORDEM_SERVICO"."PROTOCOLO"'
    end
    object IntegerField16: TIntegerField
      DisplayLabel = 'Prioridade'
      FieldName = 'PRIORIDADE'
      Origin = '"OFC_ORDEM_SERVICO"."PRIORIDADE"'
    end
    object FloatField6: TFloatField
      DisplayLabel = 'Custo OS'
      FieldName = 'CUSTO_OS'
      Origin = '"OFC_ORDEM_SERVICO"."CUSTO_OS"'
      DisplayFormat = '###,##0.00'
    end
    object BlobField1: TBlobField
      DisplayLabel = 'Informa'#231#245'es'
      FieldName = 'INFORMACOES'
      Origin = '"OFC_ORDEM_SERVICO"."INFORMACOES"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object BlobField2: TBlobField
      DisplayLabel = 'Obs. Fechamento'
      FieldName = 'OBS_FECHAMENTO'
      Origin = '"OFC_ORDEM_SERVICO"."OBS_FECHAMENTO"'
      ProviderFlags = [pfInUpdate]
      Size = 8
    end
    object IntegerField17: TIntegerField
      DisplayLabel = 'Controle'
      FieldName = 'CONTROLE'
      Origin = '"OFC_ORDEM_SERVICO"."CONTROLE"'
    end
    object IBStringField15: TIBStringField
      DisplayLabel = 'Veiculo'
      FieldName = 'VEICULO'
      Origin = '"GLO_VEICULOS"."MODELO"'
      Size = 50
    end
    object IBStringField16: TIBStringField
      DisplayLabel = 'Placa'
      FieldName = 'PLACA'
      Origin = '"GLO_VEICULOS"."PLACA"'
      FixedChar = True
      Size = 8
    end
  end
  object OFC_GRAVIDADE: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = ServicosAfterClose
    AfterPost = OrdemAfterPost
    BeforeOpen = DefeitoBeforeOpen
    BeforePost = OFC_GRAVIDADEBeforePost
    OnNewRecord = OrdemNewRecord
    DeleteSQL.Strings = (
      'delete from ofc_gravidade'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into ofc_gravidade'
      '  (CNPJ, CODIGO, DESCRICAO, TITULO)'
      'values'
      '  (:CNPJ, :CODIGO, :DESCRICAO, :TITULO)')
    RefreshSQL.Strings = (
      'Select *'
      'from ofc_gravidade '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select *'
      'from  ofc_gravidade'
      'Where ofc_gravidade.CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update ofc_gravidade'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TITULO = :TITULO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'OFC_GRAVIDADE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 864
    Top = 83
    object OFC_GRAVIDADECNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"OFC_GRAVIDADE"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object OFC_GRAVIDADECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"OFC_GRAVIDADE"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object OFC_GRAVIDADEDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"OFC_GRAVIDADE"."DESCRICAO"'
      Size = 80
    end
    object OFC_GRAVIDADETITULO: TIBStringField
      FieldName = 'TITULO'
      Origin = '"OFC_GRAVIDADE"."TITULO"'
      Required = True
      Size = 30
    end
  end
  object SelEndereco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select psa.map_lat, psa.map_long, lgd.nome logradouro , psa.nume' +
        'ro, cdd.nome cidade, psa.uf from glo_pessoas_fj psa'
      
        'left join glo_logradouros lgd on (lgd.cnpj = psa.cnpj and psa.en' +
        'dereco = lgd.codigo)'
      
        'left join glo_cidades cdd on (cdd.cnpj = psa.cnpj and cdd.codigo' +
        ' = psa.cidade)'
      'where psa.cnpj = :cnpj and psa.codigo = :codigo')
    Left = 1136
    Top = 75
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object SelEnderecoMAP_LAT: TIBStringField
      FieldName = 'MAP_LAT'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LAT"'
      Size = 200
    end
    object SelEnderecoMAP_LONG: TIBStringField
      FieldName = 'MAP_LONG'
      Origin = '"GLO_PESSOAS_FJ"."MAP_LONG"'
      Size = 200
    end
    object SelEnderecoLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object SelEnderecoNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object SelEnderecoCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object SelEnderecoUF: TIBStringField
      FieldName = 'UF'
      Origin = '"GLO_PESSOAS_FJ"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object QrySelSerie: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = ServicosBeforeOpen
    SQL.Strings = (
      
        'select o.cod_cliente, psa.nome_razao, p.codigo cod_equipamento f' +
        'rom ofc_contratos_itens i'
      
        'inner join ofc_contratos o on (o.cnpj = i.cnpj and o.codigo = i.' +
        'contrato)'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj =o.cnpj and psa.codig' +
        'o = o.cod_cliente)'
      
        'inner join est_produtos p on (p.cnpj = i.cnpj and p.codigo = i.c' +
        'od_produto)'
      
        'where coalesce(o.ativo,'#39'S'#39') = '#39'S'#39' and coalesce(i.ativo,'#39'S'#39') = '#39'S' +
        #39
      'and p.serie = :serie and p.cnpj = :cnpj')
    Left = 1064
    Top = 74
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'serie'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object QrySelSerieCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"OFC_CONTRATOS"."COD_CLIENTE"'
    end
    object QrySelSerieNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QrySelSerieCOD_EQUIPAMENTO: TIBStringField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
  end
  object RetCodTecnico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select prd.cod_tecnico from est_produtos prd'
      'where prd.cnpj = :cnpj and prd.codigo = :codigo')
    Left = 1145
    Top = 130
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'codigo'
        ParamType = ptUnknown
      end>
    object RetCodTecnicoCOD_TECNICO: TIntegerField
      FieldName = 'COD_TECNICO'
      Origin = '"EST_PRODUTOS"."COD_TECNICO"'
    end
  end
end
