object DMLocalizarProd: TDMLocalizarProd
  OldCreateOrder = False
  Left = 285
  Top = 161
  Height = 479
  Width = 741
  object SelMarca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME '
      'FROM EST_MARCAS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 32
    Top = 16
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelMarcaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_MARCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMarcaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_MARCAS"."CODIGO"'
      Required = True
    end
    object SelMarcaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_MARCAS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelAplicacao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME '
      'FROM EST_APLICACOES'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 32
    Top = 72
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelAplicacaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_APLICACOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelAplicacaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_APLICACOES"."CODIGO"'
      Required = True
    end
    object SelAplicacaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_APLICACOES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Similares: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    BufferChunks = 10000
    DataSource = dsProdutos
    SQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME, '
      '               QTDADE_2, '
      '               PRC_VENDA '
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ'
      'AND (CODIGO IN'
      '        (SELECT PRODUTO_A FROM EST_PRODUTOS_SIMILARES'
      '         WHERE PRODUTO_B = :CODIGO) OR'
      '     CODIGO IN'
      '        (SELECT PRODUTO_B FROM EST_PRODUTOS_SIMILARES'
      '         WHERE PRODUTO_A = :CODIGO))'
      'ORDER BY NOME')
    Left = 264
    Top = 144
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
        Name = 'CODIGO'
        ParamType = ptInput
      end>
    object SimilaresCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SimilaresCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 13
    end
    object SimilaresNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object SimilaresQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
      DisplayFormat = '#,##0.00'
    end
    object SimilaresPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    Left = 104
    Top = 144
  end
  object Produtos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    BufferChunks = 500
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    CODIGO_INTERNO,'
      '    CODIGO_2 ,'
      '    NOME ,'
      '    QTDADE_2 ,'
      '    QTDADE_1 ,'
      '    PRC_VENDA ,'
      '    PRC_REPOS ,'
      '    MARCA,'
      '    COD_AGRUP,'
      '    CUSTO,'
      '    ALIQUOTA_ECF,'
      '    VALIDADE'
      'FROM LOCALIZAR_PRODUTO_CODIGO'
      '( :CNPJ, :PRODUTO )')
    Left = 32
    Top = 144
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptUnknown
        Value = '03361045000180'
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object ProdutosCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO"'
      Size = 15
    end
    object ProdutosCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'digo 2'
      FieldName = 'CODIGO_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO_2"'
      Size = 15
    end
    object ProdutosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."NOME"'
      Size = 50
    end
    object ProdutosQTDADE_2: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'QTDADE_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_2"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosQTDADE_1: TIBBCDField
      DisplayLabel = 'Qtdade 1'
      FieldName = 'QTDADE_1'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_1"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosPRC_VENDA: TIBBCDField
      DisplayLabel = 'Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosPRC_REPOS: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_REPOS'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."MARCA"'
      Size = 50
    end
    object ProdutosCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."COD_AGRUP"'
      Size = 15
    end
    object ProdutosCUSTO: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'Custo'
      FieldName = 'CUSTO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CUSTO"'
      Size = 15
    end
    object ProdutosCODIGO_INTERNO: TIntegerField
      DisplayLabel = 'Interno'
      FieldName = 'CODIGO_INTERNO'
      Origin = '"LOCALIZAR_PRODUTO_CODIGO"."CODIGO_INTERNO"'
    end
    object ProdutosALIQUOTA_ECF: TIBStringField
      DisplayLabel = 'Ecf'
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"LOCALIZAR_PRODUTO_CODIGO"."ALIQUOTA_ECF"'
      Size = 5
    end
    object ProdutosVALIDADE: TIntegerField
      DisplayLabel = 'Val'
      FieldName = 'VALIDADE'
      Origin = '"LOCALIZAR_PRODUTO_CODIGO"."VALIDADE"'
    end
  end
  object Aplicacoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    SQL.Strings = (
      'Select'
      '          Aplicacao, '
      '          Local'
      'From VER_PRODUTOS_APLICACOES'
      '( :CNPJ, :PRODUTO )')
    Left = 104
    Top = 16
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
    object AplicacoesAPLICACAO: TIBStringField
      DisplayLabel = 'Aplica'#231#227'o'
      FieldName = 'APLICACAO'
      Origin = '"VER_PRODUTOS_APLICACOES"."APLICACAO"'
      Size = 50
    end
    object AplicacoesLOCAL: TIBStringField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL'
      Origin = '"VER_PRODUTOS_APLICACOES"."LOCAL"'
      Size = 50
    end
  end
  object Produto: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterInsert = ProdutoAfterInsert
    BeforeOpen = ProdutoBeforeOpen
    OnCalcFields = ProdutoCalcFields
    OnNewRecord = ProdutoNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS'
      
        '  (CNPJ, CODIGO, CODIGO_INTERNO, CODIGO_2, CNPJ_AGRUP, COD_AGRUP' +
        ', '
      'NOME, '
      '   MARCA, GRUPO, SUBGRUPO, REDUCAO, UNIDADE, CTE, CTIE, '
      'LOCALIZACAO_1, '
      '   LOCALIZACAO_2, LOCALIZACAO_3, NEG_QTDADE_2, QTDADE_MIN, '
      'QTDADE_MAX, '
      '   ETIQUETA_ENT, COMPLEMENTO_NF, DT_ULT_COMPRA, QT_ULT_COMPRA, '
      'DT_ULT_VENDA, '
      '   MARGEM_BRUTA, PRC_REPOS, PRC_CUSTO_ANT, PRC_CUSTO_MED, '
      'PRC_VENDA, PRC_VENDA_ANT, '
      
        '   PRC_VENDA_MED, ALIQUOTA_ECF, ORIGEM, PESO_LIQ, PERC_FRETE, IP' +
        'I, '
      'VOLUME, '
      '   ATIVO, PROD_PESAVEL, ULTIMO_FORNECEDOR, SUBUNIDADE, '
      'DT_ULT_ATU_PRECO, '
      '   CUSTO_AQUISICAO, VALIDADE, EST_MIN, EST_MAX)'
      'values'
      '  (:CNPJ, :CODIGO, :CODIGO_INTERNO, :CODIGO_2, :CNPJ_AGRUP, '
      ':COD_AGRUP, '
      
        '   :NOME, :MARCA, :GRUPO, :SUBGRUPO, :REDUCAO, :UNIDADE, :CTE, :' +
        'CTIE, '
      ':LOCALIZACAO_1, '
      '   :LOCALIZACAO_2, :LOCALIZACAO_3, :NEG_QTDADE_2, :QTDADE_MIN, '
      ':QTDADE_MAX, '
      '   :ETIQUETA_ENT, :COMPLEMENTO_NF, :DT_ULT_COMPRA, '
      ':QT_ULT_COMPRA, :DT_ULT_VENDA, '
      '   :MARGEM_BRUTA, :PRC_REPOS, :PRC_CUSTO_ANT, :PRC_CUSTO_MED, '
      ':PRC_VENDA, '
      '   :PRC_VENDA_ANT, :PRC_VENDA_MED, :ALIQUOTA_ECF, :ORIGEM, '
      ':PESO_LIQ, :PERC_FRETE, '
      '   :IPI, :VOLUME, :ATIVO, :PROD_PESAVEL, :ULTIMO_FORNECEDOR, '
      ':SUBUNIDADE, '
      '   :DT_ULT_ATU_PRECO, :CUSTO_AQUISICAO, :VALIDADE, :EST_MIN, '
      ':EST_MAX)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  CODIGO_2,'
      '  CNPJ_AGRUP,'
      '  COD_AGRUP,'
      '  NOME,'
      '  MARCA,'
      '  NOME_MARCA,'
      '  GRUPO,'
      '  SUBGRUPO,'
      '  REDUCAO,'
      '  UNIDADE,'
      '  CTE,'
      '  CTIE,'
      '  QTDADE_1,'
      '  QTDADE_2,'
      '  LOCALIZACAO_1,'
      '  LOCALIZACAO_2,'
      '  LOCALIZACAO_3,'
      '  NEG_QTDADE_2,'
      '  QTDADE_MIN,'
      '  QTDADE_MAX,'
      '  COMPLEMENTO_NF,'
      '  DT_ULT_COMPRA,'
      '  QT_ULT_COMPRA,'
      '  DT_ULT_VENDA,'
      '  MARGEM_BRUTA,'
      '  PRC_REPOS,'
      '  PRC_CUSTO_ANT,'
      '  PRC_CUSTO_MED,'
      '  PRC_VENDA,'
      '  PRC_VENDA_ANT,'
      '  PRC_VENDA_MED,'
      '  ALIQUOTA_ECF,'
      '  ORIGEM,'
      '  PESO_LIQ,'
      '  PERC_FRETE,'
      '  IPI,'
      '  VOLUME,'
      '  PROD_PESAVEL,'
      '  ETIQUETA_ENT,'
      '  ATIVO,'
      '  ULTIMO_FORNECEDOR,'
      '  FORNECEDOR,'
      '  SUBUNIDADE,'
      '  PRC_CUSTO_CODIF,'
      '  CODIGO_INTERNO,'
      '  DT_ULT_ATU_PRECO,'
      '  CUSTO_AQUISICAO,'
      '  VENDE_FRACIONADO,'
      '  QNTDE_EXPOSTA,'
      '  POSSUI_LOTE,'
      '  QNTDE_MAXIMA_VENDA,'
      '  PIS,'
      '  COFINS,'
      '  COM_VENDA_VLR,'
      '  COM_VENDA_PCT,'
      '  PARTICIP_LUCRO,'
      '  NAO_COBR_JUR_ATE,'
      '  PREVISAO_ENTREGA,'
      '  QNTDE_PEDIDA,'
      '  ATUALIZA_ARQ_EXTERNO,'
      '  SERVICO,'
      '  VALIDADE,'
      '  CUSTO_INDEXADO,'
      '  COMPLEMENTO,'
      '  ATUALIZAR,'
      '  EST_MIN,'
      '  EST_MAX'
      'from EST_PRODUTOS '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               CODIGO_INTERNO,'
      '               CODIGO_2, '
      '               CNPJ_AGRUP,'
      '               COD_AGRUP,'
      '               NOME, '
      '               MARCA, '
      '               GRUPO, '
      '               SUBGRUPO, '
      '               REDUCAO, '
      '               UNIDADE, '
      '               CTE, '
      '               CTIE, '
      '               QTDADE_1, '
      '               QTDADE_2, '
      '               LOCALIZACAO_1, '
      '               LOCALIZACAO_2, '
      '               LOCALIZACAO_3,'
      '               NEG_QTDADE_2, '
      '               QTDADE_MIN, '
      '               QTDADE_MAX, '
      '               ETIQUETA_ENT, '
      '               COMPLEMENTO_NF, '
      '               DT_ULT_COMPRA, '
      '               QT_ULT_COMPRA, '
      '               DT_ULT_VENDA, '
      '               MARGEM_BRUTA, '
      '               PRC_REPOS, '
      '               PRC_CUSTO_ANT, '
      '               PRC_CUSTO_MED, '
      '               PRC_VENDA, '
      '               PRC_VENDA_ANT, '
      '               PRC_VENDA_MED, '
      '               ALIQUOTA_ECF, '
      '               ORIGEM, '
      '               PESO_LIQ, '
      '               PERC_FRETE, '
      '               IPI,'
      '               VOLUME,'
      '               ATIVO,'
      '               PROD_PESAVEL,'
      '               ULTIMO_FORNECEDOR,'
      '               SUBUNIDADE,'
      '               DT_ULT_ATU_PRECO,'
      '               CUSTO_AQUISICAO,'
      '               VALIDADE, '
      '               EST_MIN, '
      '               EST_MAX'
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_PRODUTOS'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  CODIGO_INTERNO = :CODIGO_INTERNO,'
      '  CODIGO_2 = :CODIGO_2,'
      '  CNPJ_AGRUP = :CNPJ_AGRUP,'
      '  COD_AGRUP = :COD_AGRUP,'
      '  NOME = :NOME,'
      '  MARCA = :MARCA,'
      '  GRUPO = :GRUPO,'
      '  SUBGRUPO = :SUBGRUPO,'
      '  REDUCAO = :REDUCAO,'
      '  UNIDADE = :UNIDADE,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  LOCALIZACAO_1 = :LOCALIZACAO_1,'
      '  LOCALIZACAO_2 = :LOCALIZACAO_2,'
      '  LOCALIZACAO_3 = :LOCALIZACAO_3,'
      '  NEG_QTDADE_2 = :NEG_QTDADE_2,'
      '  QTDADE_MIN = :QTDADE_MIN,'
      '  QTDADE_MAX = :QTDADE_MAX,'
      '  ETIQUETA_ENT = :ETIQUETA_ENT,'
      '  COMPLEMENTO_NF = :COMPLEMENTO_NF,'
      '  DT_ULT_COMPRA = :DT_ULT_COMPRA,'
      '  QT_ULT_COMPRA = :QT_ULT_COMPRA,'
      '  DT_ULT_VENDA = :DT_ULT_VENDA,'
      '  MARGEM_BRUTA = :MARGEM_BRUTA,'
      '  PRC_REPOS = :PRC_REPOS,'
      '  PRC_CUSTO_ANT = :PRC_CUSTO_ANT,'
      '  PRC_CUSTO_MED = :PRC_CUSTO_MED,'
      '  PRC_VENDA = :PRC_VENDA,'
      '  PRC_VENDA_ANT = :PRC_VENDA_ANT,'
      '  PRC_VENDA_MED = :PRC_VENDA_MED,'
      '  ALIQUOTA_ECF = :ALIQUOTA_ECF,'
      '  ORIGEM = :ORIGEM,'
      '  PESO_LIQ = :PESO_LIQ,'
      '  PERC_FRETE = :PERC_FRETE,'
      '  IPI = :IPI,'
      '  VOLUME = :VOLUME,'
      '  ATIVO = :ATIVO,'
      '  PROD_PESAVEL = :PROD_PESAVEL,'
      '  ULTIMO_FORNECEDOR = :ULTIMO_FORNECEDOR,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  DT_ULT_ATU_PRECO = :DT_ULT_ATU_PRECO,'
      '  CUSTO_AQUISICAO = :CUSTO_AQUISICAO,'
      '  VALIDADE = :VALIDADE,'
      '  EST_MIN = :EST_MIN,'
      '  EST_MAX = :EST_MAX'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 264
    Top = 16
    object ProdutoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object ProdutoCODIGO: TIBStringField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      DisplayWidth = 15
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      OnValidate = ProdutoCODIGOValidate
      Size = 15
    end
    object ProdutoCODIGO_2: TIBStringField
      Tag = 1
      DisplayLabel = 'C'#243'digo Secund'#225'rio'
      DisplayWidth = 4
      FieldName = 'CODIGO_2'
      Origin = 'EST_PRODUTOS.CODIGO_2'
      Required = True
      Size = 15
    end
    object ProdutoCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object ProdutoCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PRODUTOS"."COD_AGRUP"'
      Size = 13
    end
    object ProdutoNOME: TIBStringField
      Tag = 1
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = 'EST_PRODUTOS.NOME'
      Required = True
      Size = 50
    end
    object ProdutoMARCA: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = 'EST_PRODUTOS.MARCA'
    end
    object ProdutoGRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = 'EST_PRODUTOS.GRUPO'
    end
    object ProdutoSUBGRUPO: TIntegerField
      DisplayLabel = 'Sub-Grupo'
      FieldName = 'SUBGRUPO'
      Origin = 'EST_PRODUTOS.SUBGRUPO'
    end
    object ProdutoREDUCAO: TIntegerField
      DisplayLabel = 'Redu'#231#227'o'
      FieldName = 'REDUCAO'
      Origin = 'EST_PRODUTOS.REDUCAO'
    end
    object ProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object ProdutoCTE: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Tribut. Estadual'
      FieldName = 'CTE'
      Origin = 'EST_PRODUTOS.CTE'
      OnGetText = ProdutoCTEGetText
      OnSetText = ProdutoCTESetText
    end
    object ProdutoCTIE: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Tribut. Interestadual'
      FieldName = 'CTIE'
      Origin = 'EST_PRODUTOS.CTIE'
      OnGetText = ProdutoCTIEGetText
      OnSetText = ProdutoCTIESetText
    end
    object ProdutoLOCALIZACAO_1: TIBStringField
      Tag = 1
      DisplayLabel = 'Localiza'#231#227'o'
      FieldName = 'LOCALIZACAO_1'
      Origin = 'EST_PRODUTOS.LOCALIZACAO_1'
      Size = 30
    end
    object ProdutoLOCALIZACAO_2: TIBStringField
      Tag = 1
      DisplayLabel = 'Localiza'#231#227'o 2'
      FieldName = 'LOCALIZACAO_2'
      Origin = 'EST_PRODUTOS.LOCALIZACAO_2'
      Size = 30
    end
    object ProdutoLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object ProdutoCOMPLEMENTO_NF: TIBStringField
      DisplayLabel = 'Edita Compl. Nf'
      FieldName = 'COMPLEMENTO_NF'
      Origin = 'EST_PRODUTOS.COMPLEMENTO_NF'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ProdutoDT_ULT_COMPRA: TDateTimeField
      DisplayLabel = 'Data da '#250'ltima Compra'
      FieldName = 'DT_ULT_COMPRA'
      Origin = 'EST_PRODUTOS.DT_ULT_COMPRA'
    end
    object ProdutoDT_ULT_VENDA: TDateTimeField
      DisplayLabel = 'Data '#218'ltima Venda'
      FieldName = 'DT_ULT_VENDA'
      Origin = 'EST_PRODUTOS.DT_ULT_VENDA'
    end
    object ProdutoALIQUOTA_ECF: TIBStringField
      DisplayLabel = 'Al'#237'quota ECF'
      DisplayWidth = 5
      FieldName = 'ALIQUOTA_ECF'
      Origin = 'EST_PRODUTOS.ALIQUOTA_ECF'
      FixedChar = True
      Size = 5
    end
    object ProdutoORIGEM: TSmallintField
      Alignment = taLeftJustify
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = 'EST_PRODUTOS.ORIGEM'
      OnGetText = ProdutoORIGEMGetText
      OnSetText = ProdutoORIGEMSetText
    end
    object ProdutoQTDADE_1: TFloatField
      DisplayLabel = 'Estoque 1'
      FieldName = 'QTDADE_1'
      DisplayFormat = '#,##0.00'
    end
    object ProdutoQTDADE_2: TFloatField
      DisplayLabel = 'Estoque 2'
      FieldName = 'QTDADE_2'
      DisplayFormat = '#,##0.00'
    end
    object ProdutoQTDADE_MIN: TIntegerField
      DisplayLabel = 'Estoque M'#237'nimo'
      FieldName = 'QTDADE_MIN'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoQTDADE_MAX: TIntegerField
      DisplayLabel = 'Estoque M'#225'ximo'
      FieldName = 'QTDADE_MAX'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoQT_ULT_COMPRA: TIntegerField
      DisplayLabel = 'Qtde '#218'ltima Compra'
      FieldName = 'QT_ULT_COMPRA'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoMARGEM_BRUTA: TFloatField
      DisplayLabel = 'Margem Bruta de Lucro'
      FieldName = 'MARGEM_BRUTA'
      OnValidate = ProdutoMARGEM_BRUTAValidate
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoPRC_REPOS: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_REPOS'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoPRC_CUSTO_ANT: TFloatField
      DisplayLabel = 'Custo Anterior'
      FieldName = 'PRC_CUSTO_ANT'
      DisplayFormat = '###,###,##0.0000'
    end
    object ProdutoPRC_CUSTO_MED: TFloatField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'PRC_CUSTO_MED'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoPRC_VENDA: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda'
      FieldName = 'PRC_VENDA'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoPRC_VENDA_ANT: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda Anterior'
      FieldName = 'PRC_VENDA_ANT'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoPRC_VENDA_MED: TFloatField
      DisplayLabel = 'Pre'#231'o de Venda M'#233'dio'
      FieldName = 'PRC_VENDA_MED'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoPESO_LIQ: TFloatField
      DisplayLabel = 'Peso Liq'
      FieldName = 'PESO_LIQ'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoPERC_FRETE: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'PERC_FRETE'
      DisplayFormat = '##0.00'
    end
    object ProdutoIPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      DisplayFormat = '##0.00'
    end
    object ProdutoVOLUME: TFloatField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"EST_PRODUTOS"."VOLUME"'
      DisplayFormat = 'Cm  #,##0.00'
    end
    object ProdutoNEG_QTDADE_2: TIBStringField
      DisplayLabel = 'Est. Negativo'
      FieldName = 'NEG_QTDADE_2'
      Origin = '"EST_PRODUTOS"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object ProdutoQTD_UM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTD_UM'
      DisplayFormat = '#,##0'
      Calculated = True
    end
    object ProdutoQTD_UNIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'QTD_UNIT'
      DisplayFormat = '#,##0.####'
      Calculated = True
    end
    object ProdutoETIQUETA_ENT: TIBStringField
      DisplayLabel = 'Etiqueta Ent'
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object ProdutoATIVO: TIBStringField
      DisplayLabel = 'Ativo'
      FieldName = 'ATIVO'
      Origin = '"EST_PRODUTOS"."ATIVO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object ProdutoPROD_PESAVEL: TIBStringField
      DisplayLabel = 'Pes'#225'vel'
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object ProdutoULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"EST_PRODUTOS"."ULTIMO_FORNECEDOR"'
    end
    object ProdutoSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Unidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PRODUTOS"."SUBUNIDADE"'
    end
    object ProdutoCODIGO_INTERNO: TIntegerField
      Tag = 1
      DisplayLabel = 'Interno'
      FieldName = 'CODIGO_INTERNO'
      Origin = '"EST_PRODUTOS"."CODIGO_INTERNO"'
    end
    object ProdutoDT_ULT_ATU_PRECO: TDateTimeField
      FieldName = 'DT_ULT_ATU_PRECO'
      Origin = '"EST_PRODUTOS"."DT_ULT_ATU_PRECO"'
    end
    object ProdutoCUSTO_AQUISICAO: TFloatField
      DisplayLabel = 'Cst Aquisi'#231#227'o'
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"EST_PRODUTOS"."CUSTO_AQUISICAO"'
      DisplayFormat = '#,##0.0000'
    end
    object ProdutoVALIDADE: TIntegerField
      FieldName = 'VALIDADE'
      Origin = '"EST_PRODUTOS"."VALIDADE"'
    end
    object ProdutoEST_MIN: TFloatField
      FieldName = 'EST_MIN'
      Origin = '"EST_PRODUTOS"."EST_MIN"'
      DisplayFormat = '#,##0.00'
    end
    object ProdutoEST_MAX: TFloatField
      FieldName = 'EST_MAX'
      Origin = '"EST_PRODUTOS"."EST_MAX"'
      DisplayFormat = '#,##0.00'
    end
  end
  object Unidades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    DeleteSQL.Strings = (
      'delete from EST_UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    InsertSQL.Strings = (
      'insert into EST_UNIDADES'
      '  (CNPJ, SIGLA, NOME, UNIDADES)'
      'values'
      '  (:CNPJ, :SIGLA, :NOME, :UNIDADES)')
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
      'ORDER BY NOME')
    ModifySQL.Strings = (
      'update EST_UNIDADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  SIGLA = :SIGLA,'
      '  NOME = :NOME,'
      '  UNIDADES = :UNIDADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  SIGLA = :OLD_SIGLA')
    Left = 264
    Top = 80
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
  object ProdutosA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    BufferChunks = 500
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    CODIGO_INTERNO,'
      '    CODIGO_2 ,'
      '    NOME ,'
      '    QTDADE_2 ,'
      '    QTDADE_1 ,'
      '    PRC_VENDA ,'
      '    PRC_REPOS ,'
      '    MARCA,'
      '    COD_AGRUP,'
      '    CUSTO,'
      '    ALIQUOTA_ECF,'
      '    VALIDADE'
      'FROM LOCALIZAR_PRODUTO_NOME'
      '( :CNPJ, :PRODUTO )')
    Left = 184
    Top = 144
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
    object ProdutosACODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO"'
      Size = 15
    end
    object ProdutosACODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'digo 2'
      FieldName = 'CODIGO_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO_2"'
      Size = 15
    end
    object ProdutosANOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."NOME"'
      Size = 50
    end
    object ProdutosAQTDADE_2: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'QTDADE_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_2"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosAQTDADE_1: TIBBCDField
      DisplayLabel = 'Qtdade 1'
      FieldName = 'QTDADE_1'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_1"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosAPRC_VENDA: TIBBCDField
      DisplayLabel = 'Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosAPRC_REPOS: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_REPOS'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosAMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."MARCA"'
      Size = 50
    end
    object ProdutosACOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."COD_AGRUP"'
      Size = 15
    end
    object ProdutosACUSTO: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'Custo'
      FieldName = 'CUSTO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CUSTO"'
      Size = 15
    end
    object ProdutosACODIGO_INTERNO: TIntegerField
      DisplayLabel = 'Interno'
      FieldName = 'CODIGO_INTERNO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO_INTERNO"'
    end
    object ProdutosAALIQUOTA_ECF: TIBStringField
      DisplayLabel = 'ecf'
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."ALIQUOTA_ECF"'
      Size = 5
    end
    object ProdutosAVALIDADE: TIntegerField
      DisplayLabel = 'Val'
      FieldName = 'VALIDADE'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."VALIDADE"'
    end
  end
  object ProdutosG: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    BufferChunks = 500
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    CODIGO_INTERNO,'
      '    CODIGO_2 ,'
      '    NOME ,'
      '    QTDADE_2 ,'
      '    QTDADE_1 ,'
      '    PRC_VENDA ,'
      '    PRC_REPOS ,'
      '    MARCA,'
      '    COD_AGRUP,'
      '    CUSTO,'
      '    ALIQUOTA_ECF,'
      '    VALIDADE'
      'FROM LOCALIZAR_PRODUTO_CODIGO_GRUPO'
      '( :CNPJ, :PRODUTO, :GRUPO, :SUBGRUPO )')
    Left = 32
    Top = 208
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptUnknown
        Value = '03361045000180'
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBGRUPO'
        ParamType = ptUnknown
      end>
    object ProdutosGCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO"'
      Size = 15
    end
    object ProdutosGCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'digo 2'
      FieldName = 'CODIGO_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO_2"'
      Size = 15
    end
    object ProdutosGNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."NOME"'
      Size = 50
    end
    object ProdutosGQTDADE_2: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'QTDADE_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_2"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosGQTDADE_1: TIBBCDField
      DisplayLabel = 'Qtdade 1'
      FieldName = 'QTDADE_1'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_1"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosGPRC_VENDA: TIBBCDField
      DisplayLabel = 'Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosGPRC_REPOS: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_REPOS'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosGMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."MARCA"'
      Size = 50
    end
    object ProdutosGCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."COD_AGRUP"'
      Size = 15
    end
    object ProdutosGCUSTO: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'Custo'
      FieldName = 'CUSTO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CUSTO"'
      Size = 15
    end
    object ProdutosGCODIGO_INTERNO: TIntegerField
      DisplayLabel = 'Interno'
      FieldName = 'CODIGO_INTERNO'
      Origin = '"LOCALIZAR_PRODUTO_CODIGO"."CODIGO_INTERNO"'
    end
    object ProdutosGALIQUOTA_ECF: TIBStringField
      DisplayLabel = 'Ecf'
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"LOCALIZAR_PRODUTO_CODIGO"."ALIQUOTA_ECF"'
      Size = 5
    end
    object ProdutosGVALIDADE: TIntegerField
      DisplayLabel = 'Val'
      FieldName = 'VALIDADE'
      Origin = '"LOCALIZAR_PRODUTO_CODIGO"."VALIDADE"'
    end
  end
  object ProdutosAG: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = SelMarcaAfterClose
    BeforeOpen = SelMarcaBeforeOpen
    BufferChunks = 500
    SQL.Strings = (
      'SELECT'
      '    CODIGO ,'
      '    CODIGO_INTERNO,'
      '    CODIGO_2 ,'
      '    NOME ,'
      '    QTDADE_2 ,'
      '    QTDADE_1 ,'
      '    PRC_VENDA ,'
      '    PRC_REPOS ,'
      '    MARCA,'
      '    COD_AGRUP,'
      '    CUSTO,'
      '    ALIQUOTA_ECF,'
      '    VALIDADE'
      'FROM LOCALIZAR_PRODUTO_NOME'
      '( :CNPJ, :PRODUTO, :GRUPO, :SUBGRUPO )')
    Left = 184
    Top = 208
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
        Name = 'GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SUBGRUPO'
        ParamType = ptUnknown
      end>
    object ProdutosAGCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO"'
      Size = 15
    end
    object ProdutosAGCODIGO_2: TIBStringField
      DisplayLabel = 'C'#243'digo 2'
      FieldName = 'CODIGO_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO_2"'
      Size = 15
    end
    object ProdutosAGNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."NOME"'
      Size = 50
    end
    object ProdutosAGQTDADE_2: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'QTDADE_2'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_2"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosAGQTDADE_1: TIBBCDField
      DisplayLabel = 'Qtdade 1'
      FieldName = 'QTDADE_1'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."QTDADE_1"'
      DisplayFormat = '###,###,##0.000'
      Precision = 18
      Size = 4
    end
    object ProdutosAGPRC_VENDA: TIBBCDField
      DisplayLabel = 'Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosAGPRC_REPOS: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_REPOS'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdutosAGMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."MARCA"'
      Size = 50
    end
    object ProdutosAGCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."COD_AGRUP"'
      Size = 15
    end
    object ProdutosAGCUSTO: TIBStringField
      Alignment = taRightJustify
      DisplayLabel = 'Custo'
      FieldName = 'CUSTO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CUSTO"'
      Size = 15
    end
    object ProdutosAGCODIGO_INTERNO: TIntegerField
      DisplayLabel = 'Interno'
      FieldName = 'CODIGO_INTERNO'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."CODIGO_INTERNO"'
    end
    object ProdutosAGALIQUOTA_ECF: TIBStringField
      DisplayLabel = 'ecf'
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."ALIQUOTA_ECF"'
      Size = 5
    end
    object ProdutosAGVALIDADE: TIntegerField
      DisplayLabel = 'Val'
      FieldName = 'VALIDADE'
      Origin = '"LOCALIZAR_PRODUTO_NOME"."VALIDADE"'
    end
  end
end
