object DmFinanceiro: TDmFinanceiro
  OldCreateOrder = False
  OnCreate = verreceberbefor
  Height = 728
  Width = 1280
  object Contas_Receber: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = Contas_ReceberAfterInsert
    BeforeDelete = Contas_ReceberBeforeDelete
    BeforeEdit = Contas_ReceberBeforeEdit
    BeforeOpen = Contas_ReceberBeforeOpen
    BeforePost = Contas_ReceberBeforePost
    OnCalcFields = Contas_ReceberCalcFields
    OnNewRecord = Contas_ReceberNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_CONTAS_RECEBER'
      'where'
      '  ANO = :OLD_ANO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_CONTAS_RECEBER'
      
        '  (ANO, ANO_VN, ARQUIVO_MORTO, AVISO, BLT_NOSSO_NUM, BOLETO, CNP' +
        'J, COD_CONFIG_TITULO, '
      
        '   COD_CONTRATO, COD_INDEXADOR, CODIGO, CODIGO_VN, CONTA_CORRENT' +
        'E, DATA_ULT_BAIXA, '
      
        '   DESCONTOS, DOCTO, DT_AVISO, DT_EMISSAO, DT_LANCTO, DT_VENCTO,' +
        ' FATURA, '
      
        '   FLUXO_CAIXA, HISTORICO, IDX_COTACAO, IDX_DATABASE, IDX_QTDE, ' +
        'JUROS_REC, '
      
        '   LOCAL_COBRANCA, NOME, NUMBOLETO, NUMDUPLICATA, ORIGEM, PARCEL' +
        'A, PESSOA_FJ, '
      '   SELECIONADO, TIPO_DOCTO, VALOR, VALOR_EXTENSO, VLR_PARCIAL)'
      'values'
      
        '  (:ANO, :ANO_VN, :ARQUIVO_MORTO, :AVISO, :BLT_NOSSO_NUM, :BOLET' +
        'O, :CNPJ, '
      
        '   :COD_CONFIG_TITULO, :COD_CONTRATO, :COD_INDEXADOR, :CODIGO, :' +
        'CODIGO_VN, '
      
        '   :CONTA_CORRENTE, :DATA_ULT_BAIXA, :DESCONTOS, :DOCTO, :DT_AVI' +
        'SO, :DT_EMISSAO, '
      
        '   :DT_LANCTO, :DT_VENCTO, :FATURA, :FLUXO_CAIXA, :HISTORICO, :I' +
        'DX_COTACAO, '
      
        '   :IDX_DATABASE, :IDX_QTDE, :JUROS_REC, :LOCAL_COBRANCA, :NOME,' +
        ' :NUMBOLETO, '
      
        '   :NUMDUPLICATA, :ORIGEM, :PARCELA, :PESSOA_FJ, :SELECIONADO, :' +
        'TIPO_DOCTO, '
      '   :VALOR, :VALOR_EXTENSO, :VLR_PARCIAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  ANO,'
      '  PESSOA_FJ,'
      '  DT_EMISSAO,'
      '  DT_VENCTO,'
      '  DT_LANCTO,'
      '  DOCTO,'
      '  PARCELA,'
      '  HISTORICO,'
      '  VALOR,'
      '  VLR_PARCIAL,'
      '  JUROS_REC,'
      '  DESCONTOS,'
      '  ORIGEM,'
      '  CODIGO_VN,'
      '  ANO_VN,'
      '  AVISO,'
      '  DT_AVISO,'
      '  SELECIONADO,'
      '  FATURA,'
      '  TIPO_DOCTO,'
      '  NOME,'
      '  NUMDUPLICATA,'
      '  MOEDA1,'
      '  MOEDA2,'
      '  PARCIAL,'
      '  CODIGO_TRC,'
      '  JUROS_PARCIAL,'
      '  DATA_ULT_BAIXA,'
      '  COBRADOR,'
      '  FLUXO_CAIXA,'
      '  LOCAL_COBRANCA,'
      '  VLR_ORIG_ALT,'
      '  ARQUIVO_MORTO,'
      '  VALOR_NOMINAL,'
      '  COD_INDEXADOR,'
      '  IDX_DATABASE,'
      '  IDX_COTACAO,'
      '  IDX_QTDE,'
      '  IDX_VLR_PARCIAL,'
      '  ACT_TOTAL_RECEBER,'
      '  COD_CONFIG_TITULO,'
      '  NDOC,'
      '  NUMBOLETO,'
      '  BOLETO,'
      '  BLT_NOSSO_NUM,'
      '  BLT_BANCO,'
      '  BLT_NUM_IMP,'
      '  BLT_REM_GERADA,'
      '  VALOR_EXTENSO,'
      '  CONTA_CORRENTE,'
      '  COD_CONTRATO'
      'from FIN_CONTAS_RECEBER '
      'where'
      '  ANO = :ANO and'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select'
      '    rec.cod_contrato, '
      '    rec.CNPJ,'
      '    rec.BLT_NOSSO_NUM,'
      '    rec.CODIGO,'
      '    rec.ANO,'
      '    rec.PESSOA_FJ,'
      '    rec.DT_EMISSAO,'
      '    rec.DT_VENCTO,'
      '    rec.DT_LANCTO,'
      '    rec.DOCTO,'
      '    rec.PARCELA,'
      '    rec.HISTORICO,'
      '    rec.VALOR,'
      '    rec.VLR_PARCIAL,'
      '    rec.JUROS_REC,'
      '    rec.DESCONTOS,'
      '    rec.BOLETO,'
      '    rec.ORIGEM,'
      '    rec.CODIGO_VN,'
      '    rec.ANO_VN,'
      '    rec.AVISO,'
      '    rec.DT_AVISO,'
      '    rec.SELECIONADO,'
      '    rec.FATURA ,'
      '    rec.TIPO_DOCTO,'
      '    rec.NUMBOLETO,'
      '    rec.NUMDUPLICATA,'
      '    rec.NOME,'
      '    rec.DATA_ULT_BAIXA,'
      '    rec.FLUXO_CAIXA,'
      '    rec.LOCAL_COBRANCA,'
      '    rec.COD_INDEXADOR,'
      '    rec.IDX_DATABASE,'
      '    rec.IDX_COTACAO,'
      '    rec.IDX_QTDE,'
      '    rec.CONTA_CORRENTE,'
      '    coalesce(rec.ARQUIVO_MORTO,'#39'N'#39') ARQUIVO_MORTO,'
      '    vd.num_nf,'
      '    vd.num_cupom,'
      '    case coalesce(vd.total,0)'
      '      when 0 then 0'
      '      else'
      '      ('
      '            (   /* calc. o percentual que representa na venda*/'
      
        '                (rec.valor_nominal * 100.00)/(coalesce(vd.total,' +
        '0) + coalesce(desc_acres,0))'
      '            )'
      '            * (coalesce(vd.descto_res,0)/100.00)'
      '      )'
      '    end SALDO_DESCTO,'
      'rec.cod_config_titulo,'
      'rec.VALOR_EXTENSO,'
      'ct.descricao ctr_descricao'
      'from FIN_CONTAS_RECEBER rec'
      'left join ctr_contrato ct on (ct.codigo = rec.cod_contrato)'
      
        'left join fat_vendas vd on (rec.cnpj = vd.cnpj and rec.codigo_vn' +
        ' = vd.codigo and vd.pessoa_fj = rec.pessoa_fj)'
      'Where rec.Cnpj = :Cnpj AND FATURA IS NULL '
      '')
    ModifySQL.Strings = (
      'update FIN_CONTAS_RECEBER'
      'set'
      '  ANO = :ANO,'
      '  ANO_VN = :ANO_VN,'
      '  ARQUIVO_MORTO = :ARQUIVO_MORTO,'
      '  AVISO = :AVISO,'
      '  BLT_NOSSO_NUM = :BLT_NOSSO_NUM,'
      '  BOLETO = :BOLETO,'
      '  CNPJ = :CNPJ,'
      '  COD_CONFIG_TITULO = :COD_CONFIG_TITULO,'
      '  COD_CONTRATO = :COD_CONTRATO,'
      '  COD_INDEXADOR = :COD_INDEXADOR,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_VN = :CODIGO_VN,'
      '  CONTA_CORRENTE = :CONTA_CORRENTE,'
      '  DATA_ULT_BAIXA = :DATA_ULT_BAIXA,'
      '  DESCONTOS = :DESCONTOS,'
      '  DOCTO = :DOCTO,'
      '  DT_AVISO = :DT_AVISO,'
      '  DT_EMISSAO = :DT_EMISSAO,'
      '  DT_LANCTO = :DT_LANCTO,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  FATURA = :FATURA,'
      '  FLUXO_CAIXA = :FLUXO_CAIXA,'
      '  HISTORICO = :HISTORICO,'
      '  IDX_COTACAO = :IDX_COTACAO,'
      '  IDX_DATABASE = :IDX_DATABASE,'
      '  IDX_QTDE = :IDX_QTDE,'
      '  JUROS_REC = :JUROS_REC,'
      '  LOCAL_COBRANCA = :LOCAL_COBRANCA,'
      '  NOME = :NOME,'
      '  NUMBOLETO = :NUMBOLETO,'
      '  NUMDUPLICATA = :NUMDUPLICATA,'
      '  ORIGEM = :ORIGEM,'
      '  PARCELA = :PARCELA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SELECIONADO = :SELECIONADO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  VALOR = :VALOR,'
      '  VALOR_EXTENSO = :VALOR_EXTENSO,'
      '  VLR_PARCIAL = :VLR_PARCIAL'
      'where'
      '  ANO = :OLD_ANO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_RECEBER_COD_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 208
    Top = 51
    object Contas_ReceberCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Required = True
      Size = 14
    end
    object Contas_ReceberCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object Contas_ReceberANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Required = True
    end
    object Contas_ReceberDT_EMISSAO: TDateTimeField
      Tag = 1
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Required = True
    end
    object Contas_ReceberPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Required = True
      OnValidate = Contas_ReceberPESSOA_FJValidate
    end
    object Contas_ReceberDT_VENCTO: TDateTimeField
      Tag = 1
      DisplayLabel = 'Dt. Vecto'
      FieldName = 'DT_VENCTO'
      Required = True
      OnValidate = Contas_ReceberDT_VENCTOValidate
    end
    object Contas_ReceberDT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lcto'
      FieldName = 'DT_LANCTO'
    end
    object Contas_ReceberDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Required = True
      OnValidate = Contas_ReceberDOCTOValidate
    end
    object Contas_ReceberPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Required = True
      Size = 6
    end
    object Contas_ReceberHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 100
    end
    object Contas_ReceberVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object Contas_ReceberBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Required = True
      Size = 1
    end
    object Contas_ReceberORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Required = True
      Size = 3
    end
    object Contas_ReceberCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
    end
    object Contas_ReceberANO_VN: TSmallintField
      DisplayLabel = 'Ano Venda'
      FieldName = 'ANO_VN'
    end
    object Contas_ReceberAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
    end
    object Contas_ReceberDT_AVISO: TDateTimeField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
    end
    object Contas_ReceberSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object Contas_ReceberVLR_PARCIAL: TFloatField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Contas_ReceberTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Contas_ReceberJUROS_REC: TFloatField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"FIN_CONTAS_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
    end
    object Contas_ReceberDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"FIN_CONTAS_RECEBER"."DESCONTOS"'
    end
    object Contas_ReceberFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"FIN_CONTAS_RECEBER"."FATURA"'
    end
    object Contas_ReceberTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Contas_ReceberNUMBOLETO: TIntegerField
      Tag = 1
      DisplayLabel = 'Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"FIN_CONTAS_RECEBER"."NUMBOLETO"'
    end
    object Contas_ReceberNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_CONTAS_RECEBER"."NOME"'
      Size = 50
    end
    object Contas_ReceberNUMDUPLICATA: TIntegerField
      Tag = 1
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"FIN_CONTAS_RECEBER"."NUMDUPLICATA"'
    end
    object Contas_ReceberDATA_ULT_BAIXA: TDateTimeField
      DisplayLabel = #218'lt. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."DATA_ULT_BAIXA"'
    end
    object Contas_ReceberJUROS_CALCULADOS: TFloatField
      DisplayLabel = 'Juros'
      FieldKind = fkCalculated
      FieldName = 'JUROS_CALCULADOS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Contas_ReceberTOTAL_NOMINAL: TFloatField
      DisplayLabel = 'Nominal'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_NOMINAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Contas_ReceberFLUXO_CAIXA: TDateTimeField
      FieldName = 'FLUXO_CAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."FLUXO_CAIXA"'
    end
    object Contas_ReceberLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local Cobran'#231'a'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FIN_CONTAS_RECEBER"."LOCAL_COBRANCA"'
    end
    object Contas_ReceberARQUIVO_MORTO: TIBStringField
      DisplayLabel = 'Arquivo'
      FieldName = 'ARQUIVO_MORTO'
      Origin = '"FIN_CONTAS_RECEBER"."ARQUIVO_MORTO"'
      FixedChar = True
      Size = 1
    end
    object Contas_ReceberJurosSozinho: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JurosSozinho'
      Calculated = True
    end
    object Contas_ReceberMulta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Multa'
      Calculated = True
    end
    object Contas_ReceberSALDO_DESCTO: TFloatField
      DisplayLabel = 'Sld. Descto (%)'
      FieldName = 'SALDO_DESCTO'
      DisplayFormat = '###,###,##0.00'
    end
    object Contas_ReceberBLT_NOSSO_NUM: TIBStringField
      FieldName = 'BLT_NOSSO_NUM'
      Origin = '"FIN_CONTAS_RECEBER"."BLT_NOSSO_NUM"'
      Size = 15
    end
    object Contas_ReceberNUM_NF: TIntegerField
      DisplayLabel = 'N'#186' NF'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object Contas_ReceberNUM_CUPOM: TIntegerField
      DisplayLabel = 'N'#186' CF'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object Contas_ReceberCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_CONTAS_RECEBER"."COD_INDEXADOR"'
    end
    object Contas_ReceberIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_DATABASE"'
    end
    object Contas_ReceberIDX_COTACAO: TFloatField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_COTACAO"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_ReceberIDX_QTDE: TFloatField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_CONTAS_RECEBER"."IDX_QTDE"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_Receber_Total_Geral_IDX: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Total_Geral_IDX'
      Calculated = True
    end
    object Contas_ReceberCOD_CONFIG_TITULO: TIntegerField
      FieldName = 'COD_CONFIG_TITULO'
      Origin = '"FIN_CONTAS_RECEBER"."COD_CONFIG_TITULO"'
    end
    object Contas_ReceberVALOR_EXTENSO: TIBStringField
      FieldName = 'VALOR_EXTENSO'
      Origin = '"FIN_CONTAS_RECEBER"."VALOR_EXTENSO"'
      Size = 200
    end
    object Contas_ReceberCONTA_CORRENTE: TIntegerField
      FieldName = 'CONTA_CORRENTE'
      Origin = '"FIN_CONTAS_RECEBER"."CONTA_CORRENTE"'
    end
    object Contas_ReceberCOD_CONTRATO: TIntegerField
      FieldName = 'COD_CONTRATO'
      Origin = '"FIN_CONTAS_RECEBER"."COD_CONTRATO"'
    end
    object Contas_ReceberCTR_DESCRICAO: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'CTR_DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
  object VerReceber: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterOpen = VerReceberAfterOpen
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = OnCalcDataSetReceber
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO ,'
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
      '    DESCONTOS ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
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
      '    FONE ,'
      '    CPF_CGC ,'
      '    SELECIONADO,'
      '    TIPO_DOCTO,'
      '    NUMDUPLICATA ,'
      '    FATURA,'
      '    NUMBOLETO,'
      '    PARCIAL,'
      '    JUROS_PARCIAL,'
      '    DATA_ULT_BAIXA ,'
      '    COBRADOR,'
      '    LOCAL,'
      '    arq_morto'
      'From Ver_Receber (:CNPJ)')
    Left = 115
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VerReceberCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object VerReceberANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object VerReceberPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object VerReceberDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object VerReceberPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerReceberHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object VerReceberVALOR: TIBBCDField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberORIGEM: TIBStringField
      DisplayLabel = 'Or'
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerReceberCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object VerReceberANO_VN: TSmallintField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object VerReceberAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object VerReceberNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object VerReceberENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object VerReceberNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object VerReceberCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object VerReceberBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object VerReceberCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerReceberUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerReceberCOD_END: TIntegerField
      DisplayLabel = 'End'
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object VerReceberCOD_CID: TIntegerField
      DisplayLabel = 'Cid'
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object VerReceberCOD_BAI: TIntegerField
      DisplayLabel = 'Bai'
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object VerReceberFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object VerReceberCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object VerReceberSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VerReceberNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object VerReceberNUMBOLETO: TIntegerField
      DisplayLabel = 'Num Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object VerReceberFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER"."FATURA"'
      DisplayFormat = '#,##0'
    end
    object VerReceberPARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER"."PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER"."DT_EMISSAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancamento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberDT_AVISO: TDateTimeField
      DisplayLabel = 'Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER"."DT_AVISO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberJUROS_PARCIAL: TIBBCDField
      DisplayLabel = 'Juros Parcial'
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER"."JUROS_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberSelecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberDATA_ULT_BAIXA: TDateTimeField
      DisplayLabel = 'DT. Ult. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER"."DATA_ULT_BAIXA"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER"."COBRADOR"'
    end
    object VerReceberATRASO: TIntegerField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'ATRASO'
      Calculated = True
    end
    object VerReceberLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER"."LOCAL"'
    end
    object VerReceberJuros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Conta'
      Calculated = True
    end
    object VerReceberARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      Origin = '"VER_RECEBER"."ARQ_MORTO"'
      FixedChar = True
      Size = 10
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    SQL.Strings = (
      '')
    Left = 278
    Top = 3
  end
  object Baixas_Receber: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Baixas_ReceberCalcFields
    SQL.Strings = (
      'Select '
      '    *'
      'From VER_BAIXA_RECEBER ( :CNPJ )')
    Left = 115
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
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
    object Baixas_ReceberENDERECO: TIBStringField
      DisplayLabel = 'End.'
      FieldName = 'ENDERECO'
      Origin = '"VER_BAIXA_RECEBER"."ENDERECO"'
      Size = 50
    end
    object Baixas_ReceberNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_BAIXA_RECEBER"."NUMERO"'
      Size = 15
    end
    object Baixas_ReceberCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_BAIXA_RECEBER"."CIDADE"'
      Size = 50
    end
    object Baixas_ReceberBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_BAIXA_RECEBER"."BAIRRO"'
      Size = 50
    end
    object Baixas_ReceberCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_BAIXA_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Baixas_ReceberUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_BAIXA_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object Baixas_ReceberCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_BAIXA_RECEBER"."COD_END"'
    end
    object Baixas_ReceberCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_BAIXA_RECEBER"."COD_CID"'
    end
    object Baixas_ReceberCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_BAIXA_RECEBER"."COD_BAI"'
    end
    object Baixas_ReceberFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_BAIXA_RECEBER"."FONE"'
    end
    object Baixas_ReceberCPF_CGC: TIBStringField
      Tag = 1
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_RECEBER"."CPF_CGC"'
      Size = 15
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
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_ReceberDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_RECEBER"."DT_EMISSAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_ReceberDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_ReceberDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_ReceberDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_RECEBER"."DT_AVISO"'
      DisplayFormat = 'dd/mm/yyyy'
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
    object Baixas_ReceberAtraso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object Baixas_ReceberLOCAL: TIBStringField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"VER_BAIXA_RECEBER"."LOCAL"'
      FixedChar = True
      Size = 3
    end
    object Baixas_ReceberTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"VER_BAIXA_RECEBER"."TURNO"'
    end
    object Baixas_ReceberCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"VER_BAIXA_RECEBER"."COD_INDEXADOR"'
    end
    object Baixas_ReceberIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"VER_BAIXA_RECEBER"."IDX_DATABASE"'
    end
    object Baixas_ReceberIDX_COTACAO: TIBBCDField
      FieldName = 'IDX_COTACAO'
      Origin = '"VER_BAIXA_RECEBER"."IDX_COTACAO"'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberIDX_QTDE: TIBBCDField
      FieldName = 'IDX_QTDE'
      Origin = '"VER_BAIXA_RECEBER"."IDX_QTDE"'
      Precision = 18
      Size = 4
    end
    object Baixas_ReceberNUM_CF: TIntegerField
      DisplayLabel = 'Num. CF'
      FieldName = 'NUM_CF'
      Origin = '"VER_BAIXA_RECEBER"."NUM_CF"'
    end
    object Baixas_ReceberNUM_NF: TIntegerField
      DisplayLabel = 'Num. NF'
      FieldName = 'NUM_NF'
      Origin = '"VER_BAIXA_RECEBER"."NUM_NF"'
    end
  end
  object Impressora: TRDprint
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
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Visualizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 115
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
    CaptionSetup = ' Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
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
    OnBeforeNewPage = ImpressoraBeforeNewPage
    Left = 22
    Top = 461
  end
  object VerReceber_3meses: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'Select * From Ver_Receber_3meses (:CNPJ, :DATA)')
    Left = 115
    Top = 101
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
    object VerReceber_3mesesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER_3MESES"."CODIGO"'
    end
    object VerReceber_3mesesANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_RECEBER_3MESES"."ANO"'
    end
    object VerReceber_3mesesPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER_3MESES"."PESSOA_FJ"'
    end
    object VerReceber_3mesesDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER_3MESES"."DT_EMISSAO"'
    end
    object VerReceber_3mesesDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER_3MESES"."DT_VENCTO"'
    end
    object VerReceber_3mesesDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER_3MESES"."DT_LANCTO"'
    end
    object VerReceber_3mesesDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER_3MESES"."DOCTO"'
    end
    object VerReceber_3mesesPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER_3MESES"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerReceber_3mesesHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER_3MESES"."HISTORICO"'
      Size = 100
    end
    object VerReceber_3mesesVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER_3MESES"."VALOR"'
      Precision = 18
      Size = 4
    end
    object VerReceber_3mesesVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER_3MESES"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object VerReceber_3mesesJUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER_3MESES"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object VerReceber_3mesesDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER_3MESES"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object VerReceber_3mesesBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER_3MESES"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerReceber_3mesesORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER_3MESES"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerReceber_3mesesCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER_3MESES"."CODIGO_VN"'
    end
    object VerReceber_3mesesANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER_3MESES"."ANO_VN"'
    end
    object VerReceber_3mesesAVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER_3MESES"."AVISO"'
    end
    object VerReceber_3mesesDT_AVISO: TDateField
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER_3MESES"."DT_AVISO"'
    end
    object VerReceber_3mesesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_RECEBER_3MESES"."NOME"'
      Size = 50
    end
    object VerReceber_3mesesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER_3MESES"."ENDERECO"'
      Size = 50
    end
    object VerReceber_3mesesNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER_3MESES"."NUMERO"'
      Size = 15
    end
    object VerReceber_3mesesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER_3MESES"."CIDADE"'
      Size = 50
    end
    object VerReceber_3mesesBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER_3MESES"."BAIRRO"'
      Size = 50
    end
    object VerReceber_3mesesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_RECEBER_3MESES"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerReceber_3mesesUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_RECEBER_3MESES"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerReceber_3mesesCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER_3MESES"."COD_END"'
    end
    object VerReceber_3mesesCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER_3MESES"."COD_CID"'
    end
    object VerReceber_3mesesCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER_3MESES"."COD_BAI"'
    end
    object VerReceber_3mesesFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_RECEBER_3MESES"."FONE"'
    end
    object VerReceber_3mesesCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER_3MESES"."CPF_CGC"'
      Size = 15
    end
    object VerReceber_3mesesSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER_3MESES"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VerReceber_3mesesTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER_3MESES"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VerReceber_3mesesNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER_3MESES"."NUMDUPLICATA"'
    end
    object VerReceber_3mesesNUMBOLETO: TIntegerField
      DisplayLabel = 'Num Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER_3MESES"."NUMBOLETO"'
    end
  end
  object Receber_Data: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT sum(pcd.soma) soma, DATA, avg(porcentagem) porcentagem'
      
        '  FROM SOMA_RECEBER_DATA_ANALITICO(:CNPJ, :INI, :FIM, :DT_CX) pc' +
        'd'
      'group by DATA, porcentagem')
    Left = 22
    Top = 101
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
        Name = 'DT_CX'
        ParamType = ptUnknown
      end>
    object Receber_DataSOMA: TIBBCDField
      FieldName = 'SOMA'
      Precision = 18
      Size = 4
    end
    object Receber_DataDATA: TDateTimeField
      FieldName = 'DATA'
    end
    object Receber_DataPORCENTAGEM: TIBBCDField
      FieldName = 'PORCENTAGEM'
      Precision = 18
      Size = 4
    end
  end
  object Receber_Data_Analitico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Receber_Data_AnaliticoCalcFields
    SQL.Strings = (
      'SELECT sum(pcd.soma) soma,  DATA, ARQ_MORTO,'
      '       PESSOA_FJ, NOME, ENDERECO, NUMERO, CIDADE, BAIRRO,'
      '       CEP, UF, COD_END, COD_CID, COD_BAI, FONE, CPF_CGC'
      
        '  FROM SOMA_RECEBER_DATA_ANALITICO( :CNPJ, :INI, :FIM, :DT_CX ) ' +
        'pcd'
      'group by DATA, ARQ_MORTO,'
      '       PESSOA_FJ, NOME, ENDERECO, NUMERO, CIDADE, BAIRRO,'
      '       CEP, UF, COD_END, COD_CID, COD_BAI, FONE, CPF_CGC'
      '')
    Left = 278
    Top = 412
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
        Name = 'DT_CX'
        ParamType = ptUnknown
      end>
    object Receber_Data_AnaliticoSOMA: TIBBCDField
      DisplayLabel = 'Soma'
      FieldName = 'SOMA'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."SOMA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Receber_Data_AnaliticoPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'PESSOA_FJ'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."PESSOA_FJ"'
    end
    object Receber_Data_AnaliticoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."NOME"'
      Size = 50
    end
    object Receber_Data_AnaliticoENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."ENDERECO"'
      Size = 50
    end
    object Receber_Data_AnaliticoNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."NUMERO"'
      Size = 15
    end
    object Receber_Data_AnaliticoCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CIDADE"'
      Size = 50
    end
    object Receber_Data_AnaliticoBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."BAIRRO"'
      Size = 50
    end
    object Receber_Data_AnaliticoCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Receber_Data_AnaliticoUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."UF"'
      FixedChar = True
      Size = 2
    end
    object Receber_Data_AnaliticoCOD_END: TIntegerField
      DisplayLabel = 'Cod End'
      FieldName = 'COD_END'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_END"'
    end
    object Receber_Data_AnaliticoCOD_CID: TIntegerField
      DisplayLabel = 'Cod Cid'
      FieldName = 'COD_CID'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_CID"'
    end
    object Receber_Data_AnaliticoCOD_BAI: TIntegerField
      DisplayLabel = 'Cod Bai'
      FieldName = 'COD_BAI'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_BAI"'
    end
    object Receber_Data_AnaliticoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."FONE"'
    end
    object Receber_Data_AnaliticoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CPF_CGC"'
      Size = 15
    end
    object Receber_Data_AnaliticoPORCENTAGEM: TIBBCDField
      DisplayLabel = 'Porcentagem'
      FieldName = 'PORCENTAGEM'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."PORCENTAGEM"'
      DisplayFormat = '% ##0.00'
      Precision = 18
      Size = 4
    end
    object Receber_Data_AnaliticoDATA: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DATA'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."DATA"'
    end
    object Receber_Data_AnaliticoARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."ARQ_MORTO"'
      FixedChar = True
      Size = 1
    end
    object Receber_Data_AnaliticoCrack: TStringField
      FieldKind = fkCalculated
      FieldName = 'Crack'
      Size = 1
      Calculated = True
    end
  end
  object Contas_Pagar: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterEdit = Contas_PagarAfterEdit
    AfterInsert = Contas_ReceberAfterInsert
    AfterPost = Contas_PagarAfterPost
    BeforeDelete = Contas_PagarBeforeDelete
    BeforeOpen = Contas_ReceberBeforeOpen
    BeforePost = Contas_PagarBeforePost
    OnCalcFields = Contas_PagarCalcFields
    OnNewRecord = Contas_PagarNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_CONTAS_PAGAR'
      'where'
      '  ANO = :OLD_ANO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_CONTAS_PAGAR'
      
        '  (ANO, ANO_ENT, AVISO, BOLETO, CENTRO_CUSTO, CNPJ, COD_CONFIG_T' +
        'ITULO, '
      
        '   COD_CONTRATO, COD_INDEXADOR, CODIGO, CODIGO_ENT, CONFERIDA, C' +
        'ONTABILIDADE, '
      
        '   DESCONTOS, DOCTO, DT_AVISO, DT_EMISSAO, DT_LANCTO, DT_VENCTO,' +
        ' DUPLICATA, '
      
        '   FLUXO_CAIXA, HISTORICO, IDX_COTACAO, IDX_DATABASE, IDX_QTDE, ' +
        'JUROS_PAG, '
      
        '   NOME, ORIGEM, PARCELA, PESSOA_FJ, PLANILHA, SELECIONADO, TIPO' +
        '_DOCTO, '
      '   TOTAL_ENTRADA, VALOR, VALOR_EXTENSO, VLR_PARCIAL)'
      'values'
      
        '  (:ANO, :ANO_ENT, :AVISO, :BOLETO, :CENTRO_CUSTO, :CNPJ, :COD_C' +
        'ONFIG_TITULO, '
      
        '   :COD_CONTRATO, :COD_INDEXADOR, :CODIGO, :CODIGO_ENT, :CONFERI' +
        'DA, :CONTABILIDADE, '
      
        '   :DESCONTOS, :DOCTO, :DT_AVISO, :DT_EMISSAO, :DT_LANCTO, :DT_V' +
        'ENCTO, '
      
        '   :DUPLICATA, :FLUXO_CAIXA, :HISTORICO, :IDX_COTACAO, :IDX_DATA' +
        'BASE, :IDX_QTDE, '
      
        '   :JUROS_PAG, :NOME, :ORIGEM, :PARCELA, :PESSOA_FJ, :PLANILHA, ' +
        ':SELECIONADO, '
      
        '   :TIPO_DOCTO, :TOTAL_ENTRADA, :VALOR, :VALOR_EXTENSO, :VLR_PAR' +
        'CIAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  ANO,'
      '  PESSOA_FJ,'
      '  DT_EMISSAO,'
      '  DT_VENCTO,'
      '  DT_LANCTO,'
      '  DOCTO,'
      '  PARCELA,'
      '  HISTORICO,'
      '  VALOR,'
      '  VLR_PARCIAL,'
      '  JUROS_PAG,'
      '  DESCONTOS,'
      '  BOLETO,'
      '  ORIGEM,'
      '  CODIGO_ENT,'
      '  ANO_ENT,'
      '  AVISO,'
      '  DT_AVISO,'
      '  SELECIONADO,'
      '  CENTRO_CUSTO,'
      '  NOME,'
      '  DUPLICATA,'
      '  CONFERIDA,'
      '  MOEDA1,'
      '  MOEDA2,'
      '  TOTAL_ENTRADA,'
      '  PLANILHA,'
      '  FLUXO_CAIXA,'
      '  CONTABILIDADE,'
      '  DT_ULTIMA_BAIXA,'
      '  TIPO_DOCTO,'
      '  CODIGO_VN,'
      '  COD_INDEXADOR,'
      '  IDX_DATABASE,'
      '  IDX_COTACAO,'
      '  IDX_QTDE,'
      '  ACT_TOTAL_PAGAR,'
      '  IDX_VLR_PARCIAL,'
      '  COD_CONFIG_TITULO,'
      '  VALOR_EXTENSO,'
      '  COD_CONTRATO'
      'from FIN_CONTAS_PAGAR '
      'where'
      '  ANO = :ANO and'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      ' select '
      'pgr.CNPJ,'
      'pgr.codigo_vn,'
      'pgr.CODIGO,'
      'pgr.ANO,'
      'pgr.PESSOA_FJ,'
      'pgr.DT_EMISSAO,'
      'pgr.DT_VENCTO,'
      'pgr.DT_LANCTO,'
      'pgr.DOCTO,'
      'pgr.PARCELA,'
      'pgr.HISTORICO,'
      'pgr.VALOR,'
      'pgr.VLR_PARCIAL,'
      'pgr.JUROS_PAG ,'
      'pgr.DESCONTOS,'
      'pgr.BOLETO,'
      'pgr.ORIGEM,'
      'pgr.CODIGO_ENT,'
      'pgr.ANO_ENT,'
      'pgr.AVISO,'
      'pgr.DT_AVISO,'
      'pgr.SELECIONADO,'
      'pgr.CENTRO_CUSTO,'
      'pgr.NOME,'
      'pgr.DUPLICATA,'
      'pgr.CONFERIDA,'
      'pgr.TOTAL_ENTRADA,'
      'pgr.PLANILHA,'
      'pgr.FLUXO_CAIXA,'
      'pgr.CONTABILIDADE,'
      'pgr.dt_ultima_baixa,'
      'pgr.TIPO_DOCTO,'
      'pgr.COD_INDEXADOR,'
      'pgr.IDX_DATABASE,'
      'pgr.IDX_COTACAO,'
      'pgr.IDX_QTDE,'
      'pgr.VALOR_EXTENSO,'
      'cod_config_titulo,'
      'psa.nome_razao,'
      'pgr.cod_contrato,'
      'ct.descricao ctr_descricao,'
      'cc.nome cc_descricao,'
      'd.nome nome_tipo_docto'
      ''
      'from FIN_CONTAS_PAGAR pgr'
      'left join ctr_contrato ct on (ct.codigo = pgr.cod_contrato)'
      
        'left join glo_tipos_docto d on (d.cnpj = pgr.cnpj and d.sigla = ' +
        'pgr.tipo_docto)'
      
        'left join fin_centro_custo cc on (cc.cnpj = pgr.cnpj and cc.codi' +
        'go = pgr.centro_custo)'
      
        'inner join glo_pessoas_fj psa on (psa.cnpj = pgr.cnpj and psa.co' +
        'digo = pgr.pessoa_fj)'
      'Where pgr.Cnpj = :Cnpj')
    ModifySQL.Strings = (
      'update FIN_CONTAS_PAGAR'
      'set'
      '  ANO = :ANO,'
      '  ANO_ENT = :ANO_ENT,'
      '  AVISO = :AVISO,'
      '  BOLETO = :BOLETO,'
      '  CENTRO_CUSTO = :CENTRO_CUSTO,'
      '  CNPJ = :CNPJ,'
      '  COD_CONFIG_TITULO = :COD_CONFIG_TITULO,'
      '  COD_CONTRATO = :COD_CONTRATO,'
      '  COD_INDEXADOR = :COD_INDEXADOR,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_ENT = :CODIGO_ENT,'
      '  CONFERIDA = :CONFERIDA,'
      '  CONTABILIDADE = :CONTABILIDADE,'
      '  DESCONTOS = :DESCONTOS,'
      '  DOCTO = :DOCTO,'
      '  DT_AVISO = :DT_AVISO,'
      '  DT_EMISSAO = :DT_EMISSAO,'
      '  DT_LANCTO = :DT_LANCTO,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  DUPLICATA = :DUPLICATA,'
      '  FLUXO_CAIXA = :FLUXO_CAIXA,'
      '  HISTORICO = :HISTORICO,'
      '  IDX_COTACAO = :IDX_COTACAO,'
      '  IDX_DATABASE = :IDX_DATABASE,'
      '  IDX_QTDE = :IDX_QTDE,'
      '  JUROS_PAG = :JUROS_PAG,'
      '  NOME = :NOME,'
      '  ORIGEM = :ORIGEM,'
      '  PARCELA = :PARCELA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLANILHA = :PLANILHA,'
      '  SELECIONADO = :SELECIONADO,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  TOTAL_ENTRADA = :TOTAL_ENTRADA,'
      '  VALOR = :VALOR,'
      '  VALOR_EXTENSO = :VALOR_EXTENSO,'
      '  VLR_PARCIAL = :VLR_PARCIAL'
      'where'
      '  ANO = :OLD_ANO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_PAGAR_COD_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 22
    Top = 151
    object Contas_PagarCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_CONTAS_PAGAR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object Contas_PagarCODIGO_VN: TIntegerField
      DisplayLabel = 'C'#243'd. Faturamento'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO_VN"'
    end
    object Contas_PagarCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object Contas_PagarANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"FIN_CONTAS_PAGAR"."ANO"'
    end
    object Contas_PagarPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CONTAS_PAGAR"."PESSOA_FJ"'
      OnValidate = Contas_PagarPESSOA_FJValidate
    end
    object Contas_PagarDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_EMISSAO"'
    end
    object Contas_PagarDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_VENCTO"'
    end
    object Contas_PagarDT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_LANCTO"'
    end
    object Contas_PagarDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DOCTO"'
    end
    object Contas_PagarPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_PAGAR"."PARCELA"'
      Size = 6
    end
    object Contas_PagarHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CONTAS_PAGAR"."HISTORICO"'
      Size = 100
    end
    object Contas_PagarVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_PAGAR"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagarVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_PAGAR"."VLR_PARCIAL"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagarJUROS_PAG: TFloatField
      DisplayLabel = 'Juros Pagos'
      FieldName = 'JUROS_PAG'
      Origin = '"FIN_CONTAS_PAGAR"."JUROS_PAG"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagarDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"FIN_CONTAS_PAGAR"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagarBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_CONTAS_PAGAR"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Contas_PagarORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_CONTAS_PAGAR"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Contas_PagarCODIGO_ENT: TIntegerField
      DisplayLabel = 'Cod. Entrada'
      FieldName = 'CODIGO_ENT'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO_ENT"'
    end
    object Contas_PagarANO_ENT: TSmallintField
      DisplayLabel = 'Ano Entrada'
      FieldName = 'ANO_ENT'
      Origin = '"FIN_CONTAS_PAGAR"."ANO_ENT"'
    end
    object Contas_PagarAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_CONTAS_PAGAR"."AVISO"'
    end
    object Contas_PagarDT_AVISO: TDateTimeField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_AVISO"'
    end
    object Contas_PagarSELECIONADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_PAGAR"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object Contas_PagarCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'C. Custo'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FIN_CONTAS_PAGAR"."CENTRO_CUSTO"'
    end
    object Contas_PagarNOME: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Origin = '"FIN_CONTAS_PAGAR"."NOME"'
      Size = 50
    end
    object Contas_PagarDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"FIN_CONTAS_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object Contas_PagarCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"FIN_CONTAS_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
    object Contas_PagarTOTAL_ENTRADA: TFloatField
      DisplayLabel = 'Ttl. Entrada'
      FieldName = 'TOTAL_ENTRADA'
      Origin = '"FIN_CONTAS_PAGAR"."TOTAL_ENTRADA"'
    end
    object Contas_PagarPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_CONTAS_PAGAR"."PLANILHA"'
    end
    object Contas_PagarFLUXO_CAIXA: TDateTimeField
      DisplayLabel = 'Fluxo Caixa'
      FieldName = 'FLUXO_CAIXA'
      Origin = '"FIN_CONTAS_PAGAR"."FLUXO_CAIXA"'
    end
    object Contas_PagarCONTABILIDADE: TIntegerField
      DisplayLabel = 'Contabilidade'
      FieldName = 'CONTABILIDADE'
      Origin = '"FIN_CONTAS_PAGAR"."CONTABILIDADE"'
    end
    object Contas_PagarDT_ULTIMA_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'DT_ULTIMA_BAIXA'
      Origin = '"FIN_CONTAS_PAGAR"."DT_ULTIMA_BAIXA"'
    end
    object Contas_PagarTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp. Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_PAGAR"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Contas_PagarCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_CONTAS_PAGAR"."COD_INDEXADOR"'
    end
    object Contas_PagarIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_DATABASE"'
    end
    object Contas_PagarIDX_COTACAO: TFloatField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_COTACAO"'
    end
    object Contas_PagarIDX_QTDE: TFloatField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_QTDE"'
    end
    object Contas_PagarCOD_CONFIG_TITULO: TIntegerField
      DisplayLabel = 'Cod. Cfg. Titulo'
      FieldName = 'COD_CONFIG_TITULO'
      Origin = '"FIN_CONTAS_PAGAR"."COD_CONFIG_TITULO"'
    end
    object Contas_PagarTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Contas_Pagar_Total_Geral_IDX: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Total_Geral_IDX'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Contas_PagarNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome Raz'#227'o'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object Contas_PagarVALOR_EXTENSO: TIBStringField
      DisplayLabel = 'Vlr. Extenso'
      FieldName = 'VALOR_EXTENSO'
      Origin = '"FIN_CONTAS_PAGAR"."VALOR_EXTENSO"'
      Size = 200
    end
    object Contas_PagarCTR_DESCRICAO: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'CTR_DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
    object Contas_PagarCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"FIN_CONTAS_PAGAR"."COD_CONTRATO"'
    end
    object Contas_PagarCC_DESCRICAO: TIBStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'CC_DESCRICAO'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
    object Contas_PagarNOME_TIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'NOME_TIPO_DOCTO'
      Origin = '"GLO_TIPOS_DOCTO"."NOME"'
      Size = 50
    end
  end
  object VerPagar: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerPagarCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO,'
      '    ANO,'
      '    PESSOA_FJ,'
      '    DT_EMISSAO,'
      '    DT_VENCTO,'
      '    DT_LANCTO,'
      '    DOCTO,'
      '    PARCELA,'
      '    HISTORICO,'
      '    VALOR,'
      '    VLR_PARCIAL,'
      '    JUROS_PAG,'
      '    DESCONTOS,'
      '    BOLETO,'
      '    ORIGEM,'
      '    CODIGO_ENT,'
      '    ANO_ENT,'
      '    AVISO,'
      '    DT_AVISO,'
      '    NOME,'
      '    ENDERECO,'
      '    NUMERO,'
      '    CIDADE,'
      '    BAIRRO,'
      '    CEP,'
      '    UF,'
      '    COD_END,'
      '    COD_CID,'
      '    COD_BAI,'
      '    FONE,'
      '    CPF_CGC,'
      '    SELECIONADO,'
      '    CENTRO_CUSTO,'
      '    NOME_CENTRO,'
      '    DUPLICATA,'
      '    CONFERIDA,'
      '   DT_ULTIMA_BAIXA,'
      'COD_INDEXADOR,'
      'IDX_DATABASE ,'
      'IDX_COTACAO,'
      'IDX_QTDE'
      'From Ver_Pagar (:CNPJ)')
    Left = 115
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VerPagarCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object VerPagarANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object VerPagarPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object VerPagarDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object VerPagarPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerPagarHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object VerPagarVALOR: TIBBCDField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPagarBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerPagarORIGEM: TIBStringField
      DisplayLabel = 'Or'
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerPagarAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object VerPagarDT_AVISO: TDateField
      DisplayLabel = 'Ult. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER"."DT_AVISO"'
    end
    object VerPagarNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object VerPagarENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object VerPagarNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object VerPagarCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object VerPagarBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object VerPagarCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerPagarUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerPagarCOD_END: TIntegerField
      DisplayLabel = 'End'
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object VerPagarCOD_CID: TIntegerField
      DisplayLabel = 'Cid'
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object VerPagarCOD_BAI: TIntegerField
      DisplayLabel = 'Bai'
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object VerPagarFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object VerPagarCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object VerPagarSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VerPagarVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPagarTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerPagarDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPagarJUROS_PAG: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS_PAG'
      Origin = '"VER_PAGAR"."JUROS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPagarCODIGO_ENT: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'CODIGO_ENT'
      Origin = '"VER_PAGAR"."CODIGO_ENT"'
    end
    object VerPagarANO_ENT: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_ENT'
      Origin = '"VER_PAGAR"."ANO_ENT"'
    end
    object VerPagarCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"VER_PAGAR"."CENTRO_CUSTO"'
    end
    object VerPagarNOME_CENTRO: TIBStringField
      Tag = 1
      DisplayLabel = 'Centro de Custo'
      FieldName = 'NOME_CENTRO'
      Origin = '"VER_PAGAR"."NOME_CENTRO"'
      Size = 50
    end
    object VerPagarDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"VER_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object VerPagarCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"VER_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
    object VerPagarDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_PAGAR"."DT_EMISSAO"'
    end
    object VerPagarDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_PAGAR"."DT_VENCTO"'
    end
    object VerPagarDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_PAGAR"."DT_LANCTO"'
    end
    object VerPagarDT_ULTIMA_BAIXA: TDateField
      FieldName = 'DT_ULTIMA_BAIXA'
      Origin = '"VER_PAGAR"."DT_ULTIMA_BAIXA"'
    end
    object VerPagarCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"VER_PAGAR"."COD_INDEXADOR"'
    end
    object VerPagarIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"VER_PAGAR"."IDX_DATABASE"'
    end
    object VerPagarIDX_COTACAO: TIBBCDField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"VER_PAGAR"."IDX_COTACAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPagarIDX_QTDE: TIBBCDField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"VER_PAGAR"."IDX_QTDE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Baixas_Pagar: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
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
      '    ENDERECO ,'
      '    NUMERO ,'
      '    CIDADE ,'
      '    BAIRRO ,'
      '    CEP ,'
      '    UF ,'
      '    COD_END ,'
      '    COD_CID ,'
      '    COD_BAI ,'
      '    FONE,'
      '    CPF_CGC ,'
      '    CENTRO_CUSTO ,'
      '    NOME_CENTRO ,'
      '    DUPLICATA ,'
      '    CONFERIDA,'
      '   COD_INDEXADOR,'
      '            IDX_DATABASE ,'
      '            IDX_COTACAO,'
      '            IDX_QTDE,'
      '            cod_contrato ,'
      '            ctr_nome '
      'From VER_BAIXA_PAGAR ( :CNPJ )')
    Left = 352
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
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
    object Baixas_PagarENDERECO: TIBStringField
      DisplayLabel = 'End.'
      FieldName = 'ENDERECO'
      Origin = '"VER_BAIXA_RECEBER"."ENDERECO"'
      Size = 50
    end
    object Baixas_PagarNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_BAIXA_RECEBER"."NUMERO"'
      Size = 15
    end
    object Baixas_PagarCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_BAIXA_RECEBER"."CIDADE"'
      Size = 50
    end
    object Baixas_PagarBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_BAIXA_RECEBER"."BAIRRO"'
      Size = 50
    end
    object Baixas_PagarCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_BAIXA_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Baixas_PagarUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_BAIXA_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object Baixas_PagarCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_BAIXA_RECEBER"."COD_END"'
    end
    object Baixas_PagarCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_BAIXA_RECEBER"."COD_CID"'
    end
    object Baixas_PagarCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_BAIXA_RECEBER"."COD_BAI"'
    end
    object Baixas_PagarFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_BAIXA_RECEBER"."FONE"'
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
    object Baixas_PagarCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"VER_BAIXA_PAGAR"."COD_INDEXADOR"'
    end
    object Baixas_PagarIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"VER_BAIXA_PAGAR"."IDX_DATABASE"'
    end
    object Baixas_PagarIDX_COTACAO: TIBBCDField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"VER_BAIXA_PAGAR"."IDX_COTACAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_PagarIDX_QTDE: TIBBCDField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"VER_BAIXA_PAGAR"."IDX_QTDE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object VerPagar_3meses: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'Select * From Ver_Pagar_3meses (:CNPJ, :DATA)')
    Left = 115
    Top = 204
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
    object VerPagar_3mesesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PAGAR_3MESES"."CODIGO"'
    end
    object VerPagar_3mesesANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_PAGAR_3MESES"."ANO"'
    end
    object VerPagar_3mesesPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_PAGAR_3MESES"."PESSOA_FJ"'
    end
    object VerPagar_3mesesDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_PAGAR_3MESES"."DT_EMISSAO"'
    end
    object VerPagar_3mesesDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_PAGAR_3MESES"."DT_VENCTO"'
    end
    object VerPagar_3mesesDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_PAGAR_3MESES"."DT_LANCTO"'
    end
    object VerPagar_3mesesDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_PAGAR_3MESES"."DOCTO"'
    end
    object VerPagar_3mesesPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_PAGAR_3MESES"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerPagar_3mesesHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_PAGAR_3MESES"."HISTORICO"'
      Size = 100
    end
    object VerPagar_3mesesVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_PAGAR_3MESES"."VALOR"'
      Precision = 18
      Size = 4
    end
    object VerPagar_3mesesVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_PAGAR_3MESES"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object VerPagar_3mesesJUROS_PAG: TIBBCDField
      FieldName = 'JUROS_PAG'
      Origin = '"VER_PAGAR_3MESES"."JUROS_PAG"'
      Precision = 18
      Size = 4
    end
    object VerPagar_3mesesDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_PAGAR_3MESES"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object VerPagar_3mesesBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_PAGAR_3MESES"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerPagar_3mesesORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_PAGAR_3MESES"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerPagar_3mesesCODIGO_ENT: TIntegerField
      FieldName = 'CODIGO_ENT'
      Origin = '"VER_PAGAR_3MESES"."CODIGO_ENT"'
    end
    object VerPagar_3mesesANO_ENT: TSmallintField
      FieldName = 'ANO_ENT'
      Origin = '"VER_PAGAR_3MESES"."ANO_ENT"'
    end
    object VerPagar_3mesesAVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_PAGAR_3MESES"."AVISO"'
    end
    object VerPagar_3mesesDT_AVISO: TDateField
      FieldName = 'DT_AVISO'
      Origin = '"VER_PAGAR_3MESES"."DT_AVISO"'
    end
    object VerPagar_3mesesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_PAGAR_3MESES"."NOME"'
      Size = 50
    end
    object VerPagar_3mesesENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PAGAR_3MESES"."ENDERECO"'
      Size = 50
    end
    object VerPagar_3mesesNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PAGAR_3MESES"."NUMERO"'
      Size = 15
    end
    object VerPagar_3mesesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PAGAR_3MESES"."CIDADE"'
      Size = 50
    end
    object VerPagar_3mesesBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PAGAR_3MESES"."BAIRRO"'
      Size = 50
    end
    object VerPagar_3mesesCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PAGAR_3MESES"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerPagar_3mesesUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PAGAR_3MESES"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerPagar_3mesesCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_PAGAR_3MESES"."COD_END"'
    end
    object VerPagar_3mesesCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_PAGAR_3MESES"."COD_CID"'
    end
    object VerPagar_3mesesCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_PAGAR_3MESES"."COD_BAI"'
    end
    object VerPagar_3mesesFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PAGAR_3MESES"."FONE"'
    end
    object VerPagar_3mesesCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PAGAR_3MESES"."CPF_CGC"'
      Size = 15
    end
    object VerPagar_3mesesSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"VER_PAGAR_3MESES"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object Pagar_Data_Analitico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT * FROM SOMA_PAGAR_DATA_ANALITICO ( :CNPJ, :INI, :FIM )')
    Left = 352
    Top = 252
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
    object Pagar_Data_AnaliticoSOMA: TIBBCDField
      DisplayLabel = 'Soma'
      FieldName = 'SOMA'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."SOMA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Pagar_Data_AnaliticoDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."DATA"'
    end
    object Pagar_Data_AnaliticoPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'PESSOA_FJ'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."PESSOA_FJ"'
    end
    object Pagar_Data_AnaliticoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."NOME"'
      Size = 50
    end
    object Pagar_Data_AnaliticoENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."ENDERECO"'
      Size = 50
    end
    object Pagar_Data_AnaliticoNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."NUMERO"'
      Size = 15
    end
    object Pagar_Data_AnaliticoCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CIDADE"'
      Size = 50
    end
    object Pagar_Data_AnaliticoBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."BAIRRO"'
      Size = 50
    end
    object Pagar_Data_AnaliticoCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Pagar_Data_AnaliticoUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."UF"'
      FixedChar = True
      Size = 2
    end
    object Pagar_Data_AnaliticoCOD_END: TIntegerField
      DisplayLabel = 'Cod End'
      FieldName = 'COD_END'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_END"'
    end
    object Pagar_Data_AnaliticoCOD_CID: TIntegerField
      DisplayLabel = 'Cod Cid'
      FieldName = 'COD_CID'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_CID"'
    end
    object Pagar_Data_AnaliticoCOD_BAI: TIntegerField
      DisplayLabel = 'Cod Bai'
      FieldName = 'COD_BAI'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_BAI"'
    end
    object Pagar_Data_AnaliticoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."FONE"'
    end
    object Pagar_Data_AnaliticoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CPF_CGC"'
      Size = 15
    end
    object Pagar_Data_AnaliticoPORCENTAGEM: TIBBCDField
      DisplayLabel = 'Porcentagem'
      FieldName = 'PORCENTAGEM'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."PORCENTAGEM"'
      DisplayFormat = '% ##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Pagar_Data: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT * FROM SOMA_PAGAR_DATA ( :CNPJ, :INI, :FIM )')
    Left = 22
    Top = 204
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
    object Pagar_DataSOMA: TIBBCDField
      DisplayLabel = 'Soma'
      FieldName = 'SOMA'
      Origin = '"SOMA_RECEBER_DATA"."SOMA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Pagar_DataDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"SOMA_RECEBER_DATA"."DATA"'
    end
    object Pagar_DataPORCENTAGEM: TIBBCDField
      DisplayLabel = 'Porcentagem'
      FieldName = 'PORCENTAGEM'
      Origin = '"SOMA_RECEBER_DATA"."PORCENTAGEM"'
      DisplayFormat = '% ##0.00'
      Precision = 18
      Size = 4
    end
  end
  object VerFaturas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerFaturasCalcFields
    SQL.Strings = (
      'Select CODIGO,'
      '           PESSOA_FJ,'
      '           DATA,'
      '           VALOR,'
      '           VALOR_ORIGINAL,'
      '           DESCONTO, '
      '           JUROS,'
      '           VENCIMENTO,'
      '           HISTORICO,'
      '           NOME, '
      '           ENDERECO, '
      '           NUMERO, '
      '           CIDADE, '
      '           BAIRRO, '
      '           CEP, '
      '           UF, '
      '           COD_END, '
      '           COD_BAI, '
      '           COD_CID, '
      '           FONE, '
      '           CPF_CGC,'
      '           BANCO,'
      '           ENVIADA,'
      '           TIPO,'
      '           DUPLICATA,'
      '           OBS,'
      '           DATA_BAIXA,'
      '           USUARIO,'
      '           ULTIMA_BX_PARCIAL'
      'from Ver_Fatura ( :CNPJ )'
      '           ')
    Left = 428
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VerFaturasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA"."CODIGO"'
    end
    object VerFaturasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA"."PESSOA_FJ"'
    end
    object VerFaturasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FATURA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturasDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FATURA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA"."HISTORICO"'
      Size = 100
    end
    object VerFaturasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FATURA"."NOME"'
      Size = 50
    end
    object VerFaturasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA"."ENDERECO"'
      Size = 50
    end
    object VerFaturasNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA"."NUMERO"'
      Size = 15
    end
    object VerFaturasCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA"."CIDADE"'
      Size = 50
    end
    object VerFaturasBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA"."BAIRRO"'
      Size = 50
    end
    object VerFaturasCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_FATURA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerFaturasUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_FATURA"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerFaturasCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_FATURA"."COD_END"'
    end
    object VerFaturasCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_FATURA"."COD_BAI"'
    end
    object VerFaturasCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_FATURA"."COD_CID"'
    end
    object VerFaturasFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FATURA"."FONE"'
      Size = 14
    end
    object VerFaturasCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA"."CPF_CGC"'
      Size = 15
    end
    object VerFaturasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerFaturasBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FATURA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VerFaturasENVIADA: TIBStringField
      DisplayLabel = 'Enviada'
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object VerFaturasTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FATURA"."TIPO"'
      Size = 11
    end
    object VerFaturasNome_Banco: TStringField
      FieldKind = fkLookup
      FieldName = 'Nome_Banco'
      LookupDataSet = SelBanco
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'NOME'
      KeyFields = 'BANCO'
      Size = 50
      Lookup = True
    end
    object VerFaturasSituacao: TStringField
      FieldKind = fkCalculated
      FieldName = 'Situacao'
      Size = 50
      Calculated = True
    end
    object VerFaturasDUPLICATA: TIBStringField
      DisplayLabel = 'Dpl'
      FieldName = 'DUPLICATA'
      Origin = '"VER_FATURA"."DUPLICATA"'
      Size = 30
    end
    object VerFaturasOBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"VER_FATURA"."OBS"'
      Size = 30
    end
    object VerFaturasVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Valor Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_FATURA"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturasULTIMA_BX_PARCIAL: TDateTimeField
      FieldName = 'ULTIMA_BX_PARCIAL'
      Origin = '"VER_FATURA"."ULTIMA_BX_PARCIAL"'
    end
    object VerFaturasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FATURA"."DATA"'
    end
    object VerFaturasVENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA"."VENCIMENTO"'
    end
    object VerFaturasDATA_BAIXA: TDateTimeField
      DisplayLabel = 'Baixa'
      FieldName = 'DATA_BAIXA'
      Origin = '"VER_FATURA"."DATA_BAIXA"'
    end
    object VerFaturasUSUARIO2: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"VER_FATURA"."USUARIO"'
      FixedChar = True
      Size = 14
    end
  end
  object Faturas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = FaturasCalcFields
    OnNewRecord = FaturasNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_FATURAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_FATURAS'
      
        '  (CNPJ, CODIGO, DATA, DESCONTO, HISTORICO, JUROS, PESSOA_FJ, VA' +
        'LOR, VALOR_ORIGINAL, '
      
        '   VENCIMENTO, NOME, BAIXADA, DUPLICATA, BOLETO, BANCO, TIPO, EN' +
        'VIADA, '
      '   OBS, ULTIMA_BX_PARCIAL, ORIGEM)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DESCONTO, :HISTORICO, :JUROS, :PESSOA' +
        '_FJ, :VALOR, '
      
        '   :VALOR_ORIGINAL, :VENCIMENTO, :NOME, :BAIXADA, :DUPLICATA, :B' +
        'OLETO, '
      '   :BANCO, :TIPO, :ENVIADA, :OBS, :ULTIMA_BX_PARCIAL, :ORIGEM)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PESSOA_FJ,'
      '  DATA,'
      '  VALOR,'
      '  DESCONTO,'
      '  JUROS,'
      '  VENCIMENTO,'
      '  HISTORICO,'
      '  NOME,'
      '  BAIXADA,'
      '  DUPLICATA,'
      '  BOLETO,'
      '  BANCO,'
      '  TIPO,'
      '  ENVIADA,'
      '  OBS,'
      '  MOEDA1,'
      '  MOEDA2,'
      '  AGRUPADORA,'
      '  DATA_BAIXA,'
      '  USUARIO,'
      '  VALOR_ORIGINAL,'
      '  BAIXAS_PARCIAIS,'
      '  ULTIMA_BX_PARCIAL,'
      '  TURNO,'
      '  ORIGEM'
      'from FIN_FATURAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          DATA, '
      '          DESCONTO, '
      '          HISTORICO, '
      '          JUROS, '
      '          PESSOA_FJ, '
      '          VALOR, '
      '          VALOR_ORIGINAL,'
      '          VENCIMENTO,'
      '          NOME,'
      '          BAIXADA,'
      '          DUPLICATA,'
      '          BOLETO,'
      '          BANCO,'
      '          TIPO,'
      '          ENVIADA,'
      '          OBS,'
      '          ULTIMA_BX_PARCIAL,'
      '          ORIGEM'
      'from FIN_FATURAS'
      'where CNPJ = :CNPJ AND BAIXADA = :BAIXADA ')
    ModifySQL.Strings = (
      'update FIN_FATURAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESCONTO = :DESCONTO,'
      '  HISTORICO = :HISTORICO,'
      '  JUROS = :JUROS,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  VALOR = :VALOR,'
      '  VALOR_ORIGINAL = :VALOR_ORIGINAL,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  NOME = :NOME,'
      '  BAIXADA = :BAIXADA,'
      '  DUPLICATA = :DUPLICATA,'
      '  BOLETO = :BOLETO,'
      '  BANCO = :BANCO,'
      '  TIPO = :TIPO,'
      '  ENVIADA = :ENVIADA,'
      '  OBS = :OBS,'
      '  ULTIMA_BX_PARCIAL = :ULTIMA_BX_PARCIAL,'
      '  ORIGEM = :ORIGEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 280
    Top = 51
    object FaturasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FATURAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FaturasCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FATURAS"."CODIGO"'
      Required = True
    end
    object FaturasDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_FATURAS"."DATA"'
    end
    object FaturasDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FIN_FATURAS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_FATURAS"."HISTORICO"'
      Size = 100
    end
    object FaturasJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_FATURAS"."JUROS"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_FATURAS"."PESSOA_FJ"'
      Required = True
      OnValidate = FaturasPESSOA_FJValidate
    end
    object FaturasVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_FATURAS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturasVENCIMENTO: TDateTimeField
      Tag = 1
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      Origin = '"FIN_FATURAS"."VENCIMENTO"'
    end
    object FaturasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FaturasNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_FATURAS"."NOME"'
      Size = 50
    end
    object FaturasBAIXADA: TIBStringField
      FieldName = 'BAIXADA'
      Origin = '"FIN_FATURAS"."BAIXADA"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object FaturasBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_FATURAS"."BOLETO"'
      Size = 30
    end
    object FaturasBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_FATURAS"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object FaturasTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_FATURAS"."TIPO"'
      Size = 11
    end
    object FaturasENVIADA: TIBStringField
      DisplayLabel = 'Enviada'
      FieldName = 'ENVIADA'
      Origin = '"FIN_FATURAS"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object FaturasOBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"FIN_FATURAS"."OBS"'
      Size = 30
    end
    object FaturasDUPLICATA: TIBStringField
      DisplayLabel = 'Dpl'
      FieldName = 'DUPLICATA'
      Origin = '"FIN_FATURAS"."DUPLICATA"'
      Size = 30
    end
    object FaturasVALOR_ORIGINAL: TFloatField
      DisplayLabel = 'Valor Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"FIN_FATURAS"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object FaturasULTIMA_BX_PARCIAL: TDateTimeField
      DisplayLabel = 'Bx Parcial'
      FieldName = 'ULTIMA_BX_PARCIAL'
      Origin = '"FIN_FATURAS"."ULTIMA_BX_PARCIAL"'
    end
    object FaturasORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_FATURAS"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
  end
  object SelPessoasFJ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
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
      '    EMPRESA,'
      '    ORDEM,'
      '    ENDERECO'
      'FROM VER_CLIENTE ( :CNPJ )'
      'ORDER BY NOME_RAZAO')
    Left = 203
    Top = 101
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
    object SelPessoasFJORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"VER_CLIENTE"."ORDEM"'
    end
    object SelPessoasFJENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_CLIENTE"."ENDERECO"'
      Size = 65
    end
  end
  object SelFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT '
      '    EMPRESA ,'
      '    CODIGO ,'
      '    PESSOA_FJ,'
      '    NOME_RAZAO,'
      '    FONE,'
      '    FANTASIA,'
      '    CPF_CGC,'
      '    UF'
      'FROM VER_FORNECEDOR (:CNPJ)'
      'ORDER BY NOME_RAZAO')
    Left = 428
    Top = 151
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelFornecedorPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      Required = True
    end
    object SelFornecedorNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelFornecedorFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object SelFornecedorFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object SelFornecedorCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelFornecedorEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_FORNECEDOR"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object SelFornecedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FORNECEDOR"."CODIGO"'
    end
    object SelFornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_FORNECEDOR"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object Faturas_Carregar: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'Select'
      '          CODIGO, '
      '          DATA, '
      '          FECHADA,'
      '          PESSOA_FJ, '
      '          USUARIO, '
      '          VENDEDOR,'
      '          NUM_NF, '
      '          DESC_ACRES, '
      '          TOTAL,'
      '          VOLUME, '
      '          PESO,  '
      '          ORCAMENTO, '
      '          NOME'
      'FROM FAT_VENDAS_CARREGAR( :CNPJ )')
    Left = 352
    Top = 204
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Faturas_CarregarCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object Faturas_CarregarDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object Faturas_CarregarFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Faturas_CarregarPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object Faturas_CarregarUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDAS"."USUARIO"'
      Required = True
    end
    object Faturas_CarregarVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
    end
    object Faturas_CarregarNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object Faturas_CarregarORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object Faturas_CarregarNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object Faturas_CarregarDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS_CARREGAR"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregarTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS_CARREGAR"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregarVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_CARREGAR"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregarPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_CARREGAR"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Faturas_Carregadas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'Select'
      '          CODIGO, '
      '          DATA, '
      '          FECHADA,'
      '          PESSOA_FJ, '
      '          USUARIO, '
      '          VENDEDOR,'
      '          NUM_NF, '
      '          DESC_ACRES, '
      '          TOTAL,'
      '          VOLUME, '
      '          PESO,  '
      '          ORCAMENTO, '
      '          NOME'
      'FROM FAT_VENDAS_CARREGADAS ( :CNPJ, :CARGA )')
    Left = 608
    Top = 514
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CARGA'
        ParamType = ptUnknown
      end>
    object Faturas_CarregadasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object Faturas_CarregadasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
    object Faturas_CarregadasFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDAS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Faturas_CarregadasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDAS"."PESSOA_FJ"'
      Required = True
    end
    object Faturas_CarregadasUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDAS"."USUARIO"'
      Required = True
    end
    object Faturas_CarregadasVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDAS"."VENDEDOR"'
      Required = True
    end
    object Faturas_CarregadasNUM_NF: TIntegerField
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object Faturas_CarregadasORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object Faturas_CarregadasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object Faturas_CarregadasDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS_CARREGAR"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregadasTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS_CARREGAR"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregadasVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"FAT_VENDAS_CARREGAR"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Faturas_CarregadasPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"FAT_VENDAS_CARREGAR"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SelCentro: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 512
    Top = 3
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelCentroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      Required = True
    end
    object SelCentroNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Required = True
      Size = 50
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
      '         cpf_cnpj'
      'from Valida_Cliente ( :CNPJ, :CODIGO )')
    Left = 348
    Top = 51
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
    object Valida_ClienteCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"VALIDA_CLIENTE"."CPF_CNPJ"'
      Size = 15
    end
  end
  object Valida_Fornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select '
      '          PESSOA_FJ,'
      '          NOME,'
      '          CONTABILIDADE'
      'from Valida_Fornecedor ( :CNPJ, :CODIGO )')
    Left = 428
    Top = 102
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
    object Valida_FornecedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VALIDA_FORNECEDOR"."PESSOA_FJ"'
    end
    object Valida_FornecedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_FORNECEDOR"."NOME"'
      Size = 50
    end
    object Valida_FornecedorCONTABILIDADE: TIntegerField
      FieldName = 'CONTABILIDADE'
      Origin = '"VALIDA_FORNECEDOR"."CONTABILIDADE"'
    end
  end
  object SelBoleto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'select'
      '      ACEITE_ALT, '
      '      ACEITE_DST, '
      '      BANCO, '
      '      DATA_ALT, '
      '      DATA_DST,'
      '      DOCUMENTO_ALT, '
      '      DOCUMENTO_DST, '
      '      DTPROCESSAMENTO_ALT, '
      '      DTPROCESSAMENTO_DST, '
      '      ESPECIE_ALT, '
      '      ESPECIE_DST, '
      '      INSTRUCOES_ALT, '
      '      INSTRUCOES_DST, '
      '      SACADO_ALT, '
      '      SACADO_DST, '
      '      TAMANHOPAGINA, '
      '      VALOR_ALT, '
      '      VALOR_DST, '
      '      VENCIMENTO_ALT, '
      '      VENCIMENTO_DST,'
      '      PORTA_IMPRESSORA '
      'from VER_SIS_BOLETOBANCARIO ( :CNPJ, :LOCAL )')
    Left = 512
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'LOCAL'
        ParamType = ptUnknown
      end>
    object SelBoletoACEITE_ALT: TIntegerField
      FieldName = 'ACEITE_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."ACEITE_ALT"'
    end
    object SelBoletoACEITE_DST: TIntegerField
      FieldName = 'ACEITE_DST'
      Origin = '"SIS_BOLETOBANCARIO"."ACEITE_DST"'
    end
    object SelBoletoBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"SIS_BOLETOBANCARIO"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelBoletoDATA_ALT: TIntegerField
      FieldName = 'DATA_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DATA_ALT"'
    end
    object SelBoletoDATA_DST: TIntegerField
      FieldName = 'DATA_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DATA_DST"'
    end
    object SelBoletoDOCUMENTO_ALT: TIntegerField
      FieldName = 'DOCUMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DOCUMENTO_ALT"'
    end
    object SelBoletoDOCUMENTO_DST: TIntegerField
      FieldName = 'DOCUMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DOCUMENTO_DST"'
    end
    object SelBoletoDTPROCESSAMENTO_ALT: TIntegerField
      FieldName = 'DTPROCESSAMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."DTPROCESSAMENTO_ALT"'
    end
    object SelBoletoDTPROCESSAMENTO_DST: TIntegerField
      FieldName = 'DTPROCESSAMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."DTPROCESSAMENTO_DST"'
    end
    object SelBoletoESPECIE_ALT: TIntegerField
      FieldName = 'ESPECIE_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."ESPECIE_ALT"'
    end
    object SelBoletoESPECIE_DST: TIntegerField
      FieldName = 'ESPECIE_DST'
      Origin = '"SIS_BOLETOBANCARIO"."ESPECIE_DST"'
    end
    object SelBoletoINSTRUCOES_ALT: TIntegerField
      FieldName = 'INSTRUCOES_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."INSTRUCOES_ALT"'
    end
    object SelBoletoINSTRUCOES_DST: TIntegerField
      FieldName = 'INSTRUCOES_DST'
      Origin = '"SIS_BOLETOBANCARIO"."INSTRUCOES_DST"'
    end
    object SelBoletoSACADO_ALT: TIntegerField
      FieldName = 'SACADO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."SACADO_ALT"'
    end
    object SelBoletoSACADO_DST: TIntegerField
      FieldName = 'SACADO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."SACADO_DST"'
    end
    object SelBoletoTAMANHOPAGINA: TIntegerField
      FieldName = 'TAMANHOPAGINA'
      Origin = '"SIS_BOLETOBANCARIO"."TAMANHOPAGINA"'
    end
    object SelBoletoVALOR_ALT: TIntegerField
      FieldName = 'VALOR_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."VALOR_ALT"'
    end
    object SelBoletoVALOR_DST: TIntegerField
      FieldName = 'VALOR_DST'
      Origin = '"SIS_BOLETOBANCARIO"."VALOR_DST"'
    end
    object SelBoletoVENCIMENTO_ALT: TIntegerField
      FieldName = 'VENCIMENTO_ALT'
      Origin = '"SIS_BOLETOBANCARIO"."VENCIMENTO_ALT"'
    end
    object SelBoletoVENCIMENTO_DST: TIntegerField
      FieldName = 'VENCIMENTO_DST'
      Origin = '"SIS_BOLETOBANCARIO"."VENCIMENTO_DST"'
    end
    object SelBoletoPORTA_IMPRESSORA: TIBStringField
      FieldName = 'PORTA_IMPRESSORA'
      Origin = '"VER_SIS_BOLETOBANCARIO"."PORTA_IMPRESSORA"'
      Size = 50
    end
  end
  object Boleto: TRDprint
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
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = True
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 115
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
    CaptionSetup = 'Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = True
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 19
    Top = 522
  end
  object SelPlano: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'select'
      '         CNPJ, '
      '         BANCO, '
      '         CODIGO, '
      '         CONTA, '
      '         CONTAPAI, '
      '         NOME, '
      '         ULTIMO_CHEQUE,'
      '         AGENCIA            ,'
      '         DV_AGENCIA ,'
      '         CONTA_CORRENTE,'
      '         DV_CONTA_CORRENTE,'
      '         DV_AGENCIA_CONTA '
      'from CTB_PLANOCONTA'
      'WHERE CNPJ = :CNPJ'
      'AND BANCO IS NOT NULL'
      'Order By NOME')
    Left = 512
    Top = 252
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
    object SelPlanoULTIMO_CHEQUE: TIntegerField
      FieldName = 'ULTIMO_CHEQUE'
      Origin = '"CTB_PLANOCONTA"."ULTIMO_CHEQUE"'
    end
    object SelPlanoAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"CTB_PLANOCONTA"."AGENCIA"'
      Size = 10
    end
    object SelPlanoDV_AGENCIA: TIBStringField
      FieldName = 'DV_AGENCIA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoCONTA_CORRENTE: TIBStringField
      FieldName = 'CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."CONTA_CORRENTE"'
      Size = 15
    end
    object SelPlanoDV_CONTA_CORRENTE: TIBStringField
      FieldName = 'DV_CONTA_CORRENTE'
      Origin = '"CTB_PLANOCONTA"."DV_CONTA_CORRENTE"'
      FixedChar = True
      Size = 3
    end
    object SelPlanoDV_AGENCIA_CONTA: TIBStringField
      FieldName = 'DV_AGENCIA_CONTA'
      Origin = '"CTB_PLANOCONTA"."DV_AGENCIA_CONTA"'
      FixedChar = True
      Size = 3
    end
  end
  object VerReceberConvenio: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerReceberConvenioCalcFields
    DataSource = DmApp.DsMenu
    SQL.Strings = (
      'Select * From Ver_Receber_Convenio ( :CNPJ, :CONVENIO )')
    Left = 22
    Top = 51
    ParamData = <
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end
      item
        DataType = ftUnknown
        Name = 'CONVENIO'
        ParamType = ptUnknown
      end>
    object VerReceberConvenioCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object VerReceberConvenioANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object VerReceberConvenioPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object VerReceberConvenioDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object VerReceberConvenioPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerReceberConvenioHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object VerReceberConvenioVALOR: TIBBCDField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberConvenioBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberConvenioORIGEM: TIBStringField
      DisplayLabel = 'Or'
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerReceberConvenioCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object VerReceberConvenioANO_VN: TSmallintField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object VerReceberConvenioAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object VerReceberConvenioENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object VerReceberConvenioNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object VerReceberConvenioCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object VerReceberConvenioBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object VerReceberConvenioCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerReceberConvenioUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerReceberConvenioCOD_END: TIntegerField
      DisplayLabel = 'End'
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object VerReceberConvenioCOD_CID: TIntegerField
      DisplayLabel = 'Cid'
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object VerReceberConvenioCOD_BAI: TIntegerField
      DisplayLabel = 'Bai'
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object VerReceberConvenioFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object VerReceberConvenioCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object VerReceberConvenioSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberConvenioVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberConvenioTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberConvenioJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberConvenioDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberConvenioTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VerReceberConvenioNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object VerReceberConvenioNUMBOLETO: TIntegerField
      DisplayLabel = 'Num Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object VerReceberConvenioCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_RECEBER_CONVENIO"."CONVENIADO"'
    end
    object VerReceberConvenioNOMECONVENIADO: TIBStringField
      DisplayLabel = 'Nome Conveniado'
      FieldName = 'NOMECONVENIADO'
      Origin = '"VER_RECEBER_CONVENIO"."NOMECONVENIADO"'
      Size = 50
    end
    object VerReceberConvenioCPF_CGCCONVENIADO: TIBStringField
      DisplayLabel = 'Cpf/Cnpj Conveniado'
      FieldName = 'CPF_CGCCONVENIADO'
      Origin = '"VER_RECEBER_CONVENIO"."CPF_CGCCONVENIADO"'
      Size = 15
    end
    object VerReceberConvenioDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_EMISSAO"'
    end
    object VerReceberConvenioDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_VENCTO"'
    end
    object VerReceberConvenioDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_LANCTO"'
    end
    object VerReceberConvenioDT_AVISO: TDateTimeField
      DisplayLabel = 'Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_AVISO"'
    end
    object VerReceberConvenioFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER_CONVENIO"."FATURA"'
    end
    object VerReceberConvenioPARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER_CONVENIO"."PARCIAL"'
      Precision = 18
      Size = 4
    end
    object VerReceberConvenioDATA_ULT_BAIXA: TDateTimeField
      DisplayLabel = #218'lt. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER_CONVENIO"."DATA_ULT_BAIXA"'
    end
    object VerReceberConvenioCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER_CONVENIO"."COBRADOR"'
    end
    object VerReceberConvenioLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER_CONVENIO"."LOCAL"'
    end
    object VerReceberConvenioAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object VerReceberConvenioJUROS_CALCULADORS: TFloatField
      DisplayLabel = 'Juros'
      FieldKind = fkCalculated
      FieldName = 'JUROS_CALCULADORS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberConvenioTOTAL_NOMINAL: TFloatField
      DisplayLabel = 'Nominal'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_NOMINAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberConvenioARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"VER_RECEBER_CONVENIO"."ARQUIVO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberConvenioNOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"VER_RECEBER_CONVENIO"."NOME"'
      Size = 50
    end
  end
  object Ficha_Venda: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Ficha_VendaCalcFields
    SQL.Strings = (
      'SELECT'
      '    PRODUTO ,'
      '    GRUPO ,'
      '    SEQUENCIA ,'
      '    QUANTIDADE ,'
      '    PRC_UNITARIO ,'
      '    PRC_CUSTO ,'
      '    ICM ,'
      '    ICM_SUBS  ,'
      '    IPI ,'
      '    VOLUME ,'
      '    PESO ,'
      '    DESCONTO ,'
      '    PORC_DESC ,'
      '    UNIDADE ,'
      '    PRC_UNIT_ORIGINAL ,'
      '    NOME_PRODUTO ,'
      '    ALIQUOTA ,'
      '    PRODUTOFIS ,'
      '    NOME_FIS ,'
      '    CTE ,'
      '    CTIE ,'
      '    ORIGEM ,'
      '    REDUCAO ,'
      '    SUBUNIDADE '
      'from VER_FAT_VENDAS_PRODUTOS_FICHA ( :CNPJ, :CODIGO )')
    Left = 512
    Top = 101
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
    object Ficha_VendaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."PRODUTO"'
      Size = 15
    end
    object Ficha_VendaGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."GRUPO"'
    end
    object Ficha_VendaSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."SEQUENCIA"'
    end
    object Ficha_VendaQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Ficha_VendaPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ficha_VendaNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."NOME_PRODUTO"'
      Size = 50
    end
    object Ficha_VendaALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Ficha_VendaPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."PRODUTOFIS"'
      Size = 15
    end
    object Ficha_VendaNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."NOME_FIS"'
      Size = 50
    end
    object Ficha_VendaCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."CTE"'
    end
    object Ficha_VendaCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."CTIE"'
    end
    object Ficha_VendaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."ORIGEM"'
    end
    object Ficha_VendaREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."REDUCAO"'
    end
    object Ficha_VendaSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_PRODUTOS_FICHA"."SUBUNIDADE"'
    end
    object Ficha_VendaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object SelBanco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    SQL.Strings = (
      'select '
      '         BOLETO, '
      '         CODIGO, '
      '         NOME '
      'from FIN_BANCO'
      'order by NOME')
    Left = 608
    Top = 151
    object SelBancoBOLETO: TIntegerField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BANCO"."BOLETO"'
    end
    object SelBancoCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BANCO"."CODIGO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelBancoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object VerFatura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerFaturaCalcFields
    SQL.Strings = (
      'Select CODIGO,'
      '           PESSOA_FJ,'
      '           DATA,'
      '           VALOR,'
      '           VALOR_ORIGINAL,'
      '           DESCONTO, '
      '           JUROS,'
      '           VENCIMENTO,'
      '           HISTORICO,'
      '           NOME, '
      '           ENDERECO, '
      '           NUMERO, '
      '           CIDADE, '
      '           BAIRRO, '
      '           CEP, '
      '           UF, '
      '           COD_END, '
      '           COD_BAI, '
      '           COD_CID, '
      '           FONE, '
      '           CPF_CGC,'
      '           BOLETO, '
      '           DUPLICATA,'
      '           BANCO,'
      '           TIPO,'
      '           ENVIADA,'
      '           AGRUPADORA,'
      '           NOME_BANCO,'
      '           OBS,'
      '           DATA_BAIXA,'
      '           USUARIO'
      'from VER_FATURA_EMITIDA ( :CNPJ, :COD )'
      '           ')
    Left = 608
    Top = 204
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
    object VerFaturaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA"."CODIGO"'
    end
    object VerFaturaPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA"."PESSOA_FJ"'
    end
    object VerFaturaVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FATURA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturaJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FATURA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturaDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA"."HISTORICO"'
      Size = 100
    end
    object VerFaturaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FATURA"."NOME"'
      Size = 50
    end
    object VerFaturaENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA"."ENDERECO"'
      Size = 50
    end
    object VerFaturaNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA"."NUMERO"'
      Size = 15
    end
    object VerFaturaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA"."CIDADE"'
      Size = 50
    end
    object VerFaturaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA"."BAIRRO"'
      Size = 50
    end
    object VerFaturaCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_FATURA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerFaturaUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_FATURA"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerFaturaCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_FATURA"."COD_END"'
    end
    object VerFaturaCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_FATURA"."COD_BAI"'
    end
    object VerFaturaCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_FATURA"."COD_CID"'
    end
    object VerFaturaFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FATURA"."FONE"'
      Size = 14
    end
    object VerFaturaCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA"."CPF_CGC"'
      Size = 15
    end
    object VerFaturaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerFaturaBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_FATURA_EMITIDA"."BOLETO"'
      Size = 30
    end
    object VerFaturaBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_FATURA_EMITIDA"."BANCO"'
      Size = 3
    end
    object VerFaturaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_FATURA_EMITIDA"."TIPO"'
      Size = 11
    end
    object VerFaturaENVIADA: TIBStringField
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA_EMITIDA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object VerFaturaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"VER_FATURA_EMITIDA"."OBS"'
      Size = 30
    end
    object VerFaturaAGRUPADORA: TIntegerField
      DisplayLabel = 'Agrupadora'
      FieldName = 'AGRUPADORA'
      Origin = '"VER_FATURA_EMITIDA"."AGRUPADORA"'
    end
    object VerFaturaNOME_BANCO: TIBStringField
      DisplayLabel = 'Nome Banco'
      FieldName = 'NOME_BANCO'
      Origin = '"VER_FATURA_EMITIDA"."NOME_BANCO"'
      Size = 50
    end
    object VerFaturaDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"VER_FATURA_EMITIDA"."DUPLICATA"'
      Size = 30
    end
    object VerFaturaVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_FATURA_EMITIDA"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerFaturaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FATURA_EMITIDA"."DATA"'
    end
    object VerFaturaVENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA_EMITIDA"."VENCIMENTO"'
    end
    object VerFaturaDATA_BAIXA: TDateTimeField
      DisplayLabel = 'Data Baixa'
      FieldName = 'DATA_BAIXA'
      Origin = '"VER_FATURA_EMITIDA"."DATA_BAIXA"'
    end
    object VerFaturaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"VER_FATURA_EMITIDA"."USUARIO"'
      Size = 14
    end
  end
  object VERFATURASBAIXADAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VERFATURASBAIXADASCalcFields
    SQL.Strings = (
      'Select CODIGO,'
      '           PESSOA_FJ,'
      '           DATA,'
      '           VALOR,'
      '           VALOR_ORIGINAL,'
      '           DESCONTO, '
      '           JUROS,'
      '           VENCIMENTO,'
      '           HISTORICO,'
      '           NOME, '
      '           ENDERECO, '
      '           NUMERO, '
      '           CIDADE, '
      '           BAIRRO, '
      '           CEP, '
      '           UF, '
      '           COD_END, '
      '           COD_BAI, '
      '           COD_CID, '
      '           FONE, '
      '           CPF_CGC,'
      '           BOLETO, '
      '           DUPLICATA,'
      '           BANCO,'
      '           TIPO,'
      '           ENVIADA,'
      '           AGRUPADORA,'
      '           OBS'
      'from VER_FATURA_PESSOA_BAIXADA ( :CNPJ, :COD )'
      '           ')
    Left = 512
    Top = 204
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
    object VERFATURASBAIXADASCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA"."CODIGO"'
    end
    object VERFATURASBAIXADASPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA"."PESSOA_FJ"'
    end
    object VERFATURASBAIXADASDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FATURA"."DATA"'
    end
    object VERFATURASBAIXADASVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FATURA"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VERFATURASBAIXADASDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VERFATURASBAIXADASJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FATURA"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VERFATURASBAIXADASVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA"."VENCIMENTO"'
    end
    object VERFATURASBAIXADASHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA"."HISTORICO"'
      Size = 100
    end
    object VERFATURASBAIXADASNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FATURA"."NOME"'
      Size = 50
    end
    object VERFATURASBAIXADASENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA"."ENDERECO"'
      Size = 50
    end
    object VERFATURASBAIXADASNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA"."NUMERO"'
      Size = 15
    end
    object VERFATURASBAIXADASCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA"."CIDADE"'
      Size = 50
    end
    object VERFATURASBAIXADASBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA"."BAIRRO"'
      Size = 50
    end
    object VERFATURASBAIXADASCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_FATURA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VERFATURASBAIXADASUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_FATURA"."UF"'
      FixedChar = True
      Size = 2
    end
    object VERFATURASBAIXADASCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_FATURA"."COD_END"'
    end
    object VERFATURASBAIXADASCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_FATURA"."COD_BAI"'
    end
    object VERFATURASBAIXADASCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_FATURA"."COD_CID"'
    end
    object VERFATURASBAIXADASFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FATURA"."FONE"'
      Size = 14
    end
    object VERFATURASBAIXADASCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA"."CPF_CGC"'
      Size = 15
    end
    object VERFATURASBAIXADASTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VERFATURASBAIXADASBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_FATURA_EMITIDA"."BOLETO"'
      Size = 30
    end
    object VERFATURASBAIXADASBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_FATURA_EMITIDA"."BANCO"'
      Size = 3
    end
    object VERFATURASBAIXADASTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_FATURA_EMITIDA"."TIPO"'
      Size = 11
    end
    object VERFATURASBAIXADASENVIADA: TIBStringField
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA_EMITIDA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object VERFATURASBAIXADASOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"VER_FATURA_EMITIDA"."OBS"'
      Size = 30
    end
    object VERFATURASBAIXADASAGRUPADORA: TIntegerField
      FieldName = 'AGRUPADORA'
      Origin = '"VER_FATURA_PESSOA_BAIXADA"."AGRUPADORA"'
    end
    object VERFATURASBAIXADASDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"VER_FATURA_PESSOA"."DUPLICATA"'
      Size = 30
    end
    object VERFATURASBAIXADASVALOR_ORIGINAL: TIBBCDField
      DisplayLabel = 'Valor Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_FATURA_PESSOA_BAIXADA"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Administradora: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = Contas_ReceberAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    OnNewRecord = AdministradoraNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_ADMINISTRADORA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_ADMINISTRADORA'
      
        '  (CNPJ, CODIGO, DIASREEMBOLSO, NOME, TAXA, TAXA_PARCELADO, TAXA' +
        '_DEBITO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DIASREEMBOLSO, :NOME, :TAXA, :TAXA_PARCELADO' +
        ', :TAXA_DEBITO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  DIASREEMBOLSO,'
      '  TAXA,'
      '  TAXA_PARCELADO,'
      '  TAXA_DEBITO'
      'from FIN_ADMINISTRADORA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ,'
      '          CODIGO, '
      '          DIASREEMBOLSO, '
      '          NOME, '
      '          TAXA,'
      '          TAXA_PARCELADO,'
      '          TAXA_DEBITO'
      'from FIN_ADMINISTRADORA'
      'where CNPJ = :CNPJ'
      'order by NOME')
    ModifySQL.Strings = (
      'update FIN_ADMINISTRADORA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DIASREEMBOLSO = :DIASREEMBOLSO,'
      '  NOME = :NOME,'
      '  TAXA = :TAXA,'
      '  TAXA_PARCELADO = :TAXA_PARCELADO,'
      '  TAXA_DEBITO = :TAXA_DEBITO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'FIN_ADMINISTRADORA_GE'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 22
    Top = 3
    object AdministradoraCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_ADMINISTRADORA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object AdministradoraCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_ADMINISTRADORA"."CODIGO"'
      Required = True
    end
    object AdministradoraDIASREEMBOLSO: TIntegerField
      DisplayLabel = 'Dias '
      FieldName = 'DIASREEMBOLSO'
      Origin = '"FIN_ADMINISTRADORA"."DIASREEMBOLSO"'
      Required = True
    end
    object AdministradoraNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_ADMINISTRADORA"."NOME"'
      Required = True
      Size = 50
    end
    object AdministradoraTAXA: TFloatField
      DisplayLabel = 'Taxa'
      FieldName = 'TAXA'
      Origin = '"FIN_ADMINISTRADORA"."TAXA"'
      DisplayFormat = '% ###,##0.00'
    end
    object AdministradoraTAXA_PARCELADO: TFloatField
      DisplayLabel = 'Parcelado'
      FieldName = 'TAXA_PARCELADO'
      Origin = '"FIN_ADMINISTRADORA"."TAXA_PARCELADO"'
      DisplayFormat = '% ###,##0.00'
    end
    object AdministradoraTAXA_DEBITO: TFloatField
      DisplayLabel = 'D'#233'bito'
      FieldName = 'TAXA_DEBITO'
      Origin = '"FIN_ADMINISTRADORA"."TAXA_DEBITO"'
      DisplayFormat = '% ###,##0.00'
    end
  end
  object Cheque: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = ChequeAfterInsert
    AfterPost = ChequeAfterPost
    BeforeDelete = ChequeBeforeDelete
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = ChequeCalcFields
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
      
        '   PESSOA_FJ, PRE_DATE, VALOR, VENDA, NOME, DATA_CONCILIACAO, TI' +
        'PO, DATA_ACERTO, '
      
        '   PLANILHA, DIGITO_AGENCIA, DIGITO_CHEQUE, DATA_CAIXA, USUARIO,' +
        ' COMPENSACAO, '
      
        '   DIGITO_CONTA, DATA_DEVOLUCAO, MOTIVO_DEVOLUCAO, VEZES_DEVOLUC' +
        'AO, ORIGEM, '
      '   TURNO, LOCAIS, PROCESSADO, CMC7)'
      'values'
      
        '  (:AGENCIA, :BANCO, :CHEQUE, :CNPJ, :CONCILIADO, :CONTA, :EMISS' +
        'AO, :HISTORICO, '
      
        '   :PESSOA_FJ, :PRE_DATE, :VALOR, :VENDA, :NOME, :DATA_CONCILIAC' +
        'AO, :TIPO, '
      
        '   :DATA_ACERTO, :PLANILHA, :DIGITO_AGENCIA, :DIGITO_CHEQUE, :DA' +
        'TA_CAIXA, '
      
        '   :USUARIO, :COMPENSACAO, :DIGITO_CONTA, :DATA_DEVOLUCAO, :MOTI' +
        'VO_DEVOLUCAO, '
      
        '   :VEZES_DEVOLUCAO, :ORIGEM, :TURNO, :LOCAIS, :PROCESSADO, :CMC' +
        '7)')
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
      '  TURNO,'
      '  LOCAIS,'
      '  PROCESSADO,'
      '  EXCLUIDO,'
      '  CMC7'
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
      '          VENDA ,'
      '          NOME,'
      '          DATA_CONCILIACAO,'
      '          TIPO,'
      '          DATA_ACERTO,'
      '          PLANILHA,'
      '          DIGITO_AGENCIA,'
      '          DIGITO_CHEQUE,'
      '          DATA_CAIXA,'
      '          USUARIO,'
      '          COMPENSACAO,'
      '          DIGITO_CONTA,'
      '          DATA_DEVOLUCAO,'
      '          MOTIVO_DEVOLUCAO,'
      '          VEZES_DEVOLUCAO,'
      '          ORIGEM,'
      '          TURNO,'
      '          LOCAIS,'
      '          PROCESSADO,'
      '          CMC7,'
      '          id'
      'from FIN_CHEQUES'
      'Where CNPJ = :CNPJ and TIPO = '#39'NO'#39)
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
      '  TIPO = :TIPO,'
      '  DATA_ACERTO = :DATA_ACERTO,'
      '  PLANILHA = :PLANILHA,'
      '  DIGITO_AGENCIA = :DIGITO_AGENCIA,'
      '  DIGITO_CHEQUE = :DIGITO_CHEQUE,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  USUARIO = :USUARIO,'
      '  COMPENSACAO = :COMPENSACAO,'
      '  DIGITO_CONTA = :DIGITO_CONTA,'
      '  DATA_DEVOLUCAO = :DATA_DEVOLUCAO,'
      '  MOTIVO_DEVOLUCAO = :MOTIVO_DEVOLUCAO,'
      '  VEZES_DEVOLUCAO = :VEZES_DEVOLUCAO,'
      '  ORIGEM = :ORIGEM,'
      '  TURNO = :TURNO,'
      '  LOCAIS = :LOCAIS,'
      '  PROCESSADO = :PROCESSADO,'
      '  CMC7 = :CMC7'
      'where'
      '  BANCO = :OLD_BANCO and'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    Left = 698
    Top = 513
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
      Tag = 1
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object ChequeCHEQUE: TIBStringField
      Tag = 1
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object ChequeCONCILIADO: TIBStringField
      Tag = 1
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ChequeCONTA: TIBStringField
      Tag = 1
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object ChequeEMISSAO: TDateTimeField
      Tag = 1
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
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
      OnValidate = ChequePESSOA_FJValidate
    end
    object ChequePRE_DATE: TDateTimeField
      Tag = 1
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
      Tag = 1
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object ChequeNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object ChequeDATA_CONCILIACAO: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object ChequeTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      OnGetText = ChequeTIPOGetText
      OnSetText = ChequeTIPOSetText
      FixedChar = True
      Size = 2
    end
    object ChequeDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Dt. Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
    end
    object ChequePLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_CHEQUES"."PLANILHA"'
    end
    object ChequeDIGITO_AGENCIA: TIBStringField
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object ChequeDIGITO_CHEQUE: TIBStringField
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object ChequeDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FIN_CHEQUES"."DATA_CAIXA"'
    end
    object ChequeUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FIN_CHEQUES"."USUARIO"'
    end
    object ChequeCOMPENSACAO: TIBStringField
      FieldName = 'COMPENSACAO'
      Origin = '"FIN_CHEQUES"."COMPENSACAO"'
      FixedChar = True
      Size = 3
    end
    object ChequeDIGITO_CONTA: TIBStringField
      FieldName = 'DIGITO_CONTA'
      Origin = '"FIN_CHEQUES"."DIGITO_CONTA"'
      FixedChar = True
      Size = 1
    end
    object ChequeDATA_DEVOLUCAO: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."DATA_DEVOLUCAO"'
    end
    object ChequeMOTIVO_DEVOLUCAO: TIntegerField
      FieldName = 'MOTIVO_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."MOTIVO_DEVOLUCAO"'
    end
    object ChequeVEZES_DEVOLUCAO: TIntegerField
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."VEZES_DEVOLUCAO"'
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
    object ChequeLOCAIS: TIntegerField
      DisplayLabel = 'Locais'
      FieldName = 'LOCAIS'
      Origin = '"FIN_CHEQUES"."LOCAIS"'
    end
    object ChequeDESCRICAO_LOCAIS: TStringField
      FieldKind = fkCalculated
      FieldName = 'DESCRICAO_LOCAIS'
      Calculated = True
    end
    object ChequePROCESSADO: TIBStringField
      DisplayLabel = 'Prc'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object ChequeCMC7: TIBStringField
      FieldName = 'CMC7'
      Origin = '"FIN_CHEQUES"."CMC7"'
      Size = 50
    end
    object ChequeID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_CHEQUES"."ID"'
    end
  end
  object Moeda: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    DeleteSQL.Strings = (
      'delete from FIN_MOEDA'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_MOEDA'
      '  (CODIGO, NOME, SIGLA, UTILIZA_INDEXADOR)'
      'values'
      '  (:CODIGO, :NOME, :SIGLA, :UTILIZA_INDEXADOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CODIGO,'
      '  SIGLA,'
      '  NOME,'
      '  UTILIZA_INDEXADOR'
      'from FIN_MOEDA '
      'where'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select * '
      'from FIN_MOEDA')
    ModifySQL.Strings = (
      'update FIN_MOEDA'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  SIGLA = :SIGLA,'
      '  UTILIZA_INDEXADOR = :UTILIZA_INDEXADOR'
      'where'
      '  CODIGO = :OLD_CODIGO')
    GeneratorField.Field = 'CODIGO'
    GeneratorField.Generator = 'GEN_FIN_MOEDA_ID'
    GeneratorField.ApplyEvent = gamOnPost
    Left = 22
    Top = 252
    object MoedaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_MOEDA"."CODIGO"'
      Required = True
    end
    object MoedaNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      DisplayWidth = 20
      FieldName = 'NOME'
      Origin = '"FIN_MOEDA"."NOME"'
      Required = True
    end
    object MoedaSIGLA: TIBStringField
      Tag = 1
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"FIN_MOEDA"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object MoedaUTILIZA_INDEXADOR: TIBStringField
      FieldName = 'UTILIZA_INDEXADOR'
      Origin = '"FIN_MOEDA"."UTILIZA_INDEXADOR"'
      FixedChar = True
      Size = 1
    end
  end
  object Cotacoes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FIN_COTACOES'
      'where'
      '  DATA = :OLD_DATA and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into FIN_COTACOES'
      '  (DATA, SIGLA, VALOR)'
      'values'
      '  (:DATA, :SIGLA, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  DATA,'
      '  SIGLA,'
      '  VALOR'
      'from FIN_COTACOES '
      'where'
      '  DATA = :DATA and'
      '  SIGLA = :SIGLA')
    SelectSQL.Strings = (
      'select DATA, SIGLA, VALOR from FIN_COTACOES'
      'Where SIGLA = :SIGLA')
    ModifySQL.Strings = (
      'update FIN_COTACOES'
      'set'
      '  DATA = :DATA,'
      '  SIGLA = :SIGLA,'
      '  VALOR = :VALOR'
      'where'
      '  DATA = :OLD_DATA and'
      '  SIGLA = :OLD_SIGLA')
    DataSource = DsMoeda
    Left = 22
    Top = 304
    object CotacoesDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_COTACOES"."DATA"'
    end
    object CotacoesSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"FIN_COTACOES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CotacoesVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_COTACOES"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object DsMoeda: TDataSource
    AutoEdit = False
    DataSet = Moeda
    Left = 203
    Top = 514
  end
  object Ver_Valores_Adicionais: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          DOCUMENTO, '
      '          HISTORICO, '
      '          VALOR '
      'from FIN_FATURAS_ADICIONAL'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    Left = 608
    Top = 252
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
    object Ver_Valores_AdicionaisCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FATURAS_ADICIONAL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ver_Valores_AdicionaisCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FATURAS_ADICIONAL"."CODIGO"'
      Required = True
    end
    object Ver_Valores_AdicionaisDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_FATURAS_ADICIONAL"."DOCUMENTO"'
      Required = True
    end
    object Ver_Valores_AdicionaisHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_FATURAS_ADICIONAL"."HISTORICO"'
      Size = 100
    end
    object Ver_Valores_AdicionaisVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_FATURAS_ADICIONAL"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
  end
  object Ver_NfCf_Venda: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VER_NFCF_VENDA'
    Left = 608
    Top = 461
  end
  object SelFatura_Futura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
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
      '    CPF_CGC'
      
        'FROM VER_FAT_VENDAS_FATURA_FUTURAS ( :CNPJ, :DINI, :DFIM, :PESSO' +
        'A )'
      'order by DATA'
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
    Left = 115
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object SelFatura_FuturaCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
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
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelFatura_FuturaTICKET: TIBBCDField
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
    object SelFatura_FuturaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA"'
    end
    object SelFatura_FuturaDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA_CAIXA"'
    end
  end
  object Manutencao_Fatura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = Manutencao_FaturaAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    BeforePost = Manutencao_FaturaBeforePost
    OnCalcFields = Manutencao_FaturaCalcFields
    OnNewRecord = Manutencao_FaturaNewRecord
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          DATA, '
      '          DESCONTO, '
      '          HISTORICO, '
      '          JUROS, '
      '          PESSOA_FJ, '
      '          VALOR, '
      '          VENCIMENTO,'
      '          NOME,'
      '          BAIXADA,'
      '          DUPLICATA,'
      '          BOLETO,'
      '          BANCO,'
      '          TIPO,'
      '          ENVIADA,'
      '           AGRUPADORA,'
      '          OBS,'
      '          DATA_BAIXA,'
      '          USUARIO,'
      '          VALOR_ORIGINAL,'
      '          BAIXAS_PARCIAIS,'
      '          ULTIMA_BX_PARCIAL,'
      '          ORIGEM'
      'from FIN_FATURAS'
      'where CNPJ = :CNPJ AND BAIXADA = :BAIXADA ')
    UpdateObject = UpdFatura
    Left = 22
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'BAIXADA'
        ParamType = ptUnknown
      end>
    object Manutencao_FaturaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FATURAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Manutencao_FaturaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FATURAS"."CODIGO"'
      Required = True
    end
    object Manutencao_FaturaDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_FATURAS"."DATA"'
    end
    object Manutencao_FaturaDESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"FIN_FATURAS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object Manutencao_FaturaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_FATURAS"."HISTORICO"'
      Size = 100
    end
    object Manutencao_FaturaJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_FATURAS"."JUROS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Manutencao_FaturaPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_FATURAS"."PESSOA_FJ"'
      Required = True
      OnValidate = Manutencao_FaturaPESSOA_FJValidate
    end
    object Manutencao_FaturaVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_FATURAS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Manutencao_FaturaVENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCIMENTO'
      Origin = '"FIN_FATURAS"."VENCIMENTO"'
    end
    object Manutencao_FaturaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_FATURAS"."NOME"'
      Size = 50
    end
    object Manutencao_FaturaBAIXADA: TIBStringField
      DisplayLabel = 'Baixada'
      FieldName = 'BAIXADA'
      Origin = '"FIN_FATURAS"."BAIXADA"'
      FixedChar = True
      Size = 1
    end
    object Manutencao_FaturaBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_FATURAS"."BOLETO"'
      Size = 30
    end
    object Manutencao_FaturaBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_FATURAS"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Manutencao_FaturaTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_FATURAS"."TIPO"'
      Size = 11
    end
    object Manutencao_FaturaENVIADA: TIBStringField
      DisplayLabel = 'Enviada'
      FieldName = 'ENVIADA'
      Origin = '"FIN_FATURAS"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object Manutencao_FaturaOBS: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBS'
      Origin = '"FIN_FATURAS"."OBS"'
      Size = 30
    end
    object Manutencao_FaturaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Manutencao_FaturaAGRUPADORA: TIntegerField
      DisplayLabel = 'Agrupadora'
      FieldName = 'AGRUPADORA'
      Origin = '"FIN_FATURAS"."AGRUPADORA"'
    end
    object Manutencao_FaturaDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"FIN_FATURAS"."DUPLICATA"'
      Size = 30
    end
    object Manutencao_FaturaDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
      Origin = '"FIN_FATURAS"."DATA_BAIXA"'
    end
    object Manutencao_FaturaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"FIN_FATURAS"."USUARIO"'
      FixedChar = True
      Size = 14
    end
    object Manutencao_FaturaVALOR_ORIGINAL: TFloatField
      DisplayLabel = 'Valor Original'
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"FIN_FATURAS"."VALOR_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
    end
    object Manutencao_FaturaBAIXAS_PARCIAIS: TFloatField
      DisplayLabel = 'Baixas Parciais'
      FieldName = 'BAIXAS_PARCIAIS'
      Origin = '"FIN_FATURAS"."BAIXAS_PARCIAIS"'
      DisplayFormat = '###,###,##0.00'
    end
    object Manutencao_FaturaULTIMA_BX_PARCIAL: TDateTimeField
      DisplayLabel = #218'lt. Baixa'
      FieldName = 'ULTIMA_BX_PARCIAL'
      Origin = '"FIN_FATURAS"."ULTIMA_BX_PARCIAL"'
    end
    object Manutencao_FaturaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_FATURAS"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
  end
  object UpdFatura: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  PESSOA_FJ,'
      '  DATA,'
      '  VALOR,'
      '  DESCONTO,'
      '  JUROS,'
      '  VENCIMENTO,'
      '  HISTORICO,'
      '  NOME,'
      '  BAIXADA,'
      '  DUPLICATA,'
      '  BOLETO,'
      '  BANCO,'
      '  TIPO,'
      '  ENVIADA,'
      '  OBS,'
      '  MOEDA1,'
      '  MOEDA2,'
      '  AGRUPADORA,'
      '  DATA_BAIXA,'
      '  USUARIO,'
      '  VALOR_ORIGINAL,'
      '  BAIXAS_PARCIAIS,'
      '  ULTIMA_BX_PARCIAL,'
      '  TURNO,'
      '  ORIGEM'
      'from FIN_FATURAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FIN_FATURAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESCONTO = :DESCONTO,'
      '  HISTORICO = :HISTORICO,'
      '  JUROS = :JUROS,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  VALOR = :VALOR,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  NOME = :NOME,'
      '  BAIXADA = :BAIXADA,'
      '  DUPLICATA = :DUPLICATA,'
      '  BOLETO = :BOLETO,'
      '  BANCO = :BANCO,'
      '  TIPO = :TIPO,'
      '  ENVIADA = :ENVIADA,'
      '  AGRUPADORA = :AGRUPADORA,'
      '  OBS = :OBS,'
      '  DATA_BAIXA = :DATA_BAIXA,'
      '  USUARIO = :USUARIO,'
      '  VALOR_ORIGINAL = :VALOR_ORIGINAL,'
      '  BAIXAS_PARCIAIS = :BAIXAS_PARCIAIS,'
      '  ULTIMA_BX_PARCIAL = :ULTIMA_BX_PARCIAL,'
      '  ORIGEM = :ORIGEM'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_FATURAS'
      
        '  (CNPJ, CODIGO, DATA, DESCONTO, HISTORICO, JUROS, PESSOA_FJ, VA' +
        'LOR, VENCIMENTO, '
      
        '   NOME, BAIXADA, DUPLICATA, BOLETO, BANCO, TIPO, ENVIADA, AGRUP' +
        'ADORA, '
      
        '   OBS, DATA_BAIXA, USUARIO, VALOR_ORIGINAL, BAIXAS_PARCIAIS, UL' +
        'TIMA_BX_PARCIAL, '
      '   ORIGEM)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :DESCONTO, :HISTORICO, :JUROS, :PESSOA' +
        '_FJ, :VALOR, '
      
        '   :VENCIMENTO, :NOME, :BAIXADA, :DUPLICATA, :BOLETO, :BANCO, :T' +
        'IPO, :ENVIADA, '
      
        '   :AGRUPADORA, :OBS, :DATA_BAIXA, :USUARIO, :VALOR_ORIGINAL, :B' +
        'AIXAS_PARCIAIS, '
      '   :ULTIMA_BX_PARCIAL, :ORIGEM)')
    DeleteSQL.Strings = (
      'delete from FIN_FATURAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 115
    Top = 412
  end
  object Cheque_Ctb: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterEdit = Cheque_CtbAfterEdit
    AfterInsert = ChequeAfterInsert
    AfterPost = Cheque_CtbAfterPost
    BeforeDelete = Cheque_CtbBeforeDelete
    BeforeOpen = Contas_ReceberBeforeOpen
    BeforePost = Cheque_CtbBeforePost
    OnNewRecord = Cheque_CtbNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_CHEQUE'
      'where'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into CTB_CHEQUE'
      
        '  (CHEQUE, CNPJ, CONTA, CONTABILIDADE, DATA, HISTORICO, IMPRESSO' +
        ', '
      'NOME, '
      '   ORIGEM, PESSOA_FJ, PLANILHA, VALOR, PRE_DATE, NOMINAL)'
      'values'
      
        '  (:CHEQUE, :CNPJ, :CONTA, :CONTABILIDADE, :DATA, :HISTORICO, :I' +
        'MPRESSO, '
      
        '   :NOME, :ORIGEM, :PESSOA_FJ, :PLANILHA, :VALOR, :PRE_DATE, :NO' +
        'MINAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CHEQUE,'
      '  CONTA,'
      '  DATA,'
      '  VALOR,'
      '  HISTORICO,'
      '  IMPRESSO,'
      '  PESSOA_FJ,'
      '  ORIGEM,'
      '  PLANILHA,'
      '  CONTABILIDADE,'
      '  NOME,'
      '  PRE_DATE,'
      '  NOMINAL'
      'from CTB_CHEQUE '
      'where'
      '  CHEQUE = :CHEQUE and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select CHEQUE, '
      '          CNPJ, '
      '          CONTA, '
      '          CONTABILIDADE, '
      '          DATA, '
      '          HISTORICO, '
      '          IMPRESSO, '
      '          NOME, '
      '          ORIGEM, '
      '          PESSOA_FJ, '
      '          PLANILHA, '
      '          VALOR, pre_date,'
      '         NOMINAL'
      'from CTB_CHEQUE'
      'Where CNPJ = :CNPJ AND CONTA = :CONTA')
    ModifySQL.Strings = (
      'update CTB_CHEQUE'
      'set'
      '  CHEQUE = :CHEQUE,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  CONTABILIDADE = :CONTABILIDADE,'
      '  DATA = :DATA,'
      '  HISTORICO = :HISTORICO,'
      '  IMPRESSO = :IMPRESSO,'
      '  NOME = :NOME,'
      '  ORIGEM = :ORIGEM,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLANILHA = :PLANILHA,'
      '  VALOR = :VALOR,'
      '  PRE_DATE = :PRE_DATE,'
      '  NOMINAL = :NOMINAL'
      'where'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    Left = 115
    Top = 360
    object Cheque_CtbCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CTB_CHEQUE"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Cheque_CtbCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_CHEQUE"."CONTA"'
      Required = True
    end
    object Cheque_CtbCONTABILIDADE: TIBStringField
      DisplayLabel = 'Contabilidade'
      FieldName = 'CONTABILIDADE'
      Origin = '"CTB_CHEQUE"."CONTABILIDADE"'
      FixedChar = True
      Size = 1
    end
    object Cheque_CtbDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTB_CHEQUE"."DATA"'
    end
    object Cheque_CtbHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CTB_CHEQUE"."HISTORICO"'
      Size = 100
    end
    object Cheque_CtbIMPRESSO: TIBStringField
      DisplayLabel = 'Impresso'
      FieldName = 'IMPRESSO'
      Origin = '"CTB_CHEQUE"."IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object Cheque_CtbNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_CHEQUE"."NOME"'
      Size = 50
    end
    object Cheque_CtbORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"CTB_CHEQUE"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object Cheque_CtbPESSOA_FJ: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PESSOA_FJ'
      Origin = '"CTB_CHEQUE"."PESSOA_FJ"'
      Required = True
      OnValidate = Cheque_CtbPESSOA_FJValidate
    end
    object Cheque_CtbPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"CTB_CHEQUE"."PLANILHA"'
    end
    object Cheque_CtbVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_CHEQUE"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object Cheque_CtbCHEQUE: TIntegerField
      FieldName = 'CHEQUE'
      Origin = '"CTB_CHEQUE"."CHEQUE"'
      Required = True
    end
    object Cheque_CtbPRE_DATE: TDateTimeField
      FieldName = 'PRE_DATE'
      Origin = '"CTB_CHEQUE"."PRE_DATE"'
    end
    object Cheque_CtbNOMINAL: TIBStringField
      DisplayLabel = 'Nominal'
      FieldName = 'NOMINAL'
      Origin = '"CTB_CHEQUE"."NOMINAL"'
      OnGetText = Cheque_CtbNOMINALGetText
      OnSetText = Cheque_CtbNOMINALSetText
      FixedChar = True
      Size = 1
    end
    object Cheque_CtbExtenso: TStringField
      FieldKind = fkCalculated
      FieldName = 'Extenso'
      Size = 100
      Calculated = True
    end
  end
  object Conf_Cheque: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from SIS_CONF_CHEQUE'
      'where'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into SIS_CONF_CHEQUE'
      
        '  (ALTURA, ANOALT, ANODST, CIDALT, CIDDST, CONTA, DESCRICAO, DIA' +
        'ALT, DIADST, '
      
        '   DISTANCIA, EXTENSOALT, EXTENSODST, FAVALT, FAVDST, FAVORECIDO' +
        ', MESALT, '
      '   MESDST, NOME, PRECISAO, VALORALT, VALORDST)'
      'values'
      
        '  (:ALTURA, :ANOALT, :ANODST, :CIDALT, :CIDDST, :CONTA, :DESCRIC' +
        'AO, :DIAALT, '
      
        '   :DIADST, :DISTANCIA, :EXTENSOALT, :EXTENSODST, :FAVALT, :FAVD' +
        'ST, :FAVORECIDO, '
      '   :MESALT, :MESDST, :NOME, :PRECISAO, :VALORALT, :VALORDST)')
    RefreshSQL.Strings = (
      'Select '
      '  CONTA,'
      '  VALORALT,'
      '  VALORDST,'
      '  EXTENSOALT,'
      '  EXTENSODST,'
      '  FAVALT,'
      '  FAVDST,'
      '  CIDALT,'
      '  CIDDST,'
      '  DIAALT,'
      '  DIADST,'
      '  MESALT,'
      '  MESDST,'
      '  ANOALT,'
      '  ANODST,'
      '  ALTURA,'
      '  DISTANCIA,'
      '  PRECISAO,'
      '  FAVORECIDO,'
      '  NOME,'
      '  DESCRICAO'
      'from SIS_CONF_CHEQUE '
      'where'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select ALTURA,'
      '          ANOALT, '
      '          ANODST, '
      '          CIDALT, '
      '          CIDDST, '
      '          CONTA, '
      '          DESCRICAO, '
      '          DIAALT, '
      '          DIADST, '
      '          DISTANCIA, '
      '          EXTENSOALT, '
      '          EXTENSODST, '
      '          FAVALT, '
      '          FAVDST, '
      '          FAVORECIDO, '
      '          MESALT, '
      '          MESDST, '
      '          NOME, '
      '          PRECISAO, '
      '          VALORALT, '
      '          VALORDST '
      'from SIS_CONF_CHEQUE')
    ModifySQL.Strings = (
      'update SIS_CONF_CHEQUE'
      'set'
      '  ALTURA = :ALTURA,'
      '  ANOALT = :ANOALT,'
      '  ANODST = :ANODST,'
      '  CIDALT = :CIDALT,'
      '  CIDDST = :CIDDST,'
      '  CONTA = :CONTA,'
      '  DESCRICAO = :DESCRICAO,'
      '  DIAALT = :DIAALT,'
      '  DIADST = :DIADST,'
      '  DISTANCIA = :DISTANCIA,'
      '  EXTENSOALT = :EXTENSOALT,'
      '  EXTENSODST = :EXTENSODST,'
      '  FAVALT = :FAVALT,'
      '  FAVDST = :FAVDST,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  MESALT = :MESALT,'
      '  MESDST = :MESDST,'
      '  NOME = :NOME,'
      '  PRECISAO = :PRECISAO,'
      '  VALORALT = :VALORALT,'
      '  VALORDST = :VALORDST'
      'where'
      '  CONTA = :OLD_CONTA')
    Left = 203
    Top = 204
    object Conf_ChequeALTURA: TIntegerField
      FieldName = 'ALTURA'
      Origin = '"SIS_CONF_CHEQUE"."ALTURA"'
    end
    object Conf_ChequeANOALT: TIntegerField
      FieldName = 'ANOALT'
      Origin = '"SIS_CONF_CHEQUE"."ANOALT"'
    end
    object Conf_ChequeANODST: TIntegerField
      FieldName = 'ANODST'
      Origin = '"SIS_CONF_CHEQUE"."ANODST"'
    end
    object Conf_ChequeCIDALT: TIntegerField
      FieldName = 'CIDALT'
      Origin = '"SIS_CONF_CHEQUE"."CIDALT"'
    end
    object Conf_ChequeCIDDST: TIntegerField
      FieldName = 'CIDDST'
      Origin = '"SIS_CONF_CHEQUE"."CIDDST"'
    end
    object Conf_ChequeCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"SIS_CONF_CHEQUE"."CONTA"'
      Required = True
    end
    object Conf_ChequeDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"SIS_CONF_CHEQUE"."DESCRICAO"'
      Size = 30
    end
    object Conf_ChequeDIAALT: TIntegerField
      FieldName = 'DIAALT'
      Origin = '"SIS_CONF_CHEQUE"."DIAALT"'
    end
    object Conf_ChequeDIADST: TIntegerField
      FieldName = 'DIADST'
      Origin = '"SIS_CONF_CHEQUE"."DIADST"'
    end
    object Conf_ChequeDISTANCIA: TIntegerField
      FieldName = 'DISTANCIA'
      Origin = '"SIS_CONF_CHEQUE"."DISTANCIA"'
    end
    object Conf_ChequeEXTENSOALT: TIntegerField
      FieldName = 'EXTENSOALT'
      Origin = '"SIS_CONF_CHEQUE"."EXTENSOALT"'
    end
    object Conf_ChequeEXTENSODST: TIntegerField
      FieldName = 'EXTENSODST'
      Origin = '"SIS_CONF_CHEQUE"."EXTENSODST"'
    end
    object Conf_ChequeFAVALT: TIntegerField
      FieldName = 'FAVALT'
      Origin = '"SIS_CONF_CHEQUE"."FAVALT"'
    end
    object Conf_ChequeFAVDST: TIntegerField
      FieldName = 'FAVDST'
      Origin = '"SIS_CONF_CHEQUE"."FAVDST"'
    end
    object Conf_ChequeFAVORECIDO: TIBStringField
      FieldName = 'FAVORECIDO'
      Origin = '"SIS_CONF_CHEQUE"."FAVORECIDO"'
      FixedChar = True
      Size = 1
    end
    object Conf_ChequeMESALT: TIntegerField
      FieldName = 'MESALT'
      Origin = '"SIS_CONF_CHEQUE"."MESALT"'
    end
    object Conf_ChequeMESDST: TIntegerField
      FieldName = 'MESDST'
      Origin = '"SIS_CONF_CHEQUE"."MESDST"'
    end
    object Conf_ChequeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"SIS_CONF_CHEQUE"."NOME"'
      Size = 30
    end
    object Conf_ChequePRECISAO: TIBStringField
      FieldName = 'PRECISAO'
      Origin = '"SIS_CONF_CHEQUE"."PRECISAO"'
    end
    object Conf_ChequeVALORALT: TIntegerField
      FieldName = 'VALORALT'
      Origin = '"SIS_CONF_CHEQUE"."VALORALT"'
    end
    object Conf_ChequeVALORDST: TIntegerField
      FieldName = 'VALORDST'
      Origin = '"SIS_CONF_CHEQUE"."VALORDST"'
    end
  end
  object Motivo_Devolucao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = Motivo_DevolucaoAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    DeleteSQL.Strings = (
      'delete from FIN_MOTIVO_DEVOLUCAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_MOTIVO_DEVOLUCAO'
      '  (CNPJ, CODIGO, NOME)'
      'values'
      '  (:CNPJ, :CODIGO, :NOME)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME'
      'from FIN_MOTIVO_DEVOLUCAO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from FIN_MOTIVO_DEVOLUCAO'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    ModifySQL.Strings = (
      'update FIN_MOTIVO_DEVOLUCAO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 278
    Top = 252
    object Motivo_DevolucaoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Motivo_DevolucaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."CODIGO"'
      Required = True
    end
    object Motivo_DevolucaoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."NOME"'
      Size = 50
    end
  end
  object SelMotivos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME '
      'from FIN_MOTIVO_DEVOLUCAO'
      'Where CNPJ = :CNPJ'
      'order by NOME')
    Left = 352
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMotivosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMotivosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."CODIGO"'
      Required = True
    end
    object SelMotivosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."NOME"'
      Size = 50
    end
  end
  object Faturas_Parcial: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FIN_FATURAS_PARCIAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    InsertSQL.Strings = (
      'insert into FIN_FATURAS_PARCIAL'
      
        '  (CNPJ, CODIGO, HISTORICO, SEQUENCIA, VALOR, DATA_CAIXA, USUARI' +
        'O, CONTA, '
      '   JUROS_RECEBIDOS, DESCONTOS_CONCEDIDOS)'
      'values'
      
        '  (:CNPJ, :CODIGO, :HISTORICO, :SEQUENCIA, :VALOR, :DATA_CAIXA, ' +
        ':USUARIO, '
      '   :CONTA, :JUROS_RECEBIDOS, :DESCONTOS_CONCEDIDOS)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  SEQUENCIA,'
      '  HISTORICO,'
      '  VALOR,'
      '  DATA_CAIXA,'
      '  USUARIO,'
      '  CONTA,'
      '  PLANILHA,'
      '  VALOR_ANTERIOR,'
      '  JUROS_RECEBIDOS,'
      '  VALOR_ATUAL,'
      '  TURNO,'
      '  DESCONTOS_CONCEDIDOS'
      'from FIN_FATURAS_PARCIAL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  SEQUENCIA = :SEQUENCIA')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          HISTORICO, '
      '          SEQUENCIA, '
      '          VALOR,'
      '          DATA_CAIXA,'
      '          USUARIO,'
      '          CONTA,'
      '          JUROS_RECEBIDOS,'
      '          DESCONTOS_CONCEDIDOS '
      'from FIN_FATURAS_PARCIAL'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update FIN_FATURAS_PARCIAL'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  HISTORICO = :HISTORICO,'
      '  SEQUENCIA = :SEQUENCIA,'
      '  VALOR = :VALOR,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  USUARIO = :USUARIO,'
      '  CONTA = :CONTA,'
      '  JUROS_RECEBIDOS = :JUROS_RECEBIDOS,'
      '  DESCONTOS_CONCEDIDOS = :DESCONTOS_CONCEDIDOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  SEQUENCIA = :OLD_SEQUENCIA')
    Left = 278
    Top = 304
    object Faturas_ParcialCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FATURAS_PARCIAL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Faturas_ParcialCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_FATURAS_PARCIAL"."CODIGO"'
      Required = True
    end
    object Faturas_ParcialHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_FATURAS_PARCIAL"."HISTORICO"'
      Size = 100
    end
    object Faturas_ParcialSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'SEQUENCIA'
      Origin = '"FIN_FATURAS_PARCIAL"."SEQUENCIA"'
      Required = True
    end
    object Faturas_ParcialVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_FATURAS_PARCIAL"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object Faturas_ParcialDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FIN_FATURAS_PARCIAL"."DATA_CAIXA"'
    end
    object Faturas_ParcialUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FIN_FATURAS_PARCIAL"."USUARIO"'
      Required = True
    end
    object Faturas_ParcialCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_FATURAS_PARCIAL"."CONTA"'
    end
    object Faturas_ParcialJUROS_RECEBIDOS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS_RECEBIDOS'
      Origin = '"FIN_FATURAS_PARCIAL"."JUROS_RECEBIDOS"'
      DisplayFormat = '###,##0.00'
    end
    object Faturas_ParcialDESCONTOS_CONCEDIDOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_CONCEDIDOS'
      Origin = '"FIN_FATURAS_PARCIAL"."DESCONTOS_CONCEDIDOS"'
      DisplayFormat = '###,##0.00'
    end
  end
  object BAIXAS_PARCIAIS_FATURAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    SEQUENCIA ,'
      '    HISTORICO,'
      '    VALOR,'
      '    DATA_CAIXA,'
      '    USUARIO,'
      '    CONTA ,'
      '    PLANILHA ,'
      '    VALOR_ANTERIOR,'
      '    JUROS_RECEBIDOS,'
      '    VALOR_ATUAL,'
      '    DESCONTOS_CONCEDIDOS'
      'FROM VER_FIN_FATURAS_PARCIAL'
      '( :CNPJ, :CODIGO )')
    Left = 512
    Top = 304
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
    object BAIXAS_PARCIAIS_FATURASSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequ'#234'ncia'
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."SEQUENCIA"'
    end
    object BAIXAS_PARCIAIS_FATURASHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."HISTORICO"'
      Size = 100
    end
    object BAIXAS_PARCIAIS_FATURASVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BAIXAS_PARCIAIS_FATURASUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."USUARIO"'
    end
    object BAIXAS_PARCIAIS_FATURASCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."CONTA"'
    end
    object BAIXAS_PARCIAIS_FATURASPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."PLANILHA"'
    end
    object BAIXAS_PARCIAIS_FATURASDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."DATA_CAIXA"'
    end
    object BAIXAS_PARCIAIS_FATURASVALOR_ANTERIOR: TIBBCDField
      DisplayLabel = 'Vlr Anterior'
      FieldName = 'VALOR_ANTERIOR'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."VALOR_ANTERIOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BAIXAS_PARCIAIS_FATURASJUROS_RECEBIDOS: TIBBCDField
      DisplayLabel = 'Juros Recebidos'
      FieldName = 'JUROS_RECEBIDOS'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."JUROS_RECEBIDOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BAIXAS_PARCIAIS_FATURASVALOR_ATUAL: TIBBCDField
      DisplayLabel = 'Valor Atual'
      FieldName = 'VALOR_ATUAL'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."VALOR_ATUAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object BAIXAS_PARCIAIS_FATURASDESCONTOS_CONCEDIDOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_CONCEDIDOS'
      Origin = '"VER_FIN_FATURAS_PARCIAL"."DESCONTOS_CONCEDIDOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SelPessoas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
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
      '    EMPRESA,'
      '    ORDEM,'
      '    ENDERECO'
      'FROM VER_PESSOA_FJ ( :CNPJ )'
      'ORDER BY NOME_RAZAO')
    Left = 428
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelPessoasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      Required = True
    end
    object SelPessoasNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 40
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelPessoasFONE: TIBStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 20
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object SelPessoasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      Required = True
    end
    object SelPessoasFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object SelPessoasCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object SelPessoasBLOQUEADO: TIBStringField
      DisplayLabel = 'Blq'
      FieldName = 'BLOQUEADO'
      Origin = '"VER_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object SelPessoasCLASSIFICACAO: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object SelPessoasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object SelPessoasEMPRESA: TIBStringField
      FieldName = 'EMPRESA'
      Origin = '"VER_CLIENTE"."EMPRESA"'
      FixedChar = True
      Size = 14
    end
    object SelPessoasORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"VER_PESSOA_FJ"."ORDEM"'
    end
    object SelPessoasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOA_FJ"."ENDERECO"'
      Size = 65
    end
  end
  object DADOS_VENDA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      ' VENDEDOR,'
      ' NUM_NF,'
      ' NUM_CUPOM,'
      ' TIPO_VENDA,'
      ' NOME_VENDEDOR'
      'FROM DADOS_VENDA ( :CNPJ, :COD )')
    Left = 512
    Top = 360
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
    object DADOS_VENDAVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"DADOS_VENDA"."VENDEDOR"'
    end
    object DADOS_VENDANUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"DADOS_VENDA"."NUM_NF"'
    end
    object DADOS_VENDANUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"DADOS_VENDA"."NUM_CUPOM"'
    end
    object DADOS_VENDATIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"DADOS_VENDA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object DADOS_VENDANOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"DADOS_VENDA"."NOME_VENDEDOR"'
      Size = 50
    end
  end
  object Contas_Pagas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = Contas_PagasAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    BeforePost = Contas_PagasBeforePost
    OnCalcFields = Contas_PagasCalcFields
    DeleteSQL.Strings = (
      'delete from FIN_BAIXAS_PAGAR'
      'where'
      '  ANO = :OLD_ANO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_BAIXAS_PAGAR'
      
        '  (ANO, ANO_ENT, AVISO, ANO_PG, BOLETO, CENTRO_CUSTO, CNPJ, CODI' +
        'GO, CODIGO_ENT, '
      
        '   CODIGO_PG, CONFERIDA, CONTA, DESCONTOS, DESCONTOS_PAG, DOCTO,' +
        ' DT_AVISO, '
      
        '   DT_BAIXA, DT_EMISSAO, DT_LANCTO, DT_VENCTO, DUPLICATA, HISTOR' +
        'ICO, HISTORICO_BX, '
      
        '   JUROS, JUROS_PAG, NOME, ORIGEM, PARCELA, PESSOA_FJ, PLANILHA,' +
        ' TAXA_JUROS, '
      
        '   TIPO_JUROS, TOTAL_ENTRADA, USUARIO, VALOR, VLR_BAIXA, VLR_PAR' +
        'CIAL)'
      'values'
      
        '  (:ANO, :ANO_ENT, :AVISO, :ANO_PG, :BOLETO, :CENTRO_CUSTO, :CNP' +
        'J, :CODIGO, '
      
        '   :CODIGO_ENT, :CODIGO_PG, :CONFERIDA, :CONTA, :DESCONTOS, :DES' +
        'CONTOS_PAG, '
      
        '   :DOCTO, :DT_AVISO, :DT_BAIXA, :DT_EMISSAO, :DT_LANCTO, :DT_VE' +
        'NCTO, :DUPLICATA, '
      
        '   :HISTORICO, :HISTORICO_BX, :JUROS, :JUROS_PAG, :NOME, :ORIGEM' +
        ', :PARCELA, '
      
        '   :PESSOA_FJ, :PLANILHA, :TAXA_JUROS, :TIPO_JUROS, :TOTAL_ENTRA' +
        'DA, :USUARIO, '
      '   :VALOR, :VLR_BAIXA, :VLR_PARCIAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  ANO,'
      '  CODIGO_PG,'
      '  ANO_PG,'
      '  USUARIO,'
      '  DT_BAIXA,'
      '  HISTORICO_BX,'
      '  VLR_BAIXA,'
      '  JUROS,'
      '  DESCONTOS,'
      '  PLANILHA,'
      '  TAXA_JUROS,'
      '  TIPO_JUROS,'
      '  PESSOA_FJ,'
      '  DT_EMISSAO,'
      '  DT_VENCTO,'
      '  DT_LANCTO,'
      '  DOCTO,'
      '  PARCELA,'
      '  HISTORICO,'
      '  VALOR,'
      '  VLR_PARCIAL,'
      '  JUROS_PAG,'
      '  DESCONTOS_PAG,'
      '  BOLETO,'
      '  ORIGEM,'
      '  CODIGO_ENT,'
      '  ANO_ENT,'
      '  AVISO,'
      '  DT_AVISO,'
      '  NOME,'
      '  CENTRO_CUSTO,'
      '  DUPLICATA,'
      '  CONFERIDA,'
      '  CONTA,'
      '  TOTAL_ENTRADA'
      'from FIN_BAIXAS_PAGAR '
      'where'
      '  ANO = :ANO and'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select ANO, '
      '          ANO_ENT, '
      '          AVISO, '
      '          ANO_PG, '
      '          BOLETO, '
      '          CENTRO_CUSTO, '
      '          CNPJ, '
      '          CODIGO, '
      '          CODIGO_ENT, '
      '          CODIGO_PG, '
      '          CONFERIDA, '
      '          CONTA, '
      '          DESCONTOS, '
      '          DESCONTOS_PAG, '
      '          DOCTO, '
      '          DT_AVISO, '
      '          DT_BAIXA, '
      '          DT_EMISSAO, '
      '          DT_LANCTO, '
      '          DT_VENCTO, '
      '          DUPLICATA, '
      '          HISTORICO, '
      '          HISTORICO_BX, '
      '          JUROS, '
      '          JUROS_PAG, '
      '          NOME, '
      '          ORIGEM, '
      '          PARCELA, '
      '          PESSOA_FJ,'
      '          PLANILHA, '
      '          TAXA_JUROS, '
      '          TIPO_JUROS, '
      '          TOTAL_ENTRADA, '
      '          USUARIO, '
      '          VALOR, '
      '          VLR_BAIXA, '
      '          VLR_PARCIAL '
      'from FIN_BAIXAS_PAGAR'
      'WHERE CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update FIN_BAIXAS_PAGAR'
      'set'
      '  ANO = :ANO,'
      '  ANO_ENT = :ANO_ENT,'
      '  AVISO = :AVISO,'
      '  ANO_PG = :ANO_PG,'
      '  BOLETO = :BOLETO,'
      '  CENTRO_CUSTO = :CENTRO_CUSTO,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_ENT = :CODIGO_ENT,'
      '  CODIGO_PG = :CODIGO_PG,'
      '  CONFERIDA = :CONFERIDA,'
      '  CONTA = :CONTA,'
      '  DESCONTOS = :DESCONTOS,'
      '  DESCONTOS_PAG = :DESCONTOS_PAG,'
      '  DOCTO = :DOCTO,'
      '  DT_AVISO = :DT_AVISO,'
      '  DT_BAIXA = :DT_BAIXA,'
      '  DT_EMISSAO = :DT_EMISSAO,'
      '  DT_LANCTO = :DT_LANCTO,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  DUPLICATA = :DUPLICATA,'
      '  HISTORICO = :HISTORICO,'
      '  HISTORICO_BX = :HISTORICO_BX,'
      '  JUROS = :JUROS,'
      '  JUROS_PAG = :JUROS_PAG,'
      '  NOME = :NOME,'
      '  ORIGEM = :ORIGEM,'
      '  PARCELA = :PARCELA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLANILHA = :PLANILHA,'
      '  TAXA_JUROS = :TAXA_JUROS,'
      '  TIPO_JUROS = :TIPO_JUROS,'
      '  TOTAL_ENTRADA = :TOTAL_ENTRADA,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  VLR_BAIXA = :VLR_BAIXA,'
      '  VLR_PARCIAL = :VLR_PARCIAL'
      'where'
      '  ANO = :OLD_ANO and'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 278
    Top = 360
    object Contas_PagasANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"FIN_BAIXAS_PAGAR"."ANO"'
      Required = True
    end
    object Contas_PagasANO_ENT: TSmallintField
      DisplayLabel = 'Ano Ent'
      FieldName = 'ANO_ENT'
      Origin = '"FIN_BAIXAS_PAGAR"."ANO_ENT"'
    end
    object Contas_PagasAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_PAGAR"."AVISO"'
    end
    object Contas_PagasBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_PAGAR"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Contas_PagasCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'C. Custo'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FIN_BAIXAS_PAGAR"."CENTRO_CUSTO"'
      OnValidate = Contas_PagasCENTRO_CUSTOValidate
    end
    object Contas_PagasCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_BAIXAS_PAGAR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Contas_PagasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO"'
      Required = True
    end
    object Contas_PagasCODIGO_ENT: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'CODIGO_ENT'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO_ENT"'
    end
    object Contas_PagasCODIGO_PG: TIntegerField
      DisplayLabel = 'Cod Pagar'
      FieldName = 'CODIGO_PG'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO_PG"'
      Required = True
    end
    object Contas_PagasCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"FIN_BAIXAS_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
    object Contas_PagasCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_BAIXAS_PAGAR"."CONTA"'
    end
    object Contas_PagasDESCONTOS: TFloatField
      DisplayLabel = 'Descto'
      FieldName = 'DESCONTOS'
      Origin = '"FIN_BAIXAS_PAGAR"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasDESCONTOS_PAG: TFloatField
      DisplayLabel = 'Descto Pago'
      FieldName = 'DESCONTOS_PAG'
      Origin = '"FIN_BAIXAS_PAGAR"."DESCONTOS_PAG"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DOCTO"'
      Required = True
    end
    object Contas_PagasDT_AVISO: TDateTimeField
      DisplayLabel = 'Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_AVISO"'
    end
    object Contas_PagasDT_BAIXA: TDateTimeField
      DisplayLabel = 'Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_BAIXA"'
    end
    object Contas_PagasDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_EMISSAO"'
    end
    object Contas_PagasDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_LANCTO"'
    end
    object Contas_PagasDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_VENCTO"'
    end
    object Contas_PagasDUPLICATA: TIBStringField
      DisplayLabel = 'Dpl'
      FieldName = 'DUPLICATA'
      Origin = '"FIN_BAIXAS_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object Contas_PagasHISTORICO: TIBStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_PAGAR"."HISTORICO"'
      Size = 100
    end
    object Contas_PagasHISTORICO_BX: TIBStringField
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_PAGAR"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Contas_PagasJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_BAIXAS_PAGAR"."JUROS"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasJUROS_PAG: TFloatField
      DisplayLabel = 'Juros Pagar'
      FieldName = 'JUROS_PAG'
      Origin = '"FIN_BAIXAS_PAGAR"."JUROS_PAG"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_BAIXAS_PAGAR"."NOME"'
      Size = 50
    end
    object Contas_PagasORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_PAGAR"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Contas_PagasPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_PAGAR"."PARCELA"'
      Required = True
      Size = 6
    end
    object Contas_PagasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Forn'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_PAGAR"."PESSOA_FJ"'
      Required = True
      OnValidate = Contas_PagasPESSOA_FJValidate
    end
    object Contas_PagasPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_PAGAR"."PLANILHA"'
      Required = True
    end
    object Contas_PagasTAXA_JUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"FIN_BAIXAS_PAGAR"."TAXA_JUROS"'
    end
    object Contas_PagasTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Jur'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_PAGAR"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Contas_PagasTOTAL_ENTRADA: TFloatField
      DisplayLabel = 'Tot. Ent'
      FieldName = 'TOTAL_ENTRADA'
      Origin = '"FIN_BAIXAS_PAGAR"."TOTAL_ENTRADA"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FIN_BAIXAS_PAGAR"."USUARIO"'
    end
    object Contas_PagasVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_BAIXAS_PAGAR"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasVLR_BAIXA: TFloatField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"FIN_BAIXAS_PAGAR"."VLR_BAIXA"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_BAIXAS_PAGAR"."VLR_PARCIAL"'
      DisplayFormat = '###,##0.00'
    end
    object Contas_PagasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Contas_PagasANO_PG: TSmallintField
      FieldName = 'ANO_PG'
      Origin = '"FIN_BAIXAS_PAGAR"."ANO_PG"'
      Required = True
    end
  end
  object Cobranca: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = CobrancaAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    OnNewRecord = CobrancaNewRecord
    OnPostError = CobrancaPostError
    DeleteSQL.Strings = (
      'delete from FIN_COBRANCAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA_COBRANCA = :OLD_DATA_COBRANCA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  RECEBER = :OLD_RECEBER and'
      '  ORIGEM = :OLD_ORIGEM')
    InsertSQL.Strings = (
      'insert into FIN_COBRANCAS'
      
        '  (CNPJ, COBRAR_EM, DATA_COBRANCA, HISTORICO, MOTIVO, PAGO_EM, N' +
        'OME_MOTIVO, '
      
        '   PESSOA_FJ, COBRADOR, NOME_COBRADOR, RECEBER, ORIGEM, ANO, IND' +
        'ICE)'
      'values'
      
        '  (:CNPJ, :COBRAR_EM, :DATA_COBRANCA, :HISTORICO, :MOTIVO, :PAGO' +
        '_EM, :NOME_MOTIVO, '
      
        '   :PESSOA_FJ, :COBRADOR, :NOME_COBRADOR, :RECEBER, :ORIGEM, :AN' +
        'O, :INDICE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  DATA_COBRANCA,'
      '  RECEBER,'
      '  ORIGEM,'
      '  MOTIVO,'
      '  COBRAR_EM,'
      '  HISTORICO,'
      '  PAGO_EM,'
      '  NOME_MOTIVO,'
      '  COBRADOR,'
      '  NOME_COBRADOR,'
      '  ANO,'
      '  SELECIONADO,'
      '  INDICE'
      'from FIN_COBRANCAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  DATA_COBRANCA = :DATA_COBRANCA and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  RECEBER = :RECEBER and'
      '  ORIGEM = :ORIGEM')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          COBRAR_EM, '
      '          DATA_COBRANCA, '
      '          HISTORICO, '
      '          MOTIVO, '
      '          PAGO_EM,'
      '          NOME_MOTIVO ,'
      '          PESSOA_FJ,'
      '          COBRADOR,'
      '          NOME_COBRADOR  ,'
      '          RECEBER,'
      '          ORIGEM,'
      '          ANO,'
      '          Indice'
      'from FIN_COBRANCAS'
      'Where CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update FIN_COBRANCAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  COBRAR_EM = :COBRAR_EM,'
      '  DATA_COBRANCA = :DATA_COBRANCA,'
      '  HISTORICO = :HISTORICO,'
      '  MOTIVO = :MOTIVO,'
      '  PAGO_EM = :PAGO_EM,'
      '  NOME_MOTIVO = :NOME_MOTIVO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  COBRADOR = :COBRADOR,'
      '  NOME_COBRADOR = :NOME_COBRADOR,'
      '  RECEBER = :RECEBER,'
      '  ORIGEM = :ORIGEM,'
      '  ANO = :ANO,'
      '  INDICE = :INDICE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DATA_COBRANCA = :OLD_DATA_COBRANCA and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  RECEBER = :OLD_RECEBER and'
      '  ORIGEM = :OLD_ORIGEM')
    Left = 424
    Top = 578
    object CobrancaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_COBRANCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CobrancaCOBRAR_EM: TDateTimeField
      DisplayLabel = 'Cobrar'
      FieldName = 'COBRAR_EM'
      Origin = '"FIN_COBRANCAS"."COBRAR_EM"'
    end
    object CobrancaDATA_COBRANCA: TDateTimeField
      DisplayLabel = 'Data Cobr'
      FieldName = 'DATA_COBRANCA'
      Origin = '"FIN_COBRANCAS"."DATA_COBRANCA"'
    end
    object CobrancaHISTORICO: TIBStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_COBRANCAS"."HISTORICO"'
      Size = 100
    end
    object CobrancaMOTIVO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Origin = '"FIN_COBRANCAS"."MOTIVO"'
      Required = True
    end
    object CobrancaPAGO_EM: TDateTimeField
      DisplayLabel = 'Pago em'
      FieldName = 'PAGO_EM'
      Origin = '"FIN_COBRANCAS"."PAGO_EM"'
    end
    object CobrancaNOME_MOTIVO: TIBStringField
      FieldName = 'NOME_MOTIVO'
      Origin = '"FIN_COBRANCAS"."NOME_MOTIVO"'
      Size = 50
    end
    object CobrancaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_COBRANCAS"."PESSOA_FJ"'
      Required = True
    end
    object CobrancaCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"FIN_COBRANCAS"."COBRADOR"'
      OnValidate = CobrancaCOBRADORValidate
    end
    object CobrancaNOME_COBRADOR: TIBStringField
      FieldName = 'NOME_COBRADOR'
      Origin = '"FIN_COBRANCAS"."NOME_COBRADOR"'
      Size = 50
    end
    object CobrancaRECEBER: TIntegerField
      FieldName = 'RECEBER'
      Origin = '"FIN_COBRANCAS"."RECEBER"'
      Required = True
    end
    object CobrancaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_COBRANCAS"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object CobrancaANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"FIN_COBRANCAS"."ANO"'
    end
    object CobrancaINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = '"FIN_COBRANCAS"."INDICE"'
      Size = 57
    end
  end
  object Historico_Cobrancas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * '
      'FROM HISTORICO_FIN_COBRANCAS'
      '( :CNPJ, :PESSOA_FJ )'
      'ORDER BY DATA_COBRANCA')
    Left = 428
    Top = 412
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
    object Historico_CobrancasDATA_COBRANCA: TDateTimeField
      DisplayLabel = 'Data Cobran'#231'a'
      FieldName = 'DATA_COBRANCA'
      Origin = '"HISTORICO_FIN_COBRANCAS"."DATA_COBRANCA"'
    end
    object Historico_CobrancasCOBRAR_EM: TDateTimeField
      DisplayLabel = 'Cobrar Em'
      FieldName = 'COBRAR_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS"."COBRAR_EM"'
    end
    object Historico_CobrancasMOTIVO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."MOTIVO"'
    end
    object Historico_CobrancasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."HISTORICO"'
      Size = 100
    end
    object Historico_CobrancasPAGO_EM: TDateTimeField
      DisplayLabel = 'Pago em'
      FieldName = 'PAGO_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS"."PAGO_EM"'
    end
    object Historico_CobrancasNOME_MOTIVO: TIBStringField
      DisplayLabel = 'Nome Motivo'
      FieldName = 'NOME_MOTIVO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME_MOTIVO"'
      Size = 50
    end
    object Historico_CobrancasCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."COBRADOR"'
    end
    object Historico_CobrancasNOME_COBRADOR: TIBStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOME_COBRADOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME_COBRADOR"'
      Size = 50
    end
    object Historico_CobrancasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME"'
      Size = 50
    end
    object Historico_CobrancasDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vecnto'
      FieldName = 'DT_VENCTO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."DT_VENCTO"'
    end
    object Historico_CobrancasDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."DOCTO"'
    end
    object Historico_CobrancasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Historico_CobrancasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."CODIGO"'
    end
    object Historico_CobrancasCOD_REC: TIntegerField
      FieldName = 'COD_REC'
      Origin = '"HISTORICO_FIN_COBRANCAS"."COD_REC"'
    end
    object Historico_CobrancasANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."ANO"'
    end
    object Historico_CobrancasVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"HISTORICO_FIN_COBRANCAS"."VENDA"'
    end
    object Historico_CobrancasHR_COBRAR_EM: TTimeField
      DisplayLabel = 'Hr. Agendado'
      FieldName = 'HR_COBRAR_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS"."HR_COBRAR_EM"'
    end
    object Historico_CobrancasHR_COBRANCA: TTimeField
      DisplayLabel = 'Hr. Cobran'#231'a'
      FieldName = 'HR_COBRANCA'
      Origin = '"HISTORICO_FIN_COBRANCAS"."HR_COBRANCA"'
    end
  end
  object Consulta_Cobranca_Pessoa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      
        'SELECT * FROM CONSULTA_COBRANCA_PESSOA(:CNPJ, :INI, :FIM, :PESSO' +
        'A)')
    Left = 512
    Top = 412
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
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object Consulta_Cobranca_PessoaSOMA: TIBBCDField
      DisplayLabel = 'Soma'
      FieldName = 'SOMA'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."SOMA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Cobranca_PessoaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."NOME"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaENDERECO: TIBStringField
      DisplayLabel = 'End'
      FieldName = 'ENDERECO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."ENDERECO"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."NUMERO"'
      Size = 15
    end
    object Consulta_Cobranca_PessoaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CIDADE"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."BAIRRO"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Consulta_Cobranca_PessoaUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."UF"'
      FixedChar = True
      Size = 2
    end
    object Consulta_Cobranca_PessoaCOD_END: TIntegerField
      DisplayLabel = 'Cod End'
      FieldName = 'COD_END'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_END"'
    end
    object Consulta_Cobranca_PessoaCOD_CID: TIntegerField
      DisplayLabel = 'Cod Cid'
      FieldName = 'COD_CID'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_CID"'
    end
    object Consulta_Cobranca_PessoaCOD_BAI: TIntegerField
      DisplayLabel = 'Cod Bai'
      FieldName = 'COD_BAI'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."COD_BAI"'
    end
    object Consulta_Cobranca_PessoaFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."FONE"'
    end
    object Consulta_Cobranca_PessoaCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."CPF_CGC"'
      Size = 15
    end
    object Consulta_Cobranca_PessoaPORCENTAGEM: TIBBCDField
      DisplayLabel = 'Porcentagem'
      FieldName = 'PORCENTAGEM'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."PORCENTAGEM"'
      DisplayFormat = '% ##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Cobranca_PessoaDATA: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DATA'
      Origin = '"SOMA_RECEBER_DATA_ANALITICO"."DATA"'
    end
    object Consulta_Cobranca_PessoaAGENDADO_PARA: TDateTimeField
      DisplayLabel = 'Agendado'
      FieldName = 'AGENDADO_PARA'
      Origin = '"CONSULTA_COBRANCA"."AGENDADO_PARA"'
    end
    object Consulta_Cobranca_PessoaCOBRAR_EM: TDateTimeField
      DisplayLabel = 'Cobrar em'
      FieldName = 'COBRAR_EM'
      Origin = '"CONSULTA_COBRANCA"."COBRAR_EM"'
    end
    object Consulta_Cobranca_PessoaMOTIVO: TIBStringField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Origin = '"CONSULTA_COBRANCA"."MOTIVO"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaHISTORICO: TIBStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CONSULTA_COBRANCA"."HISTORICO"'
      Size = 100
    end
    object Consulta_Cobranca_PessoaCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"CONSULTA_COBRANCA"."COBRADOR"'
    end
    object Consulta_Cobranca_PessoaNOME_COBRADOR: TIBStringField
      FieldName = 'NOME_COBRADOR'
      Origin = '"CONSULTA_COBRANCA"."NOME_COBRADOR"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaRECEBER: TIntegerField
      DisplayLabel = 'Receber'
      FieldName = 'RECEBER'
      Origin = '"CONSULTA_COBRANCA"."RECEBER"'
    end
    object Consulta_Cobranca_PessoaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."PESSOA_FJ"'
    end
    object Consulta_Cobranca_PessoaORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      DisplayWidth = 3
      FieldName = 'ORIGEM'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Consulta_Cobranca_PessoaDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."DOCTO"'
    end
    object Consulta_Cobranca_PessoaLANCAMENTO: TDateTimeField
      DisplayLabel = 'Lancto'
      FieldName = 'LANCAMENTO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."LANCAMENTO"'
    end
    object Consulta_Cobranca_PessoaANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."ANO"'
    end
    object Consulta_Cobranca_PessoaVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."VENDA"'
    end
    object Consulta_Cobranca_PessoaSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_Cobranca_PessoaEMP_EMPRESA: TIBStringField
      FieldName = 'EMP_EMPRESA'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."EMP_EMPRESA"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaEMP_CIDADE: TIBStringField
      FieldName = 'EMP_CIDADE'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."EMP_CIDADE"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaEMP_CNPJ: TIBStringField
      FieldName = 'EMP_CNPJ'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."EMP_CNPJ"'
    end
    object Consulta_Cobranca_PessoaEMP_ENDERECO: TIBStringField
      FieldName = 'EMP_ENDERECO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."EMP_ENDERECO"'
      Size = 80
    end
    object Consulta_Cobranca_PessoaEMP_CEP: TIBStringField
      FieldName = 'EMP_CEP'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."EMP_CEP"'
    end
    object Consulta_Cobranca_PessoaEMP_BAIRRO: TIBStringField
      FieldName = 'EMP_BAIRRO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."EMP_BAIRRO"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaEMP_FONE: TIBStringField
      FieldName = 'EMP_FONE'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."EMP_FONE"'
    end
    object Consulta_Cobranca_PessoaULTIMA_BAIXA: TDateTimeField
      FieldName = 'ULTIMA_BAIXA'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."ULTIMA_BAIXA"'
    end
    object Consulta_Cobranca_PessoaENDERECO_TRABALHO: TIBStringField
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."ENDERECO_TRABALHO"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaNUMERO_TRABALHO: TIBStringField
      FieldName = 'NUMERO_TRABALHO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."NUMERO_TRABALHO"'
      Size = 15
    end
    object Consulta_Cobranca_PessoaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."FAX"'
    end
    object Consulta_Cobranca_PessoaCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."CELULAR"'
    end
    object Consulta_Cobranca_PessoaLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."LOCAL_TRABALHO"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaFONE_TRABALHO: TIBStringField
      FieldName = 'FONE_TRABALHO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."FONE_TRABALHO"'
    end
    object Consulta_Cobranca_PessoaTOTALRECEBER: TIBBCDField
      FieldName = 'TOTALRECEBER'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."TOTALRECEBER"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cobranca_PessoaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cobranca_PessoaDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cobranca_PessoaJUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cobranca_PessoaVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object Consulta_Cobranca_PessoaREC_ANO_VN: TSmallintField
      FieldName = 'REC_ANO_VN'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_ANO_VN"'
    end
    object Consulta_Cobranca_PessoaREC_CODIGO_TRC: TIntegerField
      FieldName = 'REC_CODIGO_TRC'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_CODIGO_TRC"'
    end
    object Consulta_Cobranca_PessoaREC_CODIGO_VN: TIntegerField
      FieldName = 'REC_CODIGO_VN'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_CODIGO_VN"'
    end
    object Consulta_Cobranca_PessoaREC_DATA_ULT_BAIXA: TDateTimeField
      FieldName = 'REC_DATA_ULT_BAIXA'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_DATA_ULT_BAIXA"'
    end
    object Consulta_Cobranca_PessoaREC_DOCTO: TIBStringField
      FieldName = 'REC_DOCTO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_DOCTO"'
    end
    object Consulta_Cobranca_PessoaREC_DT_AVISO: TDateTimeField
      FieldName = 'REC_DT_AVISO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_DT_AVISO"'
    end
    object Consulta_Cobranca_PessoaREC_DT_EMISSAO: TDateTimeField
      FieldName = 'REC_DT_EMISSAO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_DT_EMISSAO"'
    end
    object Consulta_Cobranca_PessoaREC_DT_LANCTO: TDateTimeField
      FieldName = 'REC_DT_LANCTO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_DT_LANCTO"'
    end
    object Consulta_Cobranca_PessoaREC_HISTORICO: TIBStringField
      FieldName = 'REC_HISTORICO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_HISTORICO"'
      Size = 100
    end
    object Consulta_Cobranca_PessoaREC_JUROS_PARCIAL: TFloatField
      FieldName = 'REC_JUROS_PARCIAL'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_JUROS_PARCIAL"'
    end
    object Consulta_Cobranca_PessoaREC_JUROS_REC: TFloatField
      FieldName = 'REC_JUROS_REC'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_JUROS_REC"'
    end
    object Consulta_Cobranca_PessoaREC_ORIGEM: TIBStringField
      FieldName = 'REC_ORIGEM'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Consulta_Cobranca_PessoaREC_PARCELA: TIBStringField
      FieldName = 'REC_PARCELA'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_PARCELA"'
      Size = 6
    end
    object Consulta_Cobranca_PessoaREC_PARCIAL: TFloatField
      FieldName = 'REC_PARCIAL'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_PARCIAL"'
    end
    object Consulta_Cobranca_PessoaREC_TIPO_DOCTO: TIBStringField
      FieldName = 'REC_TIPO_DOCTO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Consulta_Cobranca_PessoaREC_VALOR: TFloatField
      FieldName = 'REC_VALOR'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_VALOR"'
    end
    object Consulta_Cobranca_PessoaREC_VALOR_NOMINAL: TFloatField
      FieldName = 'REC_VALOR_NOMINAL'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_VALOR_NOMINAL"'
    end
    object Consulta_Cobranca_PessoaREC_VLR_ORIG_ALT: TIBStringField
      FieldName = 'REC_VLR_ORIG_ALT'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_VLR_ORIG_ALT"'
      FixedChar = True
      Size = 1
    end
    object Consulta_Cobranca_PessoaREC_VLR_PARCIAL: TFloatField
      FieldName = 'REC_VLR_PARCIAL'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_VLR_PARCIAL"'
    end
    object Consulta_Cobranca_PessoaFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."FANTASIA"'
      Size = 50
    end
    object Consulta_Cobranca_PessoaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."RG_IE"'
      Size = 15
    end
    object Consulta_Cobranca_PessoaDT_NASCIMENTO: TDateTimeField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."DT_NASCIMENTO"'
    end
    object Consulta_Cobranca_PessoaREC_DT_VENCTO: TDateField
      FieldName = 'REC_DT_VENCTO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."REC_DT_VENCTO"'
    end
    object Consulta_Cobranca_PessoaATRASO: TIntegerField
      FieldName = 'ATRASO'
      Origin = '"CONSULTA_COBRANCA_PESSOA"."ATRASO"'
    end
  end
  object Faturas_Pcl: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DeleteSQL.Strings = (
      'delete from FIN_FATURAS_PARCELAMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  DATA = :OLD_DATA')
    InsertSQL.Strings = (
      'insert into FIN_FATURAS_PARCELAMENTO'
      '  (CNPJ, CODIGO, DATA, VALOR)'
      'values'
      '  (:CNPJ, :CODIGO, :DATA, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  VALOR'
      'from FIN_FATURAS_PARCELAMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO and'
      '  DATA = :DATA')
    SelectSQL.Strings = (
      'select '
      '          CNPJ, '
      '          CODIGO, '
      '          DATA, '
      '          VALOR '
      'from FIN_FATURAS_PARCELAMENTO'
      'Where CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'ORDER BY DATA')
    ModifySQL.Strings = (
      'update FIN_FATURAS_PARCELAMENTO'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  VALOR = :VALOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO and'
      '  DATA = :OLD_DATA')
    Left = 278
    Top = 204
    object Faturas_PclCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_FATURAS_PARCELAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Faturas_PclCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"FIN_FATURAS_PARCELAMENTO"."CODIGO"'
      Required = True
    end
    object Faturas_PclDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_FATURAS_PARCELAMENTO"."DATA"'
    end
    object Faturas_PclVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_FATURAS_PARCELAMENTO"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
  end
  object VER_FICHA_CLIENTE: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    CODIGO,'
      '    PESSOA_FJ,'
      '    NOME_RAZAO,'
      '    FONE,'
      '    FANTASIA,'
      '    CPF_CGC,'
      '    BLOQUEADO,'
      '    CLASSIFICACAO,'
      '    UF,'
      '    VENDAS,'
      '    RECEBER,'
      '    FATURAS,'
      '    CUPOM,'
      '    NOTAS ,'
      '    TOTAL'
      'FROM VER_FICHA_CLIENTE'
      '( :CNPJ )')
    Left = 698
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VER_FICHA_CLIENTECODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FICHA_CLIENTE"."CODIGO"'
    end
    object VER_FICHA_CLIENTEPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FICHA_CLIENTE"."PESSOA_FJ"'
    end
    object VER_FICHA_CLIENTENOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FICHA_CLIENTE"."NOME_RAZAO"'
      Size = 50
    end
    object VER_FICHA_CLIENTEFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_FICHA_CLIENTE"."FONE"'
    end
    object VER_FICHA_CLIENTEFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_FICHA_CLIENTE"."FANTASIA"'
      Size = 50
    end
    object VER_FICHA_CLIENTECPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_FICHA_CLIENTE"."CPF_CGC"'
      Size = 15
    end
    object VER_FICHA_CLIENTEBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_FICHA_CLIENTE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object VER_FICHA_CLIENTECLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"VER_FICHA_CLIENTE"."CLASSIFICACAO"'
      Size = 50
    end
    object VER_FICHA_CLIENTEUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_FICHA_CLIENTE"."UF"'
      FixedChar = True
      Size = 2
    end
    object VER_FICHA_CLIENTEVENDAS: TIBBCDField
      FieldName = 'VENDAS'
      Origin = '"VER_FICHA_CLIENTE"."VENDAS"'
      Precision = 18
      Size = 4
    end
    object VER_FICHA_CLIENTERECEBER: TIBBCDField
      FieldName = 'RECEBER'
      Origin = '"VER_FICHA_CLIENTE"."RECEBER"'
      Precision = 18
      Size = 4
    end
    object VER_FICHA_CLIENTEFATURAS: TIBBCDField
      FieldName = 'FATURAS'
      Origin = '"VER_FICHA_CLIENTE"."FATURAS"'
      Precision = 18
      Size = 4
    end
    object VER_FICHA_CLIENTECUPOM: TIBBCDField
      FieldName = 'CUPOM'
      Origin = '"VER_FICHA_CLIENTE"."CUPOM"'
      Precision = 18
      Size = 4
    end
    object VER_FICHA_CLIENTENOTAS: TIBBCDField
      FieldName = 'NOTAS'
      Origin = '"VER_FICHA_CLIENTE"."NOTAS"'
      Precision = 18
      Size = 4
    end
    object VER_FICHA_CLIENTETOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FICHA_CLIENTE"."TOTAL"'
      Precision = 18
      Size = 4
    end
  end
  object Ver_Cartoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Ver_CartoesCalcFields
    SQL.Strings = (
      'SELECT'
      '    CODIGO,'
      '    DATA,'
      '    USUARIO,'
      '    CONTA,'
      '    CPF_CNPJ,'
      '    CLIENTE,'
      '    REEMBOLSO,'
      '    ADMINISTRADORA,'
      '    NOME_ADMINISTRADORA,'
      '    VALOR ,'
      '    NUM_CARTAO,'
      '    NUM_BANCO,'
      '    NUM_CONTA,'
      '    CONCILIADO,'
      '    TIPO_DOC,'
      '    DOCUMENTO,'
      '    VENDA,'
      '    PESSOA_FJ,'
      '    TIPO,'
      '    NUM_PARCELAS,'
      '    TAXA ,'
      '    TAXA_PARCELADO ,'
      '    TAXA_DEBITO ,'
      '    NOME,'
      '    FONE ,'
      '    FAX,'
      '    CELULAR,'
      '    CPF_CGC,'
      '    TURNO,'
      '    PROCESSADO'
      'FROM VER_FIN_MOVIMENTO_CARTAO'
      '( :CNPJ, :DATAINI, :DATAFIM )'
      'ORDER BY DATA, REEMBOLSO')
    Left = 512
    Top = 51
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATAFIM'
        ParamType = ptUnknown
      end>
    object Ver_CartoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."CODIGO"'
    end
    object Ver_CartoesDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."DATA"'
    end
    object Ver_CartoesUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."USUARIO"'
    end
    object Ver_CartoesCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."CONTA"'
    end
    object Ver_CartoesCPF_CNPJ: TIBStringField
      FieldName = 'CPF_CNPJ'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."CPF_CNPJ"'
    end
    object Ver_CartoesCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."CLIENTE"'
      Size = 50
    end
    object Ver_CartoesREEMBOLSO: TDateTimeField
      FieldName = 'REEMBOLSO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."REEMBOLSO"'
    end
    object Ver_CartoesADMINISTRADORA: TIntegerField
      FieldName = 'ADMINISTRADORA'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."ADMINISTRADORA"'
    end
    object Ver_CartoesVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Ver_CartoesNUM_CARTAO: TIBStringField
      FieldName = 'NUM_CARTAO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."NUM_CARTAO"'
    end
    object Ver_CartoesNUM_BANCO: TIBStringField
      FieldName = 'NUM_BANCO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."NUM_BANCO"'
      FixedChar = True
      Size = 3
    end
    object Ver_CartoesNUM_CONTA: TIBStringField
      FieldName = 'NUM_CONTA'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."NUM_CONTA"'
    end
    object Ver_CartoesCONCILIADO: TIBStringField
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object Ver_CartoesTIPO_DOC: TIBStringField
      FieldName = 'TIPO_DOC'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object Ver_CartoesDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."DOCUMENTO"'
    end
    object Ver_CartoesVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."VENDA"'
    end
    object Ver_CartoesPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."PESSOA_FJ"'
    end
    object Ver_CartoesTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."TIPO"'
      FixedChar = True
      Size = 3
    end
    object Ver_CartoesNUM_PARCELAS: TIntegerField
      FieldName = 'NUM_PARCELAS'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."NUM_PARCELAS"'
    end
    object Ver_CartoesTAXA: TIBBCDField
      FieldName = 'TAXA'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."TAXA"'
      Precision = 18
      Size = 4
    end
    object Ver_CartoesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."NOME"'
      Size = 50
    end
    object Ver_CartoesFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."FONE"'
    end
    object Ver_CartoesFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."FAX"'
    end
    object Ver_CartoesCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."CELULAR"'
    end
    object Ver_CartoesCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."CPF_CGC"'
      Size = 15
    end
    object Ver_CartoesTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."TURNO"'
    end
    object Ver_CartoesNOME_ADMINISTRADORA: TIBStringField
      FieldName = 'NOME_ADMINISTRADORA'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."NOME_ADMINISTRADORA"'
      Size = 50
    end
    object Ver_CartoesTAXA_PARCELADO: TIBBCDField
      FieldName = 'TAXA_PARCELADO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."TAXA_PARCELADO"'
      Precision = 18
      Size = 4
    end
    object Ver_CartoesTAXA_DEBITO: TIBBCDField
      FieldName = 'TAXA_DEBITO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."TAXA_DEBITO"'
      Precision = 18
      Size = 4
    end
    object Ver_CartoesVALOR_LIQ: TIBBCDField
      FieldKind = fkCalculated
      FieldName = 'VALOR_LIQ'
      Calculated = True
    end
    object Ver_CartoesPROCESSADO: TIBStringField
      FieldName = 'PROCESSADO'
      Origin = '"VER_FIN_MOVIMENTO_CARTAO"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object Ver_CartoesDESCONTO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'DESCONTO'
      Calculated = True
    end
  end
  object Ver_DadosFaturas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Ver_DadosFaturasCalcFields
    SQL.Strings = (
      'Select CODIGO,'
      '           PESSOA_FJ,'
      '           DATA,'
      '           VALOR,'
      '           VALOR_ORIGINAL,'
      '           DESCONTO, '
      '           JUROS,'
      '           VENCIMENTO,'
      '           HISTORICO,'
      '           NOME, '
      '           ENDERECO, '
      '           NUMERO, '
      '           CIDADE, '
      '           BAIRRO, '
      '           CEP, '
      '           UF, '
      '           COD_END, '
      '           COD_BAI, '
      '           COD_CID, '
      '           FONE, '
      '           CPF_CGC,'
      '           BANCO,'
      '           ENVIADA,'
      '           TIPO,'
      '           DUPLICATA,'
      '           OBS,'
      '           DATA_BAIXA,'
      '           USUARIO,'
      '           ULTIMA_BX_PARCIAL,'
      '           BAIXAS_PARCIAIS,'
      '           BAIXAS_PARCIAIS_DIA,'
      '           JUROS_DIA'
      'from VER_DADOS_FATURA ( :CNPJ, :COD_FATURA, :DINI, :DFIM )'
      '           ')
    Left = 608
    Top = 101
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_FATURA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object Ver_DadosFaturasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_DADOS_FATURA"."CODIGO"'
    end
    object Ver_DadosFaturasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_DADOS_FATURA"."PESSOA_FJ"'
    end
    object Ver_DadosFaturasDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_DADOS_FATURA"."DATA"'
    end
    object Ver_DadosFaturasVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_DADOS_FATURA"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Ver_DadosFaturasVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_DADOS_FATURA"."VALOR_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Ver_DadosFaturasDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_DADOS_FATURA"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Ver_DadosFaturasJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VER_DADOS_FATURA"."JUROS"'
      Precision = 18
      Size = 4
    end
    object Ver_DadosFaturasVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = '"VER_DADOS_FATURA"."VENCIMENTO"'
    end
    object Ver_DadosFaturasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_DADOS_FATURA"."HISTORICO"'
      Size = 100
    end
    object Ver_DadosFaturasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_DADOS_FATURA"."NOME"'
      Size = 50
    end
    object Ver_DadosFaturasENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_DADOS_FATURA"."ENDERECO"'
      Size = 50
    end
    object Ver_DadosFaturasNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_DADOS_FATURA"."NUMERO"'
      Size = 15
    end
    object Ver_DadosFaturasCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_DADOS_FATURA"."CIDADE"'
      Size = 50
    end
    object Ver_DadosFaturasBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_DADOS_FATURA"."BAIRRO"'
      Size = 50
    end
    object Ver_DadosFaturasCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_DADOS_FATURA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Ver_DadosFaturasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_DADOS_FATURA"."UF"'
      FixedChar = True
      Size = 2
    end
    object Ver_DadosFaturasCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_DADOS_FATURA"."COD_END"'
    end
    object Ver_DadosFaturasCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_DADOS_FATURA"."COD_BAI"'
    end
    object Ver_DadosFaturasCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_DADOS_FATURA"."COD_CID"'
    end
    object Ver_DadosFaturasFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_DADOS_FATURA"."FONE"'
    end
    object Ver_DadosFaturasCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_DADOS_FATURA"."CPF_CGC"'
      Size = 15
    end
    object Ver_DadosFaturasBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_DADOS_FATURA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object Ver_DadosFaturasENVIADA: TIBStringField
      FieldName = 'ENVIADA'
      Origin = '"VER_DADOS_FATURA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object Ver_DadosFaturasTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_DADOS_FATURA"."TIPO"'
      Size = 11
    end
    object Ver_DadosFaturasDUPLICATA: TIBStringField
      FieldName = 'DUPLICATA'
      Origin = '"VER_DADOS_FATURA"."DUPLICATA"'
      Size = 30
    end
    object Ver_DadosFaturasOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"VER_DADOS_FATURA"."OBS"'
      Size = 30
    end
    object Ver_DadosFaturasDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
      Origin = '"VER_DADOS_FATURA"."DATA_BAIXA"'
    end
    object Ver_DadosFaturasUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"VER_DADOS_FATURA"."USUARIO"'
      FixedChar = True
      Size = 14
    end
    object Ver_DadosFaturasULTIMA_BX_PARCIAL: TDateTimeField
      FieldName = 'ULTIMA_BX_PARCIAL'
      Origin = '"VER_DADOS_FATURA"."ULTIMA_BX_PARCIAL"'
    end
    object Ver_DadosFaturasBAIXAS_PARCIAIS: TIBBCDField
      FieldName = 'BAIXAS_PARCIAIS'
      Origin = '"VER_DADOS_FATURA"."BAIXAS_PARCIAIS"'
      Precision = 18
      Size = 4
    end
    object Ver_DadosFaturasTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object Ver_DadosFaturasSITUACAO: TStringField
      FieldKind = fkCalculated
      FieldName = 'SITUACAO'
      Size = 15
      Calculated = True
    end
    object Ver_DadosFaturasBAIXAS_PARCIAIS_DIA: TIBBCDField
      FieldName = 'BAIXAS_PARCIAIS_DIA'
      Origin = '"VER_DADOS_FATURA"."BAIXAS_PARCIAIS_DIA"'
      Precision = 18
      Size = 4
    end
    object Ver_DadosFaturasJUROS_DIA: TIBBCDField
      FieldName = 'JUROS_DIA'
      Origin = '"VER_DADOS_FATURA"."JUROS_DIA"'
      Precision = 18
      Size = 4
    end
  end
  object Cartao: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = CartaoAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    BeforePost = CartaoBeforePost
    OnCalcFields = CartaoCalcFields
    OnNewRecord = CartaoNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_MOVIMENTO_CARTAO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_MOVIMENTO_CARTAO'
      '  (ADMINISTRADORA, CLIENTE, CNPJ, CODIGO, CONCILIADO, CONTA, '
      'CPF_CNPJ, '
      '   DATA, DOCUMENTO, NUM_BANCO, NUM_CARTAO, NUM_CONTA, '
      'REEMBOLSO, TIPO_DOC, '
      '   USUARIO, VALOR, VENDA, PESSOA_FJ, TIPO, NUM_PARCELAS, TAXA, '
      'TURNO, DATA_CONCILIACAO, '
      '   PROCESSADO, PLANILHA)'
      'values'
      
        '  (:ADMINISTRADORA, :CLIENTE, :CNPJ, :CODIGO, :CONCILIADO, :CONT' +
        'A, '
      ':CPF_CNPJ, '
      '   :DATA, :DOCUMENTO, :NUM_BANCO, :NUM_CARTAO, :NUM_CONTA, '
      ':REEMBOLSO, '
      '   :TIPO_DOC, :USUARIO, :VALOR, :VENDA, :PESSOA_FJ, :TIPO, '
      ':NUM_PARCELAS, '
      '   :TAXA, :TURNO, :DATA_CONCILIACAO, :PROCESSADO, :PLANILHA)')
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
      '  TROCA,'
      '  PLANILHA'
      'from FIN_MOVIMENTO_CARTAO '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select ADMINISTRADORA, '
      '          CLIENTE, '
      '          CNPJ, '
      '          CODIGO, '
      '          CONCILIADO,'
      '          CONTA, '
      '          CPF_CNPJ, '
      '          DATA, '
      '          DOCUMENTO, '
      '          NUM_BANCO, '
      '          NUM_CARTAO, '
      '          NUM_CONTA, '
      '          REEMBOLSO, '
      '          TIPO_DOC, '
      '          USUARIO, '
      '          VALOR, '
      '          VENDA,'
      '          PESSOA_FJ,'
      '          TIPO,'
      '          NUM_PARCELAS,'
      '          TAXA,'
      '          TURNO ,'
      '          DATA_CONCILIACAO,'
      '          PROCESSADO, '
      '          PLANILHA'
      'from FIN_MOVIMENTO_CARTAO'
      'Where CNPJ = :CNPJ ')
    ModifySQL.Strings = (
      'update FIN_MOVIMENTO_CARTAO'
      'set'
      '  ADMINISTRADORA = :ADMINISTRADORA,'
      '  CLIENTE = :CLIENTE,'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CONCILIADO = :CONCILIADO,'
      '  CONTA = :CONTA,'
      '  CPF_CNPJ = :CPF_CNPJ,'
      '  DATA = :DATA,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  NUM_BANCO = :NUM_BANCO,'
      '  NUM_CARTAO = :NUM_CARTAO,'
      '  NUM_CONTA = :NUM_CONTA,'
      '  REEMBOLSO = :REEMBOLSO,'
      '  TIPO_DOC = :TIPO_DOC,'
      '  USUARIO = :USUARIO,'
      '  VALOR = :VALOR,'
      '  VENDA = :VENDA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  TIPO = :TIPO,'
      '  NUM_PARCELAS = :NUM_PARCELAS,'
      '  TAXA = :TAXA,'
      '  TURNO = :TURNO,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  PROCESSADO = :PROCESSADO,'
      '  PLANILHA = :PLANILHA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 203
    Top = 461
    object CartaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object CartaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CODIGO"'
      Required = True
    end
    object CartaoADMINISTRADORA: TIntegerField
      DisplayLabel = 'C'#243'd. Administradora'
      FieldName = 'ADMINISTRADORA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."ADMINISTRADORA"'
      Required = True
      OnValidate = CartaoADMINISTRADORAValidate
    end
    object CartaoCLIENTE: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'CLIENTE'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CLIENTE"'
      Size = 50
    end
    object CartaoCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object CartaoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONTA"'
      Required = True
    end
    object CartaoCPF_CNPJ: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CPF_CNPJ"'
    end
    object CartaoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA"'
    end
    object CartaoDOCUMENTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DOCUMENTO"'
    end
    object CartaoNUM_BANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NUM_BANCO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_BANCO"'
      FixedChar = True
      Size = 3
    end
    object CartaoNUM_CARTAO: TIBStringField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'NUM_CARTAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CARTAO"'
      Required = True
    end
    object CartaoNUM_CONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'NUM_CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_CONTA"'
    end
    object CartaoREEMBOLSO: TDateTimeField
      DisplayLabel = 'Reembolso'
      FieldName = 'REEMBOLSO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."REEMBOLSO"'
    end
    object CartaoTIPO_DOC: TIBStringField
      DisplayLabel = 'Tp. Docto'
      FieldName = 'TIPO_DOC'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object CartaoUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."USUARIO"'
      Required = True
    end
    object CartaoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object CartaoVENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VENDA"'
    end
    object CartaoPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PESSOA_FJ"'
      OnValidate = CartaoPESSOA_FJValidate
    end
    object CartaoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO"'
      FixedChar = True
      Size = 3
    end
    object CartaoNUM_PARCELAS: TIntegerField
      DisplayLabel = 'N'#186' Parcelas'
      FieldName = 'NUM_PARCELAS'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_PARCELAS"'
    end
    object CartaoTAXA: TFloatField
      DisplayLabel = 'Taxa'
      FieldName = 'TAXA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TAXA"'
      DisplayFormat = '% ###,##0.00'
    end
    object CartaoValor_Liquido: TFloatField
      DisplayLabel = 'Vlr. L'#237'quido'
      FieldKind = fkCalculated
      FieldName = 'Valor_Liquido'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object CartaoTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TURNO"'
    end
    object CartaoDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA_CONCILIACAO"'
    end
    object CartaoPROCESSADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object CartaoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PLANILHA"'
    end
  end
  object Ver_Cobrancas_Periodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    DATA_COBRANCA ,'
      '    MOTIVO ,'
      '    COBRAR_EM ,'
      '    HISTORICO ,'
      '    PAGO_EM ,'
      '    NOME_MOTIVO ,'
      '    COBRADOR,'
      '    NOME_COBRADOR,'
      '    NOME, '
      '    PESSOA_FJ '
      'FROM VER_FIN_COBRANCAS_PERIODO'
      '( :CNPJ, :DINI, :DFIM )'
      '')
    Left = 698
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object Ver_Cobrancas_PeriodoDATA_COBRANCA: TDateTimeField
      DisplayLabel = 'Data Cobran'#231'a'
      FieldName = 'DATA_COBRANCA'
      Origin = '"HISTORICO_FIN_COBRANCAS"."DATA_COBRANCA"'
    end
    object Ver_Cobrancas_PeriodoCOBRAR_EM: TDateTimeField
      DisplayLabel = 'Cobrar Em'
      FieldName = 'COBRAR_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS"."COBRAR_EM"'
    end
    object Ver_Cobrancas_PeriodoMOTIVO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."MOTIVO"'
    end
    object Ver_Cobrancas_PeriodoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."HISTORICO"'
      Size = 100
    end
    object Ver_Cobrancas_PeriodoPAGO_EM: TDateTimeField
      DisplayLabel = 'Pago em'
      FieldName = 'PAGO_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS"."PAGO_EM"'
    end
    object Ver_Cobrancas_PeriodoNOME_MOTIVO: TIBStringField
      DisplayLabel = 'Nome Motivo'
      FieldName = 'NOME_MOTIVO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME_MOTIVO"'
      Size = 50
    end
    object Ver_Cobrancas_PeriodoCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."COBRADOR"'
    end
    object Ver_Cobrancas_PeriodoNOME_COBRADOR: TIBStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOME_COBRADOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME_COBRADOR"'
      Size = 50
    end
    object Ver_Cobrancas_PeriodoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."NOME"'
      Size = 50
    end
    object Ver_Cobrancas_PeriodoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Ciente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."PESSOA_FJ"'
    end
  end
  object VER_DADOS_FATURA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VER_DADOS_FATURACalcFields
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    PESSOA_FJ ,'
      '    DATA ,'
      '    VALOR ,'
      '    VALOR_ORIGINAL ,'
      '    DESCONTO ,'
      '    JUROS ,'
      '    JUROS_DIA ,'
      '    VENCIMENTO ,'
      '    ULTIMA_BX_PARCIAL ,'
      '    HISTORICO ,'
      '    NOME ,'
      '    NOME_FANTASIA ,'
      '    COMPRADOR ,'
      '    FONE_COMPRADOR ,'
      '    ENDERECO ,'
      '    NUMERO ,'
      '    CIDADE ,'
      '    BAIRRO ,'
      '    CEP ,'
      '    UF ,'
      '    AGRUPADORA ,'
      '    DUPLICATA ,'
      '    BAIXAS_PARCIAIS ,'
      '    BAIXAS_PARCIAIS_DIA '
      'FROM VER_DADOS_FATURA'
      '( :CNPJ, :pessoa, :DINI, :DFIM )')
    Left = 698
    Top = 209
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'pessoa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object VER_DADOS_FATURACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_DADOS_FATURA"."CODIGO"'
    end
    object VER_DADOS_FATURAPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_DADOS_FATURA"."PESSOA_FJ"'
    end
    object VER_DADOS_FATURADATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_DADOS_FATURA"."DATA"'
    end
    object VER_DADOS_FATURAVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_DADOS_FATURA"."VALOR"'
      Precision = 18
      Size = 4
    end
    object VER_DADOS_FATURAVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_DADOS_FATURA"."VALOR_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object VER_DADOS_FATURADESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_DADOS_FATURA"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object VER_DADOS_FATURAJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VER_DADOS_FATURA"."JUROS"'
      Precision = 18
      Size = 4
    end
    object VER_DADOS_FATURAJUROS_DIA: TIBBCDField
      FieldName = 'JUROS_DIA'
      Origin = '"VER_DADOS_FATURA"."JUROS_DIA"'
      Precision = 18
      Size = 4
    end
    object VER_DADOS_FATURAVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = '"VER_DADOS_FATURA"."VENCIMENTO"'
    end
    object VER_DADOS_FATURAULTIMA_BX_PARCIAL: TDateTimeField
      FieldName = 'ULTIMA_BX_PARCIAL'
      Origin = '"VER_DADOS_FATURA"."ULTIMA_BX_PARCIAL"'
    end
    object VER_DADOS_FATURAHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_DADOS_FATURA"."HISTORICO"'
      Size = 100
    end
    object VER_DADOS_FATURANOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_DADOS_FATURA"."NOME"'
      Size = 50
    end
    object VER_DADOS_FATURANOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"VER_DADOS_FATURA"."NOME_FANTASIA"'
      Size = 50
    end
    object VER_DADOS_FATURACOMPRADOR: TIBStringField
      FieldName = 'COMPRADOR'
      Origin = '"VER_DADOS_FATURA"."COMPRADOR"'
      Size = 50
    end
    object VER_DADOS_FATURAFONE_COMPRADOR: TIBStringField
      FieldName = 'FONE_COMPRADOR'
      Origin = '"VER_DADOS_FATURA"."FONE_COMPRADOR"'
      Size = 15
    end
    object VER_DADOS_FATURAENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_DADOS_FATURA"."ENDERECO"'
      Size = 50
    end
    object VER_DADOS_FATURANUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_DADOS_FATURA"."NUMERO"'
      Size = 15
    end
    object VER_DADOS_FATURACIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_DADOS_FATURA"."CIDADE"'
      Size = 50
    end
    object VER_DADOS_FATURABAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_DADOS_FATURA"."BAIRRO"'
      Size = 50
    end
    object VER_DADOS_FATURACEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_DADOS_FATURA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VER_DADOS_FATURAUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_DADOS_FATURA"."UF"'
      FixedChar = True
      Size = 2
    end
    object VER_DADOS_FATURAAGRUPADORA: TIntegerField
      FieldName = 'AGRUPADORA'
      Origin = '"VER_DADOS_FATURA"."AGRUPADORA"'
    end
    object VER_DADOS_FATURADUPLICATA: TIBStringField
      FieldName = 'DUPLICATA'
      Origin = '"VER_DADOS_FATURA"."DUPLICATA"'
      Size = 30
    end
    object VER_DADOS_FATURABAIXAS_PARCIAIS: TIBBCDField
      FieldName = 'BAIXAS_PARCIAIS'
      Origin = '"VER_DADOS_FATURA"."BAIXAS_PARCIAIS"'
      Precision = 18
      Size = 4
    end
    object VER_DADOS_FATURABAIXAS_PARCIAIS_DIA: TIBBCDField
      FieldName = 'BAIXAS_PARCIAIS_DIA'
      Origin = '"VER_DADOS_FATURA"."BAIXAS_PARCIAIS_DIA"'
      Precision = 18
      Size = 4
    end
    object VER_DADOS_FATURAJUROS_CALCULADOS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JUROS_CALCULADOS'
      Calculated = True
    end
    object VER_DADOS_FATURATOTAL_NOMINAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_NOMINAL'
      Calculated = True
    end
  end
  object SelListaFatura_Futura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
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
      '    SELECIONADA'
      
        'FROM VER_FAT_VENDAS_FATURA_FUTURAS ( :CNPJ, :DINI, :DFIM, :PESSO' +
        'A )'
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
    Left = 698
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA'
        ParamType = ptUnknown
      end>
    object SelListaFatura_FuturaCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDA"."CODIGO"'
      Required = True
    end
    object SelListaFatura_FuturaDATA: TDateTimeField
      Tag = 1
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FAT_VENDA"."DATA"'
    end
    object SelListaFatura_FuturaFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"FAT_VENDA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelListaFatura_FuturaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FAT_VENDA"."HISTORICO"'
      Size = 100
    end
    object SelListaFatura_FuturaPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDA"."PESSOA_FJ"'
      Required = True
    end
    object SelListaFatura_FuturaUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FAT_VENDA"."USUARIO"'
      Required = True
    end
    object SelListaFatura_FuturaVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"FAT_VENDA"."VENDEDOR"'
      Required = True
    end
    object SelListaFatura_FuturaNUM_NF: TIntegerField
      Tag = 1
      DisplayLabel = 'Nf'
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDA"."NUM_NF"'
    end
    object SelListaFatura_FuturaNUM_CUPOM: TIntegerField
      Tag = 1
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDA"."NUM_CUPOM"'
    end
    object SelListaFatura_FuturaNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"FAT_VENDA"."NATUREZA"'
      Required = True
    end
    object SelListaFatura_FuturaTIPO_VENDA: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VENDA'
      Origin = '"FAT_VENDAS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object SelListaFatura_FuturaNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumidor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object SelListaFatura_FuturaORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"FAT_VENDAS"."ORCAMENTO"'
    end
    object SelListaFatura_FuturaLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"FAT_VENDAS"."LOCAL"'
    end
    object SelListaFatura_FuturaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_VENDAS"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acres'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_VENDAS"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_VENDAS"."OBSERVACAO"'
      Size = 80
    end
    object SelListaFatura_FuturaPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESSOA_RAZAO"'
      Size = 50
    end
    object SelListaFatura_FuturaNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_NATUREZA"'
      Size = 50
    end
    object SelListaFatura_FuturaENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object SelListaFatura_FuturaFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FORMA_PGTO"'
    end
    object SelListaFatura_FuturaPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PROPRIEDADE"'
    end
    object SelListaFatura_FuturaCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONVENIADO"'
    end
    object SelListaFatura_FuturaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object SelListaFatura_FuturaLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."LOCAL_COBRANCA"'
    end
    object SelListaFatura_FuturaENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liqu'#237'do'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TERCEIRO"'
    end
    object SelListaFatura_FuturaCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CARGA"'
    end
    object SelListaFatura_FuturaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."PESO"'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaREQUISICAO: TIBStringField
      DisplayLabel = 'Requisi'#231#227'o'
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."REQUISICAO"'
      Size = 6
    end
    object SelListaFatura_FuturaDESCRICAO: TBlobField
      DisplayLabel = 'Descri'#231#227'o'
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESCRICAO"'
      Size = 8
    end
    object SelListaFatura_FuturaNOME_FORMA: TIBStringField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'NOME_FORMA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_FORMA"'
      Size = 50
    end
    object SelListaFatura_FuturaFATURA_FUTURA: TIBStringField
      DisplayLabel = 'Fat. Fut'
      FieldName = 'FATURA_FUTURA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FATURA_FUTURA"'
      Size = 1
    end
    object SelListaFatura_FuturaNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object SelListaFatura_FuturaCONTA_CAIXA: TIntegerField
      DisplayLabel = 'Conta Caixa'
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CONTA_CAIXA"'
    end
    object SelListaFatura_FuturaCANCELADA: TIBStringField
      DisplayLabel = 'Cancelada'
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object SelListaFatura_FuturaBASE_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Base Icms Subst'
      FieldName = 'BASE_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."BASE_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaVALOR_ICM_SUBST: TIBBCDField
      DisplayLabel = 'Icms'
      FieldName = 'VALOR_ICM_SUBST'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."VALOR_ICM_SUBST"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaFRETE: TIBBCDField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."FRETE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaSEGURO: TIBBCDField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SEGURO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDESPESAS: TIBBCDField
      DisplayLabel = 'Despesas'
      FieldName = 'DESPESAS'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DESPESAS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaTOTAL_NOTA: TIBBCDField
      DisplayLabel = 'Total Nota'
      FieldName = 'TOTAL_NOTA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."TOTAL_NOTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelListaFatura_FuturaDATA_CAIXA: TDateField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."DATA_CAIXA"'
    end
    object SelListaFatura_FuturaSELECIONADA: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADA'
      Origin = '"VER_FAT_VENDAS_FATURA_FUTURAS"."SELECIONADA"'
      FixedChar = True
      Size = 1
    end
  end
  object VerPendencias: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerPendenciasCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO ,'
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
      '    DESCONTOS ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
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
      '    FONE ,'
      '    CPF_CGC ,'
      '    SELECIONADO,'
      '    TIPO_DOCTO,'
      '    NUMDUPLICATA ,'
      '    FATURA,'
      '    NUMBOLETO,'
      '    PARCIAL,'
      '    JUROS_PARCIAL,'
      '    DATA_ULT_BAIXA ,'
      '    COBRADOR,'
      '   Arq_morto'
      'From Ver_Receber (:CNPJ)')
    Left = 608
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VerPendenciasCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object VerPendenciasANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object VerPendenciasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object VerPendenciasDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object VerPendenciasPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerPendenciasHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object VerPendenciasVALOR: TIBBCDField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPendenciasBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerPendenciasORIGEM: TIBStringField
      DisplayLabel = 'Or'
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerPendenciasCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object VerPendenciasANO_VN: TSmallintField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object VerPendenciasAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object VerPendenciasNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object VerPendenciasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object VerPendenciasNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object VerPendenciasCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object VerPendenciasBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object VerPendenciasCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerPendenciasUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerPendenciasCOD_END: TIntegerField
      DisplayLabel = 'End'
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object VerPendenciasCOD_CID: TIntegerField
      DisplayLabel = 'Cid'
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object VerPendenciasCOD_BAI: TIntegerField
      DisplayLabel = 'Bai'
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object VerPendenciasFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object VerPendenciasCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object VerPendenciasSELECIONADO: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VerPendenciasVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPendenciasTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerPendenciasJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPendenciasDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPendenciasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VerPendenciasNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object VerPendenciasNUMBOLETO: TIntegerField
      DisplayLabel = 'Num Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object VerPendenciasFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER"."FATURA"'
      DisplayFormat = '#,##0'
    end
    object VerPendenciasPARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER"."PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPendenciasDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER"."DT_EMISSAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerPendenciasDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerPendenciasDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancamento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerPendenciasDT_AVISO: TDateTimeField
      DisplayLabel = 'Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER"."DT_AVISO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerPendenciasJUROS_PARCIAL: TIBBCDField
      DisplayLabel = 'Juros Parcial'
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER"."JUROS_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerPendenciasSelecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerPendenciasDATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER"."DATA_ULT_BAIXA"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerPendenciasJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerPendenciasTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerPendenciasCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER"."COBRADOR"'
    end
    object VerPendenciasATRASO: TIntegerField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'ATRASO'
      Calculated = True
    end
    object VerPendenciasARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      Origin = '"VER_RECEBER"."ARQ_MORTO"'
      FixedChar = True
      Size = 10
    end
  end
  object Ver_Cartao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Ver_CartaoCalcFields
    SQL.Strings = (
      'select ADMINISTRADORA, '
      '          CLIENTE, '
      '          CNPJ, '
      '          CODIGO, '
      '          CONCILIADO,'
      '          CONTA, '
      '          CPF_CNPJ, '
      '          DATA, '
      '          DOCUMENTO, '
      '          NUM_BANCO, '
      '          NUM_CARTAO, '
      '          NUM_CONTA, '
      '          REEMBOLSO, '
      '          TIPO_DOC, '
      '          USUARIO, '
      '          VALOR, '
      '          VENDA,'
      '          PESSOA_FJ,'
      '          TIPO,'
      '          NUM_PARCELAS,'
      '          TAXA,'
      '          TURNO ,'
      '          DATA_CONCILIACAO,'
      '          PROCESSADO'
      'from FIN_MOVIMENTO_CARTAO'
      'Where CNPJ = :CNPJ AND PROCESSADO = '#39'N'#39)
    Left = 203
    Top = 360
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
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
    object Ver_CartaoCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Ver_CartaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CODIGO"'
      Required = True
    end
    object Ver_CartaoCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object Ver_CartaoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CONTA"'
      Required = True
    end
    object Ver_CartaoCPF_CNPJ: TIBStringField
      DisplayLabel = 'Cnpj/Cpf'
      FieldName = 'CPF_CNPJ'
      Origin = '"FIN_MOVIMENTO_CARTAO"."CPF_CNPJ"'
    end
    object Ver_CartaoDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA"'
      Required = True
    end
    object Ver_CartaoDOCUMENTO: TIBStringField
      DisplayLabel = 'Docto'
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
      DisplayLabel = 'Tp Docto'
      FieldName = 'TIPO_DOC'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TIPO_DOC"'
      FixedChar = True
      Size = 3
    end
    object Ver_CartaoUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."USUARIO"'
      Required = True
    end
    object Ver_CartaoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_MOVIMENTO_CARTAO"."VALOR"'
      DisplayFormat = '###,##0.00'
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
      DisplayLabel = 'Pcla'
      FieldName = 'NUM_PARCELAS'
      Origin = '"FIN_MOVIMENTO_CARTAO"."NUM_PARCELAS"'
    end
    object Ver_CartaoTAXA: TFloatField
      DisplayLabel = 'Taxa'
      FieldName = 'TAXA'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TAXA"'
      DisplayFormat = '% ##0.00'
    end
    object Ver_CartaoTURNO: TIntegerField
      DisplayLabel = 'Turno'
      FieldName = 'TURNO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."TURNO"'
    end
    object Ver_CartaoDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."DATA_CONCILIACAO"'
    end
    object Ver_CartaoPROCESSADO: TIBStringField
      DisplayLabel = 'Processado'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_MOVIMENTO_CARTAO"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object Ver_CartaoValor_Liquido: TFloatField
      DisplayLabel = 'L'#237'quido'
      FieldKind = fkCalculated
      FieldName = 'Valor_Liquido'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object Historico_Cobrancas_Pcl: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    * '
      'FROM HISTORICO_FIN_COBRANCAS_PCL'
      '( :CNPJ, :PESSOA_FJ, :RECEBER, :ANO_REC )'
      'ORDER BY DATA_COBRANCA')
    Left = 352
    Top = 461
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
        Name = 'RECEBER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO_REC'
        ParamType = ptUnknown
      end>
    object Historico_Cobrancas_PclDATA_COBRANCA: TDateTimeField
      DisplayLabel = 'Data Cobran'#231'a'
      FieldName = 'DATA_COBRANCA'
      Origin = '"HISTORICO_FIN_COBRANCAS"."DATA_COBRANCA"'
    end
    object Historico_Cobrancas_PclCOBRAR_EM: TDateTimeField
      DisplayLabel = 'Cobrar Em'
      FieldName = 'COBRAR_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS"."COBRAR_EM"'
    end
    object Historico_Cobrancas_PclMOTIVO: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."MOTIVO"'
    end
    object Historico_Cobrancas_PclHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."HISTORICO"'
      Size = 100
    end
    object Historico_Cobrancas_PclPAGO_EM: TDateTimeField
      DisplayLabel = 'Pago em'
      FieldName = 'PAGO_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS"."PAGO_EM"'
    end
    object Historico_Cobrancas_PclNOME_MOTIVO: TIBStringField
      DisplayLabel = 'Nome Motivo'
      FieldName = 'NOME_MOTIVO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME_MOTIVO"'
      Size = 50
    end
    object Historico_Cobrancas_PclCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."COBRADOR"'
    end
    object Historico_Cobrancas_PclNOME_COBRADOR: TIBStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOME_COBRADOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME_COBRADOR"'
      Size = 50
    end
    object Historico_Cobrancas_PclNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"HISTORICO_FIN_COBRANCAS"."NOME"'
      Size = 50
    end
    object Historico_Cobrancas_PclDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vecnto'
      FieldName = 'DT_VENCTO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."DT_VENCTO"'
    end
    object Historico_Cobrancas_PclDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."DOCTO"'
    end
    object Historico_Cobrancas_PclVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"HISTORICO_FIN_COBRANCAS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Historico_Cobrancas_PclCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"HISTORICO_FIN_COBRANCAS"."CODIGO"'
    end
    object Historico_Cobrancas_PclANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"HISTORICO_FIN_COBRANCAS_PCL"."ANO"'
    end
    object Historico_Cobrancas_PclVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"HISTORICO_FIN_COBRANCAS_PCL"."VENDA"'
    end
    object Historico_Cobrancas_PclCOD_REC: TIntegerField
      FieldName = 'COD_REC'
      Origin = '"HISTORICO_FIN_COBRANCAS_PCL"."COD_REC"'
    end
    object Historico_Cobrancas_PclHR_COBRAR_EM: TTimeField
      DisplayLabel = 'Hr. Agendada'
      FieldName = 'HR_COBRAR_EM'
      Origin = '"HISTORICO_FIN_COBRANCAS_PCL"."HR_COBRAR_EM"'
    end
    object Historico_Cobrancas_PclHR_COBRANCA: TTimeField
      DisplayLabel = 'Hr. Cobran'#231'a'
      FieldName = 'HR_COBRANCA'
      Origin = '"HISTORICO_FIN_COBRANCAS_PCL"."HR_COBRANCA"'
    end
  end
  object Mensalidades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = MensalidadesAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    DeleteSQL.Strings = (
      'delete from GLO_MENSALIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into GLO_MENSALIDADES'
      
        '  (CNPJ, FORMA_PAGTO, NATUREZA, PESSOA_FJ, PRODUTO, VALOR, VENDE' +
        'DOR, NOME, '
      '   VENCIMENTO)'
      'values'
      
        '  (:CNPJ, :FORMA_PAGTO, :NATUREZA, :PESSOA_FJ, :PRODUTO, :VALOR,' +
        ' :VENDEDOR, '
      '   :NOME, :VENCIMENTO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  PRODUTO,'
      '  VALOR,'
      '  FORMA_PAGTO,'
      '  NATUREZA,'
      '  VENDEDOR,'
      '  NOME,'
      '  VENCIMENTO'
      'from GLO_MENSALIDADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'select CNPJ, '
      '           FORMA_PAGTO, '
      '           NATUREZA, '
      '           PESSOA_FJ, '
      '           PRODUTO, '
      '           VALOR, '
      '           VENDEDOR,'
      '           NOME,'
      '           VENCIMENTO '
      'from GLO_MENSALIDADES'
      'WHERE CNPJ = :CNPJ')
    ModifySQL.Strings = (
      'update GLO_MENSALIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  FORMA_PAGTO = :FORMA_PAGTO,'
      '  NATUREZA = :NATUREZA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRODUTO = :PRODUTO,'
      '  VALOR = :VALOR,'
      '  VENDEDOR = :VENDEDOR,'
      '  NOME = :NOME,'
      '  VENCIMENTO = :VENCIMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    Left = 22
    Top = 412
    object MensalidadesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"GLO_MENSALIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MensalidadesFORMA_PAGTO: TIntegerField
      DisplayLabel = 'Frm Pagto'
      FieldName = 'FORMA_PAGTO'
      Origin = '"GLO_MENSALIDADES"."FORMA_PAGTO"'
      Required = True
    end
    object MensalidadesNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"GLO_MENSALIDADES"."NATUREZA"'
      Required = True
    end
    object MensalidadesPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_MENSALIDADES"."PESSOA_FJ"'
      Required = True
      OnValidate = MensalidadesPESSOA_FJValidate
    end
    object MensalidadesPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"GLO_MENSALIDADES"."PRODUTO"'
      Required = True
      Size = 15
    end
    object MensalidadesVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"GLO_MENSALIDADES"."VALOR"'
    end
    object MensalidadesVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"GLO_MENSALIDADES"."VENDEDOR"'
      Required = True
    end
    object MensalidadesNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"GLO_MENSALIDADES"."NOME"'
      Size = 50
    end
    object MensalidadesVENCIMENTO: TIntegerField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
      Origin = '"GLO_MENSALIDADES"."VENCIMENTO"'
    end
  end
  object VER_CLIENTE_DADOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT'
      '  CONJUGE ,'
      '  PAI     ,'
      '  MAE   '
      'FROM VER_CLIENTE_DADOS'
      '( :CNPJ, :CODIGO )'
      '')
    Left = 115
    Top = 461
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
    object VER_CLIENTE_DADOSCONJUGE: TIBStringField
      FieldName = 'CONJUGE'
      Origin = '"VER_CLIENTE_DADOS"."CONJUGE"'
      Size = 50
    end
    object VER_CLIENTE_DADOSPAI: TIBStringField
      FieldName = 'PAI'
      Origin = '"VER_CLIENTE_DADOS"."PAI"'
      Size = 50
    end
    object VER_CLIENTE_DADOSMAE: TIBStringField
      FieldName = 'MAE'
      Origin = '"VER_CLIENTE_DADOS"."MAE"'
      Size = 50
    end
  end
  object SelVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'Select * '
      'From FAT_VENDEDOR'
      'Where Cnpj = :CNPJ AND ATIVO = '#39'S'#39
      'Order By Nome')
    Left = 698
    Top = 360
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
  object Baixas_Receber_Vendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Baixas_Receber_VendedorCalcFields
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
      '    NUMDUPLICATA,'
      '    LOCAL,'
      '    VENDEDOR,'
      '    NOME_VENDEDOR,'
      '    CPF_CGC'
      'From VER_BAIXA_RECEBER_VENDEDOR ( :CNPJ, :DINI, :DFIM )')
    Left = 115
    Top = 514
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object Baixas_Receber_VendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."CODIGO"'
    end
    object Baixas_Receber_VendedorANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."ANO"'
    end
    object Baixas_Receber_VendedorCODIGO_CR: TIntegerField
      FieldName = 'CODIGO_CR'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."CODIGO_CR"'
    end
    object Baixas_Receber_VendedorANO_CR: TSmallintField
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."ANO_CR"'
    end
    object Baixas_Receber_VendedorDT_BAIXA: TDateField
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DT_BAIXA"'
    end
    object Baixas_Receber_VendedorHISTORICO_BX: TIBStringField
      FieldName = 'HISTORICO_BX'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."HISTORICO_BX"'
      Size = 100
    end
    object Baixas_Receber_VendedorVLR_BAIXA: TIBBCDField
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."VLR_BAIXA"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."PLANILHA"'
    end
    object Baixas_Receber_VendedorTAXA_JUROS: TIBBCDField
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorTIPO_JUROS: TIBStringField
      FieldName = 'TIPO_JUROS'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Receber_VendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."PESSOA_FJ"'
    end
    object Baixas_Receber_VendedorDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DT_EMISSAO"'
    end
    object Baixas_Receber_VendedorDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DT_VENCTO"'
    end
    object Baixas_Receber_VendedorDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DT_LANCTO"'
    end
    object Baixas_Receber_VendedorDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DOCTO"'
    end
    object Baixas_Receber_VendedorPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object Baixas_Receber_VendedorHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."HISTORICO"'
      Size = 100
    end
    object Baixas_Receber_VendedorVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorJUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorDESCONTOS_REC: TIBBCDField
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DESCONTOS_REC"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_VendedorBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Receber_VendedorORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Baixas_Receber_VendedorCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."CODIGO_VN"'
    end
    object Baixas_Receber_VendedorANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."ANO_VN"'
    end
    object Baixas_Receber_VendedorAVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."AVISO"'
    end
    object Baixas_Receber_VendedorDT_AVISO: TDateField
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."DT_AVISO"'
    end
    object Baixas_Receber_VendedorFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."FATURA"'
    end
    object Baixas_Receber_VendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."NOME"'
      Size = 50
    end
    object Baixas_Receber_VendedorNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."NUMBOLETO"'
    end
    object Baixas_Receber_VendedorNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."NUMDUPLICATA"'
    end
    object Baixas_Receber_VendedorLOCAL: TIBStringField
      FieldName = 'LOCAL'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."LOCAL"'
      FixedChar = True
      Size = 3
    end
    object Baixas_Receber_VendedorVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."VENDEDOR"'
    end
    object Baixas_Receber_VendedorNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."NOME_VENDEDOR"'
      Size = 50
    end
    object Baixas_Receber_VendedorATRASO: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'ATRASO'
      Calculated = True
    end
    object Baixas_Receber_VendedorTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object Baixas_Receber_VendedorCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_RECEBER_VENDEDOR"."CPF_CGC"'
      Size = 15
    end
  end
  object Baixas_Pagar_Hist: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Baixas_Pagar_HistCalcFields
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
      '    ENDERECO ,'
      '    NUMERO ,'
      '    CIDADE ,'
      '    BAIRRO ,'
      '    CEP ,'
      '    UF ,'
      '    COD_END ,'
      '    COD_CID ,'
      '    COD_BAI ,'
      '    FONE,'
      '    CPF_CGC ,'
      '    CENTRO_CUSTO ,'
      '    NOME_CENTRO ,'
      '    DUPLICATA ,'
      '    CONFERIDA '
      'From VER_BAIXA_PAGAR_HISTORICO ( :CNPJ, :CODIGO_PAGAR, '
      ':ANO_PAGAR )')
    Left = 278
    Top = 463
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CODIGO_PAGAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO_PAGAR'
        ParamType = ptUnknown
      end>
    object Baixas_Pagar_HistCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_Pagar_HistHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_Pagar_HistPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_Pagar_HistTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Pagar_HistPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_Pagar_HistDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_Pagar_HistPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_Pagar_HistHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_Pagar_HistBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Pagar_HistORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_Pagar_HistAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_Pagar_HistVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_Pagar_HistENDERECO: TIBStringField
      DisplayLabel = 'End.'
      FieldName = 'ENDERECO'
      Origin = '"VER_BAIXA_RECEBER"."ENDERECO"'
      Size = 50
    end
    object Baixas_Pagar_HistNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_BAIXA_RECEBER"."NUMERO"'
      Size = 15
    end
    object Baixas_Pagar_HistCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_BAIXA_RECEBER"."CIDADE"'
      Size = 50
    end
    object Baixas_Pagar_HistBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_BAIXA_RECEBER"."BAIRRO"'
      Size = 50
    end
    object Baixas_Pagar_HistCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_BAIXA_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Baixas_Pagar_HistUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_BAIXA_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object Baixas_Pagar_HistCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_BAIXA_RECEBER"."COD_END"'
    end
    object Baixas_Pagar_HistCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_BAIXA_RECEBER"."COD_CID"'
    end
    object Baixas_Pagar_HistCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_BAIXA_RECEBER"."COD_BAI"'
    end
    object Baixas_Pagar_HistFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_BAIXA_RECEBER"."FONE"'
    end
    object Baixas_Pagar_HistCPF_CGC: TIBStringField
      Tag = 1
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object Baixas_Pagar_HistTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_Pagar_HistANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_Pagar_HistVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistCODIGO_PG: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO_PG'
      Origin = '"VER_BAIXA_PAGAR"."CODIGO_PG"'
    end
    object Baixas_Pagar_HistANO_PG: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_PG'
      Origin = '"VER_BAIXA_PAGAR"."ANO_PG"'
    end
    object Baixas_Pagar_HistJUROS_PAG: TIBBCDField
      DisplayLabel = 'Juros Pagos'
      FieldName = 'JUROS_PAG'
      Origin = '"VER_BAIXA_PAGAR"."JUROS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistDESCONTOS_PAG: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS_PAG'
      Origin = '"VER_BAIXA_PAGAR"."DESCONTOS_PAG"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Pagar_HistCODIGO_ENT: TIntegerField
      DisplayLabel = 'Entrada'
      FieldName = 'CODIGO_ENT'
      Origin = '"VER_BAIXA_PAGAR"."CODIGO_ENT"'
    end
    object Baixas_Pagar_HistANO_ENT: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_ENT'
      Origin = '"VER_BAIXA_PAGAR"."ANO_ENT"'
    end
    object Baixas_Pagar_HistDT_BAIXA: TDateField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_PAGAR"."DT_BAIXA"'
    end
    object Baixas_Pagar_HistDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_PAGAR"."DT_EMISSAO"'
    end
    object Baixas_Pagar_HistDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_PAGAR"."DT_VENCTO"'
    end
    object Baixas_Pagar_HistDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_PAGAR"."DT_LANCTO"'
    end
    object Baixas_Pagar_HistDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_PAGAR"."DT_AVISO"'
    end
    object Baixas_Pagar_HistCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"VER_BAIXA_PAGAR"."CENTRO_CUSTO"'
    end
    object Baixas_Pagar_HistNOME_CENTRO: TIBStringField
      FieldName = 'NOME_CENTRO'
      Origin = '"VER_BAIXA_PAGAR"."NOME_CENTRO"'
      Size = 50
    end
    object Baixas_Pagar_HistDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"VER_BAIXA_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object Baixas_Pagar_HistCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"VER_BAIXA_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
  end
  object ENTRADAS_PERIODO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    DOCUMENTO ,'
      '    VALOR ,'
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    HISTORICO,'
      '    CENTRO_CUSTO,'
      '    NOME_CENTRO,'
      '    DATA_REF'
      'FROM ENTRADAS_PERIODO'
      '( :CNPJ, :INI, :FIM )')
    Left = 608
    Top = 360
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
    object ENTRADAS_PERIODODOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"ENTRADAS_PERIODO"."DOCUMENTO"'
    end
    object ENTRADAS_PERIODOVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"ENTRADAS_PERIODO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object ENTRADAS_PERIODOPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"ENTRADAS_PERIODO"."PESSOA_FJ"'
    end
    object ENTRADAS_PERIODONOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"ENTRADAS_PERIODO"."NOME"'
      Size = 50
    end
    object ENTRADAS_PERIODOHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"ENTRADAS_PERIODO"."HISTORICO"'
      Size = 100
    end
    object ENTRADAS_PERIODOCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"ENTRADAS_PERIODO"."CENTRO_CUSTO"'
    end
    object ENTRADAS_PERIODONOME_CENTRO: TIBStringField
      FieldName = 'NOME_CENTRO'
      Origin = '"ENTRADAS_PERIODO"."NOME_CENTRO"'
      Size = 50
    end
    object ENTRADAS_PERIODODATA_REF: TDateTimeField
      FieldName = 'DATA_REF'
      Origin = '"ENTRADAS_PERIODO"."DATA_REF"'
    end
  end
  object VerCheque_Pago: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    BANCO ,'
      '    CONTA ,'
      '    CHEQUE ,'
      '    VENDA ,'
      '    EMISSAO ,'
      '    PRE_DATE ,'
      '    VALOR ,'
      '    JUROS,'
      '    CONCILIADO ,'
      '    PESSOA_FJ ,'
      '    HISTORICO ,'
      '    AGENCIA ,'
      '    NOME ,'
      '    FONE ,'
      '    FAX ,'
      '    CELULAR ,'
      '    CPF_CGC ,'
      '    DATA_CONCILIACAO,'
      '    MOEDA1 ,'
      '    MOEDA2 ,'
      '    TIPO ,'
      '    DATA_ACERTO ,'
      '    PLANILHA ,'
      '    DIGITO_AGENCIA ,'
      '    DIGITO_CHEQUE ,'
      '    DATA_DEVOLUCAO ,'
      '    MOTIVO_DEVOLUCAO ,'
      '    CODIGO_MOTIVO_DEVOLUCAO ,'
      '    VEZES_DEVOLUCAO ,'
      '    RG_IE,'
      '    PROCESSADO,'
      'DATA_REAPRES'
      'from VER_FIN_CHEQUES_PESSOA_PAGO ( :CNPJ, :COD )')
    Left = 608
    Top = 51
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
    object VerCheque_PagoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VerCheque_PagoCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES"."CONTA"'
      Size = 15
    end
    object VerCheque_PagoCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES"."CHEQUE"'
      Size = 6
    end
    object VerCheque_PagoVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES"."VENDA"'
    end
    object VerCheque_PagoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_PagoCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_PagoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES"."PESSOA_FJ"'
    end
    object VerCheque_PagoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object VerCheque_PagoAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object VerCheque_PagoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object VerCheque_PagoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES"."FONE"'
    end
    object VerCheque_PagoFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES"."FAX"'
    end
    object VerCheque_PagoCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES"."CELULAR"'
    end
    object VerCheque_PagoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES"."CPF_CGC"'
      Size = 15
    end
    object VerCheque_PagoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object VerCheque_PagoJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_PagoMOEDA1: TIBBCDField
      DisplayLabel = 'Moeda 1'
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES"."MOEDA1"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_PagoMOEDA2: TIBBCDField
      DisplayLabel = 'Moeda 2'
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES"."MOEDA2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_PagoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 2
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object VerCheque_PagoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES"."PLANILHA"'
    end
    object VerCheque_PagoDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig Ag'#234'ncia'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_PagoDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Cheque'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_PagoMOTIVO_DEVOLUCAO: TIBStringField
      DisplayLabel = 'Motivo Dev'
      FieldName = 'MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."MOTIVO_DEVOLUCAO"'
      Size = 50
    end
    object VerCheque_PagoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField
      DisplayLabel = 'C'#243'd. Devolu'#231#227'o'
      FieldName = 'CODIGO_MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."CODIGO_MOTIVO_DEVOLUCAO"'
    end
    object VerCheque_PagoVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Vezes Devolu'#231#227'o'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."VEZES_DEVOLUCAO"'
    end
    object VerCheque_PagoEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES"."EMISSAO"'
    end
    object VerCheque_PagoPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES"."PRE_DATE"'
    end
    object VerCheque_PagoDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object VerCheque_PagoDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES"."DATA_ACERTO"'
    end
    object VerCheque_PagoDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."DATA_DEVOLUCAO"'
    end
    object VerCheque_PagoRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_FIN_CHEQUES"."RG_IE"'
      Size = 15
    end
    object VerCheque_PagoPROCESSADO: TIBStringField
      DisplayLabel = 'Processado'
      FieldName = 'PROCESSADO'
      Origin = '"VER_FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_PagoDATA_REAPRES: TDateField
      DisplayLabel = 'Dt. Reapresenta'#231#227'o'
      FieldName = 'DATA_REAPRES'
      Origin = '"VER_FIN_CHEQUES_PESSOA_PAGO"."DATA_REAPRES"'
    end
  end
  object VER_ABASTECIMENTOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    CODIGO,'
      '    DATA,'
      '    LITRAGEM,'
      '    UNITARIO,'
      '    VENCIMENTO,'
      '    HISTORICO,'
      '    DATA_BAIXA,'
      '    VALOR_BAIXA,'
      '    PESSOA_FJ,'
      '    NOME,'
      '    DOCTO'
      'FROM VER_ABASTECIMENTOS_AVULSOS'
      '( :CNPJ, :DINI, :DFIM )'
      'ORDER BY NOME, PESSOA_FJ')
    Left = 786
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object VER_ABASTECIMENTOSCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."CODIGO"'
    end
    object VER_ABASTECIMENTOSDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."DATA"'
    end
    object VER_ABASTECIMENTOSLITRAGEM: TIBBCDField
      FieldName = 'LITRAGEM'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."LITRAGEM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ABASTECIMENTOSUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ABASTECIMENTOSVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."VENCIMENTO"'
    end
    object VER_ABASTECIMENTOSHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."HISTORICO"'
      Size = 100
    end
    object VER_ABASTECIMENTOSDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."DATA_BAIXA"'
    end
    object VER_ABASTECIMENTOSVALOR_BAIXA: TIBBCDField
      FieldName = 'VALOR_BAIXA'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."VALOR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_ABASTECIMENTOSPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."PESSOA_FJ"'
    end
    object VER_ABASTECIMENTOSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."NOME"'
      Size = 50
    end
    object VER_ABASTECIMENTOSDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_ABASTECIMENTOS_AVULSOS"."DOCTO"'
    end
    object VER_ABASTECIMENTOSTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Baixas_Receber_Caixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = Baixas_Receber_CaixaCalcFields
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
      '    NUMDUPLICATA,'
      '    LOCAL,'
      '    USUARIO'
      'From VER_BAIXA_RECEBER_BAIXA ( :CNPJ, :DINI, :DFIM )')
    Left = 512
    Top = 461
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object Baixas_Receber_CaixaCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object Baixas_Receber_CaixaCODIGO_CR: TIntegerField
      DisplayLabel = 'Cod. Rec'
      FieldName = 'CODIGO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_CR"'
      Required = True
    end
    object Baixas_Receber_CaixaHISTORICO_BX: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist. Baixa'
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object Baixas_Receber_CaixaPLANILHA: TIntegerField
      Tag = 1
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object Baixas_Receber_CaixaTIPO_JUROS: TIBStringField
      DisplayLabel = 'Tipo Juros'
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Receber_CaixaPESSOA_FJ: TIntegerField
      Tag = 1
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object Baixas_Receber_CaixaDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object Baixas_Receber_CaixaPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      FixedChar = True
      Size = 6
    end
    object Baixas_Receber_CaixaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Baixas_Receber_CaixaBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Baixas_Receber_CaixaORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object Baixas_Receber_CaixaCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_VN"'
    end
    object Baixas_Receber_CaixaAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object Baixas_Receber_CaixaVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_BAIXA_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaTAXA_JUROS: TIBBCDField
      DisplayLabel = 'Tx. Juros'
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_BAIXA_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaNOME: TIBStringField
      Tag = 1
      DisplayLabel = ' Nome'
      FieldName = 'NOME'
      Origin = '"VER_BAIXA_RECEBER"."NOME"'
      Size = 50
    end
    object Baixas_Receber_CaixaENDERECO: TIBStringField
      DisplayLabel = 'End.'
      FieldName = 'ENDERECO'
      Origin = '"VER_BAIXA_RECEBER"."ENDERECO"'
      Size = 50
    end
    object Baixas_Receber_CaixaNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_BAIXA_RECEBER"."NUMERO"'
      Size = 15
    end
    object Baixas_Receber_CaixaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_BAIXA_RECEBER"."CIDADE"'
      Size = 50
    end
    object Baixas_Receber_CaixaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_BAIXA_RECEBER"."BAIRRO"'
      Size = 50
    end
    object Baixas_Receber_CaixaCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_BAIXA_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Baixas_Receber_CaixaUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_BAIXA_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object Baixas_Receber_CaixaCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_BAIXA_RECEBER"."COD_END"'
    end
    object Baixas_Receber_CaixaCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_BAIXA_RECEBER"."COD_CID"'
    end
    object Baixas_Receber_CaixaCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_BAIXA_RECEBER"."COD_BAI"'
    end
    object Baixas_Receber_CaixaFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_BAIXA_RECEBER"."FONE"'
    end
    object Baixas_Receber_CaixaCPF_CGC: TIBStringField
      Tag = 1
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_BAIXA_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object Baixas_Receber_CaixaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Baixas_Receber_CaixaANO: TIntegerField
      DisplayLabel = 'Ano Bx'
      FieldName = 'ANO'
      Origin = '"VER_BAIXA_RECEBER"."ANO"'
    end
    object Baixas_Receber_CaixaANO_CR: TIntegerField
      DisplayLabel = 'Ano Rec'
      FieldName = 'ANO_CR'
      Origin = '"VER_BAIXA_RECEBER"."ANO_CR"'
    end
    object Baixas_Receber_CaixaANO_VN: TIntegerField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_BAIXA_RECEBER"."ANO_VN"'
    end
    object Baixas_Receber_CaixaVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_BAIXA_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_BAIXA_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaDESCONTOS_REC: TIBBCDField
      DisplayLabel = 'Descontos Rec'
      FieldName = 'DESCONTOS_REC'
      Origin = '"VER_BAIXA_RECEBER"."DESCONTOS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Baixas_Receber_CaixaDT_BAIXA: TDateField
      DisplayLabel = 'Dt Baixa'
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_RECEBER"."DT_BAIXA"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_Receber_CaixaDT_EMISSAO: TDateField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_BAIXA_RECEBER"."DT_EMISSAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_Receber_CaixaDT_VENCTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_Receber_CaixaDT_LANCTO: TDateField
      DisplayLabel = 'Lan'#231'amento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_BAIXA_RECEBER"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_Receber_CaixaDT_AVISO: TDateField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_BAIXA_RECEBER"."DT_AVISO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object Baixas_Receber_CaixaFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_BAIXA_RECEBER"."FATURA"'
    end
    object Baixas_Receber_CaixaNUMBOLETO: TIntegerField
      DisplayLabel = 'N'#186' Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_BAIXA_RECEBER"."NUMBOLETO"'
    end
    object Baixas_Receber_CaixaNUMDUPLICATA: TIntegerField
      DisplayLabel = 'N'#186' Dpl'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_BAIXA_RECEBER"."NUMDUPLICATA"'
    end
    object Baixas_Receber_CaixaAtraso: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object Baixas_Receber_CaixaLOCAL: TIBStringField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"VER_BAIXA_RECEBER"."LOCAL"'
      FixedChar = True
      Size = 3
    end
    object Baixas_Receber_CaixaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_BAIXA_RECEBER_BAIXA"."USUARIO"'
    end
  end
  object Local_Cobranca: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    AfterInsert = Contas_ReceberAfterInsert
    BeforeOpen = Contas_ReceberBeforeOpen
    BeforePost = Local_CobrancaBeforePost
    DeleteSQL.Strings = (
      'delete from FIN_LOCAL_COBRANCA'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into FIN_LOCAL_COBRANCA'
      '  (CNPJ, CODIGO, NOME, ENDERECO, FONE, CIDADE, UF, CODIGO_SCPC, '
      'BAIRRO, '
      '   BANCO)'
      'values'
      
        '  (:CNPJ, :CODIGO, :NOME, :ENDERECO, :FONE, :CIDADE, :UF, :CODIG' +
        'O_SCPC, '
      '   :BAIRRO, :BANCO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  NOME,'
      '  ENDERECO,'
      '  FONE,'
      '  CIDADE,'
      '  UF,'
      '  CODIGO_SCPC,'
      '  BAIRRO,'
      '  BANCO'
      'from FIN_LOCAL_COBRANCA '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          ENDERECO,'
      '          FONE         ,'
      '          CIDADE       ,'
      '          UF           ,'
      '          CODIGO_SCPC  ,'
      '          BAIRRO,'
      '          BANCO'
      'from FIN_LOCAL_COBRANCA'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update FIN_LOCAL_COBRANCA'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  ENDERECO = :ENDERECO,'
      '  FONE = :FONE,'
      '  CIDADE = :CIDADE,'
      '  UF = :UF,'
      '  CODIGO_SCPC = :CODIGO_SCPC,'
      '  BAIRRO = :BAIRRO,'
      '  BANCO = :BANCO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 608
    Top = 412
    object Local_CobrancaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_LOCAL_COBRANCA"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Local_CobrancaCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_LOCAL_COBRANCA"."CODIGO"'
      Required = True
    end
    object Local_CobrancaNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"FIN_LOCAL_COBRANCA"."NOME"'
      Required = True
      Size = 50
    end
    object Local_CobrancaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"FIN_LOCAL_COBRANCA"."ENDERECO"'
      Size = 50
    end
    object Local_CobrancaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"FIN_LOCAL_COBRANCA"."FONE"'
    end
    object Local_CobrancaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"FIN_LOCAL_COBRANCA"."CIDADE"'
      Size = 50
    end
    object Local_CobrancaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"FIN_LOCAL_COBRANCA"."UF"'
      FixedChar = True
      Size = 2
    end
    object Local_CobrancaCODIGO_SCPC: TIBStringField
      FieldName = 'CODIGO_SCPC'
      Origin = '"FIN_LOCAL_COBRANCA"."CODIGO_SCPC"'
      Size = 10
    end
    object Local_CobrancaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"FIN_LOCAL_COBRANCA"."BAIRRO"'
      Size = 50
    end
    object Local_CobrancaBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FIN_LOCAL_COBRANCA"."BANCO"'
      FixedChar = True
      Size = 3
    end
  end
  object VerCheque_Magnetico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerCheque_MagneticoCalcFields
    SQL.Strings = (
      'select'
      '    BANCO ,'
      '    CONTA ,'
      '    CHEQUE ,'
      '    VENDA ,'
      '    EMISSAO ,'
      '    PRE_DATE ,'
      '    VALOR ,'
      '    JUROS,'
      '    CONCILIADO ,'
      '    PESSOA_FJ ,'
      '    HISTORICO ,'
      '    AGENCIA ,'
      '    NOME ,'
      '    FONE ,'
      '    FAX ,'
      '    CELULAR ,'
      '    CPF_CGC ,'
      '    DATA_CONCILIACAO,'
      '    MOEDA1 ,'
      '    MOEDA2 ,'
      '    TIPO ,'
      '    DATA_ACERTO ,'
      '    PLANILHA ,'
      '    DIGITO_AGENCIA ,'
      '    DIGITO_CHEQUE ,'
      '    DATA_DEVOLUCAO ,'
      '    MOTIVO_DEVOLUCAO ,'
      '    CODIGO_MOTIVO_DEVOLUCAO ,'
      '    VEZES_DEVOLUCAO ,'
      '    RG_IE,'
      '    PROCESSADO,'
      '    CMC7'
      'from VER_FIN_CHEQUES_ARQ_MAGNETICO ( :CNPJ, :DATA )'
      'order by PRE_DATE')
    Left = 786
    Top = 412
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
    object VerCheque_MagneticoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VerCheque_MagneticoCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES"."CONTA"'
      Size = 15
    end
    object VerCheque_MagneticoCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES"."CHEQUE"'
      Size = 6
    end
    object VerCheque_MagneticoVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES"."VENDA"'
    end
    object VerCheque_MagneticoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_MagneticoCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_MagneticoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES"."PESSOA_FJ"'
    end
    object VerCheque_MagneticoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object VerCheque_MagneticoAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object VerCheque_MagneticoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object VerCheque_MagneticoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES"."FONE"'
    end
    object VerCheque_MagneticoFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES"."FAX"'
    end
    object VerCheque_MagneticoCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES"."CELULAR"'
    end
    object VerCheque_MagneticoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES"."CPF_CGC"'
      Size = 15
    end
    object VerCheque_MagneticoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object VerCheque_MagneticoJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_MagneticoMOEDA1: TIBBCDField
      DisplayLabel = 'Moeda 1'
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES"."MOEDA1"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_MagneticoMOEDA2: TIBBCDField
      DisplayLabel = 'Moeda 2'
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES"."MOEDA2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_MagneticoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 2
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object VerCheque_MagneticoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES"."PLANILHA"'
    end
    object VerCheque_MagneticoDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig Ag'#234'ncia'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_MagneticoDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Cheque'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_MagneticoMOTIVO_DEVOLUCAO: TIBStringField
      DisplayLabel = 'Motivo Dev'
      FieldName = 'MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."MOTIVO_DEVOLUCAO"'
      Size = 50
    end
    object VerCheque_MagneticoCODIGO_MOTIVO_DEVOLUCAO: TIntegerField
      DisplayLabel = 'C'#243'd. Devolu'#231#227'o'
      FieldName = 'CODIGO_MOTIVO_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."CODIGO_MOTIVO_DEVOLUCAO"'
    end
    object VerCheque_MagneticoVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'Vezes Devolu'#231#227'o'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."VEZES_DEVOLUCAO"'
    end
    object VerCheque_MagneticoEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES"."EMISSAO"'
    end
    object VerCheque_MagneticoPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES"."PRE_DATE"'
    end
    object VerCheque_MagneticoDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object VerCheque_MagneticoDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES"."DATA_ACERTO"'
    end
    object VerCheque_MagneticoDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."DATA_DEVOLUCAO"'
    end
    object VerCheque_MagneticoRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_FIN_CHEQUES"."RG_IE"'
      Size = 15
    end
    object VerCheque_MagneticoPROCESSADO: TIBStringField
      DisplayLabel = 'Processado'
      FieldName = 'PROCESSADO'
      Origin = '"VER_FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_MagneticoCMC7: TIBStringField
      FieldName = 'CMC7'
      Origin = '"VER_FIN_CHEQUES_ARQ_MAGNETICO"."CMC7"'
      Size = 50
    end
  end
  object RecibosPagas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = RecibosPagasAfterInsert
    BeforeOpen = RecibosPagasBeforeOpen
    BeforePost = RecibosPagasBeforePost
    DeleteSQL.Strings = (
      'delete from fin_recibos_pagas'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into fin_recibos_pagas'
      '  (CNPJ, CODIGO, DT_VENCTO, DOCTO, DT_LANCTO, VALOR, HISTORICO, '
      'IMPRESSO, '
      '   PESSOA_FJ)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DT_VENCTO, :DOCTO, :DT_LANCTO, :VALOR, :HIST' +
        'ORICO, '
      '   :IMPRESSO, :PESSOA_FJ)')
    RefreshSQL.Strings = (
      
        'select r.*,  e.nome favorecido, p.nome_razao fornecedor, p.cpf_c' +
        'gc'
      'from fin_recibos_pagas r'
      'inner join sis_empresas e on (e.cnpj = r.cnpj)'
      
        'inner join glo_pessoas_fj p on (p.codigo = r.pessoa_fj and p.cnp' +
        'j = r.cnpj)'
      'where '
      '  r.CNPJ = :CNPJ and'
      '  r.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select r.*,  e.nome favorecido, p.nome_razao fornecedor, p.cpf_c' +
        'gc'
      'from fin_recibos_pagas r'
      'inner join sis_empresas e on (e.cnpj = r.cnpj)'
      
        'inner join glo_pessoas_fj p on (p.codigo = r.pessoa_fj and p.cnp' +
        'j = r.cnpj)'
      'where r.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update fin_recibos_pagas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  DOCTO = :DOCTO,'
      '  DT_LANCTO = :DT_LANCTO,'
      '  VALOR = :VALOR,'
      '  HISTORICO = :HISTORICO,'
      '  IMPRESSO = :IMPRESSO,'
      '  PESSOA_FJ = :PESSOA_FJ'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 203
    Top = 412
    object RecibosPagasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_RECIBOS_PAGAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object RecibosPagasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_RECIBOS_PAGAS"."CODIGO"'
      Required = True
    end
    object RecibosPagasDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vcto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_RECIBOS_PAGAS"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object RecibosPagasDOCTO: TIBStringField
      DisplayLabel = 'N'#186' Doc.'
      FieldName = 'DOCTO'
      Origin = '"FIN_RECIBOS_PAGAS"."DOCTO"'
    end
    object RecibosPagasDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lcto'
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_RECIBOS_PAGAS"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object RecibosPagasVALOR: TFloatField
      DefaultExpression = '###,###,##0.00'
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_RECIBOS_PAGAS"."VALOR"'
    end
    object RecibosPagasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_RECIBOS_PAGAS"."HISTORICO"'
      Size = 100
    end
    object RecibosPagasIMPRESSO: TIBStringField
      DisplayLabel = 'Imp'
      FieldName = 'IMPRESSO'
      Origin = '"FIN_RECIBOS_PAGAS"."IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object RecibosPagasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cod. Forn.'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_RECIBOS_PAGAS"."PESSOA_FJ"'
    end
    object RecibosPagasFAVORECIDO: TIBStringField
      DisplayLabel = 'Favorecido'
      FieldName = 'FAVORECIDO'
      Origin = '"SIS_EMPRESAS"."NOME"'
      Size = 50
    end
    object RecibosPagasFORNECEDOR: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object RecibosPagasCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
  end
  object spCriaReciboPagas: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'CRIA_RECIBO_PAGAS'
    Left = 892
    Top = 519
  end
  object Consulta_Venda_Itens: TIBQuery
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
      '    PRODUTOFIS ,'
      '    QUANTIDADE ,'
      '    SEQUENCIA ,'
      '    UNIDADE ,'
      '    SUBUNIDADE ,'
      '    VOLUME ,'
      '    NOME_PRODUTO ,'
      '    NOME_FIS ,'
      '    ALIQUOTA ,'
      '    ORIGEM ,'
      '    CTE ,'
      '    CTIE ,'
      '    REDUCAO ,'
      '    COMPLEMENTO,'
      '    SERVICO,'
      '    QUANTIDADE_FIS, '
      '    PRC_UNITARIO_FIS'
      'FROM VER_FATURA_ITENS (:CNPJ, :CODIGO)')
    Left = 428
    Top = 360
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
    object Consulta_Venda_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Consulta_Venda_ItensSEQUENCIA: TSmallintField
      DisplayLabel = 'Seq'
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object Consulta_Venda_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unid'
      FieldName = 'UNIDADE'
      Origin = '"FAT_VENDAS_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object Consulta_Venda_ItensTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Consulta_Venda_ItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Consulta_Venda_ItensALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Consulta_Venda_ItensORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Consulta_Venda_ItensCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"FAT_VENDAS_ITENS"."CTE"'
    end
    object Consulta_Venda_ItensCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"FAT_VENDAS_ITENS"."CTIE"'
    end
    object Consulta_Venda_ItensREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Consulta_Venda_ItensPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FATURA_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Consulta_Venda_ItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FATURA_ITENS"."SUBUNIDADE"'
    end
    object Consulta_Venda_ItensNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FATURA_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Consulta_Venda_ItensDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_ITENS"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensICM: TIBBCDField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"VER_FATURA_ITENS"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensICM_SUBS: TIBBCDField
      DisplayLabel = 'Icm Sub'
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FATURA_ITENS"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensIPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"VER_FATURA_ITENS"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FATURA_ITENS"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPORC_DESC: TIBBCDField
      DisplayLabel = 'Porc. Desc'
      FieldName = 'PORC_DESC'
      Origin = '"VER_FATURA_ITENS"."PORC_DESC"'
      DisplayFormat = '###,###,##0.00 %'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_CUSTO: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FATURA_ITENS"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_UNIT_ORIGINAL: TIBBCDField
      DisplayLabel = 'Unit. Orig'
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FATURA_ITENS"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_UNITARIO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FATURA_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FATURA_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FATURA_ITENS"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_FATURA_ITENS"."COMPLEMENTO"'
      Size = 100
    end
    object Consulta_Venda_ItensSERVICO: TBlobField
      FieldName = 'SERVICO'
      Origin = '"VER_FATURA_ITENS"."SERVICO"'
      Size = 8
    end
    object Consulta_Venda_ItensQUANTIDADE_FIS: TIBBCDField
      FieldName = 'QUANTIDADE_FIS'
      Origin = '"VER_FATURA_ITENS"."QUANTIDADE_FIS"'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensPRC_UNITARIO_FIS: TIBBCDField
      FieldName = 'PRC_UNITARIO_FIS'
      Origin = '"VER_FATURA_ITENS"."PRC_UNITARIO_FIS"'
      Precision = 18
      Size = 4
    end
    object Consulta_Venda_ItensTOTAL_FIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL_FIS'
      Calculated = True
    end
  end
  object SALDO_CONTAS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      '    SALDO_INICIAL,'
      '    SALDO_LANCADAS,'
      '    SALDO_BAIXAS,'
      '    SALDO_FINAL,'
      '    ORIGEM '
      'FROM SALDO_CONTAS_PERIODO '
      '('
      '  :CNPJ,'
      '  :DATA_INI,'
      '  :DATA_FIN'
      ')')
    Left = 608
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DATA_FIN'
        ParamType = ptUnknown
      end>
    object SALDO_CONTASSALDO_INICIAL: TIBBCDField
      FieldName = 'SALDO_INICIAL'
      Origin = '"SALDO_CONTAS_PERIODO"."SALDO_INICIAL"'
      Precision = 18
      Size = 4
    end
    object SALDO_CONTASSALDO_LANCADAS: TIBBCDField
      FieldName = 'SALDO_LANCADAS'
      Origin = '"SALDO_CONTAS_PERIODO"."SALDO_LANCADAS"'
      Precision = 18
      Size = 4
    end
    object SALDO_CONTASSALDO_BAIXAS: TIBBCDField
      FieldName = 'SALDO_BAIXAS'
      Origin = '"SALDO_CONTAS_PERIODO"."SALDO_BAIXAS"'
      Precision = 18
      Size = 4
    end
    object SALDO_CONTASSALDO_FINAL: TIBBCDField
      FieldName = 'SALDO_FINAL'
      Origin = '"SALDO_CONTAS_PERIODO"."SALDO_FINAL"'
      Precision = 18
      Size = 4
    end
    object SALDO_CONTASORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"SALDO_CONTAS_PERIODO"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
  end
  object SelTipoDocto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               SIGLA, '
      '               NOME '
      'FROM GLO_TIPOS_DOCTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 278
    Top = 101
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
  object VerCheque: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    ForcedRefresh = True
    BeforeOpen = VerChequeBeforeOpen
    OnCalcFields = VerChequeCalcFields
    RefreshSQL.Strings = (
      
        'select c.fornecedor, c.nome_fornecedor, c.troca, c.indice, c.BAN' +
        'CO, c.CONTA, c.CHEQUE, c.VENDA, c.EMISSAO, '
      'c.PRE_DATE,'
      '    c.VALOR, c.CONCILIADO, c.HISTORICO, c.AGENCIA,'
      
        '    c.DATA_CONCILIACAO, c.JUROS, c.TIPO, c.DATA_ACERTO, c.PLANIL' +
        'HA,'
      '    c.DIGITO_AGENCIA, c.DIGITO_CHEQUE, c.DATA_DEVOLUCAO, '
      '    c.VEZES_DEVOLUCAO, c.PROCESSADO, c.ID, c.MARCADO,'
      '    case'
      '      upper(p.nome_razao) when '#39'CONSUMIDOR'#39' then c.nome'
      '    else'
      '      p.nome_razao'
      '    end NOME,'
      '    p.fone, p.fax, p.celular, p.cpf_cgc, p.rg_ie,'
      
        '    cl.local_trabalho, cl.fone_trabalho, d.nome Motivo_Devolucao' +
        ',     c.pessoa_fj, '
      'c.cmc7, c.data_reapres'
      '    from FIN_CHEQUES c'
      
        '    inner join glo_pessoas_fj p on (p.codigo = c.pessoa_fj and p' +
        '.cnpj = c.cnpj)'
      
        '    left join glo_clientes cl on (cl.pessoa_fj = p.codigo and cl' +
        '.cnpj = c.cnpj)'
      
        '    left join fin_motivo_devolucao d on (d.codigo = c.motivo_dev' +
        'olucao and d.cnpj = '
      'c.cnpj)'
      'where'
      '  INDICE = :INDICE')
    SelectSQL.Strings = (
      
        'select  c.fornecedor, c.nome_fornecedor, c.troca, c.indice, c.BA' +
        'NCO, c.CONTA, c.CHEQUE, c.VENDA, c.EMISSAO, c.PRE_DATE,'
      '    c.VALOR, c.CONCILIADO, c.HISTORICO, c.AGENCIA,'
      
        '    c.DATA_CONCILIACAO, c.JUROS, c.TIPO, c.DATA_ACERTO, c.PLANIL' +
        'HA,'
      '    c.DIGITO_AGENCIA, c.DIGITO_CHEQUE, c.DATA_DEVOLUCAO, '
      '    c.VEZES_DEVOLUCAO, c.PROCESSADO, c.ID, c.MARCADO,'
      '    case'
      '      upper(p.nome_razao) when '#39'CONSUMIDOR'#39' then c.nome'
      '    else'
      '      p.nome_razao'
      '    end NOME,'
      '    p.fone, p.fax, p.celular, p.cpf_cgc, p.rg_ie,'
      
        '    cl.local_trabalho, cl.fone_trabalho, d.nome Motivo_Devolucao' +
        ',     c.pessoa_fj, c.cmc7, c.data_reapres, c.conta_conc'
      '    from FIN_CHEQUES c'
      
        '    inner join glo_pessoas_fj p on (p.codigo = c.pessoa_fj and p' +
        '.cnpj = c.cnpj)'
      
        '    left join glo_clientes cl on (cl.pessoa_fj = p.codigo and cl' +
        '.cnpj = c.cnpj)'
      
        '    left join fin_motivo_devolucao d on (d.codigo = c.motivo_dev' +
        'olucao and d.cnpj = c.cnpj)'
      '    where c.cnpj = :cnpj')
    ModifySQL.Strings = (
      'update FIN_CHEQUES'
      'set'
      '  TROCA = :TROCA,'
      '  INDICE = :INDICE,'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  CHEQUE = :CHEQUE,'
      '  VENDA = :VENDA,'
      '  EMISSAO = :EMISSAO,'
      '  PRE_DATE = :PRE_DATE,'
      '  VALOR = :VALOR,'
      '  CONCILIADO = :CONCILIADO,'
      '  HISTORICO = :HISTORICO,'
      '  AGENCIA = :AGENCIA,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  JUROS = :JUROS,'
      '  TIPO = :TIPO,'
      '  DATA_ACERTO = :DATA_ACERTO,'
      '  PLANILHA = :PLANILHA,'
      '  DIGITO_AGENCIA = :DIGITO_AGENCIA,'
      '  DIGITO_CHEQUE = :DIGITO_CHEQUE,'
      '  DATA_DEVOLUCAO = :DATA_DEVOLUCAO,'
      '  VEZES_DEVOLUCAO = :VEZES_DEVOLUCAO,'
      '  PROCESSADO = :PROCESSADO,'
      '  ID = :ID,'
      '  MARCADO = :MARCADO,'
      '  NOME = :NOME,'
      '  MOTIVO_DEVOLUCAO = :MOTIVO_DEVOLUCAO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  CMC7 = :CMC7,'
      '  DATA_REAPRES = :DATA_REAPRES'
      'where'
      '  INDICE = :OLD_INDICE')
    Left = 352
    Top = 101
    object VerChequeBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object VerChequeCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object VerChequeCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object VerChequeVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object VerChequeCONCILIADO: TIBStringField
      DisplayLabel = 'Conc.'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object VerChequeHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object VerChequePRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233' Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerChequeAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object VerChequeEMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
      Required = True
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerChequeDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Dt. Conc.'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerChequeTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object VerChequeDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Dt. Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerChequePLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_CHEQUES"."PLANILHA"'
    end
    object VerChequeDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dv. Ag.'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object VerChequeDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dv. Chq.'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object VerChequeDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Dt. Dev.'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."DATA_DEVOLUCAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerChequeVEZES_DEVOLUCAO: TIntegerField
      DisplayLabel = 'N. Dev.'
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."VEZES_DEVOLUCAO"'
    end
    object VerChequePROCESSADO: TIBStringField
      DisplayLabel = 'Proc.'
      FieldName = 'PROCESSADO'
      Origin = '"FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object VerChequeID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_CHEQUES"."ID"'
      Required = True
    end
    object VerChequeMARCADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'MARCADO'
      Origin = '"FIN_CHEQUES"."MARCADO"'
      FixedChar = True
      Size = 1
    end
    object VerChequeNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object VerChequeFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object VerChequeFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object VerChequeCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object VerChequeCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object VerChequeRG_IE: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object VerChequeLOCAL_TRABALHO: TIBStringField
      DisplayLabel = 'Local Trab.'
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object VerChequeFONE_TRABALHO: TIBStringField
      DisplayLabel = 'Fone Trab.'
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object VerChequeMOTIVO_DEVOLUCAO: TIBStringField
      DisplayLabel = 'Mot. Dev.'
      FieldName = 'MOTIVO_DEVOLUCAO'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."NOME"'
      Size = 50
    end
    object VerChequetotal: TCurrencyField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object VerChequeCMC7: TIBStringField
      FieldName = 'CMC7'
      Origin = '"FIN_CHEQUES"."CMC7"'
      Size = 50
    end
    object VerChequeDATA_REAPRES: TDateTimeField
      DisplayLabel = 'Dt. Reap.'
      FieldName = 'DATA_REAPRES'
      Origin = '"FIN_CHEQUES"."DATA_REAPRES"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerChequeINDICE: TIBStringField
      DisplayLabel = 'Indice'
      FieldName = 'INDICE'
      Origin = '"FB_VER_FIN_CHEQUES"."INDICE"'
      Size = 40
    end
    object VerChequeVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object VerChequeJUROS: TFloatField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"FIN_CHEQUES"."JUROS"'
      DisplayFormat = '###,##0.00'
    end
    object VerChequeTROCA: TIntegerField
      DisplayLabel = 'Troca'
      FieldName = 'TROCA'
      Origin = '"FIN_CHEQUES"."TROCA"'
    end
    object VerChequePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
    end
    object VerChequeCONTA_CONC: TIntegerField
      DisplayLabel = 'Conta. Conc'
      FieldName = 'CONTA_CONC'
      Origin = '"FIN_CHEQUES"."CONTA_CONC"'
    end
    object VerChequeFORNECEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'FORNECEDOR'
      Origin = '"FIN_CHEQUES"."FORNECEDOR"'
    end
    object VerChequeNOME_FORNECEDOR: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"FIN_CHEQUES"."NOME_FORNECEDOR"'
      Size = 50
    end
  end
  object qChequeRemessa: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qChequeRemessaBeforeOpen
    SelectSQL.Strings = (
      
        '  select c.BANCO, c.CONTA, c.CHEQUE, c.VENDA, c.EMISSAO, c.PRE_D' +
        'ATE,'
      '    c.VALOR, c.CONCILIADO, c.HISTORICO, c.AGENCIA,'
      
        '    c.DATA_CONCILIACAO, c.JUROS, c.TIPO, c.DATA_ACERTO, c.PLANIL' +
        'HA,'
      '    c.DIGITO_AGENCIA, c.DIGITO_CHEQUE, c.DATA_DEVOLUCAO, '
      '    c.VEZES_DEVOLUCAO, c.PROCESSADO, c.ID, c.MARCADO,'
      '    case'
      '      upper(p.nome_razao) when '#39'CONSUMIDOR'#39' then c.nome'
      '    else'
      '      p.nome_razao'
      '    end NOME,'
      '    p.fone, p.fax, p.celular, p.cpf_cgc, p.rg_ie,'
      
        '    cl.local_trabalho, cl.fone_trabalho, d.nome Motivo_Devolucao' +
        ',     c.pessoa_fj, c.cmc7'
      '    from FIN_CHEQUES c'
      
        '    inner join glo_pessoas_fj p on (p.codigo = c.pessoa_fj and p' +
        '.cnpj = c.cnpj)'
      
        '    left join glo_clientes cl on (cl.pessoa_fj = p.codigo and cl' +
        '.cnpj = c.cnpj)'
      
        '    left join fin_motivo_devolucao d on (d.codigo = c.motivo_dev' +
        'olucao and d.cnpj = c.cnpj)'
      
        '    where c.marcado = '#39'S'#39' and (c.data_remessa is null) and c.cnp' +
        'j = :cnpj'
      '    order by c.pre_date')
    Left = 786
    Top = 3
    object qChequeRemessaBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qChequeRemessaCONTA: TIBStringField
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object qChequeRemessaCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object qChequeRemessaVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object qChequeRemessaEMISSAO: TDateTimeField
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
      Required = True
    end
    object qChequeRemessaPRE_DATE: TDateTimeField
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object qChequeRemessaVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
    end
    object qChequeRemessaCONCILIADO: TIBStringField
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object qChequeRemessaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object qChequeRemessaAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object qChequeRemessaDATA_CONCILIACAO: TDateTimeField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object qChequeRemessaJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FIN_CHEQUES"."JUROS"'
    end
    object qChequeRemessaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object qChequeRemessaDATA_ACERTO: TDateTimeField
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
    end
    object qChequeRemessaPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FIN_CHEQUES"."PLANILHA"'
    end
    object qChequeRemessaDIGITO_AGENCIA: TIBStringField
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object qChequeRemessaDIGITO_CHEQUE: TIBStringField
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object qChequeRemessaDATA_DEVOLUCAO: TDateTimeField
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."DATA_DEVOLUCAO"'
    end
    object qChequeRemessaVEZES_DEVOLUCAO: TIntegerField
      FieldName = 'VEZES_DEVOLUCAO'
      Origin = '"FIN_CHEQUES"."VEZES_DEVOLUCAO"'
    end
    object qChequeRemessaPROCESSADO: TIBStringField
      FieldName = 'PROCESSADO'
      Origin = '"FIN_CHEQUES"."PROCESSADO"'
      FixedChar = True
      Size = 1
    end
    object qChequeRemessaID: TIntegerField
      FieldName = 'ID'
      Origin = '"FIN_CHEQUES"."ID"'
      Required = True
    end
    object qChequeRemessaMARCADO: TIBStringField
      FieldName = 'MARCADO'
      Origin = '"FIN_CHEQUES"."MARCADO"'
      FixedChar = True
      Size = 1
    end
    object qChequeRemessaNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object qChequeRemessaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object qChequeRemessaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object qChequeRemessaCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object qChequeRemessaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object qChequeRemessaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object qChequeRemessaLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"GLO_CLIENTES"."LOCAL_TRABALHO"'
      Size = 50
    end
    object qChequeRemessaFONE_TRABALHO: TIBStringField
      FieldName = 'FONE_TRABALHO'
      Origin = '"GLO_CLIENTES"."FONE_TRABALHO"'
    end
    object qChequeRemessaMOTIVO_DEVOLUCAO: TIBStringField
      FieldName = 'MOTIVO_DEVOLUCAO'
      Origin = '"FIN_MOTIVO_DEVOLUCAO"."NOME"'
      Size = 50
    end
    object qChequeRemessaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
    end
    object qChequeRemessaCMC7: TIBStringField
      FieldName = 'CMC7'
      Origin = '"FIN_CHEQUES"."CMC7"'
      Size = 50
    end
  end
  object qTotalRemessa: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qChequeRemessaBeforeOpen
    SelectSQL.Strings = (
      'select *'
      'from PCD_FIN_SOMAR_REMESSA(:cnpj)')
    Left = 698
    Top = 48
    object qTotalRemessaAVISTA: TIBBCDField
      FieldName = 'AVISTA'
      Origin = '"PCD_FIN_SOMAR_REMESSA"."AVISTA"'
      Precision = 9
      Size = 2
    end
    object qTotalRemessaAPRAZO: TIBBCDField
      FieldName = 'APRAZO'
      Origin = '"PCD_FIN_SOMAR_REMESSA"."APRAZO"'
      Precision = 9
      Size = 2
    end
    object qTotalRemessaDESCARTADOS: TIBBCDField
      FieldName = 'DESCARTADOS'
      Origin = '"PCD_FIN_SOMAR_REMESSA"."DESCARTADOS"'
      Precision = 9
      Size = 2
    end
    object qTotalRemessaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_FIN_SOMAR_REMESSA"."TOTAL"'
      Precision = 9
      Size = 2
    end
  end
  object qTotalConc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qTotalConcBeforeOpen
    SQL.Strings = (
      'select *'
      'from PCD_FIN_SOMAR_CONCILIACAO(:cnpj)')
    UniDirectional = True
    Left = 698
    Top = 98
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qTotalConcAVISTA: TIBBCDField
      FieldName = 'AVISTA'
      Origin = '"PCD_FIN_SOMAR_CONCILIACAO"."AVISTA"'
      Precision = 9
      Size = 2
    end
    object qTotalConcAPRAZO: TIBBCDField
      FieldName = 'APRAZO'
      Origin = '"PCD_FIN_SOMAR_CONCILIACAO"."APRAZO"'
      Precision = 9
      Size = 2
    end
    object qTotalConcDESCARTADOS: TIBBCDField
      FieldName = 'DESCARTADOS'
      Origin = '"PCD_FIN_SOMAR_CONCILIACAO"."DESCARTADOS"'
      Precision = 9
      Size = 2
    end
    object qTotalConcTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_FIN_SOMAR_CONCILIACAO"."TOTAL"'
      Precision = 9
      Size = 2
    end
  end
  object upChequeRemessa: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      'update  fin_cheques c set c.data_remessa = :data'
      'where c.cmc7 = :cmc7 and c.cnpj = :cnpj')
    Transaction = DmApp.Transaction
    Left = 892
    Top = 151
  end
  object upReapresentaCheque: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      'execute procedure pcd_fin_reapres_cheque(:indice, :data, :cnpj)')
    Transaction = DmApp.Transaction
    Left = 892
    Top = 206
  end
  object upAcertaCheque: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'execute procedure  pcd_fin_acerta_cheque(:indice, :cnpj, :data, ' +
        ':contacaixa, :usuario, :turno, :valor, :juros, :descontos,:Conta' +
        'Dev)')
    Transaction = DmApp.Transaction
    Left = 892
    Top = 252
  end
  object upDesmarcarTodos: TIBSQL
    Database = DmApp.Database
    GoToFirstRecordOnExecute = False
    SQL.Strings = (
      'update fin_cheques'
      'set marcado = '#39'N'#39
      'where marcado = '#39'S'#39' and cnpj = :cnpj')
    Transaction = DmApp.Transaction
    Left = 786
    Top = 304
  end
  object upMarcarCheque: TIBSQL
    Database = DmApp.Database
    GoToFirstRecordOnExecute = False
    SQL.Strings = (
      'update fin_cheques'
      'set marcado = :marca'
      'where indice = :indice')
    Transaction = DmApp.Transaction
    Left = 786
    Top = 212
  end
  object qValidaAltCheque: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = qValidaAltChequeBeforeOpen
    SQL.Strings = (
      
        'select * from pcd_fin_valida_alter_cheque(:cnpj, :banco, :conta,' +
        ' :cheque)')
    Left = 786
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'banco'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cheque'
        ParamType = ptUnknown
      end>
    object qValidaAltChequeCAIXAFECHADO: TIBStringField
      FieldName = 'CAIXAFECHADO'
      Origin = '"PCD_FIN_VALIDA_ALTER_CHEQUE"."CAIXAFECHADO"'
      FixedChar = True
      Size = 1
    end
  end
  object Ver_Pessoa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'Select * from Ver_Pessoa ( :CNPJ, :COD )')
    Left = 428
    Top = 52
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
    object Ver_PessoaORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"VER_PESSOA"."ORDEM"'
    end
    object Ver_PessoaFONE_CLIENTE: TIBStringField
      FieldName = 'FONE_CLIENTE'
      Origin = '"VER_PESSOA"."FONE_CLIENTE"'
    end
    object Ver_PessoaFONE_TRABALHO: TIBStringField
      FieldName = 'FONE_TRABALHO'
      Origin = '"VER_PESSOA"."FONE_TRABALHO"'
    end
    object Ver_PessoaRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOA"."RG_IE"'
      Size = 15
    end
  end
  object SelClassificacao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, DIG_SENHA, NOME '
      'from GLO_CLASSIFICACAO'
      'where CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 115
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelClassificacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLASSIFICACAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelClassificacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLASSIFICACAO"."CODIGO"'
      Required = True
    end
    object SelClassificacaoDIG_SENHA: TIBStringField
      FieldName = 'DIG_SENHA'
      Origin = '"GLO_CLASSIFICACAO"."DIG_SENHA"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object SelClassificacaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CLASSIFICACAO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelRegiao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'select CODIGO, NOME '
      'from CRG_ROTAS'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    Left = 278
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelRegiaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CRG_ROTAS"."CODIGO"'
      Required = True
    end
    object SelRegiaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CRG_ROTAS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object VerRecebidasConvenio: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerRecebidasConvenioCalcFields
    SQL.Strings = (
      'Select * From VER_BAIXA_RECEBER_CONVENIO'
      '( :CNPJ, :CONVENIO )')
    Left = 203
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CONVENIO'
        ParamType = ptUnknown
      end>
    object VerRecebidasConvenioCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object VerRecebidasConvenioANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object VerRecebidasConvenioPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object VerRecebidasConvenioDOCTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object VerRecebidasConvenioPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerRecebidasConvenioHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object VerRecebidasConvenioVALOR: TIBBCDField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerRecebidasConvenioBOLETO: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerRecebidasConvenioORIGEM: TIBStringField
      DisplayLabel = 'Or'
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerRecebidasConvenioCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object VerRecebidasConvenioANO_VN: TSmallintField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object VerRecebidasConvenioAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object VerRecebidasConvenioNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object VerRecebidasConvenioENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object VerRecebidasConvenioNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object VerRecebidasConvenioCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object VerRecebidasConvenioBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object VerRecebidasConvenioCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerRecebidasConvenioUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerRecebidasConvenioCOD_END: TIntegerField
      DisplayLabel = 'End'
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object VerRecebidasConvenioCOD_CID: TIntegerField
      DisplayLabel = 'Cid'
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object VerRecebidasConvenioCOD_BAI: TIntegerField
      DisplayLabel = 'Bai'
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object VerRecebidasConvenioFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object VerRecebidasConvenioCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object VerRecebidasConvenioVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerRecebidasConvenioTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerRecebidasConvenioJUROS_REC: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerRecebidasConvenioDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerRecebidasConvenioNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object VerRecebidasConvenioNUMBOLETO: TIntegerField
      DisplayLabel = 'Num Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object VerRecebidasConvenioCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_RECEBER_CONVENIO"."CONVENIADO"'
    end
    object VerRecebidasConvenioNOMECONVENIADO: TIBStringField
      DisplayLabel = 'Nome Conveniado'
      FieldName = 'NOMECONVENIADO'
      Origin = '"VER_RECEBER_CONVENIO"."NOMECONVENIADO"'
      Size = 50
    end
    object VerRecebidasConvenioCPF_CGCCONVENIADO: TIBStringField
      DisplayLabel = 'Cpf/Cnpj Conveniado'
      FieldName = 'CPF_CGCCONVENIADO'
      Origin = '"VER_RECEBER_CONVENIO"."CPF_CGCCONVENIADO"'
      Size = 15
    end
    object VerRecebidasConvenioDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_EMISSAO"'
    end
    object VerRecebidasConvenioDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_VENCTO"'
    end
    object VerRecebidasConvenioDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_LANCTO"'
    end
    object VerRecebidasConvenioDT_AVISO: TDateTimeField
      DisplayLabel = 'Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER_CONVENIO"."DT_AVISO"'
    end
    object VerRecebidasConvenioFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER_CONVENIO"."FATURA"'
    end
    object VerRecebidasConvenioPARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER_CONVENIO"."PARCIAL"'
      Precision = 18
      Size = 4
    end
    object VerRecebidasConvenioCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER_CONVENIO"."COBRADOR"'
    end
    object VerRecebidasConvenioLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER_CONVENIO"."LOCAL"'
    end
    object VerRecebidasConvenioVLR_BAIXA: TIBBCDField
      DisplayLabel = 'Vlr Baixa'
      FieldName = 'VLR_BAIXA'
      Origin = '"VER_BAIXA_RECEBER_CONVENIO"."VLR_BAIXA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerRecebidasConvenioJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_BAIXA_RECEBER_CONVENIO"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerRecebidasConvenioDT_BAIXA: TDateTimeField
      FieldName = 'DT_BAIXA'
      Origin = '"VER_BAIXA_RECEBER_CONVENIO"."DT_BAIXA"'
    end
  end
  object VerReceberADM: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VerReceberADMAfterClose
    BeforeOpen = VerReceberADMBeforeOpen
    OnCalcFields = VerReceberADMCalcFields
    SQL.Strings = (
      'Select '
      '* '
      'From Ver_Receber (:CNPJ)')
    Left = 203
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VerReceberADMCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object VerReceberADMANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object VerReceberADMPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object VerReceberADMDOCTO: TIBStringField
      DisplayLabel = 'Docto.'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object VerReceberADMPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerReceberADMHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object VerReceberADMBOLETO: TIBStringField
      DisplayLabel = 'Blt.'
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberADMORIGEM: TIBStringField
      DisplayLabel = 'Org.'
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerReceberADMCODIGO_VN: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object VerReceberADMANO_VN: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object VerReceberADMAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object VerReceberADMNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object VerReceberADMENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object VerReceberADMNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object VerReceberADMCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object VerReceberADMBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object VerReceberADMCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerReceberADMUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerReceberADMCOD_END: TIntegerField
      DisplayLabel = 'Cod. End'
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object VerReceberADMCOD_CID: TIntegerField
      DisplayLabel = 'Cod. Cid.'
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object VerReceberADMCOD_BAI: TIntegerField
      DisplayLabel = 'Cod. Bair.'
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object VerReceberADMFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object VerReceberADMSELECIONADO: TIBStringField
      DisplayLabel = 'Secionado'
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberADMJUROS_REC: TIBBCDField
      DisplayLabel = 'Jur. Recb.'
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMDESCONTOS: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMCOBRADOR: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER"."COBRADOR"'
    end
    object VerReceberADMTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp. Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VerReceberADMNUMDUPLICATA: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object VerReceberADMNUMBOLETO: TIntegerField
      DisplayLabel = 'N'#186' Blto.'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object VerReceberADMFATURA: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER"."FATURA"'
      DisplayFormat = '#,##0'
    end
    object VerReceberADMPARCIAL: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER"."PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER"."DT_EMISSAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberADMDT_VENCTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberADMDT_LANCTO: TDateTimeField
      DisplayLabel = 'Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberADMJUROS_PARCIAL: TIBBCDField
      DisplayLabel = 'Juros Parcial'
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER"."JUROS_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMLOCAL: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER"."LOCAL"'
    end
    object VerReceberADMDATA_ULT_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER"."DATA_ULT_BAIXA"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object VerReceberADMVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMDT_AVISO: TDateTimeField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER"."DT_AVISO"'
      DisplayFormat = 'dd/mm/yy'
    end
    object VerReceberADMVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMSelecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADMJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADMTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADMTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADMAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object VerReceberADMMulta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Multa'
      Calculated = True
    end
    object VerReceberADMJurosSozinho: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JurosSozinho'
      Calculated = True
    end
    object VerReceberADMARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      Origin = '"VER_RECEBER"."ARQ_MORTO"'
      FixedChar = True
      Size = 10
    end
    object VerReceberADMCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object VerReceberADMJuros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Conta'
      Calculated = True
    end
    object VerReceberADMSALDO_DESCTO: TIBBCDField
      DisplayLabel = 'Sld. Descto'
      FieldName = 'SALDO_DESCTO'
      Origin = '"VER_RECEBER"."SALDO_DESCTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMTAXA_JUROS: TIBBCDField
      FieldName = 'TAXA_JUROS'
      Origin = '"VER_RECEBER"."TAXA_JUROS"'
      Precision = 18
      Size = 4
    end
    object VerReceberADMCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"VER_RECEBER"."COD_INDEXADOR"'
    end
    object VerReceberADMIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"VER_RECEBER"."IDX_DATABASE"'
    end
    object VerReceberADMIDX_COTACAO: TIBBCDField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"VER_RECEBER"."IDX_COTACAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerReceberADMIDX_QTDE: TIBBCDField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"VER_RECEBER"."IDX_QTDE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SelAgrupador: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME'
      'FROM FIN_CENTRO_CUSTO'
      'WHERE CNPJ = :CNPJ and AGRUPADOR IS NULL'
      'ORDER BY NOME')
    Left = 520
    Top = 578
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelAgrupadorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      Required = True
    end
    object SelAgrupadorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Consulta_Cobranca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Consulta_Cobranca1BeforeOpen
    SQL.Strings = (
      'SELECT  * FROM CONSULTA_COBRANCA (:CNPJ, :INI, :FIM,:DT_CX)')
    Left = 786
    Top = 360
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
        Name = 'DT_CX'
        ParamType = ptUnknown
      end>
    object Consulta_CobrancaSOMA: TIBBCDField
      DisplayLabel = 'Valor Total'
      FieldName = 'SOMA'
      Origin = '"CONSULTA_COBRANCA"."SOMA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_CobrancaINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = '"CONSULTA_COBRANCA"."INDICE"'
      Size = 70
    end
    object Consulta_CobrancaDATA: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DATA'
      Origin = '"CONSULTA_COBRANCA"."DATA"'
    end
    object Consulta_CobrancaULTIMA_BAIXA: TDateField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'ULTIMA_BAIXA'
      Origin = '"CONSULTA_COBRANCA"."ULTIMA_BAIXA"'
    end
    object Consulta_CobrancaPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"CONSULTA_COBRANCA"."PESSOA_FJ"'
    end
    object Consulta_CobrancaNOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = '"CONSULTA_COBRANCA"."NOME"'
      Size = 50
    end
    object Consulta_CobrancaENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"CONSULTA_COBRANCA"."ENDERECO"'
      Size = 50
    end
    object Consulta_CobrancaNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"CONSULTA_COBRANCA"."NUMERO"'
      Size = 15
    end
    object Consulta_CobrancaENDERECO_TRABALHO: TIBStringField
      DisplayLabel = 'End. Trabalho'
      FieldName = 'ENDERECO_TRABALHO'
      Origin = '"CONSULTA_COBRANCA"."ENDERECO_TRABALHO"'
      Size = 50
    end
    object Consulta_CobrancaCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"CONSULTA_COBRANCA"."CIDADE"'
      Size = 50
    end
    object Consulta_CobrancaBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"CONSULTA_COBRANCA"."BAIRRO"'
      Size = 50
    end
    object Consulta_CobrancaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"CONSULTA_COBRANCA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object Consulta_CobrancaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"CONSULTA_COBRANCA"."UF"'
      FixedChar = True
      Size = 2
    end
    object Consulta_CobrancaCOD_END: TIntegerField
      DisplayLabel = 'C'#243'd. Endere'#231'o'
      FieldName = 'COD_END'
      Origin = '"CONSULTA_COBRANCA"."COD_END"'
    end
    object Consulta_CobrancaCOD_CID: TIntegerField
      DisplayLabel = 'C'#243'd. Cidade'
      FieldName = 'COD_CID'
      Origin = '"CONSULTA_COBRANCA"."COD_CID"'
    end
    object Consulta_CobrancaCOD_BAI: TIntegerField
      DisplayLabel = 'C'#243'd. Bairro'
      FieldName = 'COD_BAI'
      Origin = '"CONSULTA_COBRANCA"."COD_BAI"'
    end
    object Consulta_CobrancaNUMERO_TRABALHO: TIBStringField
      DisplayLabel = 'N'#186' Trabalho'
      FieldName = 'NUMERO_TRABALHO'
      Origin = '"CONSULTA_COBRANCA"."NUMERO_TRABALHO"'
      Size = 15
    end
    object Consulta_CobrancaFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"CONSULTA_COBRANCA"."FONE"'
    end
    object Consulta_CobrancaFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"CONSULTA_COBRANCA"."FAX"'
    end
    object Consulta_CobrancaCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"CONSULTA_COBRANCA"."CELULAR"'
    end
    object Consulta_CobrancaLOCAL_TRABALHO: TIBStringField
      DisplayLabel = 'Trabalho'
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"CONSULTA_COBRANCA"."LOCAL_TRABALHO"'
      Size = 50
    end
    object Consulta_CobrancaFONE_TRABALHO: TIBStringField
      DisplayLabel = 'Fone Trab.'
      FieldName = 'FONE_TRABALHO'
      Origin = '"CONSULTA_COBRANCA"."FONE_TRABALHO"'
    end
    object Consulta_CobrancaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"CONSULTA_COBRANCA"."CPF_CGC"'
      Size = 15
    end
    object Consulta_CobrancaAGENDADO_PARA: TDateTimeField
      DisplayLabel = 'Dt. Agendamento'
      FieldName = 'AGENDADO_PARA'
      Origin = '"CONSULTA_COBRANCA"."AGENDADO_PARA"'
    end
    object Consulta_CobrancaCOBRAR_EM: TDateTimeField
      DisplayLabel = 'Dt. Cobran'#231'a'
      FieldName = 'COBRAR_EM'
      Origin = '"CONSULTA_COBRANCA"."COBRAR_EM"'
    end
    object Consulta_CobrancaMOTIVO: TIBStringField
      DisplayLabel = 'Alega'#231#227'o'
      FieldName = 'MOTIVO'
      Origin = '"CONSULTA_COBRANCA"."MOTIVO"'
      Size = 50
    end
    object Consulta_CobrancaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"CONSULTA_COBRANCA"."HISTORICO"'
      Size = 100
    end
    object Consulta_CobrancaCOBRADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"CONSULTA_COBRANCA"."COBRADOR"'
    end
    object Consulta_CobrancaCONTPAGAS: TIntegerField
      DisplayLabel = 'Qtde. Recebimentos'
      FieldName = 'CONTPAGAS'
      Origin = '"CONSULTA_COBRANCA"."CONTPAGAS"'
    end
    object Consulta_CobrancaCONTAGENDAMENTOS: TIntegerField
      DisplayLabel = 'Qtde. Agendamentos'
      FieldName = 'CONTAGENDAMENTOS'
      Origin = '"CONSULTA_COBRANCA"."CONTAGENDAMENTOS"'
    end
    object Consulta_CobrancaNOME_COBRADOR: TIBStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOME_COBRADOR'
      Origin = '"CONSULTA_COBRANCA"."NOME_COBRADOR"'
      Size = 50
    end
    object Consulta_CobrancaRECEBER: TIntegerField
      DisplayLabel = 'C'#243'd. Receber'
      FieldName = 'RECEBER'
      Origin = '"CONSULTA_COBRANCA"."RECEBER"'
    end
    object Consulta_CobrancaANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"CONSULTA_COBRANCA"."ANO"'
    end
    object Consulta_CobrancaDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"CONSULTA_COBRANCA"."DOCTO"'
    end
    object Consulta_CobrancaORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"CONSULTA_COBRANCA"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Consulta_CobrancaLANCAMENTO: TDateTimeField
      DisplayLabel = 'Dt. Lan'#231'to'
      FieldName = 'LANCAMENTO'
      Origin = '"CONSULTA_COBRANCA"."LANCAMENTO"'
    end
    object Consulta_CobrancaVENDA: TIntegerField
      DisplayLabel = 'C'#243'd. Venda'
      FieldName = 'VENDA'
      Origin = '"CONSULTA_COBRANCA"."VENDA"'
    end
    object Consulta_CobrancaARQ_MORTO: TIBStringField
      DisplayLabel = 'Arq. Morto'
      FieldName = 'ARQ_MORTO'
      Origin = '"CONSULTA_COBRANCA"."ARQ_MORTO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_CobrancaHR_COBRAR_EM: TTimeField
      DisplayLabel = 'Hr. Agendada'
      FieldName = 'HR_COBRAR_EM'
      Origin = '"CONSULTA_COBRANCA"."HR_COBRAR_EM"'
    end
    object Consulta_CobrancaHR_COBRANCA: TTimeField
      DisplayLabel = 'Hr. Cobran'#231'a'
      FieldName = 'HR_COBRANCA'
      Origin = '"CONSULTA_COBRANCA"."HR_COBRANCA"'
    end
    object Consulta_CobrancaLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local Cobran'#231'a'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"CONSULTA_COBRANCA"."LOCAL_COBRANCA"'
    end
    object Consulta_CobrancaSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"CONSULTA_COBRANCA"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object Consulta_CobrancaMULTA: TIBBCDField
      DisplayLabel = 'Multa'
      FieldName = 'MULTA'
      Origin = '"CONSULTA_COBRANCA"."MULTA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_CobrancaVLR_NOMINAL: TIBBCDField
      DisplayLabel = 'Vlr. Nominal'
      FieldName = 'VLR_NOMINAL'
      Origin = '"CONSULTA_COBRANCA"."VLR_NOMINAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_CobrancaVLR_BAIXADO: TIBBCDField
      DisplayLabel = 'Vlr. Baixado'
      FieldName = 'VLR_BAIXADO'
      Origin = '"CONSULTA_COBRANCA"."VLR_BAIXADO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_CobrancaSALDO_NOMINAL: TIBBCDField
      DisplayLabel = 'Saldo Nominal'
      FieldName = 'SALDO_NOMINAL'
      Origin = '"CONSULTA_COBRANCA"."SALDO_NOMINAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Consulta_CobrancaJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"CONSULTA_COBRANCA"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object edtCobranca_Listagem: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = CobrancaNewRecord
    OnPostError = CobrancaPostError
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PESSOA_FJ,'
      '  DATA_COBRANCA,'
      '  RECEBER,'
      '  ORIGEM,'
      '  MOTIVO,'
      '  COBRAR_EM,'
      '  HISTORICO,'
      '  PAGO_EM,'
      '  NOME_MOTIVO,'
      '  COBRADOR,'
      '  NOME_COBRADOR,'
      '  ANO,'
      '  SELECIONADO,'
      '  INDICE'
      'from FIN_COBRANCAS '
      'where'
      '  INDICE = :INDICE')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          COBRAR_EM, '
      '          DATA_COBRANCA, '
      '          HISTORICO, '
      '          MOTIVO, '
      '          PAGO_EM,'
      '          NOME_MOTIVO ,'
      '          PESSOA_FJ,'
      '          COBRADOR,'
      '          NOME_COBRADOR  ,'
      '          RECEBER,'
      '          ORIGEM,'
      '          ANO,'
      '          Indice'
      'from FIN_COBRANCAS'
      'Where indice = :indice'
      '')
    ModifySQL.Strings = (
      'update FIN_COBRANCAS'
      'set'
      '  CNPJ = :CNPJ,'
      '  COBRAR_EM = :COBRAR_EM,'
      '  DATA_COBRANCA = :DATA_COBRANCA,'
      '  HISTORICO = :HISTORICO,'
      '  MOTIVO = :MOTIVO,'
      '  PAGO_EM = :PAGO_EM,'
      '  NOME_MOTIVO = :NOME_MOTIVO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  COBRADOR = :COBRADOR,'
      '  NOME_COBRADOR = :NOME_COBRADOR,'
      '  RECEBER = :RECEBER,'
      '  ORIGEM = :ORIGEM,'
      '  ANO = :ANO'
      'where'
      '  INDICE = :OLD_INDICE')
    Left = 512
    Top = 514
    object IBStringField1: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_COBRANCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object DateTimeField1: TDateTimeField
      DisplayLabel = 'Cobrar'
      FieldName = 'COBRAR_EM'
      Origin = '"FIN_COBRANCAS"."COBRAR_EM"'
    end
    object DateTimeField2: TDateTimeField
      DisplayLabel = 'Data Cobr'
      FieldName = 'DATA_COBRANCA'
      Origin = '"FIN_COBRANCAS"."DATA_COBRANCA"'
    end
    object IBStringField2: TIBStringField
      DisplayLabel = 'HIst'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_COBRANCAS"."HISTORICO"'
      Size = 100
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'Motivo'
      FieldName = 'MOTIVO'
      Origin = '"FIN_COBRANCAS"."MOTIVO"'
      Required = True
    end
    object DateTimeField3: TDateTimeField
      DisplayLabel = 'Pago em'
      FieldName = 'PAGO_EM'
      Origin = '"FIN_COBRANCAS"."PAGO_EM"'
    end
    object IBStringField3: TIBStringField
      FieldName = 'NOME_MOTIVO'
      Origin = '"FIN_COBRANCAS"."NOME_MOTIVO"'
      Size = 50
    end
    object IntegerField2: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_COBRANCAS"."PESSOA_FJ"'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"FIN_COBRANCAS"."COBRADOR"'
      OnValidate = CobrancaCOBRADORValidate
    end
    object IBStringField4: TIBStringField
      FieldName = 'NOME_COBRADOR'
      Origin = '"FIN_COBRANCAS"."NOME_COBRADOR"'
      Size = 50
    end
    object IntegerField4: TIntegerField
      FieldName = 'RECEBER'
      Origin = '"FIN_COBRANCAS"."RECEBER"'
      Required = True
    end
    object IBStringField5: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_COBRANCAS"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object IntegerField5: TIntegerField
      FieldName = 'ANO'
      Origin = '"FIN_COBRANCAS"."ANO"'
    end
    object IBStringField6: TIBStringField
      FieldName = 'INDICE'
      Origin = '"FIN_COBRANCAS"."INDICE"'
      Size = 57
    end
  end
  object qryListagemCheques: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Consulta_Cobranca1BeforeOpen
    Active = True
    SQL.Strings = (
      'select ch.cheque, bc.nome, ch.agencia,'
      'ch.valor, ch.pre_date, ch.nome cliente from fin_cheques ch'
      'inner join fin_banco bc on (bc.codigo = ch.banco)'
      'where ch.marcado = '#39'S'#39' and  (ch.data_conciliacao is null)'
      'and ch.cnpj = :cnpj'
      'order by bc.nome')
    Left = 892
    Top = 3
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryListagemChequesCHEQUE: TIBStringField
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object qryListagemChequesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BANCO"."NOME"'
      Required = True
      Size = 50
    end
    object qryListagemChequesAGENCIA: TIBStringField
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object qryListagemChequesVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
    end
    object qryListagemChequesPRE_DATE: TDateTimeField
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object qryListagemChequesCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"FIN_CHEQUES"."NOME"'
      Size = 50
    end
  end
  object dsListagemCheques: TDataSource
    DataSet = qryListagemCheques
    Left = 190
    Top = 578
  end
  object AcertaJuros: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      '/*aplicando descontos no valor de juros*/'
      
        'update FIN_CONTAS_RECEBER set  JUROS_PARCIAL = (JUROS_PARCIAL + ' +
        '((juros_parcial*:pct)/100))'
      'WHERE CNPJ = :CNPJ AND PESSOA_FJ = :CLIENTE  AND'
      'SELECIONADO = '#39'S'#39'  AND FATURA IS NULL')
    Transaction = DmApp.Transaction
    Left = 786
    Top = 522
  end
  object upTrocaEstado: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      'update fin_cheques'
      'set Tipo = :Tipo'
      'where indice = :indice')
    Transaction = DmApp.Transaction
    Left = 786
    Top = 101
  end
  object VerPendenciasRel: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = VerPendenciasCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO ,'
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
      '    DESCONTOS ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
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
      '    FONE ,'
      '    CPF_CGC ,'
      '    SELECIONADO,'
      '    TIPO_DOCTO,'
      '    NUMDUPLICATA ,'
      '    FATURA,'
      '    NUMBOLETO,'
      '    PARCIAL,'
      '    JUROS_PARCIAL,'
      '    DATA_ULT_BAIXA ,'
      '    COBRADOR'
      'From Ver_Receber (:CNPJ)')
    Left = 698
    Top = 304
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object IntegerField6: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object SmallintField1: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object IntegerField7: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object IBStringField7: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object IBStringField8: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object IBStringField9: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object IBBCDField1: TIBBCDField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object IBStringField10: TIBStringField
      DisplayLabel = 'Bol'
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object IBStringField11: TIBStringField
      DisplayLabel = 'Or'
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object IntegerField8: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object SmallintField2: TSmallintField
      DisplayLabel = 'Ano Vnd'
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object SmallintField3: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object IBStringField12: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object IBStringField13: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object IBStringField14: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object IBStringField15: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object IBStringField16: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object IBStringField17: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object IBStringField18: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object IntegerField9: TIntegerField
      DisplayLabel = 'End'
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object IntegerField10: TIntegerField
      DisplayLabel = 'Cid'
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object IntegerField11: TIntegerField
      DisplayLabel = 'Bai'
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object IBStringField19: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object IBStringField20: TIBStringField
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object IBStringField21: TIBStringField
      DisplayLabel = 'Selecionado'
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object IBBCDField2: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object FloatField1: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object IBBCDField3: TIBBCDField
      DisplayLabel = 'Juros Rec'
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object IBBCDField4: TIBBCDField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object IBStringField22: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object IntegerField12: TIntegerField
      DisplayLabel = 'Duplicata'
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object IntegerField13: TIntegerField
      DisplayLabel = 'Num Boleto'
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object IntegerField14: TIntegerField
      DisplayLabel = 'Fatura'
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER"."FATURA"'
      DisplayFormat = '#,##0'
    end
    object IBBCDField5: TIBBCDField
      DisplayLabel = 'Parcial'
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER"."PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object DateTimeField4: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER"."DT_EMISSAO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DateTimeField5: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER"."DT_VENCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DateTimeField6: TDateTimeField
      DisplayLabel = 'Lancamento'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER"."DT_LANCTO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object DateTimeField7: TDateTimeField
      DisplayLabel = 'Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER"."DT_AVISO"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object IBBCDField6: TIBBCDField
      DisplayLabel = 'Juros Parcial'
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER"."JUROS_PARCIAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object FloatField2: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object DateTimeField8: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER"."DATA_ULT_BAIXA"'
      DisplayFormat = 'dd/mm/yyyy'
    end
    object FloatField3: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object FloatField4: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object IntegerField15: TIntegerField
      DisplayLabel = 'Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER"."COBRADOR"'
    end
    object IntegerField16: TIntegerField
      DisplayLabel = 'Atraso'
      FieldKind = fkCalculated
      FieldName = 'ATRASO'
      Calculated = True
    end
  end
  object SelecionaConta: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'update fin_contas_receber rec set SELECIONADO = :tipo, JUROS_PAR' +
        'CIAL = :juros'
      'where rec.cnpj = :cnpj and rec.pessoa_fj = :pessoa'
      'and rec.codigo = :codigo')
    Transaction = DmApp.Transaction
    Left = 340
    Top = 579
  end
  object DesmarcaReceber: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      'update fin_contas_receber rec set rec.selecionado ='#39'N'#39
      'where rec.cnpj = :cnpj')
    Transaction = DmApp.Transaction
    Left = 115
    Top = 578
  end
  object AgendaCobranca: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'update FIN_COBRANCAS set COBRAR_EM = :COBRAR_EM, DATA_COBRANCA =' +
        ' :DATA_COBRANCA,'
      
        'HISTORICO = :HISTORICO, MOTIVO = :MOTIVO, COBRADOR = :COBRADOR, ' +
        'SELECIONADO = '#39'N'#39
      'Where indice = :indice')
    Transaction = DmApp.Transaction
    Left = 786
    Top = 51
  end
  object InsereCobranca: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'insert into fin_cobrancas(cnpj,pessoa_fj,data_cobranca, hr_cobra' +
        'nca, receber,origem,motivo,cobrar_em,hr_cobrar_em, historico, no' +
        'me_motivo,cobrador,nome_cobrador,ano,selecionado)'
      
        'values(:cnpj,:pessoa_fj,:data_cobranca,:hr_cobranca, :receber,:o' +
        'rigem,:motivo,:cobrar_em,:hr_cobrar_em, :historico,:nome_motivo,' +
        ':cobrador,:nome_cobrador,:ano,'#39'N'#39')')
    Transaction = DmApp.Transaction
    Left = 892
    Top = 304
  end
  object qryRelReceberClass: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = OnCalcDataSetReceber
    SQL.Strings = (
      
        'SELECT * FROM VER_RECEBER_CLASSE ( :CNPJ, :DINI, :DFIM )  Where ' +
        'CLASSE = :INI')
    Left = 698
    Top = 466
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptUnknown
      end>
    object qryRelReceberClassJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryRelReceberClassTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryRelReceberClassJuros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Conta'
      Calculated = True
    end
    object qryRelReceberClassCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER_CLASSE"."CODIGO"'
    end
    object qryRelReceberClassANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_RECEBER_CLASSE"."ANO"'
    end
    object qryRelReceberClassPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER_CLASSE"."PESSOA_FJ"'
    end
    object qryRelReceberClassDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER_CLASSE"."DT_EMISSAO"'
    end
    object qryRelReceberClassDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER_CLASSE"."DT_VENCTO"'
    end
    object qryRelReceberClassDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER_CLASSE"."DT_LANCTO"'
    end
    object qryRelReceberClassDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER_CLASSE"."DOCTO"'
    end
    object qryRelReceberClassPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER_CLASSE"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object qryRelReceberClassHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER_CLASSE"."HISTORICO"'
      Size = 100
    end
    object qryRelReceberClassVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER_CLASSE"."VALOR"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberClassVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER_CLASSE"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberClassJUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER_CLASSE"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberClassDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER_CLASSE"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberClassBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER_CLASSE"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryRelReceberClassORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER_CLASSE"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object qryRelReceberClassCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER_CLASSE"."CODIGO_VN"'
    end
    object qryRelReceberClassANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER_CLASSE"."ANO_VN"'
    end
    object qryRelReceberClassAVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER_CLASSE"."AVISO"'
    end
    object qryRelReceberClassDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER_CLASSE"."DT_AVISO"'
    end
    object qryRelReceberClassNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_RECEBER_CLASSE"."NOME"'
      Size = 50
    end
    object qryRelReceberClassENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER_CLASSE"."ENDERECO"'
      Size = 50
    end
    object qryRelReceberClassNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER_CLASSE"."NUMERO"'
      Size = 15
    end
    object qryRelReceberClassCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER_CLASSE"."CIDADE"'
      Size = 50
    end
    object qryRelReceberClassBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER_CLASSE"."BAIRRO"'
      Size = 50
    end
    object qryRelReceberClassCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_RECEBER_CLASSE"."CEP"'
      FixedChar = True
      Size = 8
    end
    object qryRelReceberClassUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_RECEBER_CLASSE"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryRelReceberClassCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER_CLASSE"."COD_END"'
    end
    object qryRelReceberClassCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER_CLASSE"."COD_CID"'
    end
    object qryRelReceberClassCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER_CLASSE"."COD_BAI"'
    end
    object qryRelReceberClassFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_RECEBER_CLASSE"."FONE"'
    end
    object qryRelReceberClassCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER_CLASSE"."CPF_CGC"'
      Size = 15
    end
    object qryRelReceberClassSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER_CLASSE"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryRelReceberClassTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER_CLASSE"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryRelReceberClassNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER_CLASSE"."NUMDUPLICATA"'
    end
    object qryRelReceberClassFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER_CLASSE"."FATURA"'
    end
    object qryRelReceberClassNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER_CLASSE"."NUMBOLETO"'
    end
    object qryRelReceberClassPARCIAL: TIBBCDField
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER_CLASSE"."PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberClassJUROS_PARCIAL: TIBBCDField
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER_CLASSE"."JUROS_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberClassDATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER_CLASSE"."DATA_ULT_BAIXA"'
    end
    object qryRelReceberClassCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER_CLASSE"."COBRADOR"'
    end
    object qryRelReceberClassLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER_CLASSE"."LOCAL"'
    end
    object qryRelReceberClassCLASSE: TIntegerField
      FieldName = 'CLASSE'
      Origin = '"VER_RECEBER_CLASSE"."CLASSE"'
    end
    object qryRelReceberClassARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"VER_RECEBER_CLASSE"."ARQUIVO"'
      FixedChar = True
      Size = 1
    end
    object qryRelReceberClassTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object qryRelReceberClassAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object qryRelReceberClassSelecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      Calculated = True
    end
  end
  object qryRelReceberVed: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = OnCalcDataSetReceber
    SQL.Strings = (
      
        ' SELECT * FROM VER_RECEBER_VENDEDOR ( :CNPJ, :DINI, :DFIM ) Wher' +
        'e VENDEDOR = :INI ')
    Left = 786
    Top = 469
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INI'
        ParamType = ptUnknown
      end>
    object qryRelReceberVedJuros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryRelReceberVedTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object qryRelReceberVedJuros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Conta'
      Calculated = True
    end
    object qryRelReceberVedTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object qryRelReceberVedCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER_VENDEDOR"."CODIGO"'
    end
    object qryRelReceberVedANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_RECEBER_VENDEDOR"."ANO"'
    end
    object qryRelReceberVedPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER_VENDEDOR"."PESSOA_FJ"'
    end
    object qryRelReceberVedDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER_VENDEDOR"."DT_EMISSAO"'
    end
    object qryRelReceberVedDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER_VENDEDOR"."DT_VENCTO"'
    end
    object qryRelReceberVedDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER_VENDEDOR"."DT_LANCTO"'
    end
    object qryRelReceberVedDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER_VENDEDOR"."DOCTO"'
    end
    object qryRelReceberVedPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER_VENDEDOR"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object qryRelReceberVedHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER_VENDEDOR"."HISTORICO"'
      Size = 100
    end
    object qryRelReceberVedVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER_VENDEDOR"."VALOR"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberVedVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER_VENDEDOR"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberVedJUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER_VENDEDOR"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberVedDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER_VENDEDOR"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberVedBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER_VENDEDOR"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryRelReceberVedORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER_VENDEDOR"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object qryRelReceberVedCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER_VENDEDOR"."CODIGO_VN"'
    end
    object qryRelReceberVedANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER_VENDEDOR"."ANO_VN"'
    end
    object qryRelReceberVedAVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER_VENDEDOR"."AVISO"'
    end
    object qryRelReceberVedDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER_VENDEDOR"."DT_AVISO"'
    end
    object qryRelReceberVedNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_RECEBER_VENDEDOR"."NOME"'
      Size = 50
    end
    object qryRelReceberVedENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER_VENDEDOR"."ENDERECO"'
      Size = 50
    end
    object qryRelReceberVedNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER_VENDEDOR"."NUMERO"'
      Size = 15
    end
    object qryRelReceberVedCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER_VENDEDOR"."CIDADE"'
      Size = 50
    end
    object qryRelReceberVedBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER_VENDEDOR"."BAIRRO"'
      Size = 50
    end
    object qryRelReceberVedCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_RECEBER_VENDEDOR"."CEP"'
      FixedChar = True
      Size = 8
    end
    object qryRelReceberVedUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_RECEBER_VENDEDOR"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryRelReceberVedCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER_VENDEDOR"."COD_END"'
    end
    object qryRelReceberVedCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER_VENDEDOR"."COD_CID"'
    end
    object qryRelReceberVedCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER_VENDEDOR"."COD_BAI"'
    end
    object qryRelReceberVedFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_RECEBER_VENDEDOR"."FONE"'
    end
    object qryRelReceberVedCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER_VENDEDOR"."CPF_CGC"'
      Size = 15
    end
    object qryRelReceberVedSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER_VENDEDOR"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryRelReceberVedTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER_VENDEDOR"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryRelReceberVedNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER_VENDEDOR"."NUMDUPLICATA"'
    end
    object qryRelReceberVedFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER_VENDEDOR"."FATURA"'
    end
    object qryRelReceberVedNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER_VENDEDOR"."NUMBOLETO"'
    end
    object qryRelReceberVedPARCIAL: TIBBCDField
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER_VENDEDOR"."PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberVedJUROS_PARCIAL: TIBBCDField
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER_VENDEDOR"."JUROS_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryRelReceberVedDATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER_VENDEDOR"."DATA_ULT_BAIXA"'
    end
    object qryRelReceberVedCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER_VENDEDOR"."COBRADOR"'
    end
    object qryRelReceberVedLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER_VENDEDOR"."LOCAL"'
    end
    object qryRelReceberVedVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_RECEBER_VENDEDOR"."VENDEDOR"'
    end
    object qryRelReceberVedARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"VER_RECEBER_VENDEDOR"."ARQUIVO"'
      FixedChar = True
      Size = 1
    end
    object qryRelReceberVedAtraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object qryRelReceberVedSelecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      Calculated = True
    end
  end
  object qryVerFatPendencia: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = qryVerFatPendenciaCalcFields
    SQL.Strings = (
      
        ' SELECT * FROM VER_FATURA_PESSOA ( :CNPJ, :PESSOA_FJ ) ORDER BY ' +
        'VENCIMENTO ')
    Left = 892
    Top = 412
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
    object qryVerFatPendenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA_PESSOA"."CODIGO"'
    end
    object qryVerFatPendenciaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA_PESSOA"."PESSOA_FJ"'
    end
    object qryVerFatPendenciaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FATURA_PESSOA"."DATA"'
    end
    object qryVerFatPendenciaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FATURA_PESSOA"."VALOR"'
      Precision = 18
      Size = 4
    end
    object qryVerFatPendenciaVALOR_ORIGINAL: TIBBCDField
      FieldName = 'VALOR_ORIGINAL'
      Origin = '"VER_FATURA_PESSOA"."VALOR_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object qryVerFatPendenciaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_PESSOA"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryVerFatPendenciaJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"VER_FATURA_PESSOA"."JUROS"'
      Precision = 18
      Size = 4
    end
    object qryVerFatPendenciaVENCIMENTO: TDateTimeField
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA_PESSOA"."VENCIMENTO"'
    end
    object qryVerFatPendenciaULTIMA_BX_PARCIAL: TDateTimeField
      FieldName = 'ULTIMA_BX_PARCIAL'
      Origin = '"VER_FATURA_PESSOA"."ULTIMA_BX_PARCIAL"'
    end
    object qryVerFatPendenciaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA_PESSOA"."HISTORICO"'
      Size = 100
    end
    object qryVerFatPendenciaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FATURA_PESSOA"."NOME"'
      Size = 50
    end
    object qryVerFatPendenciaNOME_FANTASIA: TIBStringField
      FieldName = 'NOME_FANTASIA'
      Origin = '"VER_FATURA_PESSOA"."NOME_FANTASIA"'
      Size = 50
    end
    object qryVerFatPendenciaCOMPRADOR: TIBStringField
      FieldName = 'COMPRADOR'
      Origin = '"VER_FATURA_PESSOA"."COMPRADOR"'
      Size = 50
    end
    object qryVerFatPendenciaFONE_COMPRADOR: TIBStringField
      FieldName = 'FONE_COMPRADOR'
      Origin = '"VER_FATURA_PESSOA"."FONE_COMPRADOR"'
      Size = 15
    end
    object qryVerFatPendenciaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA_PESSOA"."ENDERECO"'
      Size = 50
    end
    object qryVerFatPendenciaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA_PESSOA"."NUMERO"'
      Size = 15
    end
    object qryVerFatPendenciaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA_PESSOA"."CIDADE"'
      Size = 50
    end
    object qryVerFatPendenciaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA_PESSOA"."BAIRRO"'
      Size = 50
    end
    object qryVerFatPendenciaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_FATURA_PESSOA"."CEP"'
      FixedChar = True
      Size = 8
    end
    object qryVerFatPendenciaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_FATURA_PESSOA"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryVerFatPendenciaCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_FATURA_PESSOA"."COD_END"'
    end
    object qryVerFatPendenciaCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_FATURA_PESSOA"."COD_CID"'
    end
    object qryVerFatPendenciaCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_FATURA_PESSOA"."COD_BAI"'
    end
    object qryVerFatPendenciaAGRUPADORA: TIntegerField
      FieldName = 'AGRUPADORA'
      Origin = '"VER_FATURA_PESSOA"."AGRUPADORA"'
    end
    object qryVerFatPendenciaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_FATURA_PESSOA"."FONE"'
    end
    object qryVerFatPendenciaBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_FATURA_PESSOA"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object qryVerFatPendenciaBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_FATURA_PESSOA"."BOLETO"'
      Size = 30
    end
    object qryVerFatPendenciaOBS: TIBStringField
      FieldName = 'OBS'
      Origin = '"VER_FATURA_PESSOA"."OBS"'
      Size = 30
    end
    object qryVerFatPendenciaDUPLICATA: TIBStringField
      FieldName = 'DUPLICATA'
      Origin = '"VER_FATURA_PESSOA"."DUPLICATA"'
      Size = 30
    end
    object qryVerFatPendenciaENVIADA: TIBStringField
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA_PESSOA"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object qryVerFatPendenciaTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_FATURA_PESSOA"."TIPO"'
      Size = 11
    end
    object qryVerFatPendenciaNOME_BANCO: TIBStringField
      FieldName = 'NOME_BANCO'
      Origin = '"VER_FATURA_PESSOA"."NOME_BANCO"'
      Size = 50
    end
    object qryVerFatPendenciaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA_PESSOA"."CPF_CGC"'
      Size = 15
    end
    object qryVerFatPendenciaDATA_BAIXA: TDateTimeField
      FieldName = 'DATA_BAIXA'
      Origin = '"VER_FATURA_PESSOA"."DATA_BAIXA"'
    end
    object qryVerFatPendenciaUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"VER_FATURA_PESSOA"."USUARIO"'
      FixedChar = True
      Size = 14
    end
    object qryVerFatPendenciaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object qryVerRecPendencia: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = qryVerRecPendenciaCalcFields
    SQL.Strings = (
      
        ' SELECT  *  FROM VER_RECEBER_PESSOA_NFATURADO ( :CNPJ, :PESSOA_F' +
        'J ) WHERE ( FATURA IS NULL or FATURA = 0 ) ORDER BY DT_VENCTO')
    Left = 892
    Top = 360
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
    object qryVerRecPendenciaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."CODIGO"'
    end
    object qryVerRecPendenciaANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."ANO"'
    end
    object qryVerRecPendenciaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."PESSOA_FJ"'
    end
    object qryVerRecPendenciaDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."DT_EMISSAO"'
    end
    object qryVerRecPendenciaDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."DT_VENCTO"'
    end
    object qryVerRecPendenciaDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."DT_LANCTO"'
    end
    object qryVerRecPendenciaDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."DOCTO"'
    end
    object qryVerRecPendenciaPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object qryVerRecPendenciaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."HISTORICO"'
      Size = 100
    end
    object qryVerRecPendenciaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object qryVerRecPendenciaVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryVerRecPendenciaJUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object qryVerRecPendenciaDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object qryVerRecPendenciaBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryVerRecPendenciaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object qryVerRecPendenciaCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."CODIGO_VN"'
    end
    object qryVerRecPendenciaANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."ANO_VN"'
    end
    object qryVerRecPendenciaAVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."AVISO"'
    end
    object qryVerRecPendenciaDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."DT_AVISO"'
    end
    object qryVerRecPendenciaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."NOME"'
      Size = 50
    end
    object qryVerRecPendenciaENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."ENDERECO"'
      Size = 50
    end
    object qryVerRecPendenciaNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."NUMERO"'
      Size = 15
    end
    object qryVerRecPendenciaCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."CIDADE"'
      Size = 50
    end
    object qryVerRecPendenciaBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."BAIRRO"'
      Size = 50
    end
    object qryVerRecPendenciaCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."CEP"'
      FixedChar = True
      Size = 8
    end
    object qryVerRecPendenciaUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryVerRecPendenciaCOD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."COD_END"'
    end
    object qryVerRecPendenciaCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."COD_CID"'
    end
    object qryVerRecPendenciaCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."COD_BAI"'
    end
    object qryVerRecPendenciaFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."FONE"'
    end
    object qryVerRecPendenciaCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."CPF_CGC"'
      Size = 15
    end
    object qryVerRecPendenciaSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryVerRecPendenciaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryVerRecPendenciaNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."NUMDUPLICATA"'
    end
    object qryVerRecPendenciaFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."FATURA"'
    end
    object qryVerRecPendenciaNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."NUMBOLETO"'
    end
    object qryVerRecPendenciaPARCIAL: TIBBCDField
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryVerRecPendenciaJUROS_PARCIAL: TIBBCDField
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."JUROS_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object qryVerRecPendenciaDATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."DATA_ULT_BAIXA"'
    end
    object qryVerRecPendenciaCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."COBRADOR"'
    end
    object qryVerRecPendenciaLOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."LOCAL"'
    end
    object qryVerRecPendenciaARQUIVO: TIBStringField
      FieldName = 'ARQUIVO'
      Origin = '"VER_RECEBER_PESSOA_NFATURADO"."ARQUIVO"'
      FixedChar = True
      Size = 1
    end
    object qryVerRecPendenciaTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object qryLocalizaCob: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    Left = 352
    Top = 514
  end
  object qryImpBoleto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryImpBoletoCalcFields
    SQL.Strings = (
      
        'select * from FIN_CONTAS_RECEBER rec Where Cnpj = :cnpj AND FATU' +
        'RA IS NULL')
    Left = 264
    Top = 578
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryImpBoletoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_CONTAS_RECEBER"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryImpBoletoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryImpBoletoANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"FIN_CONTAS_RECEBER"."ANO"'
      Required = True
    end
    object qryImpBoletoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CONTAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object qryImpBoletoDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_EMISSAO"'
      Required = True
    end
    object qryImpBoletoDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_VENCTO"'
      Required = True
    end
    object qryImpBoletoDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_LANCTO"'
    end
    object qryImpBoletoDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."DOCTO"'
      Required = True
    end
    object qryImpBoletoPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_RECEBER"."PARCELA"'
      Required = True
      Size = 6
    end
    object qryImpBoletoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_CONTAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object qryImpBoletoVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_RECEBER"."VALOR"'
    end
    object qryImpBoletoVLR_PARCIAL: TFloatField
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_PARCIAL"'
    end
    object qryImpBoletoJUROS_REC: TFloatField
      FieldName = 'JUROS_REC'
      Origin = '"FIN_CONTAS_RECEBER"."JUROS_REC"'
    end
    object qryImpBoletoDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FIN_CONTAS_RECEBER"."DESCONTOS"'
    end
    object qryImpBoletoBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"FIN_CONTAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryImpBoletoORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_CONTAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryImpBoletoCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO_VN"'
    end
    object qryImpBoletoANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"FIN_CONTAS_RECEBER"."ANO_VN"'
    end
    object qryImpBoletoAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"FIN_CONTAS_RECEBER"."AVISO"'
    end
    object qryImpBoletoDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"FIN_CONTAS_RECEBER"."DT_AVISO"'
    end
    object qryImpBoletoSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryImpBoletoFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"FIN_CONTAS_RECEBER"."FATURA"'
    end
    object qryImpBoletoTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryImpBoletoNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"FIN_CONTAS_RECEBER"."NUMBOLETO"'
    end
    object qryImpBoletoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CONTAS_RECEBER"."NOME"'
      Size = 50
    end
    object qryImpBoletoNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"FIN_CONTAS_RECEBER"."NUMDUPLICATA"'
    end
    object qryImpBoletoMOEDA1: TFloatField
      FieldName = 'MOEDA1'
      Origin = '"FIN_CONTAS_RECEBER"."MOEDA1"'
    end
    object qryImpBoletoMOEDA2: TFloatField
      FieldName = 'MOEDA2'
      Origin = '"FIN_CONTAS_RECEBER"."MOEDA2"'
    end
    object qryImpBoletoPARCIAL: TFloatField
      FieldName = 'PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."PARCIAL"'
    end
    object qryImpBoletoCODIGO_TRC: TIntegerField
      FieldName = 'CODIGO_TRC'
      Origin = '"FIN_CONTAS_RECEBER"."CODIGO_TRC"'
    end
    object qryImpBoletoJUROS_PARCIAL: TFloatField
      FieldName = 'JUROS_PARCIAL'
      Origin = '"FIN_CONTAS_RECEBER"."JUROS_PARCIAL"'
    end
    object qryImpBoletoDATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."DATA_ULT_BAIXA"'
    end
    object qryImpBoletoCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"FIN_CONTAS_RECEBER"."COBRADOR"'
    end
    object qryImpBoletoFLUXO_CAIXA: TDateTimeField
      FieldName = 'FLUXO_CAIXA'
      Origin = '"FIN_CONTAS_RECEBER"."FLUXO_CAIXA"'
    end
    object qryImpBoletoLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FIN_CONTAS_RECEBER"."LOCAL_COBRANCA"'
    end
    object qryImpBoletoVLR_ORIG_ALT: TIBStringField
      FieldName = 'VLR_ORIG_ALT'
      Origin = '"FIN_CONTAS_RECEBER"."VLR_ORIG_ALT"'
      FixedChar = True
      Size = 1
    end
    object qryImpBoletoBLT_NOSSO_NUM: TIBStringField
      FieldName = 'BLT_NOSSO_NUM'
      Origin = '"FIN_CONTAS_RECEBER"."BLT_NOSSO_NUM"'
      Size = 15
    end
    object qryImpBoletoBLT_BANCO: TIntegerField
      FieldName = 'BLT_BANCO'
      Origin = '"FIN_CONTAS_RECEBER"."BLT_BANCO"'
    end
    object qryImpBoletoBLT_REM_GERADA: TIBStringField
      FieldName = 'BLT_REM_GERADA'
      Origin = '"FIN_CONTAS_RECEBER"."BLT_REM_GERADA"'
      FixedChar = True
      Size = 1
    end
    object qryImpBoletoNDOC: TLargeintField
      FieldName = 'NDOC'
      Origin = '"FIN_CONTAS_RECEBER"."NDOC"'
    end
    object qryImpBoletoARQUIVO_MORTO: TIBStringField
      FieldName = 'ARQUIVO_MORTO'
      Origin = '"FIN_CONTAS_RECEBER"."ARQUIVO_MORTO"'
      FixedChar = True
      Size = 1
    end
    object qryImpBoletoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object qryImpBoletoJuros_Calculados: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculados'
      Calculated = True
    end
    object qryImpBoletoTotal_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      Calculated = True
    end
  end
  object qryVerPagarSel: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = Contas_ReceberAfterClose
    BeforeOpen = Contas_ReceberBeforeOpen
    OnCalcFields = qryVerPagarSelCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO,'
      '    ANO,'
      '    PESSOA_FJ,'
      '    DT_EMISSAO,'
      '    DT_VENCTO,'
      '    DT_LANCTO,'
      '    DOCTO,'
      '    PARCELA,'
      '    HISTORICO,'
      '    VALOR,'
      '    VLR_PARCIAL,'
      '    JUROS_PAG,'
      '    DESCONTOS,'
      '    BOLETO,'
      '    ORIGEM,'
      '    CODIGO_ENT,'
      '    ANO_ENT,'
      '    AVISO,'
      '    DT_AVISO,'
      '    NOME,'
      '    ENDERECO,'
      '    NUMERO,'
      '    CIDADE,'
      '    BAIRRO,'
      '    CEP,'
      '    UF,'
      '    COD_END,'
      '    COD_CID,'
      '    COD_BAI,'
      '    FONE,'
      '    CPF_CGC,'
      '    SELECIONADO,'
      '    CENTRO_CUSTO,'
      '    NOME_CENTRO,'
      '    DUPLICATA,'
      '    CONFERIDA,'
      '   DT_ULTIMA_BAIXA'
      'From Ver_Pagar (:CNPJ)')
    Left = 203
    Top = 151
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryVerPagarSelCODIGO: TIntegerField
      DisplayLabel = 'Codigo'
      FieldName = 'CODIGO'
      Origin = '"VER_PAGAR"."CODIGO"'
    end
    object qryVerPagarSelANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"VER_PAGAR"."ANO"'
    end
    object qryVerPagarSelPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_PAGAR"."PESSOA_FJ"'
    end
    object qryVerPagarSelDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emissao'
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_PAGAR"."DT_EMISSAO"'
    end
    object qryVerPagarSelDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_PAGAR"."DT_VENCTO"'
    end
    object qryVerPagarSelDT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"VER_PAGAR"."DT_LANCTO"'
    end
    object qryVerPagarSelDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"VER_PAGAR"."DOCTO"'
    end
    object qryVerPagarSelPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"VER_PAGAR"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object qryVerPagarSelHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_PAGAR"."HISTORICO"'
      Size = 100
    end
    object qryVerPagarSelVALOR: TIBBCDField
      DisplayLabel = 'Vlr. Original'
      FieldName = 'VALOR'
      Origin = '"VER_PAGAR"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerPagarSelVLR_PARCIAL: TIBBCDField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_PAGAR"."VLR_PARCIAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerPagarSelJUROS_PAG: TIBBCDField
      DisplayLabel = 'Juros. Pagos'
      FieldName = 'JUROS_PAG'
      Origin = '"VER_PAGAR"."JUROS_PAG"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerPagarSelDESCONTOS: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTOS'
      Origin = '"VER_PAGAR"."DESCONTOS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryVerPagarSelBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"VER_PAGAR"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryVerPagarSelORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"VER_PAGAR"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object qryVerPagarSelCODIGO_ENT: TIntegerField
      DisplayLabel = 'C'#243'd. Ent'
      FieldName = 'CODIGO_ENT'
      Origin = '"VER_PAGAR"."CODIGO_ENT"'
    end
    object qryVerPagarSelANO_ENT: TSmallintField
      DisplayLabel = 'Ano Ent.'
      FieldName = 'ANO_ENT'
      Origin = '"VER_PAGAR"."ANO_ENT"'
    end
    object qryVerPagarSelAVISO: TSmallintField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"VER_PAGAR"."AVISO"'
    end
    object qryVerPagarSelDT_AVISO: TDateTimeField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"VER_PAGAR"."DT_AVISO"'
    end
    object qryVerPagarSelNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_PAGAR"."NOME"'
      Size = 50
    end
    object qryVerPagarSelENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_PAGAR"."ENDERECO"'
      Size = 50
    end
    object qryVerPagarSelNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_PAGAR"."NUMERO"'
      Size = 15
    end
    object qryVerPagarSelCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_PAGAR"."CIDADE"'
      Size = 50
    end
    object qryVerPagarSelBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_PAGAR"."BAIRRO"'
      Size = 50
    end
    object qryVerPagarSelCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PAGAR"."CEP"'
      FixedChar = True
      Size = 8
    end
    object qryVerPagarSelUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PAGAR"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryVerPagarSelCOD_END: TIntegerField
      DisplayLabel = 'Cod. End'
      FieldName = 'COD_END'
      Origin = '"VER_PAGAR"."COD_END"'
    end
    object qryVerPagarSelCOD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_PAGAR"."COD_CID"'
    end
    object qryVerPagarSelCOD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_PAGAR"."COD_BAI"'
    end
    object qryVerPagarSelFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PAGAR"."FONE"'
    end
    object qryVerPagarSelCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PAGAR"."CPF_CGC"'
      Size = 15
    end
    object qryVerPagarSelSELECIONADO: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADO'
      Origin = '"VER_PAGAR"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryVerPagarSelCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'C'#243'd. Centro'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"VER_PAGAR"."CENTRO_CUSTO"'
    end
    object qryVerPagarSelNOME_CENTRO: TIBStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'NOME_CENTRO'
      Origin = '"VER_PAGAR"."NOME_CENTRO"'
      Size = 50
    end
    object qryVerPagarSelDUPLICATA: TIBStringField
      FieldName = 'DUPLICATA'
      Origin = '"VER_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object qryVerPagarSelCONFERIDA: TIBStringField
      FieldName = 'CONFERIDA'
      Origin = '"VER_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
    object qryVerPagarSelDT_ULTIMA_BAIXA: TDateField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'DT_ULTIMA_BAIXA'
      Origin = '"VER_PAGAR"."DT_ULTIMA_BAIXA"'
    end
    object qryVerPagarSelTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object Ver_NfCf_Venda1: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from VER_NFCF_VENDA(:cnpj,:codigo,:serie)')
    Left = 698
    Top = 412
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
        Name = 'serie'
        ParamType = ptUnknown
      end>
    object Ver_NfCf_Venda1NF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_NFCF_VENDA"."NF"'
    end
    object Ver_NfCf_Venda1CF: TIntegerField
      FieldName = 'CF'
      Origin = '"VER_NFCF_VENDA"."CF"'
    end
  end
  object pcd_estorna_ch: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'PCD_ESTORNA_CH'
    Left = 428
    Top = 205
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'CHEQUE'
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
      end>
  end
  object DesdChequeCtb: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterPost = DesdChequeCtbAfterPost
    OnNewRecord = DesdChequeCtbNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_CHEQUE'
      'where'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into CTB_CHEQUE'
      
        '  (CHEQUE, CNPJ, CONTA, CONTABILIDADE, DATA, HISTORICO, IMPRESSO' +
        ', '
      'NOME, '
      '   ORIGEM, PESSOA_FJ, PLANILHA, VALOR, PRE_DATE, NOMINAL)'
      'values'
      
        '  (:CHEQUE, :CNPJ, :CONTA, :CONTABILIDADE, :DATA, :HISTORICO, :I' +
        'MPRESSO, '
      
        '   :NOME, :ORIGEM, :PESSOA_FJ, :PLANILHA, :VALOR, :PRE_DATE, :NO' +
        'MINAL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CHEQUE,'
      '  CONTA,'
      '  DATA,'
      '  VALOR,'
      '  HISTORICO,'
      '  IMPRESSO,'
      '  PESSOA_FJ,'
      '  ORIGEM,'
      '  PLANILHA,'
      '  CONTABILIDADE,'
      '  NOME,'
      '  PRE_DATE,'
      '  NOMINAL'
      'from CTB_CHEQUE '
      'where'
      '  CHEQUE = :CHEQUE and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select CHEQUE, '
      '          CNPJ, '
      '          CONTA, '
      '          CONTABILIDADE, '
      '          DATA, '
      '          HISTORICO, '
      '          IMPRESSO, '
      '          NOME, '
      '          ORIGEM, '
      '          PESSOA_FJ, '
      '          PLANILHA, '
      '          VALOR, pre_date,'
      '          NOMINAL'
      'from CTB_CHEQUE'
      'Where CNPJ = :CNPJ AND CONTA = :CONTA')
    ModifySQL.Strings = (
      'update CTB_CHEQUE'
      'set'
      '  CHEQUE = :CHEQUE,'
      '  CNPJ = :CNPJ,'
      '  CONTA = :CONTA,'
      '  CONTABILIDADE = :CONTABILIDADE,'
      '  DATA = :DATA,'
      '  HISTORICO = :HISTORICO,'
      '  IMPRESSO = :IMPRESSO,'
      '  NOME = :NOME,'
      '  ORIGEM = :ORIGEM,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PLANILHA = :PLANILHA,'
      '  VALOR = :VALOR,'
      '  PRE_DATE = :PRE_DATE,'
      '  NOMINAL = :NOMINAL'
      'where'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    Left = 894
    Top = 61
    object DesdChequeCtbCHEQUE: TIntegerField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"CTB_CHEQUE"."CHEQUE"'
      Required = True
    end
    object DesdChequeCtbCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CTB_CHEQUE"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object DesdChequeCtbCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"CTB_CHEQUE"."CONTA"'
      Required = True
      OnValidate = DesdChequeCtbCONTAValidate
    end
    object DesdChequeCtbCONTABILIDADE: TIBStringField
      DisplayLabel = 'Contabilidade'
      FieldName = 'CONTABILIDADE'
      Origin = '"CTB_CHEQUE"."CONTABILIDADE"'
      FixedChar = True
      Size = 1
    end
    object DesdChequeCtbDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"CTB_CHEQUE"."DATA"'
      Required = True
    end
    object DesdChequeCtbHISTORICO: TIBStringField
      DisplayLabel = 'Historico'
      FieldName = 'HISTORICO'
      Origin = '"CTB_CHEQUE"."HISTORICO"'
      Size = 100
    end
    object DesdChequeCtbIMPRESSO: TIBStringField
      DisplayLabel = 'Impresso'
      FieldName = 'IMPRESSO'
      Origin = '"CTB_CHEQUE"."IMPRESSO"'
      FixedChar = True
      Size = 1
    end
    object DesdChequeCtbNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CTB_CHEQUE"."NOME"'
      Size = 50
    end
    object DesdChequeCtbORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"CTB_CHEQUE"."ORIGEM"'
      FixedChar = True
      Size = 1
    end
    object DesdChequeCtbPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"CTB_CHEQUE"."PESSOA_FJ"'
      Required = True
    end
    object DesdChequeCtbPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"CTB_CHEQUE"."PLANILHA"'
    end
    object DesdChequeCtbVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"CTB_CHEQUE"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
    object DesdChequeCtbPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"CTB_CHEQUE"."PRE_DATE"'
    end
    object DesdChequeCtbNOMINAL: TIBStringField
      FieldName = 'NOMINAL'
      Origin = '"CTB_CHEQUE"."NOMINAL"'
      FixedChar = True
      Size = 1
    end
  end
  object qryImpCheque: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select extract (month from cast('#39'today'#39' as date)) mes,'
      '       extract (year from cast('#39'today'#39' as date)) ano,'
      '       extract (day from cast('#39'today'#39' as date)) dia,'
      '       c.valor, c.nome, emp.cidade'
      'from ctb_cheque c'
      'inner join sis_empresas emp on (emp.cnpj = c.cnpj)')
    Left = 428
    Top = 252
    object qryImpChequeMES: TSmallintField
      FieldName = 'MES'
      Required = True
    end
    object qryImpChequeANO: TSmallintField
      FieldName = 'ANO'
      Required = True
    end
    object qryImpChequeDIA: TSmallintField
      FieldName = 'DIA'
      Required = True
    end
    object qryImpChequeVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"CTB_CHEQUE"."VALOR"'
    end
    object qryImpChequeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CTB_CHEQUE"."NOME"'
      Size = 50
    end
    object qryImpChequeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"SIS_EMPRESAS"."CIDADE"'
      Required = True
      Size = 50
    end
  end
  object DsImpCheque: TDataSource
    DataSet = qryImpCheque
    Left = 352
    Top = 360
  end
  object SelCobrador: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Contas_ReceberBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME ,'
      '          INTERNO'
      'from FIN_COBRADOR'
      'Where CNPJ = :CNPJ'
      'Order by NOME')
    Left = 203
    Top = 252
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelCobradorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_COBRADOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelCobradorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_COBRADOR"."CODIGO"'
      Required = True
    end
    object SelCobradorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_COBRADOR"."NOME"'
      Required = True
      Size = 50
    end
    object SelCobradorINTERNO: TIBStringField
      FieldName = 'INTERNO'
      Origin = '"FIN_COBRADOR"."INTERNO"'
      FixedChar = True
      Size = 1
    end
  end
  object qryHistCobranca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT * FROM VER_FIN_COBRANCAS_PERIODO(:CNPJ, :DINI, :DFIM )')
    Left = 428
    Top = 515
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFIM'
        ParamType = ptUnknown
      end>
    object qryHistCobrancaDATA_COBRANCA: TDateTimeField
      DisplayLabel = 'Hist. Cobran'#231'a'
      FieldName = 'DATA_COBRANCA'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."DATA_COBRANCA"'
    end
    object qryHistCobrancaMOTIVO: TIntegerField
      DisplayLabel = 'C'#243'd. Motivo'
      FieldName = 'MOTIVO'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."MOTIVO"'
    end
    object qryHistCobrancaPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."PESSOA_FJ"'
    end
    object qryHistCobrancaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Cobran'#231'a'
      FieldName = 'CODIGO'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."CODIGO"'
    end
    object qryHistCobrancaNOME: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'NOME'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."NOME"'
      Size = 50
    end
    object qryHistCobrancaCOBRAR_EM: TDateTimeField
      DisplayLabel = 'Dt. Cobran'#231'a'
      FieldName = 'COBRAR_EM'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."COBRAR_EM"'
    end
    object qryHistCobrancaHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."HISTORICO"'
      Size = 100
    end
    object qryHistCobrancaPAGO_EM: TDateTimeField
      DisplayLabel = 'Dt. Pagto'
      FieldName = 'PAGO_EM'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."PAGO_EM"'
    end
    object qryHistCobrancaNOME_MOTIVO: TIBStringField
      DisplayLabel = 'Motivo'
      FieldName = 'NOME_MOTIVO'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."NOME_MOTIVO"'
      Size = 50
    end
    object qryHistCobrancaCOBRADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Cobrador'
      FieldName = 'COBRADOR'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."COBRADOR"'
    end
    object qryHistCobrancaNOME_COBRADOR: TIBStringField
      DisplayLabel = 'Cobrador'
      FieldName = 'NOME_COBRADOR'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."NOME_COBRADOR"'
      Size = 50
    end
    object qryHistCobrancaDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."DT_VENCTO"'
    end
    object qryHistCobrancaDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."DOCTO"'
    end
    object qryHistCobrancaVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object qryHistCobrancaCOD_REC: TIntegerField
      FieldName = 'COD_REC'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."COD_REC"'
      DisplayFormat = 'C'#243'd. Receber'
    end
    object qryHistCobrancaANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."ANO"'
      DisplayFormat = 'Ano'
    end
    object qryHistCobrancaVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"VER_FIN_COBRANCAS_PERIODO"."VENDA"'
      DisplayFormat = 'C'#243'd. Venda'
    end
  end
  object qryRelReceber: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 352
    Top = 3
  end
  object VerReceberADM2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = VerReceberADMAfterClose
    BeforeOpen = VerReceberADMBeforeOpen
    OnCalcFields = VerReceberADMCalcFields
    SQL.Strings = (
      'Select '
      '    CODIGO ,'
      '    ANO ,'
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
      '    DESCONTOS ,'
      '    BOLETO ,'
      '    ORIGEM ,'
      '    CODIGO_VN ,'
      '    ANO_VN ,'
      '    AVISO ,'
      '    DT_AVISO ,'
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
      '    FONE ,'
      '    CPF_CGC ,'
      '    SELECIONADO,'
      '    TIPO_DOCTO,'
      '    NUMDUPLICATA ,'
      '    FATURA,'
      '    NUMBOLETO,'
      '    PARCIAL,'
      '    JUROS_PARCIAL,'
      '    DATA_ULT_BAIXA ,'
      '    COBRADOR,'
      '    LOCAL,'
      '   Arq_Morto,'
      '   saldo_descto'
      'From Ver_Receber (:CNPJ)')
    Left = 892
    Top = 469
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VerReceberADM2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_RECEBER"."CODIGO"'
    end
    object VerReceberADM2ANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_RECEBER"."ANO"'
    end
    object VerReceberADM2PESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_RECEBER"."PESSOA_FJ"'
    end
    object VerReceberADM2DT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_RECEBER"."DT_EMISSAO"'
    end
    object VerReceberADM2DT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_RECEBER"."DT_VENCTO"'
    end
    object VerReceberADM2DT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_RECEBER"."DT_LANCTO"'
    end
    object VerReceberADM2DOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_RECEBER"."DOCTO"'
    end
    object VerReceberADM2PARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object VerReceberADM2HISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_RECEBER"."HISTORICO"'
      Size = 100
    end
    object VerReceberADM2VALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_RECEBER"."VALOR"'
      Precision = 18
      Size = 4
    end
    object VerReceberADM2VLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_RECEBER"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object VerReceberADM2JUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"VER_RECEBER"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object VerReceberADM2DESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_RECEBER"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object VerReceberADM2BOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberADM2ORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object VerReceberADM2CODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_RECEBER"."CODIGO_VN"'
    end
    object VerReceberADM2ANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_RECEBER"."ANO_VN"'
    end
    object VerReceberADM2AVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_RECEBER"."AVISO"'
    end
    object VerReceberADM2DT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"VER_RECEBER"."DT_AVISO"'
    end
    object VerReceberADM2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_RECEBER"."NOME"'
      Size = 50
    end
    object VerReceberADM2ENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_RECEBER"."ENDERECO"'
      Size = 50
    end
    object VerReceberADM2NUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_RECEBER"."NUMERO"'
      Size = 15
    end
    object VerReceberADM2CIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_RECEBER"."CIDADE"'
      Size = 50
    end
    object VerReceberADM2BAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_RECEBER"."BAIRRO"'
      Size = 50
    end
    object VerReceberADM2CEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_RECEBER"."CEP"'
      FixedChar = True
      Size = 8
    end
    object VerReceberADM2UF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_RECEBER"."UF"'
      FixedChar = True
      Size = 2
    end
    object VerReceberADM2COD_END: TIntegerField
      FieldName = 'COD_END'
      Origin = '"VER_RECEBER"."COD_END"'
    end
    object VerReceberADM2COD_CID: TIntegerField
      FieldName = 'COD_CID'
      Origin = '"VER_RECEBER"."COD_CID"'
    end
    object VerReceberADM2COD_BAI: TIntegerField
      FieldName = 'COD_BAI'
      Origin = '"VER_RECEBER"."COD_BAI"'
    end
    object VerReceberADM2FONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_RECEBER"."FONE"'
    end
    object VerReceberADM2CPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_RECEBER"."CPF_CGC"'
      Size = 15
    end
    object VerReceberADM2SELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"VER_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object VerReceberADM2TIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VerReceberADM2NUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_RECEBER"."NUMDUPLICATA"'
    end
    object VerReceberADM2FATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_RECEBER"."FATURA"'
    end
    object VerReceberADM2NUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"VER_RECEBER"."NUMBOLETO"'
    end
    object VerReceberADM2PARCIAL: TIBBCDField
      FieldName = 'PARCIAL'
      Origin = '"VER_RECEBER"."PARCIAL"'
      Precision = 18
      Size = 4
    end
    object VerReceberADM2JUROS_PARCIAL: TIBBCDField
      FieldName = 'JUROS_PARCIAL'
      Origin = '"VER_RECEBER"."JUROS_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object VerReceberADM2DATA_ULT_BAIXA: TDateTimeField
      FieldName = 'DATA_ULT_BAIXA'
      Origin = '"VER_RECEBER"."DATA_ULT_BAIXA"'
    end
    object VerReceberADM2COBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"VER_RECEBER"."COBRADOR"'
    end
    object VerReceberADM2LOCAL: TIntegerField
      FieldName = 'LOCAL'
      Origin = '"VER_RECEBER"."LOCAL"'
    end
    object VerReceberADM2ARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      Origin = '"VER_RECEBER"."ARQ_MORTO"'
      FixedChar = True
      Size = 10
    end
    object VerReceberADM2SALDO_DESCTO: TIBBCDField
      FieldName = 'SALDO_DESCTO'
      Origin = '"VER_RECEBER"."SALDO_DESCTO"'
      Precision = 18
      Size = 4
    end
    object VerReceberADM2Selecao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Selecao'
      Calculated = True
    end
    object VerReceberADM2Juros_Calculadors: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Calculadors'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADM2Total_Nominal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Nominal'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADM2Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADM2Atraso: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'Atraso'
      Calculated = True
    end
    object VerReceberADM2Multa: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Multa'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADM2JurosSozinho: TFloatField
      FieldKind = fkCalculated
      FieldName = 'JurosSozinho'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object VerReceberADM2Juros_Conta: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Juros_Conta'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Extenso: TACBrExtenso
    StrMoeda = 'Real'
    StrMoedas = 'Reais'
    StrCentavo = 'Centavo'
    StrCentavos = 'Centavos'
    Left = 72
    Top = 456
  end
end
