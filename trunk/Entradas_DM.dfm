object DMEntradas: TDMEntradas
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 490
  Top = 184
  Height = 571
  Width = 741
  object Entradas: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    AfterInsert = EntradasAfterInsert
    BeforeDelete = EntradasBeforeDelete
    BeforeEdit = EntradasBeforeEdit
    BeforeOpen = EntradasBeforeOpen
    OnCalcFields = EntradasCalcFields
    OnNewRecord = EntradasNewRecord
    DeleteSQL.Strings = (
      'delete from EST_ENTRADAS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    InsertSQL.Strings = (
      'insert into EST_ENTRADAS'
      
        '  (CENTRO_CUSTO, CNPJ, COD_FORMA_PAGTO, COD_INDEXADOR, DATA_ENT,' +
        ' DATA_NF, '
      
        '   DATA_REF, ENTRADA, FRETE_LF, HISTORICO, IDX_COTACAO, IDX_DATA' +
        'BASE, IDX_QTDE, '
      
        '   LOCAL_ESTOQUE, NATUREZA, NDOCTO, NDOCTOINT, NFE_XML, NOME, PE' +
        'RC_ICM, '
      
        '   PESSOA_FJ, PROC_CUSTO, PROC_FIN, PROC_QTD, SERIE_NF, TAXAS, T' +
        'IPO_DOCTO, '
      
        '   UF, VLR_BC_ICM, VLR_BC_ICM_SUBS, VLR_DESCONTO, VLR_EMBALAGEM,' +
        ' VLR_FRETE, '
      
        '   VLR_FRETE_LC, VLR_ICM, VLR_ICM_SUBS, VLR_IPI, VLR_IPI_LC, VLR' +
        '_PARC_LC, '
      '   VLR_PRODUTOS, VLR_PRODUTOS_LC, VLR_SEGURO)'
      'values'
      
        '  (:CENTRO_CUSTO, :CNPJ, :COD_FORMA_PAGTO, :COD_INDEXADOR, :DATA' +
        '_ENT, :DATA_NF, '
      
        '   :DATA_REF, :ENTRADA, :FRETE_LF, :HISTORICO, :IDX_COTACAO, :ID' +
        'X_DATABASE, '
      
        '   :IDX_QTDE, :LOCAL_ESTOQUE, :NATUREZA, :NDOCTO, :NDOCTOINT, :N' +
        'FE_XML, '
      
        '   :NOME, :PERC_ICM, :PESSOA_FJ, :PROC_CUSTO, :PROC_FIN, :PROC_Q' +
        'TD, :SERIE_NF, '
      
        '   :TAXAS, :TIPO_DOCTO, :UF, :VLR_BC_ICM, :VLR_BC_ICM_SUBS, :VLR' +
        '_DESCONTO, '
      
        '   :VLR_EMBALAGEM, :VLR_FRETE, :VLR_FRETE_LC, :VLR_ICM, :VLR_ICM' +
        '_SUBS, '
      
        '   :VLR_IPI, :VLR_IPI_LC, :VLR_PARC_LC, :VLR_PRODUTOS, :VLR_PROD' +
        'UTOS_LC, '
      '   :VLR_SEGURO)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  cod_venda,'
      '  NDOCTO,'
      '  PESSOA_FJ,'
      '  DATA_NF,'
      '  DATA_REF,'
      '  DATA_ENT,'
      '  SERIE_NF,'
      '  NATUREZA,'
      '  VLR_PRODUTOS,'
      '  VLR_PRODUTOS_LC,'
      '  VLR_DESCONTO,'
      '  VLR_EMBALAGEM,'
      '  FRETE_LF,'
      '  VLR_FRETE,'
      '  VLR_SEGURO,'
      '  VLR_IPI,'
      '  VLR_IPI_LC,'
      '  VLR_BC_ICM,'
      '  PERC_ICM,'
      '  VLR_ICM,'
      '  VLR_ICM_SUBS,'
      '  VLR_PARC_LC,'
      '  TAXAS,'
      '  LOCAL_ESTOQUE,'
      '  HISTORICO,'
      '  TIPO_DOCTO,'
      '  PROC_QTD,'
      '  PROC_CUSTO,'
      '  PROC_FIN,'
      '  ENTRADA,'
      '  CENTRO_CUSTO,'
      '  NOME,'
      '  PLANILHA,'
      '  VLR_FRETE_LC,'
      '  NDOCTOINT,'
      '  UF,'
      '  COD_INTERNO,'
      '  COD_FORMA_PAGTO,'
      '  COD_INDEXADOR,'
      '  IDX_DATABASE,'
      '  IDX_COTACAO,'
      '  IDX_QTDE,'
      '  VLR_BC_ICM_SUBS,'
      '  NFE_XML'
      'from EST_ENTRADAS '
      'where'
      '  CNPJ = :CNPJ and'
      '  NDOCTO = :NDOCTO and'
      '  PESSOA_FJ = :PESSOA_FJ')
    SelectSQL.Strings = (
      'SELECT CNPJ, '
      '               NDOCTO, '
      '               PESSOA_FJ, '
      '               DATA_NF, '
      '               DATA_REF, '
      '               DATA_ENT, '
      '               SERIE_NF, '
      '               NATUREZA, '
      '               VLR_DESCONTO, '
      '               VLR_PRODUTOS, '
      '               VLR_PRODUTOS_LC,'
      '               VLR_EMBALAGEM, '
      '               FRETE_LF, '
      '               VLR_FRETE, '
      '               VLR_SEGURO, '
      '               VLR_IPI, '
      '               VLR_IPI_LC,'
      '               VLR_BC_ICM, '
      '               PERC_ICM, '
      '               VLR_ICM, '
      '               VLR_ICM_SUBS, '
      '               VLR_PARC_LC,'
      '               TAXAS, '
      '               LOCAL_ESTOQUE, '
      '               HISTORICO, '
      '               TIPO_DOCTO,'
      '               PROC_QTD,'
      '               PROC_CUSTO,'
      '               PROC_FIN,'
      '               ENTRADA,'
      '               CENTRO_CUSTO,'
      '               NOME,'
      '               VLR_FRETE_LC,'
      '               NDOCTOINT,'
      '               UF,'
      '               COD_FORMA_PAGTO,'
      '               cod_indexador,'
      '    idx_database,'
      '    idx_cotacao,'
      '    idx_qtde,'
      '   VLR_BC_ICM_SUBS,'
      '   nfe_xml,'
      '   cod_venda'
      'FROM EST_ENTRADAS'
      'WHERE CNPJ = :CNPJ AND'
      '               NDOCTO = :NDOCTO AND'
      '               PESSOA_FJ = :PESSOA_FJ'
      'ORDER BY CNPJ, NDOCTO, PESSOA_FJ')
    ModifySQL.Strings = (
      'update EST_ENTRADAS'
      'set'
      '  CENTRO_CUSTO = :CENTRO_CUSTO,'
      '  CNPJ = :CNPJ,'
      '  COD_FORMA_PAGTO = :COD_FORMA_PAGTO,'
      '  COD_INDEXADOR = :COD_INDEXADOR,'
      '  DATA_ENT = :DATA_ENT,'
      '  DATA_NF = :DATA_NF,'
      '  DATA_REF = :DATA_REF,'
      '  ENTRADA = :ENTRADA,'
      '  FRETE_LF = :FRETE_LF,'
      '  HISTORICO = :HISTORICO,'
      '  IDX_COTACAO = :IDX_COTACAO,'
      '  IDX_DATABASE = :IDX_DATABASE,'
      '  IDX_QTDE = :IDX_QTDE,'
      '  LOCAL_ESTOQUE = :LOCAL_ESTOQUE,'
      '  NATUREZA = :NATUREZA,'
      '  NDOCTO = :NDOCTO,'
      '  NDOCTOINT = :NDOCTOINT,'
      '  NFE_XML = :NFE_XML,'
      '  NOME = :NOME,'
      '  PERC_ICM = :PERC_ICM,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PROC_CUSTO = :PROC_CUSTO,'
      '  PROC_FIN = :PROC_FIN,'
      '  PROC_QTD = :PROC_QTD,'
      '  SERIE_NF = :SERIE_NF,'
      '  TAXAS = :TAXAS,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  UF = :UF,'
      '  VLR_BC_ICM = :VLR_BC_ICM,'
      '  VLR_BC_ICM_SUBS = :VLR_BC_ICM_SUBS,'
      '  VLR_DESCONTO = :VLR_DESCONTO,'
      '  VLR_EMBALAGEM = :VLR_EMBALAGEM,'
      '  VLR_FRETE = :VLR_FRETE,'
      '  VLR_FRETE_LC = :VLR_FRETE_LC,'
      '  VLR_ICM = :VLR_ICM,'
      '  VLR_ICM_SUBS = :VLR_ICM_SUBS,'
      '  VLR_IPI = :VLR_IPI,'
      '  VLR_IPI_LC = :VLR_IPI_LC,'
      '  VLR_PARC_LC = :VLR_PARC_LC,'
      '  VLR_PRODUTOS = :VLR_PRODUTOS,'
      '  VLR_PRODUTOS_LC = :VLR_PRODUTOS_LC,'
      '  VLR_SEGURO = :VLR_SEGURO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ')
    Left = 40
    Top = 5
    object EntradasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_ENTRADAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object EntradasNDOCTO: TIBStringField
      DisplayLabel = 'Documento'
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS"."NDOCTO"'
      Required = True
    end
    object EntradasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_ENTRADAS"."PESSOA_FJ"'
      Required = True
      OnValidate = EntradasPESSOA_FJValidate
    end
    object EntradasDATA_NF: TDateTimeField
      DisplayLabel = 'Data da Nf'
      FieldName = 'DATA_NF'
      Origin = '"EST_ENTRADAS"."DATA_NF"'
    end
    object EntradasDATA_REF: TDateTimeField
      DisplayLabel = 'Data Ref'
      FieldName = 'DATA_REF'
      Origin = '"EST_ENTRADAS"."DATA_REF"'
    end
    object EntradasDATA_ENT: TDateTimeField
      DisplayLabel = 'Data Ent'
      FieldName = 'DATA_ENT'
      Origin = '"EST_ENTRADAS"."DATA_ENT"'
    end
    object EntradasSERIE_NF: TIBStringField
      DisplayLabel = 'Serie'
      FieldName = 'SERIE_NF'
      Origin = '"EST_ENTRADAS"."SERIE_NF"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object EntradasNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"EST_ENTRADAS"."NATUREZA"'
      Required = True
      OnValidate = EntradasNATUREZAValidate
    end
    object EntradasVLR_DESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'VLR_DESCONTO'
      Origin = '"EST_ENTRADAS"."VLR_DESCONTO"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_PRODUTOS: TFloatField
      DisplayLabel = 'Vlr Produtos'
      FieldName = 'VLR_PRODUTOS'
      Origin = '"EST_ENTRADAS"."VLR_PRODUTOS"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_PRODUTOS_LC: TFloatField
      DisplayLabel = 'Vlr Produtos Lan'#231'ados'
      FieldName = 'VLR_PRODUTOS_LC'
      Origin = '"EST_ENTRADAS"."VLR_PRODUTOS_LC"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_EMBALAGEM: TFloatField
      DisplayLabel = 'Embalagem'
      FieldName = 'VLR_EMBALAGEM'
      Origin = '"EST_ENTRADAS"."VLR_EMBALAGEM"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasFRETE_LF: TIBStringField
      DisplayLabel = 'Frete no Lf'
      FieldName = 'FRETE_LF'
      Origin = '"EST_ENTRADAS"."FRETE_LF"'
      FixedChar = True
      Size = 1
    end
    object EntradasVLR_FRETE: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'VLR_FRETE'
      Origin = '"EST_ENTRADAS"."VLR_FRETE"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_SEGURO: TFloatField
      DisplayLabel = 'Seguro'
      FieldName = 'VLR_SEGURO'
      Origin = '"EST_ENTRADAS"."VLR_SEGURO"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_IPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'VLR_IPI'
      Origin = '"EST_ENTRADAS"."VLR_IPI"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_IPI_LC: TFloatField
      DisplayLabel = 'Ip Lan'#231'ado'
      FieldName = 'VLR_IPI_LC'
      Origin = '"EST_ENTRADAS"."VLR_IPI_LC"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_BC_ICM: TFloatField
      DisplayLabel = 'Base Icm'
      FieldName = 'VLR_BC_ICM'
      Origin = '"EST_ENTRADAS"."VLR_BC_ICM"'
      OnValidate = EntradasVLR_BC_ICMValidate
      DisplayFormat = '#,##0.00'
    end
    object EntradasPERC_ICM: TFloatField
      DisplayLabel = '% Icm'
      FieldName = 'PERC_ICM'
      Origin = '"EST_ENTRADAS"."PERC_ICM"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_ICM: TFloatField
      DisplayLabel = 'Icm'
      FieldName = 'VLR_ICM'
      Origin = '"EST_ENTRADAS"."VLR_ICM"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_ICM_SUBS: TFloatField
      DisplayLabel = 'Icm Subst'
      FieldName = 'VLR_ICM_SUBS'
      Origin = '"EST_ENTRADAS"."VLR_ICM_SUBS"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_TOTAL_NF: TFloatField
      DisplayLabel = 'Total Nf'
      FieldKind = fkCalculated
      FieldName = 'VLR_TOTAL_NF'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasVLR_PARC_LC: TFloatField
      DisplayLabel = 'Vlr Parc Lanc'
      FieldName = 'VLR_PARC_LC'
      Origin = '"EST_ENTRADAS"."VLR_PARC_LC"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_DIFERENCA: TFloatField
      DisplayLabel = 'Diferen'#231'a'
      FieldKind = fkCalculated
      FieldName = 'VLR_DIFERENCA'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasTOTAL_PARCELAS: TFloatField
      DisplayLabel = 'Total Parcelas'
      FieldKind = fkCalculated
      FieldName = 'TOTAL_PARCELAS'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasTAXAS: TFloatField
      DisplayLabel = 'Taxas'
      FieldName = 'TAXAS'
      Origin = '"EST_ENTRADAS"."TAXAS"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasLOCAL_ESTOQUE: TSmallintField
      DisplayLabel = 'Local Est'
      FieldName = 'LOCAL_ESTOQUE'
      Origin = '"EST_ENTRADAS"."LOCAL_ESTOQUE"'
      Required = True
    end
    object EntradasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"EST_ENTRADAS"."HISTORICO"'
      Size = 80
    end
    object EntradasTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"EST_ENTRADAS"."TIPO_DOCTO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object EntradasPROC_QTD: TIBStringField
      DisplayLabel = 'Qtde Prod'
      FieldName = 'PROC_QTD'
      Origin = '"EST_ENTRADAS"."PROC_QTD"'
      FixedChar = True
      Size = 1
    end
    object EntradasPROC_CUSTO: TIBStringField
      DisplayLabel = 'Custo Prod'
      FieldName = 'PROC_CUSTO'
      Origin = '"EST_ENTRADAS"."PROC_CUSTO"'
      FixedChar = True
      Size = 1
    end
    object EntradasPROC_FIN: TIBStringField
      DisplayLabel = 'Fin Prod'
      FieldName = 'PROC_FIN'
      Origin = '"EST_ENTRADAS"."PROC_FIN"'
      FixedChar = True
      Size = 1
    end
    object EntradasENTRADA: TFloatField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"EST_ENTRADAS"."ENTRADA"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'Centro Custo'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"EST_ENTRADAS"."CENTRO_CUSTO"'
    end
    object EntradasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_ENTRADAS"."NOME"'
      Size = 50
    end
    object EntradasNDOCTOINT: TIntegerField
      FieldName = 'NDOCTOINT'
      Origin = '"EST_ENTRADAS"."NDOCTOINT"'
    end
    object EntradasVLR_FRETE_LC: TFloatField
      FieldName = 'VLR_FRETE_LC'
      Origin = '"EST_ENTRADAS"."VLR_FRETE_LC"'
      DisplayFormat = '##0.0000'
    end
    object EntradasUF: TIBStringField
      FieldName = 'UF'
      Origin = '"EST_ENTRADAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object EntradasCOD_FORMA_PAGTO: TIntegerField
      FieldName = 'COD_FORMA_PAGTO'
      Origin = '"EST_ENTRADAS"."COD_FORMA_PAGTO"'
      OnValidate = EntradasCOD_FORMA_PAGTOValidate
    end
    object EntradasCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"EST_ENTRADAS"."COD_INDEXADOR"'
    end
    object EntradasIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"EST_ENTRADAS"."IDX_DATABASE"'
    end
    object EntradasIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      Origin = '"EST_ENTRADAS"."IDX_QTDE"'
    end
    object Entradas_Total_Geral_IDX: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Total_Geral_IDX'
      Calculated = True
    end
    object EntradasIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      Origin = '"EST_ENTRADAS"."IDX_COTACAO"'
    end
    object EntradasVLR_BC_ICM_SUBS: TFloatField
      FieldName = 'VLR_BC_ICM_SUBS'
      Origin = '"EST_ENTRADAS"."VLR_BC_ICM_SUBS"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasNFE_XML: TMemoField
      FieldName = 'NFE_XML'
      Origin = '"EST_ENTRADAS"."NFE_XML"'
      ProviderFlags = [pfInUpdate]
      BlobType = ftMemo
      Size = 8
    end
    object EntradasCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"EST_ENTRADAS"."COD_VENDA"'
    end
  end
  object Entradas_Itens: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    AfterInsert = Entradas_ItensAfterInsert
    BeforeDelete = EntradasBeforeDelete
    BeforeEdit = EntradasBeforeDelete
    BeforeInsert = EntradasBeforeDelete
    BeforeOpen = SelFornecedorBeforeOpen
    OnCalcFields = Entradas_ItensCalcFields
    OnNewRecord = Entradas_ItensNewRecord
    DeleteSQL.Strings = (
      'delete from EST_ENTRADAS_ITENS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into EST_ENTRADAS_ITENS'
      
        '  (CFOP, CNPJ, CODIGO_INTERNO, CONVERSAO, CTE, CTIE, DESCONTOS, ' +
        'EMBALAGEM, '
      
        '   FRETE, ICM, ICM_SUBS, IPI, IPI_PRODUTO, LOTE, NDOCTO, NOME_PR' +
        'ODUTO, '
      
        '   ORDEM, PERC_LUCRO, PESSOA_FJ, PRC_CUSTO, PRC_UNITARIO, PRC_UN' +
        'ITARIO_DOLAR, '
      
        '   PRC_VENDA, PRC_VENDA_ANT, PRODUTO, QUANTIDADE, REDUCAO, SECUN' +
        'DARIO, '
      '   SEGURO, SUBUNIDADE, TAXAS, UNIDADE)'
      'values'
      
        '  (:CFOP, :CNPJ, :CODIGO_INTERNO, :CONVERSAO, :CTE, :CTIE, :DESC' +
        'ONTOS, '
      
        '   :EMBALAGEM, :FRETE, :ICM, :ICM_SUBS, :IPI, :IPI_PRODUTO, :LOT' +
        'E, :NDOCTO, '
      
        '   :NOME_PRODUTO, :ORDEM, :PERC_LUCRO, :PESSOA_FJ, :PRC_CUSTO, :' +
        'PRC_UNITARIO, '
      
        '   :PRC_UNITARIO_DOLAR, :PRC_VENDA, :PRC_VENDA_ANT, :PRODUTO, :Q' +
        'UANTIDADE, '
      
        '   :REDUCAO, :SECUNDARIO, :SEGURO, :SUBUNIDADE, :TAXAS, :UNIDADE' +
        ')')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  NDOCTO,'
      '  PESSOA_FJ,'
      '  PRODUTO,'
      '  UNIDADE,'
      '  QUANTIDADE,'
      '  PRC_UNITARIO,'
      '  PERC_LUCRO,'
      '  PRC_VENDA,'
      '  PRC_VENDA_ANT,'
      '  PRC_CUSTO,'
      '  ICM,'
      '  ICM_SUBS,'
      '  IPI,'
      '  IPI_PRODUTO,'
      '  TAXAS,'
      '  DESCONTOS,'
      '  EMBALAGEM,'
      '  FRETE,'
      '  SEGURO,'
      '  NOME_PRODUTO,'
      '  SUBUNIDADE,'
      '  LOTE,'
      '  CTE,'
      '  CTIE,'
      '  CODIGO_INTERNO,'
      '  CONVERSAO,'
      '  PRC_UNITARIO_DOLAR,'
      '  ORDEM,'
      '  SECUNDARIO,'
      '  CFOP,'
      '  LOG_CUSTO_MEDIO_ANTERIOR,'
      '  LOG_ESTOQUE_ANTERIOR,'
      '  REDUCAO'
      'from EST_ENTRADAS_ITENS '
      'where'
      '  CNPJ = :CNPJ and'
      '  NDOCTO = :NDOCTO and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'SELECT item.CNPJ,'
      '               NDOCTO,'
      '               PESSOA_FJ, '
      '               PRODUTO,'
      '               NOME_PRODUTO, '
      '               item.UNIDADE,'
      '               QUANTIDADE, '
      '               PRC_UNITARIO, '
      '               PERC_LUCRO, '
      '               item.PRC_VENDA,'
      '               item.PRC_VENDA_ANT,'
      '               PRC_CUSTO, '
      '               ICM, '
      '               ICM_SUBS, '
      '               item.IPI,'
      '               IPI_PRODUTO, '
      '               TAXAS, '
      '               item.DESCONTOS,'
      '               EMBALAGEM, '
      '               FRETE, '
      '               SEGURO,'
      '               item.SUBUNIDADE,'
      '               LOTE,'
      '               item.CTE,'
      '               item.CTIE,'
      '               item.CODIGO_INTERNO,'
      '               CONVERSAO,'
      '               PRC_UNITARIO_DOLAR,'
      '               ORDEM,'
      '               SECUNDARIO,'
      '               CFOP,'
      '               prd.codigo_2,'
      '               prd.vende_fracionado,'
      '               item.reducao'
      'FROM EST_ENTRADAS_ITENS item'
      
        'inner join est_produtos prd on (item.produto = prd.codigo and pr' +
        'd.cnpj = item.cnpj)'
      'WHERE item.CNPJ = :CNPJ AND'
      '               item.NDOCTO = :NDOCTO AND'
      '               item.PESSOA_FJ = :PESSOA_FJ'
      'ORDER BY item.CNPJ, item.NDOCTO, item.PESSOA_FJ, item.PRODUTO')
    ModifySQL.Strings = (
      'update EST_ENTRADAS_ITENS'
      'set'
      '  CFOP = :CFOP,'
      '  CNPJ = :CNPJ,'
      '  CODIGO_INTERNO = :CODIGO_INTERNO,'
      '  CONVERSAO = :CONVERSAO,'
      '  CTE = :CTE,'
      '  CTIE = :CTIE,'
      '  DESCONTOS = :DESCONTOS,'
      '  EMBALAGEM = :EMBALAGEM,'
      '  FRETE = :FRETE,'
      '  ICM = :ICM,'
      '  ICM_SUBS = :ICM_SUBS,'
      '  IPI = :IPI,'
      '  IPI_PRODUTO = :IPI_PRODUTO,'
      '  LOTE = :LOTE,'
      '  NDOCTO = :NDOCTO,'
      '  NOME_PRODUTO = :NOME_PRODUTO,'
      '  ORDEM = :ORDEM,'
      '  PERC_LUCRO = :PERC_LUCRO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRC_CUSTO = :PRC_CUSTO,'
      '  PRC_UNITARIO = :PRC_UNITARIO,'
      '  PRC_UNITARIO_DOLAR = :PRC_UNITARIO_DOLAR,'
      '  PRC_VENDA = :PRC_VENDA,'
      '  PRC_VENDA_ANT = :PRC_VENDA_ANT,'
      '  PRODUTO = :PRODUTO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  REDUCAO = :REDUCAO,'
      '  SECUNDARIO = :SECUNDARIO,'
      '  SEGURO = :SEGURO,'
      '  SUBUNIDADE = :SUBUNIDADE,'
      '  TAXAS = :TAXAS,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = dsEntradas
    Left = 32
    Top = 60
    object Entradas_ItensCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_ENTRADAS_ITENS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Entradas_ItensNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS_ITENS"."NDOCTO"'
      Required = True
    end
    object Entradas_ItensPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_ENTRADAS_ITENS"."PESSOA_FJ"'
      Required = True
    end
    object Entradas_ItensPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      DisplayWidth = 15
      FieldName = 'PRODUTO'
      Origin = '"EST_ENTRADAS_ITENS"."PRODUTO"'
      Required = True
      OnValidate = Entradas_ItensPRODUTOValidate
      Size = 15
    end
    object Entradas_ItensNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_ENTRADAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Entradas_ItensUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"EST_ENTRADAS_ITENS"."UNIDADE"'
      Required = True
      OnValidate = Entradas_ItensUNIDADEValidate
      FixedChar = True
      Size = 4
    end
    object Entradas_ItensPRC_TOTAL: TFloatField
      DisplayLabel = 'Total'
      FieldKind = fkCalculated
      FieldName = 'PRC_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object Entradas_ItensPERC_LUCRO: TFloatField
      DisplayLabel = '% Lucro'
      FieldName = 'PERC_LUCRO'
      Origin = '"EST_ENTRADAS_ITENS"."PERC_LUCRO"'
      OnValidate = Entradas_ItensPERC_LUCROValidate
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensPRC_VENDA: TFloatField
      DisplayLabel = 'Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_VENDA"'
      OnValidate = Entradas_ItensPRC_VENDAValidate
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensPRC_VENDA_ANT: TFloatField
      DisplayLabel = 'Venda Anterior'
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_VENDA_ANT"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_CUSTO"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensICM: TFloatField
      DisplayLabel = 'Icm'
      FieldName = 'ICM'
      Origin = '"EST_ENTRADAS_ITENS"."ICM"'
      OnValidate = Entradas_ItensICMValidate
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensICM_SUBS: TFloatField
      DisplayLabel = 'Icm Subst'
      FieldName = 'ICM_SUBS'
      Origin = '"EST_ENTRADAS_ITENS"."ICM_SUBS"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensVLR_ICM: TFloatField
      DisplayLabel = 'Vlr Icm'
      FieldKind = fkCalculated
      FieldName = 'VLR_ICM'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object Entradas_ItensVLR_IPI: TFloatField
      DisplayLabel = 'Vlr Ipi'
      FieldKind = fkCalculated
      FieldName = 'VLR_IPI'
      OnValidate = Entradas_ItensIPIValidate
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object Entradas_ItensIPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'IPI'
      Origin = '"EST_ENTRADAS_ITENS"."IPI"'
      OnValidate = Entradas_ItensIPIValidate
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensIPI_PRODUTO: TFloatField
      DisplayLabel = 'Ipi Produto'
      FieldName = 'IPI_PRODUTO'
      Origin = '"EST_ENTRADAS_ITENS"."IPI_PRODUTO"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensTAXAS: TFloatField
      DisplayLabel = 'Taxas'
      FieldName = 'TAXAS'
      Origin = '"EST_ENTRADAS_ITENS"."TAXAS"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"EST_ENTRADAS_ITENS"."DESCONTOS"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensEMBALAGEM: TFloatField
      DisplayLabel = 'Embalagem'
      FieldName = 'EMBALAGEM'
      Origin = '"EST_ENTRADAS_ITENS"."EMBALAGEM"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensFRETE: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE'
      Origin = '"EST_ENTRADAS_ITENS"."FRETE"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensSEGURO: TFloatField
      DisplayLabel = 'Seguro'
      FieldName = 'SEGURO'
      Origin = '"EST_ENTRADAS_ITENS"."SEGURO"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_ItensSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Unidade'
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_ENTRADAS_ITENS"."SUBUNIDADE"'
    end
    object Entradas_ItensLOTE: TIntegerField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"EST_ENTRADAS_ITENS"."LOTE"'
    end
    object Entradas_ItensCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"EST_ENTRADAS_ITENS"."CTE"'
    end
    object Entradas_ItensCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"EST_ENTRADAS_ITENS"."CTIE"'
    end
    object Entradas_ItensCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"EST_ENTRADAS_ITENS"."CODIGO_INTERNO"'
      OnValidate = Entradas_ItensCODIGO_INTERNOValidate
    end
    object Entradas_ItensCONVERSAO: TFloatField
      FieldName = 'CONVERSAO'
      Origin = '"EST_ENTRADAS_ITENS"."CONVERSAO"'
    end
    object Entradas_ItensORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"EST_ENTRADAS_ITENS"."ORDEM"'
    end
    object Entradas_ItensSECUNDARIO: TIBStringField
      FieldName = 'SECUNDARIO'
      Origin = '"EST_ENTRADAS_ITENS"."SECUNDARIO"'
      OnValidate = Entradas_ItensSECUNDARIOValidate
      Size = 15
    end
    object Entradas_ItensCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"EST_ENTRADAS_ITENS"."CFOP"'
    end
    object Entradas_ItensCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object Entradas_ItensVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object Entradas_ItensREDUCAO: TFloatField
      FieldName = 'REDUCAO'
      Origin = '"EST_ENTRADAS_ITENS"."REDUCAO"'
      OnValidate = Entradas_ItensICMValidate
    end
    object Entradas_ItensPRC_UNITARIO_DOLAR: TFloatField
      FieldName = 'PRC_UNITARIO_DOLAR'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_UNITARIO_DOLAR"'
    end
    object Entradas_ItensQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"EST_ENTRADAS_ITENS"."QUANTIDADE"'
      DisplayFormat = '#,##0.0000'
    end
    object Entradas_ItensPRC_UNITARIO: TFloatField
      DisplayLabel = 'Vlr. Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '#,##0.0000'
    end
  end
  object Entradas_Fat: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    AfterInsert = Entradas_FatAfterInsert
    AfterPost = Entradas_FatAfterPost
    BeforeDelete = Entradas_FatBeforeDelete
    BeforeOpen = SelFornecedorBeforeOpen
    BeforePost = Entradas_FatBeforePost
    OnNewRecord = Entradas_FatNewRecord
    DeleteSQL.Strings = (
      'delete from EST_ENTRADAS_FATURAMENTO'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DT_VENCTO = :OLD_DT_VENCTO and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  SEQUENCIAL = :OLD_SEQUENCIAL')
    InsertSQL.Strings = (
      'insert into EST_ENTRADAS_FATURAMENTO'
      
        '  (ANO_CP, CENTRO_CUSTO, CNPJ, COD_CREDOR, CODIGO_CP, CONFERIDA,' +
        ' DT_VENCTO, '
      
        '   DUPLICATA, NDOCTO, OBSERVACAO, PARCELA, PESSOA_FJ, SEQUENCIAL' +
        ', TIPO_DOCTO, '
      '   VALOR)'
      'values'
      
        '  (:ANO_CP, :CENTRO_CUSTO, :CNPJ, :COD_CREDOR, :CODIGO_CP, :CONF' +
        'ERIDA, '
      
        '   :DT_VENCTO, :DUPLICATA, :NDOCTO, :OBSERVACAO, :PARCELA, :PESS' +
        'OA_FJ, '
      '   :SEQUENCIAL, :TIPO_DOCTO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  NDOCTO,'
      '  PESSOA_FJ,'
      '  DT_VENCTO,'
      '  CODIGO_CP,'
      '  ANO_CP,'
      '  PARCELA,'
      '  VALOR,'
      '  DUPLICATA,'
      '  OBSERVACAO,'
      '  CONFERIDA,'
      '  SEQUENCIAL,'
      '  CENTRO_CUSTO,'
      '  COD_CREDOR,'
      '  TIPO_DOCTO'
      'from EST_ENTRADAS_FATURAMENTO '
      'where'
      '  CNPJ = :CNPJ and'
      '  DT_VENCTO = :DT_VENCTO and'
      '  NDOCTO = :NDOCTO and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  SEQUENCIAL = :SEQUENCIAL')
    SelectSQL.Strings = (
      'select et.cnpj,'
      'et.TIPO_DOCTO,'
      'et.ndocto, '
      'et.pessoa_fj, '
      'et.dt_vencto, '
      'et.codigo_cp, '
      'et.ano_cp, '
      'et.parcela, '
      'et.valor,'
      'et.duplicata,'
      'et.observacao,'
      'et.conferida,'
      'et.sequencial,'
      'et.centro_custo,'
      'et.cod_credor,'
      'psa.nome_razao credor,'
      'd.nome nome_tipo_docto'
      'from est_entradas_faturamento et'
      
        'left join glo_pessoas_fj psa on (psa.cnpj = et.cnpj and psa.codi' +
        'go = et.cod_credor)'
      
        'left join glo_tipos_docto d on (d.cnpj = et.cnpj and d.sigla = e' +
        't.tipo_docto)'
      'where et.cnpj = :cnpj and'
      '               et.ndocto = :ndocto and'
      '               et.pessoa_fj = :pessoa_fj'
      'order by et.cnpj, et.ndocto, et.pessoa_fj, et.dt_vencto')
    ModifySQL.Strings = (
      'update EST_ENTRADAS_FATURAMENTO'
      'set'
      '  ANO_CP = :ANO_CP,'
      '  CENTRO_CUSTO = :CENTRO_CUSTO,'
      '  CNPJ = :CNPJ,'
      '  COD_CREDOR = :COD_CREDOR,'
      '  CODIGO_CP = :CODIGO_CP,'
      '  CONFERIDA = :CONFERIDA,'
      '  DT_VENCTO = :DT_VENCTO,'
      '  DUPLICATA = :DUPLICATA,'
      '  NDOCTO = :NDOCTO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  PARCELA = :PARCELA,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  SEQUENCIAL = :SEQUENCIAL,'
      '  TIPO_DOCTO = :TIPO_DOCTO,'
      '  VALOR = :VALOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  DT_VENCTO = :OLD_DT_VENCTO and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  SEQUENCIAL = :OLD_SEQUENCIAL')
    DataSource = dsEntradas
    Left = 119
    Top = 56
    object Entradas_FatCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Entradas_FatNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."NDOCTO"'
      Required = True
    end
    object Entradas_FatPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."PESSOA_FJ"'
      Required = True
    end
    object Entradas_FatCODIGO_CP: TIntegerField
      FieldName = 'CODIGO_CP'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."CODIGO_CP"'
    end
    object Entradas_FatANO_CP: TIntegerField
      FieldName = 'ANO_CP'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."ANO_CP"'
    end
    object Entradas_FatPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."PARCELA"'
      Size = 6
    end
    object Entradas_FatVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."VALOR"'
      DisplayFormat = '#,##0.00'
    end
    object Entradas_FatDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."DUPLICATA"'
      Size = 15
    end
    object Entradas_FatOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."OBSERVACAO"'
      Size = 100
    end
    object Entradas_FatCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."CONFERIDA"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object Entradas_FatSEQUENCIAL: TIntegerField
      FieldName = 'SEQUENCIAL'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."SEQUENCIAL"'
      Required = True
    end
    object Entradas_FatCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'C. Custo'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."CENTRO_CUSTO"'
    end
    object Entradas_FatDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."DT_VENCTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object Entradas_FatCOD_CREDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Credor'
      FieldName = 'COD_CREDOR'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."COD_CREDOR"'
    end
    object Entradas_FatCREDOR: TIBStringField
      DisplayLabel = 'Credor'
      FieldName = 'CREDOR'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object Entradas_FatTIPO_DOCTO: TIBStringField
      DisplayLabel = 'C'#243'd. Tp. Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Entradas_FatNOME_TIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'NOME_TIPO_DOCTO'
      Origin = '"GLO_TIPOS_DOCTO"."NOME"'
      Size = 50
    end
  end
  object dsEntradas: TDataSource
    AutoEdit = False
    DataSet = Entradas
    Left = 119
    Top = 5
  end
  object SelFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'SELECT '
      '               F.PESSOA_FJ, '
      '               P.NOME_RAZAO,'
      '               P.FONE,'
      '               P.FANTASIA,'
      '               P.CPF_CGC  '
      'FROM GLO_FORNECEDORES F '
      
        '            INNER JOIN GLO_PESSOAS_FJ P ON (P.CODIGO = F.PESSOA_' +
        'FJ'
      'and'
      'F.CNPJ = P.CNPJ'
      ')'
      'WHERE F.CNPJ = :CNPJ'
      'ORDER BY P.NOME_RAZAO')
    Left = 32
    Top = 104
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
      DisplayWidth = 40
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object SelFornecedorFONE: TIBStringField
      DisplayLabel = 'Fone'
      DisplayWidth = 20
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
      DisplayLabel = 'Cpf/Cgc'
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
  end
  object SelNatureza: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME, '
      '               PERC_ICMS,'
      '               INTERESTADUAL'
      'FROM EST_NATUREZA'
      'WHERE CNPJ = :CNPJ AND'
      '               ES = '#39'E'#39
      'ORDER BY NOME')
    Left = 119
    Top = 104
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelNaturezaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_NATUREZA"."CODIGO"'
      Required = True
    end
    object SelNaturezaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_NATUREZA"."NOME"'
      Required = True
      Size = 50
    end
    object SelNaturezaPERC_ICMS: TFloatField
      FieldName = 'PERC_ICMS'
      Origin = '"EST_NATUREZA"."PERC_ICMS"'
    end
    object SelNaturezaINTERESTADUAL: TIBStringField
      DisplayLabel = 'Int/Est'
      FieldName = 'INTERESTADUAL'
      Origin = '"EST_NATUREZA"."INTERESTADUAL"'
      FixedChar = True
      Size = 1
    end
  end
  object Parametros: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               VENDEDOR, '
      '               DESCONTOS, '
      '               CUSTO_VARIAVEL, '
      '               PROPAGANDA '
      'FROM SIS_EMPRESAS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY CNPJ')
    Left = 32
    Top = 152
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
  object SelTipoDocto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               SIGLA, '
      '               NOME '
      'FROM GLO_TIPOS_DOCTO'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 119
    Top = 152
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
  object SelUnidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               SIGLA, '
      '               NOME, '
      '               UNIDADES '
      'FROM EST_UNIDADES'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY CNPJ, SIGLA')
    Left = 207
    Top = 152
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
  object Valida_Produto: TIBStoredProc
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    StoredProcName = 'VALIDA_PRODUTO'
    Left = 32
    Top = 200
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
        DataType = ftBCD
        Name = 'QTDADE_2'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'NEG_QTDADE_2'
        ParamType = ptOutput
      end
      item
        DataType = ftInteger
        Name = 'SUBUNIDADE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'COMPLEMENTO_NF'
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
        DataType = ftBCD
        Name = 'IPI'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'VENDE_FRACIONADO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'POSSUI_LOTE'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'MARCA'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'MARGEM_BRUTA'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'QTDADE_CONVERSAO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'SERVICO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'SECUNDARIO'
        ParamType = ptOutput
      end
      item
        DataType = ftString
        Name = 'COMPLEMENTO'
        ParamType = ptOutput
      end
      item
        DataType = ftBCD
        Name = 'PERC_FRETE'
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
    Left = 207
    Top = 56
  end
  object Valida_Fornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select'
      '          PESSOA_FJ ,'
      '          NOME,'
      '          UF'
      'from VALIDA_FORNECEDOR (:CNPJ,  :CODIGO)'
      'ORDER BY NOME')
    Left = 207
    Top = 200
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
    object Valida_FornecedorUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VALIDA_FORNECEDOR"."UF"'
      FixedChar = True
      Size = 2
    end
  end
  object DsUnidade: TDataSource
    AutoEdit = False
    DataSet = SelUnidade
    Left = 296
    Top = 152
  end
  object SelSubUnidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    DataSource = DsUnidade
    SQL.Strings = (
      'Select'
      '          CNPJ, '
      '          SIGLA, '
      '          UNIDADES'
      'from'
      '          EST_SUBUNIDADES'
      'WHERE CNPJ = :CNPJ and SIGLA = :SIGLA')
    Left = 296
    Top = 200
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'SIGLA'
        ParamType = ptUnknown
      end>
    object SelSubUnidadeCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_SUBUNIDADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelSubUnidadeSIGLA: TIBStringField
      DisplayLabel = 'Sigla'
      FieldName = 'SIGLA'
      Origin = '"EST_SUBUNIDADES"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object SelSubUnidadeUNIDADES: TIntegerField
      DisplayLabel = 'Unidades'
      FieldName = 'UNIDADES'
      Origin = '"EST_SUBUNIDADES"."UNIDADES"'
      Required = True
    end
  end
  object SelCentro: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'select codigo, nome from fin_centro_custo ct1'
      
        'where cnpj = :cnpj and 0 = (select count(*) from fin_centro_cust' +
        'o ct2 where ct2.agrupador = ct1.codigo)'
      'order by nome')
    Left = 119
    Top = 200
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
  object SelLote: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          ESTOQUE, '
      '          LOTE, '
      '          PRODUTO,'
      '          PENEIRA,'
      '          ATESTADO,'
      '          GERMINACAO,'
      '          PUREZA,'
      '          VALIDADE,'
      '          DT_ULTIMA_COMPRA,'
      '          DT_ULTIMA_VENDA,'
      '          PESO'
      'from EST_LOTE_PRODUTO'
      'where CNPJ = :CNPJ and PRODUTO = :CODIGO')
    Left = 207
    Top = 104
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
    object SelLoteCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_LOTE_PRODUTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelLoteCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_LOTE_PRODUTO"."CODIGO"'
      Required = True
    end
    object SelLoteESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_LOTE_PRODUTO"."ESTOQUE"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelLoteLOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'LOTE'
      Origin = '"EST_LOTE_PRODUTO"."LOTE"'
      Required = True
      Size = 10
    end
    object SelLotePRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_LOTE_PRODUTO"."PRODUTO"'
      Required = True
      Size = 15
    end
    object SelLotePENEIRA: TIBStringField
      DisplayLabel = 'Peneira'
      FieldName = 'PENEIRA'
      Origin = '"EST_LOTE_PRODUTO"."PENEIRA"'
      Size = 10
    end
    object SelLoteATESTADO: TIBStringField
      DisplayLabel = 'Atestado'
      FieldName = 'ATESTADO'
      Origin = '"EST_LOTE_PRODUTO"."ATESTADO"'
      Size = 6
    end
    object SelLoteGERMINACAO: TFloatField
      DisplayLabel = 'Germina'#231#227'o'
      FieldName = 'GERMINACAO'
      Origin = '"EST_LOTE_PRODUTO"."GERMINACAO"'
      DisplayFormat = '% ###,###,##0.00'
    end
    object SelLotePUREZA: TFloatField
      DisplayLabel = 'Pureza'
      FieldName = 'PUREZA'
      Origin = '"EST_LOTE_PRODUTO"."PUREZA"'
      DisplayFormat = '% ###,###,##0.00'
    end
    object SelLoteVALIDADE: TDateTimeField
      DisplayLabel = 'Validade'
      FieldName = 'VALIDADE'
      Origin = '"EST_LOTE_PRODUTO"."VALIDADE"'
    end
    object SelLoteDT_ULTIMA_COMPRA: TDateTimeField
      DisplayLabel = #218'lt. Compra'
      FieldName = 'DT_ULTIMA_COMPRA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_COMPRA"'
    end
    object SelLoteDT_ULTIMA_VENDA: TDateTimeField
      DisplayLabel = #218'lt. Venda'
      FieldName = 'DT_ULTIMA_VENDA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_VENDA"'
    end
    object SelLotePESO: TFloatField
      FieldName = 'PESO'
      Origin = '"EST_LOTE_PRODUTO"."PESO"'
      DisplayFormat = '###,##0.00'
    end
  end
  object SelEntrada: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    OnCalcFields = SelEntradaCalcFields
    SQL.Strings = (
      'SELECT '
      '   cod_venda,'
      '    NDOCTO ,'
      '    NDOCTOINT ,'
      '    PESSOA_FJ ,'
      '    DATA_NF ,'
      '    NATUREZA ,'
      '    NOME_RAZAO ,'
      '    DATA_REF ,'
      '    DATA_ENT ,'
      '    SERIE_NF ,'
      '    TAXAS ,'
      '    VLR_EMBALAGEM ,'
      '    VLR_FRETE ,'
      '    VLR_DESCONTO ,'
      '    VLR_SEGURO ,'
      '    VLR_BC_ICM ,'
      '    PERC_ICM ,'
      '    VLR_ICM ,'
      '    VLR_IPI ,'
      '    VLR_ICM_SUBS ,'
      '    PROC_QTD, '
      '    PROC_FIN,'
      '    PROC_CUSTO,'
      '    FRETE_LF,'
      '    VLR_PRODUTOS'
      'FROM VER_EST_ENTRADAS_CONFERENTE'
      '( :CNPJ, :DT_INICIAL, :DT_FINAL )')
    Left = 207
    Top = 5
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DT_FINAL'
        ParamType = ptUnknown
      end>
    object SelEntradaNDOCTO: TIBStringField
      DisplayLabel = 'N'#186' Docto'
      FieldName = 'NDOCTO'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."NDOCTO"'
    end
    object SelEntradaNDOCTOINT: TIntegerField
      DisplayLabel = 'Docto'
      FieldName = 'NDOCTOINT'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."NDOCTOINT"'
    end
    object SelEntradaPESSOA_FJ: TIntegerField
      DisplayLabel = 'Fornecedor'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."PESSOA_FJ"'
    end
    object SelEntradaDATA_NF: TDateTimeField
      DisplayLabel = 'Data NF'
      FieldName = 'DATA_NF'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."DATA_NF"'
    end
    object SelEntradaNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."NATUREZA"'
    end
    object SelEntradaNOME_RAZAO: TIBStringField
      DisplayLabel = 'Raz'#227'o Social'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."NOME_RAZAO"'
      Size = 50
    end
    object SelEntradaDATA_REF: TDateTimeField
      DisplayLabel = 'Data Ref.'
      FieldName = 'DATA_REF'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."DATA_REF"'
    end
    object SelEntradaDATA_ENT: TDateTimeField
      DisplayLabel = 'Data Entr.'
      FieldName = 'DATA_ENT'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."DATA_ENT"'
    end
    object SelEntradaSERIE_NF: TIBStringField
      DisplayLabel = 'S'#233'rie NF'
      FieldName = 'SERIE_NF'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."SERIE_NF"'
      FixedChar = True
      Size = 3
    end
    object SelEntradaTAXAS: TFloatField
      DisplayLabel = 'Taxas'
      FieldName = 'TAXAS'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."TAXAS"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaVLR_EMBALAGEM: TFloatField
      DisplayLabel = 'Embalagem'
      FieldName = 'VLR_EMBALAGEM'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_EMBALAGEM"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaVLR_FRETE: TFloatField
      DisplayLabel = 'Frete'
      FieldName = 'VLR_FRETE'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_FRETE"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaVLR_DESCONTO: TFloatField
      DisplayLabel = 'Desconto'
      FieldName = 'VLR_DESCONTO'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_DESCONTO"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaVLR_SEGURO: TFloatField
      DisplayLabel = 'Seguro'
      FieldName = 'VLR_SEGURO'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_SEGURO"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaVLR_BC_ICM: TFloatField
      DisplayLabel = 'Base Calc. ICM'
      FieldName = 'VLR_BC_ICM'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_BC_ICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaPERC_ICM: TFloatField
      DisplayLabel = '% ICM'
      FieldName = 'PERC_ICM'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."PERC_ICM"'
    end
    object SelEntradaVLR_ICM: TFloatField
      DisplayLabel = 'Vlr. ICM'
      FieldName = 'VLR_ICM'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_ICM"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaVLR_IPI: TFloatField
      DisplayLabel = 'Vlr. IPI'
      FieldName = 'VLR_IPI'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_IPI"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaVLR_ICM_SUBS: TFloatField
      DisplayLabel = 'Vlr. ICM Subst.'
      FieldName = 'VLR_ICM_SUBS'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaPROC_QTD: TIBStringField
      DisplayLabel = 'Qtde '
      FieldName = 'PROC_QTD'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."PROC_QTD"'
      FixedChar = True
      Size = 1
    end
    object SelEntradaPROC_FIN: TIBStringField
      FieldName = 'PROC_FIN'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."PROC_FIN"'
      FixedChar = True
      Size = 1
    end
    object SelEntradaVLR_TOTAL_NF: TFloatField
      DisplayLabel = 'Vlr. Total'
      FieldKind = fkCalculated
      FieldName = 'VLR_TOTAL_NF'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object SelEntradaFRETE_LF: TIBStringField
      DisplayLabel = 'Frete'
      FieldName = 'FRETE_LF'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."FRETE_LF"'
      FixedChar = True
      Size = 1
    end
    object SelEntradaVLR_PRODUTOS: TFloatField
      DisplayLabel = 'Vlr. Produtos'
      FieldName = 'VLR_PRODUTOS'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_PRODUTOS"'
      DisplayFormat = '###,###,##0.00'
    end
    object SelEntradaPROC_CUSTO: TIBStringField
      DisplayLabel = 'Custo'
      FieldName = 'PROC_CUSTO'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."PROC_CUSTO"'
      FixedChar = True
      Size = 1
    end
    object SelEntradaNDOCTOINT2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NDOCTOINT2'
      Calculated = True
    end
    object SelEntradaCOD_VENDA: TIntegerField
      DisplayLabel = 'Fat. Sa'#237'da'
      FieldName = 'COD_VENDA'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."COD_VENDA"'
    end
  end
  object Produtos_Grades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnNewRecord = Produtos_GradesNewRecord
    DeleteSQL.Strings = (
      'delete from EST_ENTRADAS_ITENS_GRADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO')
    InsertSQL.Strings = (
      'insert into EST_ENTRADAS_ITENS_GRADES'
      
        '  (CNPJ, NDOCTO, PESSOA_FJ, PRODUTO, GRADE, NUMERO, QUANTIDADE, ' +
        'ORDEM, '
      '   MATERIAL, COR)'
      'values'
      
        '  (:CNPJ, :NDOCTO, :PESSOA_FJ, :PRODUTO, :GRADE, :NUMERO, :QUANT' +
        'IDADE, '
      '   :ORDEM, :MATERIAL, :COR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  NDOCTO,'
      '  PESSOA_FJ,'
      '  PRODUTO,'
      '  GRADE,'
      '  NUMERO,'
      '  QUANTIDADE,'
      '  ORDEM,'
      '  COR,'
      '  MATERIAL'
      'from EST_ENTRADAS_ITENS_GRADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  NDOCTO = :NDOCTO and'
      '  PESSOA_FJ = :PESSOA_FJ and'
      '  PRODUTO = :PRODUTO and'
      '  GRADE = :GRADE and'
      '  NUMERO = :NUMERO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '          NDOCTO,'
      '          PESSOA_FJ ,'
      '          PRODUTO, '
      '          GRADE, '
      '          NUMERO,'
      '          QUANTIDADE,'
      '          ORDEM,'
      '          MATERIAL,'
      '          COR'
      'from EST_ENTRADAS_ITENS_GRADES'
      'Where '
      'CNPJ = :CNPJ AND '
      'NDOCTO = :NDOCTO AND'
      'PESSOA_FJ = :PESSOA_FJ AND'
      'PRODUTO = :PRODUTO'
      'Order by GRADE, ORDEM, NUMERO'
      '')
    ModifySQL.Strings = (
      'update EST_ENTRADAS_ITENS_GRADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  NDOCTO = :NDOCTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRODUTO = :PRODUTO,'
      '  GRADE = :GRADE,'
      '  NUMERO = :NUMERO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  ORDEM = :ORDEM,'
      '  MATERIAL = :MATERIAL,'
      '  COR = :COR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  NDOCTO = :OLD_NDOCTO and'
      '  PESSOA_FJ = :OLD_PESSOA_FJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO')
    DataSource = DsEntradas_Itens
    Left = 296
    Top = 5
    object Produtos_GradesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Produtos_GradesNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."NUMERO"'
      Size = 6
    end
    object Produtos_GradesPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Produtos_GradesNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS_ITENS_GRADES"."NDOCTO"'
      Required = True
    end
    object Produtos_GradesPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_ENTRADAS_ITENS_GRADES"."PESSOA_FJ"'
      Required = True
    end
    object Produtos_GradesQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"EST_ENTRADAS_ITENS_GRADES"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
    object Produtos_GradesORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"EST_ENTRADAS_ITENS_GRADES"."ORDEM"'
    end
    object Produtos_GradesMATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'MATERIAL'
      Origin = '"EST_ENTRADAS_ITENS_GRADES"."MATERIAL"'
      Size = 50
    end
    object Produtos_GradesCOR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"EST_ENTRADAS_ITENS_GRADES"."COR"'
      Size = 50
    end
    object Produtos_GradesGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"EST_ENTRADAS_ITENS_GRADES"."GRADE"'
      Required = True
      OnValidate = Produtos_GradesGRADEValidate
      FixedChar = True
      Size = 4
    end
  end
  object DsEntradas_Itens: TDataSource
    AutoEdit = False
    DataSet = Entradas_Itens
    Left = 296
    Top = 56
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
      '    NUMERO,'
      '    ORDEM'
      'FROM LISTA_PRODUTOS_GRADES'
      '( :CNPJ, :PRODUTO )'
      'Order by GRADE, ORDEM, NUMERO')
    Left = 296
    Top = 107
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
    object Lista_GradesORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"LISTA_PRODUTOS_GRADES"."ORDEM"'
    end
  end
  object Grades: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    AfterInsert = GradesAfterInsert
    BeforeOpen = SelFornecedorBeforeOpen
    BeforePost = GradesBeforePost
    OnNewRecord = GradesNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_GRADES'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  GRADE = :OLD_GRADE')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_GRADES'
      
        '  (CNPJ, PRODUTO, GRADE, MATERIAL, COR, ULTIMA_COMPRA, QTDADE_CO' +
        'MPRA, ULTIMA_VENDA, '
      
        '   QTDADE_VENDA, ESTOQUE, NOME_MATERIAL, NOME_COR, PERFIL, NOME_' +
        'PERFIL)'
      'values'
      
        '  (:CNPJ, :PRODUTO, :GRADE, :MATERIAL, :COR, :ULTIMA_COMPRA, :QT' +
        'DADE_COMPRA, '
      
        '   :ULTIMA_VENDA, :QTDADE_VENDA, :ESTOQUE, :NOME_MATERIAL, :NOME' +
        '_COR, :PERFIL, '
      '   :NOME_PERFIL)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  GRADE,'
      '  MATERIAL,'
      '  COR,'
      '  ULTIMA_COMPRA,'
      '  QTDADE_COMPRA,'
      '  ULTIMA_VENDA,'
      '  QTDADE_VENDA,'
      '  ESTOQUE,'
      '  NOME_MATERIAL,'
      '  NOME_COR,'
      '  PERFIL,'
      '  NOME_PERFIL'
      'from EST_PRODUTOS_GRADES '
      'where'
      '  CNPJ = :CNPJ and'
      '  PRODUTO = :PRODUTO and'
      '  GRADE = :GRADE')
    SelectSQL.Strings = (
      'select '
      '    CNPJ,'
      '    PRODUTO,'
      '    GRADE,'
      '    MATERIAL,'
      '    COR,'
      '    ULTIMA_COMPRA,'
      '    QTDADE_COMPRA,'
      '    ULTIMA_VENDA,'
      '    QTDADE_VENDA,'
      '    ESTOQUE,'
      '    NOME_MATERIAL,'
      '    NOME_COR,'
      '    PERFIL,'
      '    NOME_PERFIL'
      'from EST_PRODUTOS_GRADES'
      'where CNPJ = :CNPJ and PRODUTO = :PRODUTO'
      '')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_GRADES'
      'set'
      '  CNPJ = :CNPJ,'
      '  PRODUTO = :PRODUTO,'
      '  GRADE = :GRADE,'
      '  MATERIAL = :MATERIAL,'
      '  COR = :COR,'
      '  ULTIMA_COMPRA = :ULTIMA_COMPRA,'
      '  QTDADE_COMPRA = :QTDADE_COMPRA,'
      '  ULTIMA_VENDA = :ULTIMA_VENDA,'
      '  QTDADE_VENDA = :QTDADE_VENDA,'
      '  ESTOQUE = :ESTOQUE,'
      '  NOME_MATERIAL = :NOME_MATERIAL,'
      '  NOME_COR = :NOME_COR,'
      '  PERFIL = :PERFIL,'
      '  NOME_PERFIL = :NOME_PERFIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  PRODUTO = :OLD_PRODUTO and'
      '  GRADE = :OLD_GRADE')
    Left = 32
    Top = 249
    object GradesCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_GRADES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object GradesPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_GRADES"."PRODUTO"'
      Required = True
      Size = 15
    end
    object GradesMATERIAL: TIntegerField
      DisplayLabel = 'Material'
      FieldName = 'MATERIAL'
      Origin = '"EST_PRODUTOS_GRADES"."MATERIAL"'
      Required = True
    end
    object GradesCOR: TIntegerField
      DisplayLabel = 'Cor'
      FieldName = 'COR'
      Origin = '"EST_PRODUTOS_GRADES"."COR"'
      Required = True
    end
    object GradesULTIMA_COMPRA: TDateTimeField
      DisplayLabel = #218'lt. Compra'
      FieldName = 'ULTIMA_COMPRA'
      Origin = '"EST_PRODUTOS_GRADES"."ULTIMA_COMPRA"'
    end
    object GradesQTDADE_COMPRA: TFloatField
      DisplayLabel = 'Qtdade'
      FieldName = 'QTDADE_COMPRA'
      Origin = '"EST_PRODUTOS_GRADES"."QTDADE_COMPRA"'
      DisplayFormat = '###,##0.00'
    end
    object GradesULTIMA_VENDA: TDateTimeField
      DisplayLabel = #218'lt. Venda'
      FieldName = 'ULTIMA_VENDA'
      Origin = '"EST_PRODUTOS_GRADES"."ULTIMA_VENDA"'
    end
    object GradesQTDADE_VENDA: TFloatField
      DisplayLabel = 'Qtdade'
      FieldName = 'QTDADE_VENDA'
      Origin = '"EST_PRODUTOS_GRADES"."QTDADE_VENDA"'
      DisplayFormat = '###,##0.00'
    end
    object GradesESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_PRODUTOS_GRADES"."ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object GradesNOME_MATERIAL: TIBStringField
      DisplayLabel = 'Material'
      FieldName = 'NOME_MATERIAL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_MATERIAL"'
      Size = 50
    end
    object GradesNOME_COR: TIBStringField
      DisplayLabel = 'Cor'
      FieldName = 'NOME_COR'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_COR"'
      Size = 50
    end
    object GradesPERFIL: TIntegerField
      DisplayLabel = 'Perfil'
      FieldName = 'PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."PERFIL"'
    end
    object GradesNOME_PERFIL: TIBStringField
      DisplayLabel = 'Perfil'
      FieldName = 'NOME_PERFIL'
      Origin = '"EST_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object GradesGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"EST_PRODUTOS_GRADES"."GRADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
  end
  object Grades_Numeros: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelFornecedorBeforeOpen
    OnNewRecord = Grades_NumerosNewRecord
    DeleteSQL.Strings = (
      'delete from EST_PRODUTOS_GRADES_NUMEROS'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO and'
      '  PRODUTO = :OLD_PRODUTO')
    InsertSQL.Strings = (
      'insert into EST_PRODUTOS_GRADES_NUMEROS'
      '  (CNPJ, GRADE, NUMERO, PRODUTO, ESTOQUE)'
      'values'
      '  (:CNPJ, :GRADE, :NUMERO, :PRODUTO, :ESTOQUE)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  PRODUTO,'
      '  GRADE,'
      '  NUMERO,'
      '  ESTOQUE'
      'from EST_PRODUTOS_GRADES_NUMEROS '
      'where'
      '  CNPJ = :CNPJ and'
      '  GRADE = :GRADE and'
      '  NUMERO = :NUMERO and'
      '  PRODUTO = :PRODUTO')
    SelectSQL.Strings = (
      'select CNPJ, '
      '           GRADE, '
      '           NUMERO, '
      '           PRODUTO,'
      '           ESTOQUE '
      'from EST_PRODUTOS_GRADES_NUMEROS'
      'WHERE CNPJ = :CNPJ AND GRADE = :GRADE AND'
      'PRODUTO = :PRODUTO'
      'ORDER BY ORDEM, NUMERO')
    ModifySQL.Strings = (
      'update EST_PRODUTOS_GRADES_NUMEROS'
      'set'
      '  CNPJ = :CNPJ,'
      '  GRADE = :GRADE,'
      '  NUMERO = :NUMERO,'
      '  PRODUTO = :PRODUTO,'
      '  ESTOQUE = :ESTOQUE'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  GRADE = :OLD_GRADE and'
      '  NUMERO = :OLD_NUMERO and'
      '  PRODUTO = :OLD_PRODUTO')
    DataSource = DsGrades
    Left = 32
    Top = 297
    object Grades_NumerosCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Grades_NumerosPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Grades_NumerosESTOQUE: TFloatField
      DisplayLabel = 'Estoque'
      FieldName = 'ESTOQUE'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."ESTOQUE"'
      DisplayFormat = '###,##0.00'
    end
    object Grades_NumerosNUMERO: TIBStringField
      DisplayLabel = 'N'#250'mero'
      FieldName = 'NUMERO'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."NUMERO"'
      Size = 6
    end
    object Grades_NumerosGRADE: TIBStringField
      DisplayLabel = 'Grade'
      FieldName = 'GRADE'
      Origin = '"EST_PRODUTOS_GRADES_NUMEROS"."GRADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
  end
  object DsGrades: TDataSource
    DataSet = Grades
    Left = 120
    Top = 248
  end
  object Entradas_Manual: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    AfterInsert = Entradas_ManualAfterInsert
    BeforeOpen = SelFornecedorBeforeOpen
    BeforePost = Entradas_ManualBeforePost
    OnCalcFields = Entradas_ManualCalcFields
    OnNewRecord = Entradas_ManualNewRecord
    DeleteSQL.Strings = (
      'delete from EST_ENTRADAS_MANUAL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_ENTRADAS_MANUAL'
      
        '  (CNPJ, CODIGO, DATA, PRODUTO, NOME, VLR_CAIXA, VLR_EMBALAGEM, ' +
        'VLR_COMPRA, '
      
        '   VLR_IPI, VLR_FRETE_PROPRIO, VLR_FRETE_TERCEIRO, VLR_TRIBUTACA' +
        'O_CREDITO, '
      
        '   VLR_OUTRAS_DESPESAS, QUANTIDADE, VLR_VENDA, VLR_LUCRO, VLR_CU' +
        'STO_TOTAL, '
      
        '   FECHADA, VLR_RENTABILIDADE, VLR_ICM_VENDA, MARGEM_LUCRO, TOT_' +
        'FRETE_TERCEIRO, '
      
        '   TOT_ICM_CREDITO, TOT_ICM_DEBITO, TOT_RENTABILIDADE, TOT_IPI, ' +
        'TOT_DESP_OPERACIONAL, '
      
        '   TOT_DESP_FEDERAL, TOT_FRETE_PROPRIO, HORA, VLR_VENDA_ANTERIOR' +
        ', FORNECEDOR, '
      '   NDOCTO, NOME_FORNECEDOR)'
      'values'
      
        '  (:CNPJ, :CODIGO, :DATA, :PRODUTO, :NOME, :VLR_CAIXA, :VLR_EMBA' +
        'LAGEM, '
      
        '   :VLR_COMPRA, :VLR_IPI, :VLR_FRETE_PROPRIO, :VLR_FRETE_TERCEIR' +
        'O, :VLR_TRIBUTACAO_CREDITO, '
      
        '   :VLR_OUTRAS_DESPESAS, :QUANTIDADE, :VLR_VENDA, :VLR_LUCRO, :V' +
        'LR_CUSTO_TOTAL, '
      
        '   :FECHADA, :VLR_RENTABILIDADE, :VLR_ICM_VENDA, :MARGEM_LUCRO, ' +
        ':TOT_FRETE_TERCEIRO, '
      
        '   :TOT_ICM_CREDITO, :TOT_ICM_DEBITO, :TOT_RENTABILIDADE, :TOT_I' +
        'PI, :TOT_DESP_OPERACIONAL, '
      
        '   :TOT_DESP_FEDERAL, :TOT_FRETE_PROPRIO, :HORA, :VLR_VENDA_ANTE' +
        'RIOR, :FORNECEDOR, '
      '   :NDOCTO, :NOME_FORNECEDOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  PRODUTO,'
      '  NOME,'
      '  VLR_CAIXA,'
      '  VLR_EMBALAGEM,'
      '  VLR_COMPRA,'
      '  VLR_IPI,'
      '  VLR_FRETE_PROPRIO,'
      '  VLR_FRETE_TERCEIRO,'
      '  VLR_TRIBUTACAO_CREDITO,'
      '  VLR_OUTRAS_DESPESAS,'
      '  QUANTIDADE,'
      '  VLR_VENDA,'
      '  VLR_LUCRO,'
      '  VLR_CUSTO_TOTAL,'
      '  FECHADA,'
      '  VLR_RENTABILIDADE,'
      '  VLR_ICM_VENDA,'
      '  MARGEM_LUCRO,'
      '  TOT_FRETE_TERCEIRO,'
      '  TOT_ICM_CREDITO,'
      '  TOT_ICM_DEBITO,'
      '  TOT_RENTABILIDADE,'
      '  TOT_IPI,'
      '  TOT_DESP_OPERACIONAL,'
      '  TOT_DESP_FEDERAL,'
      '  TOT_FRETE_PROPRIO,'
      '  HORA,'
      '  VLR_VENDA_ANTERIOR,'
      '  FORNECEDOR,'
      '  NDOCTO,'
      '  NOME_FORNECEDOR'
      'from EST_ENTRADAS_MANUAL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select *'
      ' from EST_ENTRADAS_MANUAL'
      'WHERE CNPJ = :CNPJ'
      'Order by DATA, CODIGO')
    ModifySQL.Strings = (
      'update EST_ENTRADAS_MANUAL'
      'set'
      '  CNPJ = :CNPJ,'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  PRODUTO = :PRODUTO,'
      '  NOME = :NOME,'
      '  VLR_CAIXA = :VLR_CAIXA,'
      '  VLR_EMBALAGEM = :VLR_EMBALAGEM,'
      '  VLR_COMPRA = :VLR_COMPRA,'
      '  VLR_IPI = :VLR_IPI,'
      '  VLR_FRETE_PROPRIO = :VLR_FRETE_PROPRIO,'
      '  VLR_FRETE_TERCEIRO = :VLR_FRETE_TERCEIRO,'
      '  VLR_TRIBUTACAO_CREDITO = :VLR_TRIBUTACAO_CREDITO,'
      '  VLR_OUTRAS_DESPESAS = :VLR_OUTRAS_DESPESAS,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VLR_VENDA = :VLR_VENDA,'
      '  VLR_LUCRO = :VLR_LUCRO,'
      '  VLR_CUSTO_TOTAL = :VLR_CUSTO_TOTAL,'
      '  FECHADA = :FECHADA,'
      '  VLR_RENTABILIDADE = :VLR_RENTABILIDADE,'
      '  VLR_ICM_VENDA = :VLR_ICM_VENDA,'
      '  MARGEM_LUCRO = :MARGEM_LUCRO,'
      '  TOT_FRETE_TERCEIRO = :TOT_FRETE_TERCEIRO,'
      '  TOT_ICM_CREDITO = :TOT_ICM_CREDITO,'
      '  TOT_ICM_DEBITO = :TOT_ICM_DEBITO,'
      '  TOT_RENTABILIDADE = :TOT_RENTABILIDADE,'
      '  TOT_IPI = :TOT_IPI,'
      '  TOT_DESP_OPERACIONAL = :TOT_DESP_OPERACIONAL,'
      '  TOT_DESP_FEDERAL = :TOT_DESP_FEDERAL,'
      '  TOT_FRETE_PROPRIO = :TOT_FRETE_PROPRIO,'
      '  HORA = :HORA,'
      '  VLR_VENDA_ANTERIOR = :VLR_VENDA_ANTERIOR,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  NDOCTO = :NDOCTO,'
      '  NOME_FORNECEDOR = :NOME_FORNECEDOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 120
    Top = 296
    object Entradas_ManualCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_ENTRADAS_MANUAL"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Entradas_ManualCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_ENTRADAS_MANUAL"."CODIGO"'
      Required = True
    end
    object Entradas_ManualDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"EST_ENTRADAS_MANUAL"."DATA"'
      Required = True
    end
    object Entradas_ManualPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_ENTRADAS_MANUAL"."PRODUTO"'
      Required = True
      OnValidate = Entradas_ManualPRODUTOValidate
      Size = 15
    end
    object Entradas_ManualNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_ENTRADAS_MANUAL"."NOME"'
      Required = True
      Size = 50
    end
    object Entradas_ManualVLR_CAIXA: TFloatField
      FieldName = 'VLR_CAIXA'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_CAIXA"'
      DisplayFormat = '###,##0.00'
    end
    object Entradas_ManualVLR_EMBALAGEM: TFloatField
      FieldName = 'VLR_EMBALAGEM'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_EMBALAGEM"'
      OnValidate = Entradas_ManualVLR_EMBALAGEMValidate
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_COMPRA: TFloatField
      FieldName = 'VLR_COMPRA'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_COMPRA"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_IPI"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_FRETE_PROPRIO: TFloatField
      FieldName = 'VLR_FRETE_PROPRIO'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_FRETE_PROPRIO"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_FRETE_TERCEIRO: TFloatField
      FieldName = 'VLR_FRETE_TERCEIRO'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_FRETE_TERCEIRO"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_TRIBUTACAO_CREDITO: TFloatField
      FieldName = 'VLR_TRIBUTACAO_CREDITO'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_TRIBUTACAO_CREDITO"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_OUTRAS_DESPESAS: TFloatField
      FieldName = 'VLR_OUTRAS_DESPESAS'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_OUTRAS_DESPESAS"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"EST_ENTRADAS_MANUAL"."QUANTIDADE"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_VENDA: TFloatField
      FieldName = 'VLR_VENDA'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_VENDA"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_LUCRO: TFloatField
      FieldName = 'VLR_LUCRO'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_LUCRO"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_CUSTO_TOTAL: TFloatField
      FieldName = 'VLR_CUSTO_TOTAL'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_CUSTO_TOTAL"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"EST_ENTRADAS_MANUAL"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Entradas_ManualVLR_RENTABILIDADE: TFloatField
      FieldName = 'VLR_RENTABILIDADE'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_RENTABILIDADE"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualVLR_ICM_VENDA: TFloatField
      FieldName = 'VLR_ICM_VENDA'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_ICM_VENDA"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualMARGEM_LUCRO: TFloatField
      FieldName = 'MARGEM_LUCRO'
      Origin = '"EST_ENTRADAS_MANUAL"."MARGEM_LUCRO"'
      DisplayFormat = '###,##0.0000'
    end
    object Entradas_ManualIPI_UNITARIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IPI_UNITARIO'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualIcm_Deb_Unitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Icm_Deb_Unitario'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualIcm_Cred_Unitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Icm_Cred_Unitario'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualIcm_Total_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Icm_Total_Venda'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualDespesas_Totais: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Despesas_Totais'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualDespesas_Unitarias: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Despesas_Unitarias'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualTotal_Frete_Proprio: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Frete_Proprio'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualTotal_Frete_Terceiros: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Frete_Terceiros'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualOutras_Despesas_Unitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Outras_Despesas_Unitario'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualCusto_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Custo_Total'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualTotal_Classe: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Classe'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualTotal_Custo_Compra: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Custo_Compra'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualTotal_Valor_Venda: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Valor_Venda'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualLucro_Bruto: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lucro_Bruto'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualLucro_Unitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lucro_Unitario'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualLucro_Total: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lucro_Total'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualLucro_Minimo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lucro_Minimo'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualRentabilidade: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Rentabilidade'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualLucro_Liquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Lucro_Liquido'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualVLR_VENDA_CALCULADO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLR_VENDA_CALCULADO'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualDesp_Operacional: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Desp_Operacional'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualDesp_Federal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Desp_Federal'
      DisplayFormat = '###,##0.0000'
      Calculated = True
    end
    object Entradas_ManualTOT_FRETE_TERCEIRO: TFloatField
      FieldName = 'TOT_FRETE_TERCEIRO'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_FRETE_TERCEIRO"'
    end
    object Entradas_ManualTOT_ICM_CREDITO: TFloatField
      FieldName = 'TOT_ICM_CREDITO'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_ICM_CREDITO"'
    end
    object Entradas_ManualTOT_ICM_DEBITO: TFloatField
      FieldName = 'TOT_ICM_DEBITO'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_ICM_DEBITO"'
    end
    object Entradas_ManualTOT_RENTABILIDADE: TFloatField
      FieldName = 'TOT_RENTABILIDADE'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_RENTABILIDADE"'
    end
    object Entradas_ManualTOT_IPI: TFloatField
      FieldName = 'TOT_IPI'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_IPI"'
    end
    object Entradas_ManualTOT_DESP_OPERACIONAL: TFloatField
      FieldName = 'TOT_DESP_OPERACIONAL'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_DESP_OPERACIONAL"'
    end
    object Entradas_ManualTOT_DESP_FEDERAL: TFloatField
      FieldName = 'TOT_DESP_FEDERAL'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_DESP_FEDERAL"'
    end
    object Entradas_ManualTOT_FRETE_PROPRIO: TFloatField
      FieldName = 'TOT_FRETE_PROPRIO'
      Origin = '"EST_ENTRADAS_MANUAL"."TOT_FRETE_PROPRIO"'
    end
    object Entradas_ManualHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"EST_ENTRADAS_MANUAL"."HORA"'
    end
    object Entradas_ManualVLR_VENDA_ANTERIOR: TFloatField
      FieldName = 'VLR_VENDA_ANTERIOR'
      Origin = '"EST_ENTRADAS_MANUAL"."VLR_VENDA_ANTERIOR"'
      DisplayFormat = '###,##0.00'
    end
    object Entradas_ManualFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_ENTRADAS_MANUAL"."FORNECEDOR"'
      OnValidate = Entradas_ManualFORNECEDORValidate
    end
    object Entradas_ManualNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS_MANUAL"."NDOCTO"'
    end
    object Entradas_ManualNOME_FORNECEDOR: TIBStringField
      FieldName = 'NOME_FORNECEDOR'
      Origin = '"EST_ENTRADAS_MANUAL"."NOME_FORNECEDOR"'
      Size = 50
    end
  end
  object SelEntradasManual: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'select * from VER_EST_ENTRADAS_MANUAL'
      'Where CNPJ = :CNPJ')
    Left = 296
    Top = 256
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelEntradasManualCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object SelEntradasManualCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd'
      FieldName = 'CODIGO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."CODIGO"'
    end
    object SelEntradasManualGRUPO: TIntegerField
      DisplayLabel = 'Grp'
      FieldName = 'GRUPO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."GRUPO"'
    end
    object SelEntradasManualNOME_GRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."NOME_GRUPO"'
      Size = 50
    end
    object SelEntradasManualDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."DATA"'
    end
    object SelEntradasManualPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."PRODUTO"'
      Size = 15
    end
    object SelEntradasManualNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."NOME"'
      Size = 50
    end
    object SelEntradasManualVLR_CAIXA: TIBBCDField
      DisplayLabel = 'Vlr Caixa'
      FieldName = 'VLR_CAIXA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_CAIXA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_EMBALAGEM: TIBBCDField
      DisplayLabel = 'Vlr Embalagem'
      FieldName = 'VLR_EMBALAGEM'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_EMBALAGEM"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_COMPRA: TIBBCDField
      DisplayLabel = 'Vlr Compra'
      FieldName = 'VLR_COMPRA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_COMPRA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_IPI: TIBBCDField
      DisplayLabel = 'Vlr Ipi'
      FieldName = 'VLR_IPI'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_IPI"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_FRETE_PROPRIO: TIBBCDField
      DisplayLabel = 'Vlr Frete Pr'#243'prio'
      FieldName = 'VLR_FRETE_PROPRIO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_FRETE_PROPRIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_FRETE_TERCEIRO: TIBBCDField
      DisplayLabel = 'Vrl Frete Terceiro'
      FieldName = 'VLR_FRETE_TERCEIRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_FRETE_TERCEIRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_TRIBUTACAO_CREDITO: TIBBCDField
      DisplayLabel = 'Icm Cr'#233'dito'
      FieldName = 'VLR_TRIBUTACAO_CREDITO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_TRIBUTACAO_CREDITO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_OUTRAS_DESPESAS: TIBBCDField
      DisplayLabel = 'Outras Despesas'
      FieldName = 'VLR_OUTRAS_DESPESAS'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_OUTRAS_DESPESAS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_VENDA: TIBBCDField
      DisplayLabel = 'Vlr Venda'
      FieldName = 'VLR_VENDA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_VENDA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_LUCRO: TIBBCDField
      DisplayLabel = 'Vlr Lucro'
      FieldName = 'VLR_LUCRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_LUCRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_CUSTO_TOTAL: TIBBCDField
      DisplayLabel = 'Custo Total'
      FieldName = 'VLR_CUSTO_TOTAL'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_CUSTO_TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualFECHADA: TIBStringField
      DisplayLabel = 'Fec'
      FieldName = 'FECHADA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object SelEntradasManualVLR_RENTABILIDADE: TIBBCDField
      DisplayLabel = 'Vlr Rentabilidade'
      FieldName = 'VLR_RENTABILIDADE'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_RENTABILIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualVLR_ICM_VENDA: TIBBCDField
      DisplayLabel = 'Vlr Icm Venda'
      FieldName = 'VLR_ICM_VENDA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_ICM_VENDA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualMARGEM_LUCRO: TIBBCDField
      DisplayLabel = 'Margem Lucro'
      FieldName = 'MARGEM_LUCRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."MARGEM_LUCRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_FRETE_TERCEIRO: TIBBCDField
      DisplayLabel = 'Frete Terc'
      FieldName = 'TOT_FRETE_TERCEIRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_FRETE_TERCEIRO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_ICM_CREDITO: TIBBCDField
      DisplayLabel = 'Icm Cr'#233'dito'
      FieldName = 'TOT_ICM_CREDITO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_ICM_CREDITO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_ICM_DEBITO: TIBBCDField
      DisplayLabel = 'Icm D'#233'bito'
      FieldName = 'TOT_ICM_DEBITO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_ICM_DEBITO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_RENTABILIDADE: TIBBCDField
      DisplayLabel = 'Rentabilidade'
      FieldName = 'TOT_RENTABILIDADE'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_RENTABILIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_IPI: TIBBCDField
      DisplayLabel = 'Ipi'
      FieldName = 'TOT_IPI'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_IPI"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_DESP_OPERACIONAL: TIBBCDField
      DisplayLabel = 'Desp Operacinal'
      FieldName = 'TOT_DESP_OPERACIONAL'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_DESP_OPERACIONAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_DESP_FEDERAL: TIBBCDField
      DisplayLabel = 'Desp Federal'
      FieldName = 'TOT_DESP_FEDERAL'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_DESP_FEDERAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualTOT_FRETE_PROPRIO: TIBBCDField
      DisplayLabel = 'Frete Pr'#243'pio'
      FieldName = 'TOT_FRETE_PROPRIO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_FRETE_PROPRIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualHORA: TTimeField
      DisplayLabel = 'Hora'
      FieldName = 'HORA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."HORA"'
    end
    object SelEntradasManualVLR_VENDA_ANTERIOR: TIBBCDField
      DisplayLabel = 'Venda Ant'
      FieldName = 'VLR_VENDA_ANTERIOR'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_VENDA_ANTERIOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object SelEntradasManualFORNECEDOR: TIntegerField
      DisplayLabel = 'Forn'
      FieldName = 'FORNECEDOR'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."FORNECEDOR"'
    end
    object SelEntradasManualNDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'NDOCTO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."NDOCTO"'
    end
  end
  object SelReducao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select'
      '           PERC_ESTADUAL,'
      '           PERC_INTERESTADUAL,'
      '           MENSAGEM_NF,'
      '           MENSAGEM_NF_IE,'
      '           PERC_CONTRIBUINTE'
      'from VER_REDUCOES'
      '( :CNPJ, :CODIGO )')
    Left = 207
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
    object SelReducaoPERC_ESTADUAL: TIBBCDField
      FieldName = 'PERC_ESTADUAL'
      Origin = '"VER_REDUCOES"."PERC_ESTADUAL"'
      Precision = 18
      Size = 4
    end
    object SelReducaoPERC_INTERESTADUAL: TIBBCDField
      FieldName = 'PERC_INTERESTADUAL'
      Origin = '"VER_REDUCOES"."PERC_INTERESTADUAL"'
      Precision = 18
      Size = 4
    end
    object SelReducaoMENSAGEM_NF: TIBStringField
      FieldName = 'MENSAGEM_NF'
      Origin = '"VER_REDUCOES"."MENSAGEM_NF"'
      Size = 80
    end
    object SelReducaoMENSAGEM_NF_IE: TIBStringField
      FieldName = 'MENSAGEM_NF_IE'
      Origin = '"VER_REDUCOES"."MENSAGEM_NF_IE"'
      Size = 80
    end
    object SelReducaoPERC_CONTRIBUINTE: TIBBCDField
      FieldName = 'PERC_CONTRIBUINTE'
      Origin = '"VER_REDUCOES"."PERC_CONTRIBUINTE"'
      Precision = 18
      Size = 4
    end
  end
  object qProdFracionado: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select prd.vende_fracionado'
      'from est_produtos prd'
      'where prd.CNPJ = :CNPJ and prd.codigo = :produto')
    Left = 208
    Top = 296
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end>
    object qProdFracionadoVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"EST_PRODUTOS"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object Produtos_Lotes: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = Produtos_LotesBeforeOpen
    OnNewRecord = Produtos_LotesNewRecord
    DeleteSQL.Strings = (
      'delete from EST_ENTRADAS_ITENS_LOTES'
      'where'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into EST_ENTRADAS_ITENS_LOTES'
      '  (CODIGO, CNPJ, NDOCTO, PESSOA_FJ, PRODUTO, LOTE, QUANTIDADE, '
      'ORDEM)'
      'values'
      
        '  (:CODIGO, :CNPJ, :NDOCTO, :PESSOA_FJ, :PRODUTO, :LOTE, :QUANTI' +
        'DADE, '
      ':ORDEM)')
    RefreshSQL.Strings = (
      
        'select ltp.*, lt.germinacao, lt.lote nome_lote, lt.peneira, lt.p' +
        'eso, lt.pureza, lt.validade '
      'data_validade, lt.atestado'
      'from EST_ENTRADAS_ITENS_LOTES ltp'
      
        'inner join EST_LOTE_PRODUTO lt on (lt.cnpj = ltp.cnpj and lt.cod' +
        'igo = ltp.lote)'
      'where'
      '  ltp.CODIGO = :CODIGO')
    SelectSQL.Strings = (
      
        'select ltp.*, lt.germinacao, lt.lote nome_lote, lt.peneira, lt.p' +
        'eso, lt.pureza, lt.validade data_validade, lt.atestado'
      'from EST_ENTRADAS_ITENS_LOTES ltp'
      
        'inner join EST_LOTE_PRODUTO lt on (lt.cnpj = ltp.cnpj and lt.cod' +
        'igo = ltp.lote)'
      
        'where ltp.cnpj = :cnpj and ltp.produto = :produto and ltp.pessoa' +
        '_fj = :pessoa and ltp.ndocto = :ndocto'
      'order by ltp.lote')
    ModifySQL.Strings = (
      'update EST_ENTRADAS_ITENS_LOTES'
      'set'
      '  CODIGO = :CODIGO,'
      '  CNPJ = :CNPJ,'
      '  NDOCTO = :NDOCTO,'
      '  PESSOA_FJ = :PESSOA_FJ,'
      '  PRODUTO = :PRODUTO,'
      '  LOTE = :LOTE,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  ORDEM = :ORDEM'
      'where'
      '  CODIGO = :OLD_CODIGO')
    DataSource = DsEntradas_Itens
    Left = 304
    Top = 309
    object Produtos_LotesCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."CODIGO"'
      ReadOnly = True
    end
    object Produtos_LotesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Produtos_LotesNDOCTO: TIBStringField
      DisplayLabel = 'N'#186' Docto'
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."NDOCTO"'
      Required = True
    end
    object Produtos_LotesPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."PESSOA_FJ"'
      Required = True
    end
    object Produtos_LotesPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Produtos_LotesLOTE: TIntegerField
      DisplayLabel = 'C'#243'd. Lote'
      FieldName = 'LOTE'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."LOTE"'
      ReadOnly = True
      Required = True
    end
    object Produtos_LotesQUANTIDADE: TFloatField
      DisplayLabel = 'Quantidade'
      FieldName = 'QUANTIDADE'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
    object Produtos_LotesORDEM: TIntegerField
      DisplayLabel = 'Ordem'
      FieldName = 'ORDEM'
      Origin = '"EST_ENTRADAS_ITENS_LOTES"."ORDEM"'
    end
    object Produtos_LotesGERMINACAO: TFloatField
      DisplayLabel = 'Germina'#231#227'o'
      FieldName = 'GERMINACAO'
      Origin = '"EST_LOTE_PRODUTO"."GERMINACAO"'
    end
    object Produtos_LotesNOME_LOTE: TIBStringField
      DisplayLabel = 'Lote'
      FieldName = 'NOME_LOTE'
      Origin = '"EST_LOTE_PRODUTO"."LOTE"'
      ReadOnly = True
      Size = 10
    end
    object Produtos_LotesPENEIRA: TIBStringField
      DisplayLabel = 'Peneira'
      FieldName = 'PENEIRA'
      Origin = '"EST_LOTE_PRODUTO"."PENEIRA"'
      ReadOnly = True
      Size = 10
    end
    object Produtos_LotesPESO: TFloatField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"EST_LOTE_PRODUTO"."PESO"'
    end
    object Produtos_LotesPUREZA: TFloatField
      DisplayLabel = 'Pureza'
      FieldName = 'PUREZA'
      Origin = '"EST_LOTE_PRODUTO"."PUREZA"'
    end
    object Produtos_LotesDATA_VALIDADE: TDateTimeField
      DisplayLabel = 'Dt. Validade'
      FieldName = 'DATA_VALIDADE'
      Origin = '"EST_LOTE_PRODUTO"."VALIDADE"'
    end
    object Produtos_LotesATESTADO: TIBStringField
      DisplayLabel = 'Atestado'
      FieldName = 'ATESTADO'
      Origin = '"EST_LOTE_PRODUTO"."ATESTADO"'
      Size = 6
    end
  end
  object Lista_Lotes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from EST_LOTE_PRODUTO lt'
      'where cnpj = :cnpj and lt.produto = :produto'
      'order by lt.validade')
    Left = 32
    Top = 347
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
    object Lista_LotesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_LOTE_PRODUTO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object Lista_LotesPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_LOTE_PRODUTO"."PRODUTO"'
      Required = True
      Size = 15
    end
    object Lista_LotesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_LOTE_PRODUTO"."CODIGO"'
      Required = True
    end
    object Lista_LotesLOTE: TIBStringField
      FieldName = 'LOTE'
      Origin = '"EST_LOTE_PRODUTO"."LOTE"'
      Required = True
      Size = 10
    end
    object Lista_LotesESTOQUE: TFloatField
      FieldName = 'ESTOQUE'
      Origin = '"EST_LOTE_PRODUTO"."ESTOQUE"'
    end
    object Lista_LotesPENEIRA: TIBStringField
      FieldName = 'PENEIRA'
      Origin = '"EST_LOTE_PRODUTO"."PENEIRA"'
      Size = 10
    end
    object Lista_LotesATESTADO: TIBStringField
      FieldName = 'ATESTADO'
      Origin = '"EST_LOTE_PRODUTO"."ATESTADO"'
      Size = 6
    end
    object Lista_LotesGERMINACAO: TFloatField
      FieldName = 'GERMINACAO'
      Origin = '"EST_LOTE_PRODUTO"."GERMINACAO"'
    end
    object Lista_LotesPUREZA: TFloatField
      FieldName = 'PUREZA'
      Origin = '"EST_LOTE_PRODUTO"."PUREZA"'
    end
    object Lista_LotesVALIDADE: TDateTimeField
      FieldName = 'VALIDADE'
      Origin = '"EST_LOTE_PRODUTO"."VALIDADE"'
    end
    object Lista_LotesDT_ULTIMA_COMPRA: TDateTimeField
      FieldName = 'DT_ULTIMA_COMPRA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_COMPRA"'
    end
    object Lista_LotesDT_ULTIMA_VENDA: TDateTimeField
      FieldName = 'DT_ULTIMA_VENDA'
      Origin = '"EST_LOTE_PRODUTO"."DT_ULTIMA_VENDA"'
    end
    object Lista_LotesPESO: TFloatField
      FieldName = 'PESO'
      Origin = '"EST_LOTE_PRODUTO"."PESO"'
    end
  end
  object ApagaParcelas: TIBSQL
    Database = DmApp.Database
    SQL.Strings = (
      
        'delete from est_entradas_faturamento where cnpj = :cnpj and pess' +
        'oa_fj = :pessoa_fj and ndocto = :ndocto')
    Transaction = DmApp.Transaction
    Left = 120
    Top = 344
  end
  object UndConversao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    DataSource = DsUnidade
    SQL.Strings = (
      'select cv.qtde, cv.fator from est_conversao_unid_med cv'
      
        'where cv.cnpj = :cnpj and cv.cod_und_padrao = :und_padrao and cv' +
        '.cod_und_conversao = :und_conversao')
    Left = 208
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'und_padrao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'und_conversao'
        ParamType = ptUnknown
      end>
    object UndConversaoQTDE: TFloatField
      FieldName = 'QTDE'
      Origin = '"EST_CONVERSAO_UNID_MED"."QTDE"'
    end
    object UndConversaoFATOR: TIntegerField
      FieldName = 'FATOR'
      Origin = '"EST_CONVERSAO_UNID_MED"."FATOR"'
    end
  end
  object QryValidaProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = EntradasAfterClose
    BeforeOpen = SelFornecedorBeforeOpen
    SQL.Strings = (
      'select * from Valida_Produto(:cnpj,:produto,:vendedor)')
    Left = 328
    Top = 368
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end>
    object QryValidaProdutoPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VALIDA_PRODUTO"."PRC_REPOS"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoVALIDA_MULT_QTDE_MIN: TIBStringField
      FieldName = 'VALIDA_MULT_QTDE_MIN'
      Origin = '"VALIDA_PRODUTO"."VALIDA_MULT_QTDE_MIN"'
      FixedChar = True
      Size = 1
    end
    object QryValidaProdutoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VALIDA_PRODUTO"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VALIDA_PRODUTO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"VALIDA_PRODUTO"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VALIDA_PRODUTO"."UNIDADE"'
      Size = 4
    end
    object QryValidaProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VALIDA_PRODUTO"."NOME"'
      Size = 50
    end
    object QryValidaProdutoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"VALIDA_PRODUTO"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryValidaProdutoALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"VALIDA_PRODUTO"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object QryValidaProdutoQTDADE_1: TIBBCDField
      FieldName = 'QTDADE_1'
      Origin = '"VALIDA_PRODUTO"."QTDADE_1"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."QTDADE_2"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"VALIDA_PRODUTO"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object QryValidaProdutoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VALIDA_PRODUTO"."SUBUNIDADE"'
    end
    object QryValidaProdutoCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object QryValidaProdutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VALIDA_PRODUTO"."ORIGEM"'
    end
    object QryValidaProdutoCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VALIDA_PRODUTO"."CTE"'
    end
    object QryValidaProdutoCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VALIDA_PRODUTO"."CTIE"'
    end
    object QryValidaProdutoREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VALIDA_PRODUTO"."REDUCAO"'
    end
    object QryValidaProdutoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VALIDA_PRODUTO"."IPI"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoVENDE_FRACIONADO: TIBStringField
      FieldName = 'VENDE_FRACIONADO'
      Origin = '"VALIDA_PRODUTO"."VENDE_FRACIONADO"'
      FixedChar = True
      Size = 1
    end
    object QryValidaProdutoPOSSUI_LOTE: TIBStringField
      FieldName = 'POSSUI_LOTE'
      Origin = '"VALIDA_PRODUTO"."POSSUI_LOTE"'
      FixedChar = True
      Size = 1
    end
    object QryValidaProdutoMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"VALIDA_PRODUTO"."MARCA"'
      Size = 50
    end
    object QryValidaProdutoMARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"VALIDA_PRODUTO"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoQTDADE_CONVERSAO: TIBBCDField
      FieldName = 'QTDADE_CONVERSAO'
      Origin = '"VALIDA_PRODUTO"."QTDADE_CONVERSAO"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoSERVICO: TIBStringField
      FieldName = 'SERVICO'
      Origin = '"VALIDA_PRODUTO"."SERVICO"'
      FixedChar = True
      Size = 1
    end
    object QryValidaProdutoSECUNDARIO: TIBStringField
      FieldName = 'SECUNDARIO'
      Origin = '"VALIDA_PRODUTO"."SECUNDARIO"'
      Size = 15
    end
    object QryValidaProdutoCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VALIDA_PRODUTO"."COMPLEMENTO"'
      Size = 100
    end
    object QryValidaProdutoPERC_FRETE: TIBBCDField
      FieldName = 'PERC_FRETE'
      Origin = '"VALIDA_PRODUTO"."PERC_FRETE"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoQNTDE_MINIMA_VENDA: TIBBCDField
      FieldName = 'QNTDE_MINIMA_VENDA'
      Origin = '"VALIDA_PRODUTO"."QNTDE_MINIMA_VENDA"'
      Precision = 18
      Size = 4
    end
    object QryValidaProdutoUND_PRIMARIA: TIBStringField
      FieldName = 'UND_PRIMARIA'
      Origin = '"VALIDA_PRODUTO"."UND_PRIMARIA"'
      FixedChar = True
      Size = 4
    end
    object QryValidaProdutoFATOR_CONVERSAO: TFloatField
      FieldName = 'FATOR_CONVERSAO'
      Origin = '"VALIDA_PRODUTO"."FATOR_CONVERSAO"'
    end
  end
  object QryAux: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 119
    Top = 397
  end
end
