object DmPdv: TDmPdv
  OldCreateOrder = False
  OnDestroy = DataModuleDestroy
  Left = 284
  Top = 152
  Height = 456
  Width = 886
  object DsPdv: TDataSource
    AutoEdit = False
    DataSet = Pdv
    Left = 104
    Top = 16
  end
  object Pdv_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    AfterInsert = Pdv_ItensAfterInsert
    AfterPost = Pdv_ItensAfterPost
    BeforeOpen = Pdv_ItensBeforeOpen
    BeforePost = Pdv_ItensBeforePost
    OnCalcFields = Pdv_ItensCalcFields
    OnNewRecord = Pdv_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS_ITENS'
      '  (CNPJ, CODIGO, PRODUTO, SEQUENCIA, QUANTIDADE, PRC_UNITARIO, '
      'PRC_CUSTO, '
      
        '   ICM, ICM_SUBS, IPI, VOLUME, PESO, DESCONTO, PORC_DESC, UNIDAD' +
        'E, '
      'PRC_UNIT_ORIGINAL, '
      
        '   NOME_PRODUTO, ALIQUOTA, PRODUTOFIS, NOME_FIS, CTE, CTIE, ORIG' +
        'EM, '
      'REDUCAO, '
      '   SUBUNIDADE, TOTAL_DIGITADO, VENDEDOR, FRACIONADO, '
      'MENSAGEM_REDUCAO, '
      '   BASECALCULOICM, BASECALCULOSUBSTITUICAO, ALIQUOTA_EST, '
      'ALIQUOTA_INT, '
      '   CFOP, COMPLEMENTO, NOME_VENDEDOR, SERVICO, NUMERO, '
      'LINHA_ABASTECIMENTO, '
      '   CONTADOR_ARQUIVO, GRADE, QUANTIDADE_FIS, PRC_UNITARIO_FIS, '
      'LOTE, CODIGO_LOTE, '
      '   UTILIZA_LOTE, COM_GERADA)'
      'values'
      
        '  (:CNPJ, :CODIGO, :PRODUTO, :SEQUENCIA, :QUANTIDADE, :PRC_UNITA' +
        'RIO, '
      ':PRC_CUSTO, '
      
        '   :ICM, :ICM_SUBS, :IPI, :VOLUME, :PESO, :DESCONTO, :PORC_DESC,' +
        ' '
      ':UNIDADE, '
      '   :PRC_UNIT_ORIGINAL, :NOME_PRODUTO, :ALIQUOTA, :PRODUTOFIS, '
      ':NOME_FIS, '
      
        '   :CTE, :CTIE, :ORIGEM, :REDUCAO, :SUBUNIDADE, :TOTAL_DIGITADO,' +
        ' '
      ':VENDEDOR, '
      '   :FRACIONADO, :MENSAGEM_REDUCAO, :BASECALCULOICM, '
      ':BASECALCULOSUBSTITUICAO, '
      '   :ALIQUOTA_EST, :ALIQUOTA_INT, :CFOP, :COMPLEMENTO, '
      ':NOME_VENDEDOR, :SERVICO, '
      '   :NUMERO, :LINHA_ABASTECIMENTO, :CONTADOR_ARQUIVO, :GRADE, '
      ':QUANTIDADE_FIS, '
      
        '   :PRC_UNITARIO_FIS, :LOTE, :CODIGO_LOTE, :UTILIZA_LOTE, :COM_G' +
        'ERADA)')
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
      '  COM_GERADA'
      'from FAT_VENDAS_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  PRODUTO = :PRODUTO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select * '
      'from FAT_VENDAS_ITENS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FAT_VENDAS_ITENS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  PRODUTO = :PRODUTO,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  ICM = :ICM,'
      '  ICM_SUBS = :ICM_SUBS,'
      '  IPI = :IPI,'
      '  VOLUME = :VOLUME,'
      '  PESO = :PESO,'
      '  DESCONTO = :DESCONTO,'
      '  PORC_DESC = :PORC_DESC,'
      '  UNIDADE = :UNIDADE,'
      '  PRC_UNIT_ORIGINAL = :PRC_UNIT_ORIGINAL,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  ALIQUOTA = :ALIQUOTA,'
      '  PRODUTOFIS = :PRODUTOFIS,'
      '  NOME_FIS = :NOME_FIS,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  ORIGEM = :ORIGEM,'
      '  REDUCAO = :REDUCAO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  TOTAL_DIGITADO = :TOTAL_DIGITADO,'
      '  VENDEDOR = :VENDEDOR,'
      '  FRACIONADO = :FRACIONADO,'
      '  MENSAGEM_REDUCAO = :MENSAGEM_REDUCAO,'
      '  BASECALCULOICM = :BASECALCULOICM,'
      '  BASECALCULOSUBSTITUICAO = :BASECALCULOSUBSTITUICAO,'
      '  ALIQUOTA_EST = :ALIQUOTA_EST,'
      '  ALIQUOTA_INT = :ALIQUOTA_INT,'
      '  CFOP = :CFOP,'
      '  COMPLEMENTO = :COMPLEMENTO,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  SERVICO = :SERVICO,'
      '  NUMERO = :NUMERO,'
      '  LINHA_ABASTECIMENTO = :LINHA_ABASTECIMENTO,'
      '  CONTADOR_ARQUIVO = :CONTADOR_ARQUIVO,'
      '  GRADE = :GRADE,'
      '  QUANTIDADE_FIS = :QUANTIDADE_FIS,'
      '  PRC_UNITARIO_FIS = :PRC_UNITARIO_FIS,'
      '  LOTE = :LOTE,'
      '  CODIGO_LOTE = :CODIGO_LOTE,'
      '  UTILIZA_LOTE = :UTILIZA_LOTE,'
      '  COM_GERADA = :COM_GERADA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    Left = 32
    Top = 72
    object Pdv_ItensCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CUPOM_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Pdv_ItensCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_CUPOM_ITENS"."CODIGO"'
      Required = True
    end
    object Pdv_ItensDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FAT_CUPOM_ITENS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Pdv_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_CUPOM_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Pdv_ItensPRC_UNIT_ORIGINAL: TFloatField
      DisplayLabel = 'Unit. Original'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_CUPOM_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Pdv_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_CUPOM_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Pdv_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_CUPOM_ITENS"."PRODUTO"'
      Required = True
      OnValidate = Pdv_ItensPRODUTOValidate
      Size = 15
    end
    object Pdv_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_CUPOM_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
    end
    object Pdv_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_CUPOM_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Pdv_ItensALIQUOTA: TIBStringField
      DisplayLabel = 'Aliquota'
      DisplayWidth = 3
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_CUPOM_ITENS"."ALIQUOTA"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Pdv_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Pdv_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Pdv_ItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Pdv_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."SUBUNIDADE"'
      Required = True
    end
    object Pdv_ItensGRADE: TIBStringField
      FieldName = 'GRADE'
      Origin = '"FAT_VENDAS_ITENS"."GRADE"'
      OnValidate = Pdv_ItensGRADEValidate
      FixedChar = True
      Size = 4
    end
    object Pdv_ItensNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"FAT_VENDAS_ITENS"."NUMERO"'
      OnValidate = Pdv_ItensNUMEROValidate
      Size = 6
    end
    object Pdv_ItensICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS_ITENS"."ICM"'
    end
    object Pdv_ItensICM_SUBS: TFloatField
      FieldName = 'ICM_SUBS'
      Origin = '"FAT_VENDAS_ITENS"."ICM_SUBS"'
    end
    object Pdv_ItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS_ITENS"."IPI"'
    end
    object Pdv_ItensVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_ITENS"."VOLUME"'
    end
    object Pdv_ItensPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_ITENS"."PESO"'
    end
    object Pdv_ItensPORC_DESC: TFloatField
      FieldName = 'PORC_DESC'
      Origin = '"FAT_VENDAS_ITENS"."PORC_DESC"'
    end
    object Pdv_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Pdv_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Pdv_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object Pdv_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object Pdv_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Pdv_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Pdv_ItensTOTAL_DIGITADO: TFloatField
      FieldName = 'TOTAL_DIGITADO'
      Origin = '"FAT_VENDAS_ITENS"."TOTAL_DIGITADO"'
    end
    object Pdv_ItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."VENDEDOR"'
    end
    object Pdv_ItensFRACIONADO: TIBStringField
      FieldName = 'FRACIONADO'
      Origin = '"FAT_VENDAS_ITENS"."FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object Pdv_ItensMENSAGEM_REDUCAO: TIBStringField
      FieldName = 'MENSAGEM_REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."MENSAGEM_REDUCAO"'
      Size = 80
    end
    object Pdv_ItensBASECALCULOICM: TFloatField
      FieldName = 'BASECALCULOICM'
      Origin = '"FAT_VENDAS_ITENS"."BASECALCULOICM"'
    end
    object Pdv_ItensBASECALCULOSUBSTITUICAO: TFloatField
      FieldName = 'BASECALCULOSUBSTITUICAO'
      Origin = '"FAT_VENDAS_ITENS"."BASECALCULOSUBSTITUICAO"'
    end
    object Pdv_ItensALIQUOTA_EST: TFloatField
      FieldName = 'ALIQUOTA_EST'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA_EST"'
    end
    object Pdv_ItensALIQUOTA_INT: TFloatField
      FieldName = 'ALIQUOTA_INT'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA_INT"'
    end
    object Pdv_ItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"FAT_VENDAS_ITENS"."CFOP"'
      OnValidate = Pdv_ItensCFOPValidate
    end
    object Pdv_ItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"FAT_VENDAS_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object Pdv_ItensNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS_ITENS"."NOME_VENDEDOR"'
      Size = 15
    end
    object Pdv_ItensSERVICO: TBlobField
      FieldName = 'SERVICO'
      Origin = '"FAT_VENDAS_ITENS"."SERVICO"'
      Size = 8
    end
    object Pdv_ItensLINHA_ABASTECIMENTO: TIntegerField
      FieldName = 'LINHA_ABASTECIMENTO'
      Origin = '"FAT_VENDAS_ITENS"."LINHA_ABASTECIMENTO"'
    end
    object Pdv_ItensCONTADOR_ARQUIVO: TIntegerField
      FieldName = 'CONTADOR_ARQUIVO'
      Origin = '"FAT_VENDAS_ITENS"."CONTADOR_ARQUIVO"'
    end
    object Pdv_ItensQUANTIDADE_FIS: TFloatField
      FieldName = 'QUANTIDADE_FIS'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE_FIS"'
    end
    object Pdv_ItensPRC_UNITARIO_FIS: TFloatField
      FieldName = 'PRC_UNITARIO_FIS'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO_FIS"'
    end
    object Pdv_ItensLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"FAT_VENDAS_ITENS"."LOTE"'
      Size = 10
    end
    object Pdv_ItensCODIGO_LOTE: TIntegerField
      FieldName = 'CODIGO_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO_LOTE"'
    end
    object Pdv_ItensUTILIZA_LOTE: TIBStringField
      FieldName = 'UTILIZA_LOTE'
      Origin = '"FAT_VENDAS_ITENS"."UTILIZA_LOTE"'
      FixedChar = True
      Size = 1
    end
    object Pdv_ItensCOM_GERADA: TIBStringField
      FieldName = 'COM_GERADA'
      Origin = '"FAT_VENDAS_ITENS"."COM_GERADA"'
      FixedChar = True
      Size = 1
    end
    object Pdv_ItensTotal_Fiscal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Fiscal'
      Calculated = True
    end
    object Pdv_ItensPeso_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Peso_Total'
      Calculated = True
    end
    object Pdv_ItensVolume_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Volume_Total'
      Calculated = True
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 104
    Top = 72
  end
  object Captura: TTimer
    Interval = 350
    OnTimer = CapturaTimer
    Left = 176
    Top = 72
  end
  object Leitor: TSerialPort
    AfterReceive = LeitorAfterReceive
    Left = 176
    Top = 16
  end
  object Balanca: TSerialPort
    CommPort = cpCOM3
    BaudRate = br2400
    FlowControl = fcXON_XOFF
    AfterReceive = BalancaAfterReceive
    Left = 264
    Top = 16
  end
  object Pdv: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    AfterInsert = PdvAfterInsert
    BeforeOpen = PdvBeforeOpen
    BeforePost = PdvBeforePost
    OnNewRecord = PdvNewRecord
    DeleteSQL.Strings = (
      'delete from FAT_VENDAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FAT_VENDAS'
      
        '  (APRAZO, ASSINA_NOTA, BAIRRO_CONSUMIDOR, BANCO, BASE_ICM, BASE' +
        '_ICM_SUBST, '
      
        '   CANCELADA, CARGA, CARTAO, CHEQUE, CIDADE_CONSUMIDOR, CNPJ, CO' +
        'D_INDEXADOR, '
      
        '   CODIGO, COMPROMETER_ESTOQUE, CONS_REV, CONTA_CAIXA, CONTROLA_' +
        'KM, CONTROLA_PLACA, '
      
        '   CONVENIADO, DATA, DATA_CAIXA, DATA_CANCELAMENTO, DESC_ACRES, ' +
        'DESCONTOS_CONCEDIDOS, '
      
        '   DESCRICAO, DESCTO_RES, DESPESAS, DINHEIRO, DOCUMENTOS_CONSUMI' +
        'DOR, DT_EMISSAO_AGRUPADA, '
      
        '   DUPLICATA, ENDERECO_CONSUMIDOR, ENTRADA, ENVIADA_CX, FECHADA,' +
        ' FONE_CONSUMIDOR, '
      
        '   FORMA_PGTO, FRETE, HISTORICO, HORA, ICM, INSS, IPI, IRRF, ISS' +
        ', KM_ATUAL, '
      
        '   LOCAL, LOCAL_COBRANCA, MEDIA_KM, MESA, NAO_COBR_JUR_ATE, NATU' +
        'REZA, NOME, '
      
        '   NOME_CONSUMIDOR, NOME_CONVENIO, NOME_FORMA, NOME_NATUREZA, NO' +
        'ME_PROPRIEDADE, '
      
        '   NOME_TERCEIRO, NOME_VENDEDOR, NUM_CUPOM, NUM_NF, OBSERVACAO, ' +
        'ORCAMENTO, '
      
        '   PESO, PESSOA_FJ, PGTO_FRETE, PIS_COFINS_CSLL, PROPRIEDADE, RE' +
        'CEBIDAS, '
      
        '   REQUISICAO, SEGURO, SELECIONADA, SERIE, TERCEIRO, TICKET, TIP' +
        'O_DOCTO, '
      
        '   TIPO_VENDA, TOTAL, TOTAL_FISCAL, TOTAL_NOTA, TRANSPORTADORA, ' +
        'TROCO, '
      
        '   TURNO, UF, USUARIO, VALE_TROCO, VALIDADE, VALOR_ICM_SUBST, VE' +
        'NDEDOR, '
      '   VLR_PARC_LC, VOLUME)'
      'values'
      
        '  (:APRAZO, :ASSINA_NOTA, :BAIRRO_CONSUMIDOR, :BANCO, :BASE_ICM,' +
        ' :BASE_ICM_SUBST, '
      
        '   :CANCELADA, :CARGA, :CARTAO, :CHEQUE, :CIDADE_CONSUMIDOR, :CN' +
        'PJ, :COD_INDEXADOR, '
      
        '   :CODIGO, :COMPROMETER_ESTOQUE, :CONS_REV, :CONTA_CAIXA, :CONT' +
        'ROLA_KM, '
      
        '   :CONTROLA_PLACA, :CONVENIADO, :DATA, :DATA_CAIXA, :DATA_CANCE' +
        'LAMENTO, '
      
        '   :DESC_ACRES, :DESCONTOS_CONCEDIDOS, :DESCRICAO, :DESCTO_RES, ' +
        ':DESPESAS, '
      
        '   :DINHEIRO, :DOCUMENTOS_CONSUMIDOR, :DT_EMISSAO_AGRUPADA, :DUP' +
        'LICATA, '
      
        '   :ENDERECO_CONSUMIDOR, :ENTRADA, :ENVIADA_CX, :FECHADA, :FONE_' +
        'CONSUMIDOR, '
      
        '   :FORMA_PGTO, :FRETE, :HISTORICO, :HORA, :ICM, :INSS, :IPI, :I' +
        'RRF, :ISS, '
      
        '   :KM_ATUAL, :LOCAL, :LOCAL_COBRANCA, :MEDIA_KM, :MESA, :NAO_CO' +
        'BR_JUR_ATE, '
      
        '   :NATUREZA, :NOME, :NOME_CONSUMIDOR, :NOME_CONVENIO, :NOME_FOR' +
        'MA, :NOME_NATUREZA, '
      
        '   :NOME_PROPRIEDADE, :NOME_TERCEIRO, :NOME_VENDEDOR, :NUM_CUPOM' +
        ', :NUM_NF, '
      
        '   :OBSERVACAO, :ORCAMENTO, :PESO, :PESSOA_FJ, :PGTO_FRETE, :PIS' +
        '_COFINS_CSLL, '
      
        '   :PROPRIEDADE, :RECEBIDAS, :REQUISICAO, :SEGURO, :SELECIONADA,' +
        ' :SERIE, '
      
        '   :TERCEIRO, :TICKET, :TIPO_DOCTO, :TIPO_VENDA, :TOTAL, :TOTAL_' +
        'FISCAL, '
      
        '   :TOTAL_NOTA, :TRANSPORTADORA, :TROCO, :TURNO, :UF, :USUARIO, ' +
        ':VALE_TROCO, '
      
        '   :VALIDADE, :VALOR_ICM_SUBST, :VENDEDOR, :VLR_PARC_LC, :VOLUME' +
        ')')
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
      '  GERA_FINANCEIRO,'
      '  NFE_CHAVE,'
      '  NFE_SELECIONADO,'
      '  DT_PREV_ENTREGA,'
      '  COD_INDEXADOR,'
      '  IDX_DATABASE,'
      '  IDX_COTACAO,'
      '  IDX_QTDE,'
      '  COD_CONFIGTITULO,'
      '  NFE_VALIDADA,'
      '  NFE_ASSINADA,'
      '  NFE_TRANSMITIDA,'
      '  NFE_AUTORIZADA,'
      '  NFE_DANFE_IMPRESSO'
      'from FAT_VENDAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      #9
      'from FAT_VENDAS'
      'WHERE CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update FAT_VENDAS'
      'set'
      '  APRAZO = :APRAZO,'
      '  ASSINA_NOTA = :ASSINA_NOTA,'
      '  BAIRRO_CONSUMIDOR = :BAIRRO_CONSUMIDOR,'
      '  BANCO = :BANCO,'
      '  BASE_ICM = :BASE_ICM,'
      '  BASE_ICM_SUBST = :BASE_ICM_SUBST,'
      '  CANCELADA = :CANCELADA,'
      '  CARGA = :CARGA,'
      '  CARTAO = :CARTAO,'
      '  CHEQUE = :CHEQUE,'
      '  CIDADE_CONSUMIDOR = :CIDADE_CONSUMIDOR,'
      '  CNPJ = :CNPJ,'
      '  COD_INDEXADOR = :COD_INDEXADOR,'
      '  CODIGO = :CODIGO,'
      '  COMPROMETER_ESTOQUE = :COMPROMETER_ESTOQUE,'
      '  CONS_REV = :CONS_REV,'
      '  CONTA_CAIXA = :CONTA_CAIXA,'
      '  CONTROLA_KM = :CONTROLA_KM,'
      '  CONTROLA_PLACA = :CONTROLA_PLACA,'
      '  CONVENIADO = :CONVENIADO,'
      '  DATA = :DATA,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  DATA_CANCELAMENTO = :DATA_CANCELAMENTO,'
      '  DESC_ACRES = :DESC_ACRES,'
      '  DESCONTOS_CONCEDIDOS = :DESCONTOS_CONCEDIDOS,'
      '  DESCRICAO = :DESCRICAO,'
      '  DESCTO_RES = :DESCTO_RES,'
      '  DESPESAS = :DESPESAS,'
      '  DINHEIRO = :DINHEIRO,'
      '  DOCUMENTOS_CONSUMIDOR = :DOCUMENTOS_CONSUMIDOR,'
      '  DT_EMISSAO_AGRUPADA = :DT_EMISSAO_AGRUPADA,'
      '  DUPLICATA = :DUPLICATA,'
      '  ENDERECO_CONSUMIDOR = :ENDERECO_CONSUMIDOR,'
      '  ENTRADA = :ENTRADA,'
      '  ENVIADA_CX = :ENVIADA_CX,'
      '  FECHADA = :FECHADA,'
      '  FONE_CONSUMIDOR = :FONE_CONSUMIDOR,'
      '  FORMA_PGTO = :FORMA_PGTO,'
      '  FRETE = :FRETE,'
      '  HISTORICO = :HISTORICO,'
      '  HORA = :HORA,'
      '  ICM = :ICM,'
      '  INSS = :INSS,'
      '  IPI = :IPI,'
      '  IRRF = :IRRF,'
      '  ISS = :ISS,'
      '  KM_ATUAL = :KM_ATUAL,'
      '  LOCAL = :LOCAL,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  MEDIA_KM = :MEDIA_KM,'
      '  MESA = :MESA,'
      '  NAO_COBR_JUR_ATE = :NAO_COBR_JUR_ATE,'
      '  NATUREZA = :NATUREZA,'
      '  NOME = :NOME,'
      '  NOME_CONSUMIDOR = :NOME_CONSUMIDOR,'
      '  NOME_CONVENIO = :NOME_CONVENIO,'
      '  NOME_FORMA = :NOME_FORMA,'
      '  NOME_NATUREZA = :NOME_NATUREZA,'
      '  NOME_PROPRIEDADE = :NOME_PROPRIEDADE,'
      '  NOME_TERCEIRO = :NOME_TERCEIRO,'
      '  NOME_VENDEDOR = :NOME_VENDEDOR,'
      '  NUM_CUPOM = :NUM_CUPOM,'
      '  NUM_NF = :NUM_NF,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  PESO = :PESO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PGTO_FRETE = :PGTO_FRETE,'
      '  PIS_COFINS_CSLL = :PIS_COFINS_CSLL,'
      '  PROPRIEDADE = :PROPRIEDADE,'
      '  RECEBIDAS = :RECEBIDAS,'
      '  REQUISICAO = :REQUISICAO,'
      '  SEGURO = :SEGURO,'
      '  SELECIONADA = :SELECIONADA,'
      '  SERIE = :SERIE,'
      '  TERCEIRO = :TERCEIRO,'
      '  TICKET = :TICKET,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TIPO_VENDA = :TIPO_VENDA,'
      '  TOTAL = :TOTAL,'
      '  TOTAL_FISCAL = :TOTAL_FISCAL,'
      '  TOTAL_NOTA = :TOTAL_NOTA,'
      '  TRANSPORTADORA = :TRANSPORTADORA,'
      '  TROCO = :TROCO,'
      '  TURNO = :TURNO,'
      '  UF = :UF,'
      '  USUARIO = :USUARIO,'
      '  VALE_TROCO = :VALE_TROCO,'
      '  VALIDADE = :VALIDADE,'
      '  VALOR_ICM_SUBST = :VALOR_ICM_SUBST,'
      '  VENDEDOR = :VENDEDOR,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  VOLUME = :VOLUME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 32
    Top = 16
    object PdvCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_CUPOM"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object PdvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_CUPOM"."CODIGO"'
      Required = True
    end
    object PdvCARTAO: TFloatField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"FAT_CUPOM"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
    end
    object PdvCHEQUE: TFloatField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FAT_CUPOM"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object PdvUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_CUPOM"."USUARIO"'
      Required = True
    end
    object PdvPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_CUPOM"."PESSOA_FJ"'
      OnValidate = PdvPESSOA_FJValidate
    end
    object PdvNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_CUPOM"."NOME"'
      Size = 50
    end
    object PdvFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object PdvVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
      OnValidate = PdvVENDEDORValidate
    end
    object PdvNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDAS"."NATUREZA"'
      Required = True
    end
    object PdvENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"FAT_VENDAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object PdvFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_VENDAS"."FORMA_PGTO"'
    end
    object PdvNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object PdvNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object PdvPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"FAT_VENDAS"."PROPRIEDADE"'
    end
    object PdvCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"FAT_VENDAS"."CONVENIADO"'
    end
    object PdvDESC_ACRES: TFloatField
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object PdvENTRADA: TFloatField
      FieldName = 'ENTRADA'
      Origin = '"FAT_VENDAS"."ENTRADA"'
    end
    object PdvVLR_PARC_LC: TFloatField
      FieldName = 'VLR_PARC_LC'
      Origin = '"FAT_VENDAS"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
    end
    object PdvTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object PdvNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object PdvTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Origin = '"FAT_VENDAS"."TOTAL_NOTA"'
    end
    object PdvSELECIONADA: TIBStringField
      FieldName = 'SELECIONADA'
      Origin = '"FAT_VENDAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
    object PdvUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FAT_VENDAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object PdvVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"FAT_VENDAS"."VALIDADE"'
    end
    object PdvDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object PdvDINHEIRO: TFloatField
      FieldName = 'DINHEIRO'
      Origin = '"FAT_VENDAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
    end
    object PdvTICKET: TFloatField
      FieldName = 'TICKET'
      Origin = '"FAT_VENDAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
    end
    object PdvTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object PdvTROCO: TFloatField
      FieldName = 'TROCO'
      Origin = '"FAT_VENDAS"."TROCO"'
      OnValidate = PdvTROCOValidate
      DisplayFormat = '###,###,##0.00'
    end
    object PdvCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"FAT_VENDAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object PdvNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object PdvCONS_REV: TIBStringField
      FieldName = 'CONS_REV'
      Origin = '"FAT_VENDAS"."CONS_REV"'
      FixedChar = True
      Size = 1
    end
    object PdvDOCUMENTOS_CONSUMIDOR: TIBStringField
      FieldName = 'DOCUMENTOS_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."DOCUMENTOS_CONSUMIDOR"'
    end
    object PdvENDERECO_CONSUMIDOR: TIBStringField
      FieldName = 'ENDERECO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."ENDERECO_CONSUMIDOR"'
      Size = 30
    end
    object PdvCIDADE_CONSUMIDOR: TIBStringField
      FieldName = 'CIDADE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."CIDADE_CONSUMIDOR"'
      Size = 50
    end
    object PdvFONE_CONSUMIDOR: TIBStringField
      FieldName = 'FONE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."FONE_CONSUMIDOR"'
    end
    object PdvBAIRRO_CONSUMIDOR: TIBStringField
      FieldName = 'BAIRRO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."BAIRRO_CONSUMIDOR"'
      Size = 50
    end
    object PdvVlrAcrescimo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VlrAcrescimo'
      Calculated = True
    end
    object PdvMESA: TIntegerField
      FieldName = 'MESA'
      Origin = '"FAT_VENDAS"."MESA"'
    end
    object PdvHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDAS"."HISTORICO"'
      Size = 100
    end
    object PdvTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"FAT_VENDAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object PdvLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FAT_VENDAS"."LOCAL_COBRANCA"'
    end
    object PdvOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"FAT_VENDAS"."OBSERVACAO"'
      Size = 200
    end
    object PdvTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"FAT_VENDAS"."TERCEIRO"'
    end
    object PdvCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"FAT_VENDAS"."CARGA"'
    end
    object PdvVOLUME: TFloatField
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS"."VOLUME"'
    end
    object PdvPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS"."PESO"'
    end
    object PdvREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"FAT_VENDAS"."REQUISICAO"'
      Size = 6
    end
    object PdvDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"FAT_VENDAS"."DESCRICAO"'
      Size = 8
    end
    object PdvORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object PdvLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object PdvCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"FAT_VENDAS"."CONTA_CAIXA"'
    end
    object PdvBASE_ICM: TFloatField
      FieldName = 'BASE_ICM'
      Origin = '"FAT_VENDAS"."BASE_ICM"'
    end
    object PdvICM: TFloatField
      FieldName = 'ICM'
      Origin = '"FAT_VENDAS"."ICM"'
    end
    object PdvBASE_ICM_SUBST: TFloatField
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"FAT_VENDAS"."BASE_ICM_SUBST"'
    end
    object PdvVALOR_ICM_SUBST: TFloatField
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"FAT_VENDAS"."VALOR_ICM_SUBST"'
    end
    object PdvFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = '"FAT_VENDAS"."FRETE"'
    end
    object PdvSEGURO: TFloatField
      FieldName = 'SEGURO'
      Origin = '"FAT_VENDAS"."SEGURO"'
    end
    object PdvDESPESAS: TFloatField
      FieldName = 'DESPESAS'
      Origin = '"FAT_VENDAS"."DESPESAS"'
    end
    object PdvIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"FAT_VENDAS"."IPI"'
    end
    object PdvAPRAZO: TFloatField
      FieldName = 'APRAZO'
      Origin = '"FAT_VENDAS"."APRAZO"'
    end
    object PdvDUPLICATA: TIntegerField
      FieldName = 'DUPLICATA'
      Origin = '"FAT_VENDAS"."DUPLICATA"'
    end
    object PdvBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FAT_VENDAS"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object PdvRECEBIDAS: TFloatField
      FieldName = 'RECEBIDAS'
      Origin = '"FAT_VENDAS"."RECEBIDAS"'
    end
    object PdvCONTROLA_PLACA: TIBStringField
      FieldName = 'CONTROLA_PLACA'
      Origin = '"FAT_VENDAS"."CONTROLA_PLACA"'
      FixedChar = True
      Size = 1
    end
    object PdvCONTROLA_KM: TIBStringField
      FieldName = 'CONTROLA_KM'
      Origin = '"FAT_VENDAS"."CONTROLA_KM"'
      FixedChar = True
      Size = 1
    end
    object PdvASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"FAT_VENDAS"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object PdvKM_ATUAL: TFloatField
      FieldName = 'KM_ATUAL'
      Origin = '"FAT_VENDAS"."KM_ATUAL"'
    end
    object PdvNOME_PROPRIEDADE: TIBStringField
      FieldName = 'NOME_PROPRIEDADE'
      Origin = '"FAT_VENDAS"."NOME_PROPRIEDADE"'
      Size = 50
    end
    object PdvNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"FAT_VENDAS"."NOME_NATUREZA"'
      Size = 50
    end
    object PdvNOME_TERCEIRO: TIBStringField
      FieldName = 'NOME_TERCEIRO'
      Origin = '"FAT_VENDAS"."NOME_TERCEIRO"'
      Size = 50
    end
    object PdvNOME_FORMA: TIBStringField
      FieldName = 'NOME_FORMA'
      Origin = '"FAT_VENDAS"."NOME_FORMA"'
      Size = 50
    end
    object PdvMEDIA_KM: TFloatField
      FieldName = 'MEDIA_KM'
      Origin = '"FAT_VENDAS"."MEDIA_KM"'
    end
    object PdvTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FAT_VENDAS"."TURNO"'
    end
    object PdvHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"FAT_VENDAS"."HORA"'
    end
    object PdvNAO_COBR_JUR_ATE: TIntegerField
      FieldName = 'NAO_COBR_JUR_ATE'
      Origin = '"FAT_VENDAS"."NAO_COBR_JUR_ATE"'
    end
    object PdvSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"FAT_VENDAS"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object PdvDESCONTOS_CONCEDIDOS: TFloatField
      FieldName = 'DESCONTOS_CONCEDIDOS'
      Origin = '"FAT_VENDAS"."DESCONTOS_CONCEDIDOS"'
    end
    object PdvNOME_CONVENIO: TIBStringField
      FieldName = 'NOME_CONVENIO'
      Origin = '"FAT_VENDAS"."NOME_CONVENIO"'
      Size = 50
    end
    object PdvDT_EMISSAO_AGRUPADA: TDateTimeField
      FieldName = 'DT_EMISSAO_AGRUPADA'
      Origin = '"FAT_VENDAS"."DT_EMISSAO_AGRUPADA"'
    end
    object PdvTRANSPORTADORA: TIntegerField
      FieldName = 'TRANSPORTADORA'
      Origin = '"FAT_VENDAS"."TRANSPORTADORA"'
    end
    object PdvDATA_CANCELAMENTO: TDateTimeField
      FieldName = 'DATA_CANCELAMENTO'
      Origin = '"FAT_VENDAS"."DATA_CANCELAMENTO"'
    end
    object PdvTOTAL_FISCAL: TFloatField
      FieldName = 'TOTAL_FISCAL'
      Origin = '"FAT_VENDAS"."TOTAL_FISCAL"'
    end
    object PdvIRRF: TFloatField
      FieldName = 'IRRF'
      Origin = '"FAT_VENDAS"."IRRF"'
    end
    object PdvINSS: TFloatField
      FieldName = 'INSS'
      Origin = '"FAT_VENDAS"."INSS"'
    end
    object PdvPIS_COFINS_CSLL: TFloatField
      FieldName = 'PIS_COFINS_CSLL'
      Origin = '"FAT_VENDAS"."PIS_COFINS_CSLL"'
    end
    object PdvISS: TFloatField
      FieldName = 'ISS'
      Origin = '"FAT_VENDAS"."ISS"'
    end
    object PdvVALE_TROCO: TIBStringField
      FieldName = 'VALE_TROCO'
      Origin = '"FAT_VENDAS"."VALE_TROCO"'
      FixedChar = True
      Size = 1
    end
    object PdvPGTO_FRETE: TIBStringField
      FieldName = 'PGTO_FRETE'
      Origin = '"FAT_VENDAS"."PGTO_FRETE"'
      FixedChar = True
      Size = 1
    end
    object PdvDESCTO_RES: TFloatField
      FieldName = 'DESCTO_RES'
      Origin = '"FAT_VENDAS"."DESCTO_RES"'
    end
    object PdvCOMPROMETER_ESTOQUE: TIBStringField
      FieldName = 'COMPROMETER_ESTOQUE'
      Origin = '"FAT_VENDAS"."COMPROMETER_ESTOQUE"'
      FixedChar = True
      Size = 1
    end
    object PdvDATA: TDateField
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object PdvID_AGRUPADOR: TIntegerField
      FieldName = 'ID_AGRUPADOR'
      Origin = '"FAT_VENDAS"."ID_AGRUPADOR"'
    end
    object PdvDESCTO_ICMS: TFloatField
      FieldName = 'DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."DESCTO_ICMS"'
    end
    object PdvPCT_DESCTO_ICMS: TFloatField
      FieldName = 'PCT_DESCTO_ICMS'
      Origin = '"FAT_VENDAS"."PCT_DESCTO_ICMS"'
    end
    object PdvNF_AGRUPADA: TIBStringField
      FieldName = 'NF_AGRUPADA'
      Origin = '"FAT_VENDAS"."NF_AGRUPADA"'
      FixedChar = True
      Size = 1
    end
    object PdvTRP_QTDE: TFloatField
      FieldName = 'TRP_QTDE'
      Origin = '"FAT_VENDAS"."TRP_QTDE"'
    end
    object PdvTRP_ESPECIE: TIBStringField
      FieldName = 'TRP_ESPECIE'
      Origin = '"FAT_VENDAS"."TRP_ESPECIE"'
      Size = 50
    end
    object PdvTRP_PESO_BRUTO: TFloatField
      FieldName = 'TRP_PESO_BRUTO'
      Origin = '"FAT_VENDAS"."TRP_PESO_BRUTO"'
    end
    object PdvTRP_PESO_LIQUIDO: TFloatField
      FieldName = 'TRP_PESO_LIQUIDO'
      Origin = '"FAT_VENDAS"."TRP_PESO_LIQUIDO"'
    end
    object PdvTRP_NUMERO: TIBStringField
      FieldName = 'TRP_NUMERO'
      Origin = '"FAT_VENDAS"."TRP_NUMERO"'
      Size = 50
    end
    object PdvTRP_MARCA: TIntegerField
      FieldName = 'TRP_MARCA'
      Origin = '"FAT_VENDAS"."TRP_MARCA"'
    end
    object PdvTRP_NOME: TIBStringField
      FieldName = 'TRP_NOME'
      Origin = '"FAT_VENDAS"."TRP_NOME"'
      Size = 50
    end
    object PdvSTATUS_CARREGAMENTO: TIntegerField
      FieldName = 'STATUS_CARREGAMENTO'
      Origin = '"FAT_VENDAS"."STATUS_CARREGAMENTO"'
    end
    object PdvORDEM_CARGA: TIntegerField
      FieldName = 'ORDEM_CARGA'
      Origin = '"FAT_VENDAS"."ORDEM_CARGA"'
    end
    object PdvENTREGA_FUTURA: TIBStringField
      FieldName = 'ENTREGA_FUTURA'
      Origin = '"FAT_VENDAS"."ENTREGA_FUTURA"'
      FixedChar = True
      Size = 1
    end
    object PdvPCT_COMISSAO: TFloatField
      FieldName = 'PCT_COMISSAO'
      Origin = '"FAT_VENDAS"."PCT_COMISSAO"'
    end
    object PdvCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FAT_VENDAS"."CENTRO_CUSTO"'
    end
    object PdvES: TIBStringField
      FieldName = 'ES'
      Origin = '"FAT_VENDAS"."ES"'
      FixedChar = True
      Size = 1
    end
    object PdvGERA_FINANCEIRO: TIBStringField
      FieldName = 'GERA_FINANCEIRO'
      Origin = '"FAT_VENDAS"."GERA_FINANCEIRO"'
      FixedChar = True
      Size = 1
    end
    object PdvNFE_CHAVE: TIBStringField
      FieldName = 'NFE_CHAVE'
      Origin = '"FAT_VENDAS"."NFE_CHAVE"'
      Size = 40
    end
    object PdvNFE_SELECIONADO: TIBStringField
      FieldName = 'NFE_SELECIONADO'
      Origin = '"FAT_VENDAS"."NFE_SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object PdvDT_PREV_ENTREGA: TDateField
      FieldName = 'DT_PREV_ENTREGA'
      Origin = '"FAT_VENDAS"."DT_PREV_ENTREGA"'
    end
    object PdvCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"FAT_VENDAS"."COD_INDEXADOR"'
    end
    object PdvIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"FAT_VENDAS"."IDX_DATABASE"'
    end
    object PdvIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      Origin = '"FAT_VENDAS"."IDX_COTACAO"'
    end
    object PdvIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      Origin = '"FAT_VENDAS"."IDX_QTDE"'
    end
    object PdvCOD_CONFIGTITULO: TIntegerField
      FieldName = 'COD_CONFIGTITULO'
      Origin = '"FAT_VENDAS"."COD_CONFIGTITULO"'
    end
    object PdvNFE_VALIDADA: TIBStringField
      FieldName = 'NFE_VALIDADA'
      Origin = '"FAT_VENDAS"."NFE_VALIDADA"'
      FixedChar = True
      Size = 1
    end
    object PdvNFE_ASSINADA: TIBStringField
      FieldName = 'NFE_ASSINADA'
      Origin = '"FAT_VENDAS"."NFE_ASSINADA"'
      FixedChar = True
      Size = 1
    end
    object PdvNFE_TRANSMITIDA: TIBStringField
      FieldName = 'NFE_TRANSMITIDA'
      Origin = '"FAT_VENDAS"."NFE_TRANSMITIDA"'
      FixedChar = True
      Size = 1
    end
    object PdvNFE_AUTORIZADA: TIBStringField
      FieldName = 'NFE_AUTORIZADA'
      Origin = '"FAT_VENDAS"."NFE_AUTORIZADA"'
      FixedChar = True
      Size = 1
    end
    object PdvNFE_DANFE_IMPRESSO: TIBStringField
      FieldName = 'NFE_DANFE_IMPRESSO'
      Origin = '"FAT_VENDAS"."NFE_DANFE_IMPRESSO"'
      FixedChar = True
      Size = 1
    end
  end
  object Empresa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          PDV_MSG1, '
      '          PDV_MSG2, '
      '          PDV_MSG3, '
      '          PDV_MSG4, '
      '          PDV_MSG5, '
      '          MENS_ECF, '
      '          FONE, '
      '          FAX '
      'from SIS_EMPRESAS'
      'WHERE CNPJ = :CNPJ')
    Left = 104
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object EmpresaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object EmpresaPDV_MSG1: TIBStringField
      FieldName = 'PDV_MSG1'
      Origin = '"SIS_EMPRESAS"."PDV_MSG1"'
      Size = 80
    end
    object EmpresaPDV_MSG2: TIBStringField
      FieldName = 'PDV_MSG2'
      Origin = '"SIS_EMPRESAS"."PDV_MSG2"'
      Size = 80
    end
    object EmpresaPDV_MSG3: TIBStringField
      FieldName = 'PDV_MSG3'
      Origin = '"SIS_EMPRESAS"."PDV_MSG3"'
      Size = 80
    end
    object EmpresaPDV_MSG4: TIBStringField
      FieldName = 'PDV_MSG4'
      Origin = '"SIS_EMPRESAS"."PDV_MSG4"'
      Size = 80
    end
    object EmpresaPDV_MSG5: TIBStringField
      FieldName = 'PDV_MSG5'
      Origin = '"SIS_EMPRESAS"."PDV_MSG5"'
      Size = 80
    end
    object EmpresaMENS_ECF: TIBStringField
      FieldName = 'MENS_ECF'
      Origin = '"SIS_EMPRESAS"."MENS_ECF"'
      Size = 80
    end
    object EmpresaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"SIS_EMPRESAS"."FONE"'
    end
    object EmpresaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"SIS_EMPRESAS"."FAX"'
    end
  end
  object PessoaCpf: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      'Select * From VER_PESSOA_CPFCGC (:CNPJ,:CPFCGC)'
      'ORDER BY NOME_RAZAO')
    Left = 176
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CPFCGC'
        ParamType = ptUnknown
      end>
    object PessoaCpfCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA_CPFCGC"."CODIGO"'
    end
    object PessoaCpfNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA_CPFCGC"."NOME_RAZAO"'
      Size = 50
    end
    object PessoaCpfFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA_CPFCGC"."FANTASIA"'
      Size = 50
    end
    object PessoaCpfCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."COD_ATIVIDADE"'
    end
    object PessoaCpfATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."ATIVIDADE"'
      Size = 50
    end
    object PessoaCpfCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOA_CPFCGC"."COD_ENDERECO"'
    end
    object PessoaCpfENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA_CPFCGC"."ENDERECO"'
      Size = 50
    end
    object PessoaCpfNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOA_CPFCGC"."NUMERO"'
      Size = 15
    end
    object PessoaCpfCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOA_CPFCGC"."COMPLEMENTO"'
      Size = 30
    end
    object PessoaCpfCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOA_CPFCGC"."COD_BAIRRO"'
    end
    object PessoaCpfBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOA_CPFCGC"."BAIRRO"'
      Size = 50
    end
    object PessoaCpfCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."COD_CIDADE"'
    end
    object PessoaCpfCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."CIDADE"'
      Size = 50
    end
    object PessoaCpfUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOA_CPFCGC"."UF"'
      FixedChar = True
      Size = 2
    end
    object PessoaCpfCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOA_CPFCGC"."CEP"'
      Size = 8
    end
    object PessoaCpfFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOA_CPFCGC"."FONE"'
    end
    object PessoaCpfFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOA_CPFCGC"."FAX"'
    end
    object PessoaCpfCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOA_CPFCGC"."CELULAR"'
    end
    object PessoaCpfPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOA_CPFCGC"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object PessoaCpfCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA_CPFCGC"."CPF_CGC"'
      Size = 15
    end
    object PessoaCpfRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA_CPFCGC"."RG_IE"'
      Size = 15
    end
    object PessoaCpfCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOA_CPFCGC"."CONTATO"'
      Size = 30
    end
    object PessoaCpfDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOA_CPFCGC"."DT_NASCIMENTO"'
    end
    object PessoaCpfDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOA_CPFCGC"."DT_CADASTRO"'
    end
    object PessoaCpfEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOA_CPFCGC"."EMAIL"'
      Size = 80
    end
    object PessoaCpfOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOA_CPFCGC"."OBS"'
      Size = 8
    end
    object PessoaCpfINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOA_CPFCGC"."INSC_MUNIC"'
      Size = 15
    end
    object PessoaCpfBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOA_CPFCGC"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object PessoaCpfASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VER_PESSOA_CPFCGC"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
  end
  object PessoaNome: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      'Select * '
      'From VER_PESSOA_NOME (:CNPJ,:NOME)'
      'ORDER BY NOME_RAZAO')
    Left = 264
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME'
        ParamType = ptUnknown
      end>
    object PessoaNomeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA_NOME"."CODIGO"'
    end
    object PessoaNomeNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA_NOME"."NOME_RAZAO"'
      Size = 50
    end
    object PessoaNomeFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA_NOME"."FANTASIA"'
      Size = 50
    end
    object PessoaNomeCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOA_NOME"."COD_ATIVIDADE"'
    end
    object PessoaNomeATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOA_NOME"."ATIVIDADE"'
      Size = 50
    end
    object PessoaNomeCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOA_NOME"."COD_ENDERECO"'
    end
    object PessoaNomeENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA_NOME"."ENDERECO"'
      Size = 50
    end
    object PessoaNomeNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOA_NOME"."NUMERO"'
      Size = 15
    end
    object PessoaNomeCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOA_NOME"."COMPLEMENTO"'
      Size = 30
    end
    object PessoaNomeCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOA_NOME"."COD_BAIRRO"'
    end
    object PessoaNomeBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOA_NOME"."BAIRRO"'
      Size = 50
    end
    object PessoaNomeCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOA_NOME"."COD_CIDADE"'
    end
    object PessoaNomeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOA_NOME"."CIDADE"'
      Size = 50
    end
    object PessoaNomeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOA_NOME"."UF"'
      FixedChar = True
      Size = 2
    end
    object PessoaNomeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOA_NOME"."CEP"'
      Size = 8
    end
    object PessoaNomeFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOA_NOME"."FONE"'
    end
    object PessoaNomeFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOA_NOME"."FAX"'
    end
    object PessoaNomeCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOA_NOME"."CELULAR"'
    end
    object PessoaNomePESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOA_NOME"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object PessoaNomeCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA_NOME"."CPF_CGC"'
      Size = 15
    end
    object PessoaNomeRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA_NOME"."RG_IE"'
      Size = 15
    end
    object PessoaNomeCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOA_NOME"."CONTATO"'
      Size = 30
    end
    object PessoaNomeDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOA_NOME"."DT_NASCIMENTO"'
    end
    object PessoaNomeDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOA_NOME"."DT_CADASTRO"'
    end
    object PessoaNomeEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOA_NOME"."EMAIL"'
      Size = 80
    end
    object PessoaNomeOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOA_NOME"."OBS"'
      Size = 8
    end
    object PessoaNomeINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOA_NOME"."INSC_MUNIC"'
      Size = 15
    end
    object PessoaNomeBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOA_NOME"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object PessoaNomeASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VER_PESSOA_NOME"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
  end
  object PessoaCod: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      'Select * From VER_PESSOA_CODIGO (:CNPJ,:COD)'
      '')
    Left = 344
    Top = 136
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
    object PessoaCodCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA_CODIGO"."CODIGO"'
    end
    object PessoaCodNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA_CODIGO"."NOME_RAZAO"'
      Size = 50
    end
    object PessoaCodFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA_CODIGO"."FANTASIA"'
      Size = 50
    end
    object PessoaCodCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOA_CODIGO"."COD_ATIVIDADE"'
    end
    object PessoaCodATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOA_CODIGO"."ATIVIDADE"'
      Size = 50
    end
    object PessoaCodCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOA_CODIGO"."COD_ENDERECO"'
    end
    object PessoaCodENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA_CODIGO"."ENDERECO"'
      Size = 50
    end
    object PessoaCodNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOA_CODIGO"."NUMERO"'
      Size = 15
    end
    object PessoaCodCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOA_CODIGO"."COMPLEMENTO"'
      Size = 30
    end
    object PessoaCodCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOA_CODIGO"."COD_BAIRRO"'
    end
    object PessoaCodBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOA_CODIGO"."BAIRRO"'
      Size = 50
    end
    object PessoaCodCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOA_CODIGO"."COD_CIDADE"'
    end
    object PessoaCodCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOA_CODIGO"."CIDADE"'
      Size = 50
    end
    object PessoaCodUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOA_CODIGO"."UF"'
      FixedChar = True
      Size = 2
    end
    object PessoaCodCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOA_CODIGO"."CEP"'
      Size = 8
    end
    object PessoaCodFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOA_CODIGO"."FONE"'
    end
    object PessoaCodFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOA_CODIGO"."FAX"'
    end
    object PessoaCodCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOA_CODIGO"."CELULAR"'
    end
    object PessoaCodPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOA_CODIGO"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object PessoaCodCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA_CODIGO"."CPF_CGC"'
      Size = 15
    end
    object PessoaCodRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA_CODIGO"."RG_IE"'
      Size = 15
    end
    object PessoaCodCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOA_CODIGO"."CONTATO"'
      Size = 30
    end
    object PessoaCodDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOA_CODIGO"."DT_NASCIMENTO"'
    end
    object PessoaCodDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOA_CODIGO"."DT_CADASTRO"'
    end
    object PessoaCodEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOA_CODIGO"."EMAIL"'
      Size = 80
    end
    object PessoaCodOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOA_CODIGO"."OBS"'
      Size = 8
    end
    object PessoaCodINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOA_CODIGO"."INSC_MUNIC"'
      Size = 15
    end
    object PessoaCodBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOA_CODIGO"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object PessoaCodASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VER_PESSOA_CODIGO"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
  end
  object VerProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select * from Pdv_Produto(:E, :C)')
    Left = 32
    Top = 136
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'E'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'C'
        ParamType = ptUnknown
      end>
    object VerProdutoPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"PDV_PRODUTO"."PRC_REPOS"'
      Precision = 18
      Size = 4
    end
    object VerProdutoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"PDV_PRODUTO"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object VerProdutoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"PDV_PRODUTO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object VerProdutoPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"PDV_PRODUTO"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object VerProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PDV_PRODUTO"."UNIDADE"'
      Size = 4
    end
    object VerProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PDV_PRODUTO"."NOME"'
      Size = 50
    end
    object VerProdutoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PDV_PRODUTO"."ATIVO"'
      Size = 1
    end
    object VerProdutoALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"PDV_PRODUTO"."ALIQUOTA_ECF"'
      Size = 5
    end
    object VerProdutoPESAVEL: TIBStringField
      FieldName = 'PESAVEL'
      Origin = '"PDV_PRODUTO"."PESAVEL"'
      Size = 1
    end
    object VerProdutoNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"PDV_PRODUTO"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object VerProdutoVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"PDV_PRODUTO"."VALIDADE"'
    end
  end
  object ConsultaProd: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select * from Pdv_Produto(:E, :C)')
    Left = 264
    Top = 72
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'E'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'C'
        ParamType = ptUnknown
      end>
    object ConsultaProdPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"PDV_PRODUTO"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ConsultaProdPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"PDV_PRODUTO"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ConsultaProdVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"PDV_PRODUTO"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ConsultaProdPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"PDV_PRODUTO"."PESO_LIQ"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ConsultaProdUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"PDV_PRODUTO"."UNIDADE"'
      Size = 4
    end
    object ConsultaProdNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"PDV_PRODUTO"."NOME"'
      Size = 50
    end
    object ConsultaProdATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"PDV_PRODUTO"."ATIVO"'
      Size = 1
    end
    object ConsultaProdALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"PDV_PRODUTO"."ALIQUOTA_ECF"'
      Size = 5
    end
    object ConsultaProdPESAVEL: TIBStringField
      FieldName = 'PESAVEL'
      Origin = '"PDV_PRODUTO"."PESAVEL"'
      Size = 1
    end
  end
  object PessoaCheque: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      'Select * From VER_PESSOA_CPFCGC_CHEQUE'
      ' (:CNPJ,:CPFCGC)'
      '')
    Left = 176
    Top = 192
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CPFCGC'
        ParamType = ptUnknown
      end>
    object PessoaChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOA_CPFCGC"."CODIGO"'
    end
    object PessoaChequeNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOA_CPFCGC"."NOME_RAZAO"'
      Size = 50
    end
    object PessoaChequeFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOA_CPFCGC"."FANTASIA"'
      Size = 50
    end
    object PessoaChequeCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."COD_ATIVIDADE"'
    end
    object PessoaChequeATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."ATIVIDADE"'
      Size = 50
    end
    object PessoaChequeCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOA_CPFCGC"."COD_ENDERECO"'
    end
    object PessoaChequeENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA_CPFCGC"."ENDERECO"'
      Size = 50
    end
    object PessoaChequeNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOA_CPFCGC"."NUMERO"'
      Size = 15
    end
    object PessoaChequeCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOA_CPFCGC"."COMPLEMENTO"'
      Size = 30
    end
    object PessoaChequeCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOA_CPFCGC"."COD_BAIRRO"'
    end
    object PessoaChequeBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOA_CPFCGC"."BAIRRO"'
      Size = 50
    end
    object PessoaChequeCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."COD_CIDADE"'
    end
    object PessoaChequeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOA_CPFCGC"."CIDADE"'
      Size = 50
    end
    object PessoaChequeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOA_CPFCGC"."UF"'
      FixedChar = True
      Size = 2
    end
    object PessoaChequeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOA_CPFCGC"."CEP"'
      Size = 8
    end
    object PessoaChequeFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOA_CPFCGC"."FONE"'
    end
    object PessoaChequeFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOA_CPFCGC"."FAX"'
    end
    object PessoaChequeCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOA_CPFCGC"."CELULAR"'
    end
    object PessoaChequePESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOA_CPFCGC"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object PessoaChequeCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOA_CPFCGC"."CPF_CGC"'
      Size = 15
    end
    object PessoaChequeRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA_CPFCGC"."RG_IE"'
      Size = 15
    end
    object PessoaChequeCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOA_CPFCGC"."CONTATO"'
      Size = 30
    end
    object PessoaChequeDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOA_CPFCGC"."DT_NASCIMENTO"'
    end
    object PessoaChequeDT_CADASTRO: TDateTimeField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOA_CPFCGC"."DT_CADASTRO"'
    end
    object PessoaChequeEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOA_CPFCGC"."EMAIL"'
      Size = 80
    end
    object PessoaChequeOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOA_CPFCGC"."OBS"'
      Size = 8
    end
    object PessoaChequeINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOA_CPFCGC"."INSC_MUNIC"'
      Size = 15
    end
    object PessoaChequeBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOA_CPFCGC"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object PessoaChequeASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VER_PESSOA_CPFCGC"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
  end
  object CANCELA_ITEM_GENERICO_PDV: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    StoredProcName = 'CANCELA_ITEM_GENERICO_PDV'
    Left = 344
    Top = 192
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SEQUENCIA'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'PRODUTO'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'QUANTIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'PRC_UNITARIO'
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
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CODIGO'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CUPOM'
        ParamType = ptInput
      end>
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
      '         SENHA_PDV'
      'from Valida_Cliente ( :CNPJ, :CODIGO )')
    Left = 345
    Top = 72
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
    object Valida_ClienteSENHA_PDV: TIBStringField
      FieldName = 'SENHA_PDV'
      Origin = '"VALIDA_CLIENTE"."SENHA_PDV"'
      Size = 6
    end
  end
  object Ver_Pessoa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select * from Ver_Pessoa ( :CNPJ, :COD )')
    Left = 28
    Top = 191
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
  object SelVendedorPdv: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      'Select * From FAT_VENDEDOR'
      'Where Cnpj = :CNPJ  AND ATIVO = '#39'S'#39
      'Order By Nome')
    Left = 428
    Top = 71
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVendedorPdvCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelVendedorPdvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object SelVendedorPdvNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelVendedorPdvCOM_VISTA: TFloatField
      DisplayLabel = 'Vista'
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorPdvCOM_PRAZO: TFloatField
      DisplayLabel = 'Prazo'
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
      DisplayFormat = '% ##0.00'
    end
    object SelVendedorPdvPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object SelVendedorPdvSENHA: TIBStringField
      DisplayLabel = 'Senha'
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
  end
  object Lista_Grades: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    GRADE,'
      '    MATERIAL,'
      '    COR,'
      '    ESTOQUE,'
      '    NOME_MATERIAL,'
      '    NOME_COR,'
      '    PERFIL,'
      '    NOME_PERFIL,'
      '    NUMERO'
      'FROM LISTA_PRODUTOS_GRADES'
      '( :CNPJ, :PRODUTO )'
      'Order by GRADE, ORDEM, NUMERO')
    Left = 429
    Top = 132
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
      end>
    object Lista_GradesGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"LISTA_PRODUTOS_GRADES"."GRADE"'
      FixedChar = True
      Size = 4
    end
    object Lista_GradesMATERIAL: TIntegerField
      DisplayLabel = 'Material'
      FieldName = 'MATERIAL'
      Origin = '"LISTA_PRODUTOS_GRADES"."MATERIAL"'
    end
    object Lista_GradesCOR: TIntegerField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"LISTA_PRODUTOS_GRADES"."COR"'
    end
    object Lista_GradesESTOQUE: TIBBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"LISTA_PRODUTOS_GRADES"."ESTOQUE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Lista_GradesNOME_MATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'NOME_MATERIAL'
      Origin = '"LISTA_PRODUTOS_GRADES"."NOME_MATERIAL"'
      Size = 50
    end
    object Lista_GradesNOME_COR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'NOME_COR'
      Origin = '"LISTA_PRODUTOS_GRADES"."NOME_COR"'
      Size = 50
    end
    object Lista_GradesPERFIL: TIntegerField
      DisplayLabel = 'Perfil'
      FieldName = 'PERFIL'
      Origin = '"LISTA_PRODUTOS_GRADES"."PERFIL"'
    end
    object Lista_GradesNOME_PERFIL: TIBStringField
      DisplayLabel = 'Nome Perfil'
      FieldName = 'NOME_PERFIL'
      Origin = '"LISTA_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object Lista_GradesNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"LISTA_PRODUTOS_GRADES"."NUMERO"'
      Size = 6
    end
  end
  object Cheque: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    AfterDelete = ChequeAfterDelete
    AfterInsert = ChequeAfterInsert
    AfterPost = ChequeAfterPost
    BeforeOpen = PdvBeforeOpen
    OnNewRecord = ChequeNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_CHEQUES'
      'where'
      '  BANCO = :OLD_BANCO and'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into FIN_CHEQUES'
      
        '  (AGENCIA, BANCO, CHEQUE, CNPJ, CONCILIADO, CONTA, EMISSAO, HIS' +
        'TORICO, '
      
        '   PESSOA_FJ, PRE_DATE, VALOR, VENDA, NOME, DATA_CONCILIACAO, JU' +
        'ROS, MOEDA1, '
      
        '   MOEDA2, TIPO, DATA_ACERTO, DATA_CAIXA, USUARIO, DIGITO_AGENCI' +
        'A, DIGITO_CONTA, '
      '   DIGITO_CHEQUE, ORIGEM, TURNO)'
      'values'
      
        '  (:AGENCIA, :BANCO, :CHEQUE, :CNPJ, :CONCILIADO, :CONTA, :EMISS' +
        'AO, :HISTORICO, '
      
        '   :PESSOA_FJ, :PRE_DATE, :VALOR, :VENDA, :NOME, :DATA_CONCILIAC' +
        'AO, :JUROS, '
      
        '   :MOEDA1, :MOEDA2, :TIPO, :DATA_ACERTO, :DATA_CAIXA, :USUARIO,' +
        ' :DIGITO_AGENCIA, '
      '   :DIGITO_CONTA, :DIGITO_CHEQUE, :ORIGEM, :TURNO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  BANCO,'
      '  CONTA,'
      '  CHEQUE,'
      '  VENDA,'
      '  EMISSAO,'
      '  PRE_DATE,'
      '  VALOR,'
      '  CONCILIADO,'
      '  PESSOA_FJ,'
      '  HISTORICO,'
      '  AGENCIA,'
      '  NOME,'
      '  DATA_CONCILIACAO,'
      '  JUROS,'
      '  MOEDA1,'
      '  MOEDA2,'
      '  TIPO,'
      '  DATA_ACERTO,'
      '  PLANILHA,'
      '  DIGITO_AGENCIA,'
      '  DIGITO_CHEQUE,'
      '  DATA_DEVOLUCAO,'
      '  MOTIVO_DEVOLUCAO,'
      '  VEZES_DEVOLUCAO,'
      '  DATA_CAIXA,'
      '  USUARIO,'
      '  COMPENSACAO,'
      '  DIGITO_CONTA,'
      '  ORIGEM,'
      '  TURNO'
      'from FIN_CHEQUES '
      'where'
      '  BANCO = :BANCO and'
      '  CHEQUE = :CHEQUE and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select '
      '          AGENCIA, '
      '          BANCO, '
      '          CHEQUE, '
      '          CNPJ, '
      '          CONCILIADO, '
      '          CONTA, '
      '          EMISSAO, '
      '          HISTORICO, '
      '          PESSOA_FJ, '
      '          PRE_DATE, '
      '          VALOR, '
      '          VENDA,'
      '         NOME ,'
      '         DATA_CONCILIACAO ,'
      '         JUROS ,'
      '         MOEDA1 ,'
      '         MOEDA2 ,'
      '         TIPO ,'
      '         DATA_ACERTO,'
      '         DATA_CAIXA,'
      '         USUARIO,'
      '         DIGITO_AGENCIA,'
      '         DIGITO_CONTA,'
      '         DIGITO_CHEQUE,'
      '         ORIGEM,'
      '         TURNO'
      'from FIN_CHEQUES'
      'Where CNPJ = :CNPJ and VENDA = :CODIGO')
    ModifySQL.Strings = (
      'update FIN_CHEQUES'
      'set'
      '  AGENCIA = :AGENCIA,'
      '  BANCO = :BANCO,'
      '  CHEQUE = :CHEQUE,'
      '  CNPJ = :CNPJ,'
      '  CONCILIADO = :CONCILIADO,'
      '  CONTA = :CONTA,'
      '  EMISSAO = :EMISSAO,'
      '  HISTORICO = :HISTORICO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRE_DATE = :PRE_DATE,'
      '  VALOR = :VALOR,'
      '  VENDA = :VENDA,'
      '  NOME = :NOME,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  JUROS = :JUROS,'
      '  MOEDA1 = :MOEDA1,'
      '  MOEDA2 = :MOEDA2,'
      '  TIPO = :TIPO,'
      '  DATA_ACERTO = :DATA_ACERTO,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  USUARIO = :USUARIO,'
      '  DIGITO_AGENCIA = :DIGITO_AGENCIA,'
      '  DIGITO_CONTA = :DIGITO_CONTA,'
      '  DIGITO_CHEQUE = :DIGITO_CHEQUE,'
      '  ORIGEM = :ORIGEM,'
      '  TURNO = :TURNO'
      'where'
      '  BANCO = :OLD_BANCO and'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    Left = 30
    Top = 245
    object ChequeCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_CHEQUES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ChequeAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object ChequeBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object ChequeCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object ChequeCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ChequeCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object ChequeEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
    end
    object ChequeHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object ChequePESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
    end
    object ChequePRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object ChequeVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object ChequeVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object ChequeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object ChequeDATA_CONCILIACAO: TDateTimeField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object ChequeJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FIN_CHEQUES"."JUROS"'
    end
    object ChequeMOEDA1: TFloatField
      FieldName = 'MOEDA1'
      Origin = '"FIN_CHEQUES"."MOEDA1"'
    end
    object ChequeMOEDA2: TFloatField
      FieldName = 'MOEDA2'
      Origin = '"FIN_CHEQUES"."MOEDA2"'
    end
    object ChequeTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object ChequeDATA_ACERTO: TDateTimeField
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
    end
    object ChequeDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FIN_CHEQUES"."DATA_CAIXA"'
    end
    object ChequeUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FIN_CHEQUES"."USUARIO"'
    end
    object ChequeDIGITO_AGENCIA: TIBStringField
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object ChequeDIGITO_CONTA: TIBStringField
      FieldName = 'DIGITO_CONTA'
      Origin = '"FIN_CHEQUES"."DIGITO_CONTA"'
      FixedChar = True
      Size = 1
    end
    object ChequeDIGITO_CHEQUE: TIBStringField
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object ChequeORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_CHEQUES"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object ChequeTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FIN_CHEQUES"."TURNO"'
    end
  end
  object ULTIMAS_VENDAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * '
      'FROM VER_ULTIMAS_VENDAS'
      '(:CNPJ, :CLIENTE)')
    Left = 211
    Top = 248
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
      end>
    object ULTIMAS_VENDASCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_ULTIMAS_VENDAS"."CODIGO"'
    end
    object ULTIMAS_VENDASDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_ULTIMAS_VENDAS"."DATA"'
    end
    object ULTIMAS_VENDASDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_ULTIMAS_VENDAS"."DINHEIRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_ULTIMAS_VENDAS"."CHEQUE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_ULTIMAS_VENDAS"."CARTAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_ULTIMAS_VENDAS"."TICKET"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASCONVENIO: TIBBCDField
      DisplayLabel = 'Conv'#234'nio'
      FieldName = 'CONVENIO'
      Origin = '"VER_ULTIMAS_VENDAS"."CONVENIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_ULTIMAS_VENDAS"."DESCONTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_ULTIMAS_VENDAS"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VER_ULTIMAS_VENDAS"."PRODUTO"'
      Size = 15
    end
    object ULTIMAS_VENDASNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome Produto'
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_ULTIMAS_VENDAS"."NOME_PRODUTO"'
      Size = 50
    end
    object ULTIMAS_VENDASQUANTIDADE: TIBBCDField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_ULTIMAS_VENDAS"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ULTIMAS_VENDASUNITARIO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'UNITARIO'
      Origin = '"VER_ULTIMAS_VENDAS"."UNITARIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Print: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 100
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Rdprint Setup'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = True
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 320
    Top = 16
  end
  object SelNatureza: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME,'
      '               INTERESTADUAL '
      'FROM EST_NATUREZA'
      'WHERE CNPJ = :CNPJ AND'
      '               ES = '#39'S'#39' and ATIVA = '#39'S'#39' '
      'ORDER BY NOME')
    Left = 344
    Top = 245
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
  object SelMesasPdv: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    BeforeOpen = PdvBeforeOpen
    SQL.Strings = (
      
        'select ms.cnpj, ms.codigo, ms.codigo_2, sum(vdi.quantidade * vdi' +
        '.prc_unitario) Total from fat_vendas vd'
      
        'inner join fat_mesas ms on (ms.codigo = vd.mesa and ms.cnpj = vd' +
        '.cnpj)'
      
        'left join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and vdi.co' +
        'digo = vd.codigo)'
      
        'Where  ms.cnpj = :cnpj and ATIVO = '#39'S'#39' and coalesce(vd.cancelada' +
        ','#39'N'#39') = '#39'N'#39
      'and coalesce(vd.fechada,'#39'N'#39') = '#39'N'#39
      'group by CODIGO_2, ms.codigo, ms.cnpj'
      'Order By CODIGO_2')
    Left = 436
    Top = 247
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelMesasPdvCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object SelMesasPdvCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'd. Mesa'
      FieldName = 'CODIGO_2'
      Size = 10
    end
    object SelMesasPdvTOTAL: TFloatField
      DisplayLabel = 'Vlr. Total '
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
    end
    object SelMesasPdvCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Required = True
      FixedChar = True
      Size = 14
    end
  end
  object TransfereMesas: TIBSQL
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 240
    Top = 320
  end
  object qryMesaDestino: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      '/*selecionando o codigo e a maxima sequencia da venda destino*/'
      ''
      
        'select max(vdi.sequencia),vdi.codigo newcodigo from fat_vendas_i' +
        'tens vdi'
      
        'inner join fat_vendas vd on (vdi.cnpj = vd.cnpj and vd.codigo = ' +
        'vdi.codigo)'
      'where vd.cnpj = :cnpj and coalesce(vd.fechada,'#39'N'#39')= '#39'N'#39
      'and coalesce(vd.cancelada,'#39'N'#39')='#39'N'#39' and vd.mesa = :mesa'
      'group by vdi.codigo')
    Left = 344
    Top = 312
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'mesa'
        ParamType = ptUnknown
      end>
    object qryMesaDestinoMAX: TSmallintField
      FieldName = 'MAX'
    end
    object qryMesaDestinoNEWCODIGO: TIntegerField
      FieldName = 'NEWCODIGO'
      Required = True
    end
  end
  object qryTransfereMesas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      '/*selecionando os itens por ordem inversa de sequencia*/'
      'select vdi.codigo,  vdi.sequencia from fat_vendas_itens vdi'
      'where vdi.cnpj = :cnpj and vdi.codigo = :codigo'
      'order by vdi.sequencia desc')
    Left = 144
    Top = 320
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
    object qryTransfereMesasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS_ITENS"."CODIGO"'
      Required = True
    end
    object qryTransfereMesasSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
  end
  object QryIndices: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        ' select m.nome, m.codigo, m.sigla, ct.valor cotacao, (coalesce(:' +
        'total,0.00)/coalesce(ct.valor,1.00)) total  from fin_moeda m'
      ' inner join fin_cotacoes ct on (m.codigo = ct.cod_moeda)'
      ' where ct.data = :data')
    Left = 33
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'total'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object QryIndicesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
      Size = 50
    end
    object QryIndicesSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      FixedChar = True
      Size = 3
    end
    object QryIndicesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object QryIndicesTOTAL: TFloatField
      FieldName = 'TOTAL'
      ProviderFlags = []
    end
    object QryIndicesCOTACAO: TFloatField
      FieldName = 'COTACAO'
      Origin = '"FIN_COTACOES"."VALOR"'
    end
  end
  object Comandas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = PdvAfterClose
    DeleteSQL.Strings = (
      'delete from fat_micro_terminal'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into fat_micro_terminal'
      
        '  (CNPJ, CODIGO, COMANDA, DATA, PRECO_UNITARIO, PRODUTO, QUANTID' +
        'ADE, TOTAL)'
      'values'
      
        '  (:CNPJ, :CODIGO, :COMANDA, :DATA, :PRECO_UNITARIO, :PRODUTO, :' +
        'QUANTIDADE, '
      '   :TOTAL)')
    RefreshSQL.Strings = (
      'select f.*, prd.nome nome_produto from fat_micro_terminal f'
      'inner join est_produtos prd on (prd.cnpj = f.cnpj)'
      'where f.cnpj = :cnpj')
    SelectSQL.Strings = (
      'select f.*, prd.nome nome_produto from fat_micro_terminal f'
      'inner join est_produtos prd on (prd.cnpj = f.cnpj)'
      'where f.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update fat_micro_terminal'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  COMANDA = :COMANDA,'
      '  DATA = :DATA,'
      '  PRECO_UNITARIO = :PRECO_UNITARIO,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  TOTAL = :TOTAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Active = True
    Left = 440
    Top = 304
    object ComandasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_MICRO_TERMINAL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object ComandasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_MICRO_TERMINAL"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object ComandasPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"FAT_MICRO_TERMINAL"."PRODUTO"'
      Size = 15
    end
    object ComandasQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_MICRO_TERMINAL"."QUANTIDADE"'
    end
    object ComandasPRECO_UNITARIO: TFloatField
      FieldName = 'PRECO_UNITARIO'
      Origin = '"FAT_MICRO_TERMINAL"."PRECO_UNITARIO"'
    end
    object ComandasTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_MICRO_TERMINAL"."TOTAL"'
    end
    object ComandasDATA: TDateField
      FieldName = 'DATA'
      Origin = '"FAT_MICRO_TERMINAL"."DATA"'
    end
    object ComandasCOMANDA: TIntegerField
      FieldName = 'COMANDA'
      Origin = '"FAT_MICRO_TERMINAL"."COMANDA"'
    end
    object ComandasNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
  end
  object VALOR: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 104
    Top = 200
  end
end
