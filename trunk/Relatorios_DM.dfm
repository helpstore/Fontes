object DMRelatorios: TDMRelatorios
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 1
  Height = 728
  Width = 1278
  object SelProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = SelProdutosBeforeOpen
    OnCalcFields = SelProdutosCalcFields
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME '
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 109
    Top = 607
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelProdutosCODIGO: TIBStringField
      DisplayWidth = 15
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object SelProdutosNOME: TIBStringField
      DisplayWidth = 50
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelProdutos_Cod_Nome: TStringField
      DisplayWidth = 66
      FieldKind = fkCalculated
      FieldName = '_Cod_Nome'
      Size = 65
      Calculated = True
    end
  end
  object ListaPrecos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    NOME ,'
      '    UNIDADE,'
      '    NOME_GRUPO ,'
      '    CODIGO_G ,'
      '    SUBGRUPO ,'
      '    NOME_SUBGRUPO ,'
      '    SUBUNIDADE ,'
      '    QTDADE_2 ,'
      '    PRC_REPOS ,'
      '    PRC_CUSTO_MED ,'
      '    PRC_VENDA '
      'from VER_PRODUTO_GRUPO ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV )'
      'ORDER BY NOME_GRUPO, NOME_SUBGRUPO, NOME')
    Left = 167
    Top = 6
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GRUPO_INI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GRUPO_FIM'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end>
    object ListaPrecosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO"'
      Size = 15
    end
    object ListaPrecosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_PRODUTO_GRUPO"."NOME"'
      Size = 50
    end
    object ListaPrecosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_PRODUTO_GRUPO"."UNIDADE"'
      Size = 5
    end
    object ListaPrecosNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."NOME_GRUPO"'
      Size = 50
    end
    object ListaPrecosCODIGO_G: TIntegerField
      FieldName = 'CODIGO_G'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO_G"'
    end
    object ListaPrecosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."SUBGRUPO"'
    end
    object ListaPrecosNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."NOME_SUBGRUPO"'
      Size = 50
    end
    object ListaPrecosSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_PRODUTO_GRUPO"."SUBUNIDADE"'
    end
    object ListaPrecosQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VER_PRODUTO_GRUPO"."QTDADE_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaPrecosPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaPrecosPRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_CUSTO_MED"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaPrecosPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SelGrupo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME ,'
      '               SELECIONADO'
      'FROM EST_GRUPOS'
      'WHERE CNPJ = :CNPJ '
      '--ORDER BY NOME')
    Left = 626
    Top = 451
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"EST_GRUPOS"."CODIGO"'
      Required = True
    end
    object SelGrupoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_GRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelGrupoSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"EST_GRUPOS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object ListaPrecosAZ: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select  p.codigo codigo, '
      '               p.nome, '
      '               p.unidade, '
      '               p.prc_venda,'
      '               mrc.nome marca,'
      '               grp.nome grupo, '
      '               sgrp.nome sgrupo'
      'from est_produtos p'
      
        'left join est_marcas mrc on (p.marca = mrc.codigo and mrc.cnpj =' +
        ' p.cnpj)'
      
        'left join est_grupos grp on (p.grupo = grp.codigo and grp.cnpj =' +
        ' p.cnpj)'
      
        'left join est_subgrupos sgrp on (grp.codigo = sgrp.grupo and sgr' +
        'p.subgrupo = p.subgrupo and sgrp.cnpj = grp.cnpj)'
      'where p.cnpj = :cnpj and  ativo = :atv'
      'order by p.nome')
    Left = 274
    Top = 6
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end>
    object ListaPrecosAZCODIGO: TIBStringField
      DisplayWidth = 15
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object ListaPrecosAZNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object ListaPrecosAZUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object ListaPrecosAZPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
      DisplayFormat = '#,##0.00'
    end
    object ListaPrecosAZMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"EST_MARCAS"."NOME"'
      Required = True
      Size = 50
    end
    object ListaPrecosAZGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"EST_GRUPOS"."NOME"'
      Size = 50
    end
    object ListaPrecosAZSGRUPO: TIBStringField
      FieldName = 'SGRUPO'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Size = 50
    end
  end
  object ListaSimp: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT G.CODIGO CODIGO_G,'
      '               G.NOME NOME_GRUPO,'
      '               SG.SUBGRUPO,'
      '               SG.NOME NOME_SUBGRUPO,'
      '               P.CODIGO CODIGO_P, '
      '               P.NOME NOME_PRODUTO, '
      '               P.QTDADE_2'
      'FROM EST_PRODUTOS P'
      '           INNER JOIN EST_GRUPOS G'
      '           ON (G.CNPJ = P.CNPJ AND'
      '                  G.CODIGO = P.GRUPO)'
      '           INNER JOIN EST_SUBGRUPOS SG'
      '           ON (SG.CNPJ = P.CNPJ AND'
      '                   SG.GRUPO = P.GRUPO AND'
      '                   SG.SUBGRUPO = P.SUBGRUPO)'
      'WHERE P.CNPJ = :CNPJ AND P.ATIVO = :ATV'
      'AND G.NOME >= :GRUPO_INI AND G.NOME <= :GRUPO_FIM'
      'ORDER BY G.NOME, SG.NOME, P.NOME')
    Left = 274
    Top = 55
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'GRUPO_INI'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'GRUPO_FIM'
        ParamType = ptInput
      end>
    object ListaSimpCODIGO_G: TIntegerField
      FieldName = 'CODIGO_G'
      Origin = '"EST_GRUPOS"."CODIGO"'
      Required = True
    end
    object ListaSimpNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"EST_GRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object ListaSimpSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      Required = True
    end
    object ListaSimpNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object ListaSimpCODIGO_P: TIBStringField
      DisplayWidth = 15
      FieldName = 'CODIGO_P'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object ListaSimpNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object ListaSimpQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
      DisplayFormat = '#,##0.00'
    end
  end
  object PosicaoEstoque: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = PosicaoEstoqueCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    CODIGO_INTERNO,'
      '    CUSTO_AQUISICAO,'
      '    NOME ,'
      '    UNIDADE,'
      '    NOME_GRUPO ,'
      '    CODIGO_G ,'
      '    SUBGRUPO ,'
      '    NOME_SUBGRUPO ,'
      '    SUBUNIDADE ,'
      '    QTDADE_2 ,'
      '    PRC_REPOS ,'
      '    PRC_CUSTO_MED ,'
      '    PRC_VENDA '
      'from VER_PRODUTO_GRUPO ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV )'
      'ORDER BY NOME_GRUPO, NOME_SUBGRUPO, NOME')
    Left = 575
    Top = 607
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end>
    object PosicaoEstoquePRC_CUSTO_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_CUSTO_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object PosicaoEstoquePRC_VENDA_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_VENDA_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object PosicaoEstoqueMARGEM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARGEM'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object PosicaoEstoqueCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO"'
      Size = 15
    end
    object PosicaoEstoqueNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_PRODUTO_GRUPO"."NOME"'
      Size = 50
    end
    object PosicaoEstoqueUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_PRODUTO_GRUPO"."UNIDADE"'
      Size = 5
    end
    object PosicaoEstoqueNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."NOME_GRUPO"'
      Size = 50
    end
    object PosicaoEstoqueCODIGO_G: TIntegerField
      FieldName = 'CODIGO_G'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO_G"'
    end
    object PosicaoEstoqueSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."SUBGRUPO"'
    end
    object PosicaoEstoqueNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."NOME_SUBGRUPO"'
      Size = 50
    end
    object PosicaoEstoqueSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_PRODUTO_GRUPO"."SUBUNIDADE"'
    end
    object PosicaoEstoqueQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VER_PRODUTO_GRUPO"."QTDADE_2"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoquePRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_REPOS"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoquePRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_CUSTO_MED"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoquePRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_VENDA"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoqueCODIGO_INTERNO: TIntegerField
      DisplayLabel = 'C'#243'digo Intenro'
      FieldName = 'CODIGO_INTERNO'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO_INTERNO"'
    end
    object PosicaoEstoqueCUSTO_AQUISICAO: TIBBCDField
      DisplayLabel = 'Custo Aquisi'#231#227'o'
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"VER_PRODUTO_GRUPO"."CUSTO_AQUISICAO"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object FisicaFinan: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = FisicaFinanCalcFields
    SQL.Strings = (
      'select'
      '    NOME_GRUP0 ,'
      '    NOME_SUBGRUPO ,'
      '    QTDADE ,'
      '    T_REPOS ,'
      '    T_CUSTO_MED ,'
      '    T_VENDA '
      
        'from VER_FISICA_FINANCEIRA ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV' +
        ' )')
    Left = 213
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end>
    object FisicaFinanNOME_GRUP0: TIBStringField
      FieldName = 'NOME_GRUP0'
      Origin = '"VER_FISICA_FINANCEIRA"."NOME_GRUP0"'
      Size = 50
    end
    object FisicaFinanNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_FISICA_FINANCEIRA"."NOME_SUBGRUPO"'
      Size = 50
    end
    object FisicaFinanQTDADE: TIBBCDField
      FieldName = 'QTDADE'
      Origin = '"VER_FISICA_FINANCEIRA"."QTDADE"'
      Precision = 18
      Size = 4
    end
    object FisicaFinanT_REPOS: TIBBCDField
      FieldName = 'T_REPOS'
      Origin = '"VER_FISICA_FINANCEIRA"."T_REPOS"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object FisicaFinanT_CUSTO_MED: TIBBCDField
      FieldName = 'T_CUSTO_MED'
      Origin = '"VER_FISICA_FINANCEIRA"."T_CUSTO_MED"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object FisicaFinanT_VENDA: TIBBCDField
      FieldName = 'T_VENDA'
      Origin = '"VER_FISICA_FINANCEIRA"."T_VENDA"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object FisicaFinanMargem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Margem'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object Entradas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = EntradasCalcFields
    SQL.Strings = (
      'SELECT NDOCTO, '
      '               NDOCTOINT,'
      '               PESSOA_FJ, '
      '               NOME_RAZAO,'
      '               DATA_NF, '
      '               NATUREZA,'
      '               DATA_REF, '
      '               DATA_ENT, '
      '               SERIE_NF, '
      '               TAXAS, '
      '               VLR_EMBALAGEM, '
      '               VLR_FRETE, '
      '               VLR_DESCONTO, '
      '               VLR_SEGURO,'
      '               VLR_BC_ICM, '
      '               PERC_ICM,'
      '               VLR_ICM, '
      '               VLR_IPI,'
      '               VLR_ICM_SUBS,'
      '               FRETE_LF ,'
      '               VLR_PRODUTOS'
      'FROM VER_EST_ENTRADAS_CONFERENTE '
      '( :CNPJ, :DT_INICIAL, :DT_FINAL )')
    Left = 109
    Top = 100
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftDate
        Name = 'DT_FINAL'
        ParamType = ptInput
      end>
    object EntradasNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS"."NDOCTO"'
      Required = True
    end
    object EntradasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"EST_ENTRADAS"."PESSOA_FJ"'
      Required = True
    end
    object EntradasNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object EntradasDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
      Origin = '"EST_ENTRADAS"."DATA_NF"'
    end
    object EntradasDATA_REF: TDateTimeField
      FieldName = 'DATA_REF'
      Origin = '"EST_ENTRADAS"."DATA_REF"'
    end
    object EntradasDATA_ENT: TDateTimeField
      FieldName = 'DATA_ENT'
      Origin = '"EST_ENTRADAS"."DATA_ENT"'
    end
    object EntradasSERIE_NF: TIBStringField
      FieldName = 'SERIE_NF'
      Origin = '"EST_ENTRADAS"."SERIE_NF"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object EntradasTAXAS: TFloatField
      FieldName = 'TAXAS'
      Origin = '"EST_ENTRADAS"."TAXAS"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_EMBALAGEM: TFloatField
      FieldName = 'VLR_EMBALAGEM'
      Origin = '"EST_ENTRADAS"."VLR_EMBALAGEM"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      Origin = '"EST_ENTRADAS"."VLR_FRETE"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      Origin = '"EST_ENTRADAS"."VLR_DESCONTO"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      Origin = '"EST_ENTRADAS"."VLR_SEGURO"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_BC_ICM: TFloatField
      FieldName = 'VLR_BC_ICM'
      Origin = '"EST_ENTRADAS"."VLR_BC_ICM"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasPERC_ICM: TFloatField
      FieldName = 'PERC_ICM'
      Origin = '"EST_ENTRADAS"."PERC_ICM"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_ICM: TFloatField
      FieldName = 'VLR_ICM'
      Origin = '"EST_ENTRADAS"."VLR_ICM"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasVLR_ICM_SUBS: TFloatField
      FieldName = 'VLR_ICM_SUBS'
      Origin = '"EST_ENTRADAS"."VLR_ICM_SUBS"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"EST_ENTRADAS"."NATUREZA"'
      Required = True
    end
    object EntradasVLR_IPI: TFloatField
      DisplayLabel = 'Ipi'
      FieldName = 'VLR_IPI'
      Origin = '"EST_ENTRADAS"."VLR_IPI"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasNDOCTOINT: TIntegerField
      FieldName = 'NDOCTOINT'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."NDOCTOINT"'
    end
    object EntradasVLR_TOTAL_NF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLR_TOTAL_NF'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasFRETE_LF: TIBStringField
      FieldName = 'FRETE_LF'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."FRETE_LF"'
      FixedChar = True
      Size = 1
    end
    object EntradasVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
      Origin = '"VER_EST_ENTRADAS_CONFERENTE"."VLR_PRODUTOS"'
    end
    object EntradasNDOCTOINT2: TIntegerField
      FieldKind = fkCalculated
      FieldName = 'NDOCTOINT2'
      Calculated = True
    end
  end
  object EntradasItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = EntradasItensCalcFields
    DataSource = dsEntradas
    SQL.Strings = (
      'SELECT PRODUTO,'
      '               NOME_PRODUTO, '
      '               QUANTIDADE, '
      '               PRC_UNITARIO, '
      '               PRC_VENDA,'
      '               IPI ,'
      '               DESCONTOS,'
      '               FRETE'
      'FROM VER_EST_ENT_ITENS_CONF '
      '(  :CNPJ, :NDOCTO,  :PESSOA_FJ )'
      'ORDER BY ORDEM, NOME_PRODUTO')
    Left = 274
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NDOCTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object EntradasItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"EST_ENTRADAS_ITENS"."PRODUTO"'
      Required = True
      Size = 15
    end
    object EntradasItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object EntradasItensQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"EST_ENTRADAS_ITENS"."QUANTIDADE"'
      Required = True
      DisplayFormat = '#,##0.00'
    end
    object EntradasItensPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_UNITARIO"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasItensPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_VENDA"'
      DisplayFormat = '#,##0.0000'
    end
    object EntradasItensCUSTO_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CUSTO_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = '"EST_ENTRADAS_ITENS"."IPI"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasItensIPI_UNITARIO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IPI_UNITARIO'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasItensIPI_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'IPI_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasItensPERC_DIF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PERC_DIF'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object EntradasItensDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"EST_ENTRADAS_ITENS"."DESCONTOS"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasItensFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = '"EST_ENTRADAS_ITENS"."FRETE"'
      DisplayFormat = '#,##0.00'
    end
    object EntradasItensCustoUnitario: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CustoUnitario'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object EntradasFat: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    DataSource = dsEntradas
    SQL.Strings = (
      'SELECT EF.PARCELA, '
      '               EF.DT_VENCTO, '
      '               EF.VALOR '
      'FROM EST_ENTRADAS_FATURAMENTO EF'
      'WHERE EF.CNPJ = :CNPJ AND'
      '               EF.NDOCTO = :NDOCTO AND'
      '               EF.PESSOA_FJ = :PESSOA_FJ'
      'ORDER BY EF.PARCELA, EF.DT_VENCTO')
    Left = 340
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NDOCTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end>
    object EntradasFatPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."PARCELA"'
      Required = True
      Size = 6
    end
    object EntradasFatDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."DT_VENCTO"'
    end
    object EntradasFatVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"EST_ENTRADAS_FATURAMENTO"."VALOR"'
      DisplayFormat = '#,##0.00'
    end
  end
  object dsEntradas: TDataSource
    AutoEdit = False
    DataSet = Entradas
    Left = 167
    Top = 100
  end
  object SelFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT F.PESSOA_FJ,'
      '               P.NOME_RAZAO'
      'FROM GLO_FORNECEDORES F'
      '            INNER JOIN GLO_PESSOAS_FJ P'
      '            ON (P.CNPJ = F.CNPJ AND'
      '                   P.CODIGO = F.PESSOA_FJ)'
      'WHERE F.CNPJ = :CNPJ'
      'ORDER BY P.NOME_RAZAO')
    Left = 221
    Top = 259
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelFornecedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      Required = True
    end
    object SelFornecedorNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
  end
  object FornecedoresAlf: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT F.CNPJ,'
      '               F.PESSOA_FJ,'
      '               P.NOME_RAZAO,'
      '               L.NOME ENDERECO,'
      '               P.NUMERO,'
      '               P.COMPLEMENTO,'
      '               B.NOME BAIRRO,'
      '               CD.NOME || '#39'/'#39' || CD.UF CIDADE,'
      '               P.CEP,'
      '               P.CPF_CGC,'
      '               P.RG_IE,'
      '               P.FONE,'
      '               P.FAX,'
      '               P.CELULAR,'
      '               P.EMAIL'
      'FROM GLO_FORNECEDORES F INNER JOIN GLO_PESSOAS_FJ P'
      '           ON (P.CNPJ = F.CNPJ AND'
      '                  P.CODIGO = F.PESSOA_FJ)'
      '           LEFT JOIN GLO_LOGRADOUROS L'
      '           ON (L.CNPJ = P.CNPJ AND'
      '                  L.CODIGO = P.ENDERECO)'
      '           LEFT JOIN GLO_BAIRROS B'
      '           ON (B.CNPJ = P.CNPJ AND'
      '                  B.CODIGO = P.BAIRRO)'
      '           LEFT JOIN GLO_CIDADES CD'
      '           ON (CD.CNPJ = P.CNPJ AND'
      '                  CD.CODIGO = P.CIDADE)'
      'WHERE F.CNPJ = :CNPJ AND'
      '               F.PESSOA_FJ >= :CODIGO_INICIAL AND'
      '               F.PESSOA_FJ <= :CODIGO_FINAL AND'
      '               P.NOME_RAZAO >= :NOME_INICIAL AND'
      '               P.NOME_RAZAO <= :NOME_FINAL AND'
      '               P.PESSOA <> '#39'X'#39
      'ORDER BY P.NOME_RAZAO')
    Left = 15
    Top = 6
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftInteger
        Name = 'CODIGO_FINAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_INICIAL'
        ParamType = ptInput
      end
      item
        DataType = ftString
        Name = 'NOME_FINAL'
        ParamType = ptInput
      end>
    object FornecedoresAlfCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_FORNECEDORES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object FornecedoresAlfPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      Required = True
    end
    object FornecedoresAlfNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object FornecedoresAlfENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      OnGetText = ClientesAlfENDERECOGetText
      Size = 50
    end
    object FornecedoresAlfNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object FornecedoresAlfCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"GLO_PESSOAS_FJ"."COMPLEMENTO"'
      Size = 30
    end
    object FornecedoresAlfBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      OnGetText = ClientesAlfENDERECOGetText
      Size = 50
    end
    object FornecedoresAlfCIDADE: TIBStringField
      FieldName = 'CIDADE'
      OnGetText = ClientesAlfENDERECOGetText
      Size = 53
    end
    object FornecedoresAlfCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"GLO_PESSOAS_FJ"."CEP"'
      Size = 8
    end
    object FornecedoresAlfCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"GLO_PESSOAS_FJ"."CPF_CGC"'
      Size = 15
    end
    object FornecedoresAlfRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"GLO_PESSOAS_FJ"."RG_IE"'
      Size = 15
    end
    object FornecedoresAlfFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object FornecedoresAlfFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"GLO_PESSOAS_FJ"."FAX"'
    end
    object FornecedoresAlfCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"GLO_PESSOAS_FJ"."CELULAR"'
    end
    object FornecedoresAlfEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"GLO_PESSOAS_FJ"."EMAIL"'
      Size = 80
    end
  end
  object ProdutosFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT CODIGO, '
      '               NOME, '
      '               QTDADE_2, '
      '               DT_ULT_COMPRA, '
      '               QT_ULT_COMPRA, '
      '               PRC_REPOS, '
      '               PRC_VENDA '
      'FROM EST_PRODUTOS'
      'WHERE CNPJ = :CNPJ AND ATIVO = :ATV AND'
      '               FORNECEDOR = :FORNECEDOR'
      'ORDER BY NOME')
    Left = 340
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FORNECEDOR'
        ParamType = ptUnknown
      end>
    object ProdutosFornecedorCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object ProdutosFornecedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object ProdutosFornecedorQTDADE_2: TFloatField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PRODUTOS"."QTDADE_2"'
    end
    object ProdutosFornecedorDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."DT_ULT_COMPRA"'
    end
    object ProdutosFornecedorQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"EST_PRODUTOS"."QT_ULT_COMPRA"'
    end
    object ProdutosFornecedorPRC_REPOS: TFloatField
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PRODUTOS"."PRC_REPOS"'
      DisplayFormat = '#,##0.00'
    end
    object ProdutosFornecedorPRC_VENDA: TFloatField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PRODUTOS"."PRC_VENDA"'
      DisplayFormat = '#,##0.00'
    end
  end
  object ListaUnid: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = ListaUnidCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    NOME ,'
      '    UNIDADE,'
      '    NOME_GRUPO ,'
      '    CODIGO_G ,'
      '    SUBGRUPO ,'
      '    NOME_SUBGRUPO ,'
      '    SUBUNIDADE ,'
      '    QTDADE_2 ,'
      '    PRC_REPOS ,'
      '    PRC_CUSTO_MED ,'
      '    PRC_VENDA ,'
      '    CUSTO_INDEXADO,'
      '    MARGEM_BRUTA'
      'from VER_PRODUTO_GRUPO ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :ATV )'
      'ORDER BY NOME_GRUPO, NOME_SUBGRUPO, NOME')
    Left = 340
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end>
    object ListaUnidCODIGO_G: TIntegerField
      FieldName = 'CODIGO_G'
      Origin = '"EST_GRUPOS"."CODIGO"'
      Required = True
    end
    object ListaUnidNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"EST_GRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object ListaUnidSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      Required = True
    end
    object ListaUnidNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object ListaUnidUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object ListaUnidSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PRODUTOS"."SUBUNIDADE"'
      DisplayFormat = '#,##0'
    end
    object ListaUnidCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO"'
      Size = 15
    end
    object ListaUnidNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_PRODUTO_GRUPO"."NOME"'
      Size = 50
    end
    object ListaUnidQTDADE_2: TIBBCDField
      DisplayLabel = 'Estoque'
      FieldName = 'QTDADE_2'
      Origin = '"VER_PRODUTO_GRUPO"."QTDADE_2"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaUnidPRC_REPOS: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_REPOS'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_REPOS"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaUnidPRC_CUSTO_MED: TIBBCDField
      DisplayLabel = 'Custo M'#233'dio'
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_CUSTO_MED"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaUnidPRC_VENDA: TIBBCDField
      DisplayLabel = 'Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_VENDA"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaUnidPRC_UNIT: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_UNIT'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ListaUnidPRC_VENDA_VIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_VENDA_VIS'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ListaUnidPRC_UNIT_VIS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_UNIT_VIS'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
    object ListaUnidCUSTO_INDEXADO: TIBBCDField
      DisplayLabel = 'Custo Indexado'
      FieldName = 'CUSTO_INDEXADO'
      Origin = '"VER_PRODUTO_GRUPO"."CUSTO_INDEXADO"'
      DisplayFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object ListaUnidMARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"VER_PRODUTO_GRUPO"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
  end
  object SelVendedor2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select vd.codigo, vd.nome from fat_vendedor vd'
      'where vd.cnpj = :cnpj')
    Left = 274
    Top = 198
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVendedor2CODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object SelVendedor2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
  end
  object SelCliente: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT C.CNPJ, '
      '               C.PESSOA_FJ,'
      '               P.NOME_RAZAO'
      'FROM GLO_CLIENTES C'
      '            INNER JOIN GLO_PESSOAS_FJ P'
      '            ON (P.CNPJ = C.CNPJ AND'
      '                   P.CODIGO = C.PESSOA_FJ)'
      'WHERE C.CNPJ = :CNPJ '
      'ORDER BY P.NOME_RAZAO')
    Left = 716
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelClienteCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelClientePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_CLIENTES"."PESSOA_FJ"'
      Required = True
    end
    object SelClienteNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
  end
  object SelClassif: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME '
      'FROM GLO_CLASSIFICACAO'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY NOME')
    Left = 340
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelClassifCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLASSIFICACAO"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelClassifCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLASSIFICACAO"."CODIGO"'
      Required = True
    end
    object SelClassifNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CLASSIFICACAO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Fat_VendasVend: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Fat_VendasVendCalcFields
    SQL.Strings = (
      'Select'
      '* '
      'from VER_FAT_VENDAS_VENDEDOR'
      '(  :CNPJ,  :DTINIC,  :DTFINAL,  :VEND ) '
      '')
    Left = 781
    Top = 301
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VEND'
        ParamType = ptUnknown
      end>
    object Fat_VendasVendCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CODIGO"'
    end
    object Fat_VendasVendFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasVendHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."HISTORICO"'
      Size = 100
    end
    object Fat_VendasVendPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PESSOA_FJ"'
    end
    object Fat_VendasVendPESSOA_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_VendasVendUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."USUARIO"'
    end
    object Fat_VendasVendNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NATUREZA"'
    end
    object Fat_VendasVendNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NOME_NATUREZA"'
      Size = 50
    end
    object Fat_VendasVendENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasVendFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."FORMA_PGTO"'
    end
    object Fat_VendasVendNUM_NF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NUM_NF"'
    end
    object Fat_VendasVendNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NUM_CUPOM"'
    end
    object Fat_VendasVendPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PROPRIEDADE"'
    end
    object Fat_VendasVendCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CONVENIADO"'
    end
    object Fat_VendasVendTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasVendLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."LOCAL_COBRANCA"'
    end
    object Fat_VendasVendDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desconto/Acrescimo'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TERCEIRO"'
    end
    object Fat_VendasVendCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CARGA"'
    end
    object Fat_VendasVendVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."REQUISICAO"'
      Size = 6
    end
    object Fat_VendasVendDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DESCRICAO"'
      Size = 8
    end
    object Fat_VendasVendTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasVendNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Fat_VendasVendORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."ORCAMENTO"'
    end
    object Fat_VendasVendVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Vlr Liquido'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VENDEDO"'
    end
    object Fat_VendasVendNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_VendasVendAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      Calculated = True
    end
    object Fat_VendasVendAPRAZO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      Calculated = True
    end
    object Fat_VendasVendTROCO: TIBBCDField
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasVendCOM_PRAZO: TIBBCDField
      FieldName = 'COM_PRAZO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."COM_PRAZO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendCOM_VISTA: TIBBCDField
      FieldName = 'COM_VISTA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."COM_VISTA"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendDATA: TDateTimeField
      DisplayLabel = 'Dt Venda'
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DATA"'
    end
    object Fat_VendasVendDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DATA_CAIXA"'
    end
    object Fat_VendasVendDT_EMISSAO_AGRUPADA: TDateTimeField
      FieldName = 'DT_EMISSAO_AGRUPADA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DT_EMISSAO_AGRUPADA"'
    end
    object Fat_VendasVendPAGA_COMISSAO: TIBStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PAGA_COMISSAO"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasVendIRRF: TIBBCDField
      FieldName = 'IRRF'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."IRRF"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendPIS_COFINS_CSLL: TIBBCDField
      FieldName = 'PIS_COFINS_CSLL'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PIS_COFINS_CSLL"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendINSS: TIBBCDField
      FieldName = 'INSS'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."INSS"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendISS: TIBBCDField
      FieldName = 'ISS'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."ISS"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVend_TotalJuros: TFloatField
      FieldKind = fkCalculated
      FieldName = '_TotalJuros'
      Calculated = True
    end
    object Fat_VendasVend_TotalDesconto: TFloatField
      FieldKind = fkCalculated
      FieldName = '_TotalDesconto'
      Calculated = True
    end
    object Fat_VendasVendSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."SERIE"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasVendCONTA_CAIXA: TIntegerField
      FieldName = 'CONTA_CAIXA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CONTA_CAIXA"'
    end
    object Fat_VendasVendVLR_VISTA: TIBBCDField
      FieldName = 'VLR_VISTA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VLR_VISTA"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendVLR_PRAZO: TIBBCDField
      FieldName = 'VLR_PRAZO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VLR_PRAZO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasVendOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."OBSERVACAO"'
      Size = 200
    end
  end
  object Fat_VendasItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Fat_VendasItensCalcFields
    SQL.Strings = (
      'Select *'
      'from VER_FAT_VENDAS_ITENS( :CNPJ, :CODIGO) ')
    Left = 340
    Top = 149
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
    object Fat_VendasItensCUSTO_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'CUSTO_TOTAL'
      DisplayFormat = '#,##0.00'
      Calculated = True
    end
  end
  object Fat_VendasCli: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'Select *'
      
        'from VER_FAT_VENDAS_CLIENTE( :CNPJ, :DTINIC, :DTFINAL, :CLIENTE)' +
        ' '
      'order by PESSOA_FJ, DATA, CODIGO')
    Left = 167
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    object Fat_VendasCliCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."CODIGO"'
    end
    object Fat_VendasCliDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."DATA"'
    end
    object Fat_VendasCliFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasCliHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."HISTORICO"'
      Size = 100
    end
    object Fat_VendasCliPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."PESSOA_FJ"'
    end
    object Fat_VendasCliPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_VendasCliUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."USUARIO"'
    end
    object Fat_VendasCliNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."NATUREZA"'
    end
    object Fat_VendasCliNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."NOME_NATUREZA"'
      Size = 50
    end
    object Fat_VendasCliENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasCliFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."FORMA_PGTO"'
    end
    object Fat_VendasCliNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."NUM_NF"'
    end
    object Fat_VendasCliNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."NUM_CUPOM"'
    end
    object Fat_VendasCliPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."PROPRIEDADE"'
    end
    object Fat_VendasCliCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."CONVENIADO"'
    end
    object Fat_VendasCliTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasCliLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."LOCAL_COBRANCA"'
    end
    object Fat_VendasCliDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliVLRLIQUIDO: TIBBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."OBSERVACAO"'
      Size = 80
    end
    object Fat_VendasCliVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."TERCEIRO"'
    end
    object Fat_VendasCliCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."CARGA"'
      DisplayFormat = '###,###,##0.00'
    end
    object Fat_VendasCliVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasCliREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."REQUISICAO"'
      Size = 6
    end
    object Fat_VendasCliDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."DESCRICAO"'
      Size = 8
    end
    object Fat_VendasCliTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasCliNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Fat_VendasCliORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."ORCAMENTO"'
    end
    object Fat_VendasCliVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."VENDEDO"'
    end
    object Fat_VendasCliNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_CLIENTE"."NOME_VENDEDOR"'
      Size = 50
    end
  end
  object Fat_GraficoVendas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'Select *'
      'From  GRAFICO_VENDASVEND ( :CNPJ, :DINI, :DFIM)')
    Left = 205
    Top = 214
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
    object Fat_GraficoVendasVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"GRAFICO_VENDASVEND"."VENDEDO"'
    end
    object Fat_GraficoVendasNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"GRAFICO_VENDASVEND"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_GraficoVendasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"GRAFICO_VENDASVEND"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GraficoVendasPERCT_VENDA: TIBBCDField
      FieldName = 'PERCT_VENDA'
      Origin = '"GRAFICO_VENDASVEND"."PERCT_VENDA"'
      DisplayFormat = '% ##,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Fat_VendasPorProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'Select *'
      'from VER_FAT_VENDAS_POR_PRODUTO'
      '( :CNPJ, :DTINIC, :DTFINAL, :PRODUTO) '
      'WHERE PRODUTO = :PRODUTO'
      'ORDER BY PRODUTO, DATA, CODIGO')
    Left = 407
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PRODUTO'
        ParamType = ptUnknown
      end>
    object Fat_VendasPorProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."CODIGO"'
    end
    object Fat_VendasPorProdutoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."DATA"'
    end
    object Fat_VendasPorProdutoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasPorProdutoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."GRUPO"'
    end
    object Fat_VendasPorProdutoSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."SEQUENCIA"'
    end
    object Fat_VendasPorProdutoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."QUANTIDADE"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PRC_UNITARIO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."ICM"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."IPI"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PESO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."DESCONTO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasPorProdutoPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorProdutoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasPorProdutoALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasPorProdutoPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PRODUTOFIS"'
      Size = 15
    end
    object Fat_VendasPorProdutoNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."NOME_FIS"'
      Size = 50
    end
    object Fat_VendasPorProdutoCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."CTE"'
    end
    object Fat_VendasPorProdutoCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."CTIE"'
    end
    object Fat_VendasPorProdutoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."ORIGEM"'
    end
    object Fat_VendasPorProdutoREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."REDUCAO"'
    end
    object Fat_VendasPorProdutoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."SUBUNIDADE"'
    end
    object Fat_VendasPorProdutoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PESSOA_FJ"'
    end
    object Fat_VendasPorProdutoPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_VendasPorProdutoNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."NATUREZA"'
    end
    object Fat_VendasPorProdutoNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."NOME_NATUREZA"'
      Size = 50
    end
    object Fat_VendasPorProdutoNF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."NF"'
    end
    object Fat_VendasPorProdutoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."VENDEDOR"'
    end
    object Fat_VendasPorProdutoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_VendasPorProdutoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_POR_PRODUTO"."VALOR"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Fat_Grafico_GrupoProd: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT*'
      'FROM GRAFICO_GRUPOPROD (:CNPJ, :DINI, :DFIM)'
      '')
    Left = 340
    Top = 198
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
    object Fat_Grafico_GrupoProdGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"GRAFICO_GRUPOPROD"."GRUPO"'
    end
    object Fat_Grafico_GrupoProdNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"GRAFICO_GRUPOPROD"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_Grafico_GrupoProdVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"GRAFICO_GRUPOPROD"."VALOR"'
      Precision = 18
      Size = 4
    end
  end
  object ProdFaltaExcesso: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT'
      '           CODIGO, '
      '           CODIGO_2, '
      '           CNPJ_AGRUP, '
      '           COD_AGRUP, '
      '           NOME,            '
      '           MARCA, '
      '           GRUPO, '
      '           SUBGRUPO,'
      '           REDUCAO, '
      '           UNIDADE, '
      '           CTE, '
      '           CTIE, '
      '           QTDADE_1, '
      '           QTDADE_2,            '
      '           LOCALIZACAO_1, '
      '           LOCALIZACAO_2,'
      '           LOCALIZACAO_3, '
      '           NEG_QTDADE_2 , '
      '           QTDADE_MIN,'
      '           QTDADE_MAX, '
      '           COMPLEMENTO_NF,'
      '           DT_ULT_COMPRA, '
      '           QT_ULT_COMPRA, '
      '           DT_ULT_VENDA,'
      '           MARGEM_BRUTA, '
      '           PRC_REPOS,'
      '           PRC_CUSTO_ANT, '
      '           PRC_CUSTO_MED, '
      '           PRC_VENDA,            '
      '           PRC_VENDA_ANT, '
      '           PRC_VENDA_MED,'
      '           ALIQUOTA_ECF, '
      '           ORIGEM, '
      '           PESO_LIQ, '
      '           PERC_FRETE, '
      '           IPI,'
      '           VOLUME, '
      '           PROD_PESAVEL,'
      '           ETIQUETA_ENT, '
      '           ATIVO, '
      '           ULTIMO_FORNECEDOR,'
      '           FORNECEDOR, '
      '           SUBUNIDADE,'
      '           NOME_MARCA,'
      '           NOME_GRUPO,'
      '           NOME_SUBGRUPO'
      'FROM EST_PROD_MAX_MIN ( :CNPJ, :ESTOQUE )'
      ' ')
    Left = 407
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ESTOQUE'
        ParamType = ptUnknown
      end>
    object ProdFaltaExcessoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"EST_PROD_MAX_MIN"."CODIGO"'
      Size = 15
    end
    object ProdFaltaExcessoCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"EST_PROD_MAX_MIN"."CODIGO_2"'
      Size = 15
    end
    object ProdFaltaExcessoCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"EST_PROD_MAX_MIN"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object ProdFaltaExcessoCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"EST_PROD_MAX_MIN"."COD_AGRUP"'
      Size = 15
    end
    object ProdFaltaExcessoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PROD_MAX_MIN"."NOME"'
      Size = 50
    end
    object ProdFaltaExcessoMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"EST_PROD_MAX_MIN"."MARCA"'
    end
    object ProdFaltaExcessoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_PROD_MAX_MIN"."GRUPO"'
    end
    object ProdFaltaExcessoSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_PROD_MAX_MIN"."SUBGRUPO"'
    end
    object ProdFaltaExcessoREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"EST_PROD_MAX_MIN"."REDUCAO"'
    end
    object ProdFaltaExcessoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PROD_MAX_MIN"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object ProdFaltaExcessoCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"EST_PROD_MAX_MIN"."CTE"'
    end
    object ProdFaltaExcessoCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"EST_PROD_MAX_MIN"."CTIE"'
    end
    object ProdFaltaExcessoQTDADE_1: TIBBCDField
      FieldName = 'QTDADE_1'
      Origin = '"EST_PROD_MAX_MIN"."QTDADE_1"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"EST_PROD_MAX_MIN"."QTDADE_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PROD_MAX_MIN"."LOCALIZACAO_1"'
      Size = 30
    end
    object ProdFaltaExcessoLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PROD_MAX_MIN"."LOCALIZACAO_2"'
      Size = 30
    end
    object ProdFaltaExcessoLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PROD_MAX_MIN"."LOCALIZACAO_3"'
      Size = 30
    end
    object ProdFaltaExcessoNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"EST_PROD_MAX_MIN"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object ProdFaltaExcessoQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"EST_PROD_MAX_MIN"."QTDADE_MIN"'
      DisplayFormat = '###,###,##0.00'
    end
    object ProdFaltaExcessoQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"EST_PROD_MAX_MIN"."QTDADE_MAX"'
      DisplayFormat = '###,###,##0.00'
    end
    object ProdFaltaExcessoCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"EST_PROD_MAX_MIN"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object ProdFaltaExcessoDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"EST_PROD_MAX_MIN"."DT_ULT_COMPRA"'
    end
    object ProdFaltaExcessoQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"EST_PROD_MAX_MIN"."QT_ULT_COMPRA"'
      DisplayFormat = '###,###,##0.00'
    end
    object ProdFaltaExcessoDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"EST_PROD_MAX_MIN"."DT_ULT_VENDA"'
    end
    object ProdFaltaExcessoMARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"EST_PROD_MAX_MIN"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"EST_PROD_MAX_MIN"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPRC_CUSTO_ANT: TIBBCDField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"EST_PROD_MAX_MIN"."PRC_CUSTO_ANT"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"EST_PROD_MAX_MIN"."PRC_CUSTO_MED"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"EST_PROD_MAX_MIN"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPRC_VENDA_ANT: TIBBCDField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"EST_PROD_MAX_MIN"."PRC_VENDA_ANT"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPRC_VENDA_MED: TIBBCDField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"EST_PROD_MAX_MIN"."PRC_VENDA_MED"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"EST_PROD_MAX_MIN"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object ProdFaltaExcessoORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"EST_PROD_MAX_MIN"."ORIGEM"'
    end
    object ProdFaltaExcessoPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"EST_PROD_MAX_MIN"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPERC_FRETE: TIBBCDField
      FieldName = 'PERC_FRETE'
      Origin = '"EST_PROD_MAX_MIN"."PERC_FRETE"'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"EST_PROD_MAX_MIN"."IPI"'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"EST_PROD_MAX_MIN"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object ProdFaltaExcessoPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"EST_PROD_MAX_MIN"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object ProdFaltaExcessoETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"EST_PROD_MAX_MIN"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object ProdFaltaExcessoATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"EST_PROD_MAX_MIN"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object ProdFaltaExcessoULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"EST_PROD_MAX_MIN"."ULTIMO_FORNECEDOR"'
    end
    object ProdFaltaExcessoFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"EST_PROD_MAX_MIN"."FORNECEDOR"'
    end
    object ProdFaltaExcessoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"EST_PROD_MAX_MIN"."SUBUNIDADE"'
    end
    object ProdFaltaExcessoNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"EST_PROD_MAX_MIN"."NOME_MARCA"'
      Size = 50
    end
    object ProdFaltaExcessoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"EST_PROD_MAX_MIN"."NOME_GRUPO"'
      Size = 50
    end
    object ProdFaltaExcessoNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"EST_PROD_MAX_MIN"."NOME_SUBGRUPO"'
      Size = 50
    end
  end
  object Fat_VendasNatu: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    CODIGO,'
      '    DATA,'
      '    FECHADA,'
      '    HISTORICO,'
      '    PESSOA_FJ,'
      '    PESSOA_RAZAO,'
      '    USUARIO,'
      '    NATUREZA,'
      '    NOME_NATUREZA,'
      '    ENVIADA_CX,'
      '    FORMA_PGTO,'
      '    NUM_NF,'
      '    NUM_CUPOM,'
      '    PROPRIEDADE,'
      '    CONVENIADO,'
      '    TIPO_DOCTO,'
      '    LOCAL_COBRANCA,'
      '    DESC_ACRES,'
      '    ENTRADA,'
      '    DINHEIRO,'
      '    CHEQUE,'
      '    CARTAO,'
      '    TICKET,'
      '    TOTAL,'
      '    VLRLIQUIDO,'
      '    OBSERVACAO,'
      '    VLR_PARC_LC,'
      '    TERCEIRO,'
      '    CARGA,'
      '    VOLUME,'
      '    PESO,'
      '    REQUISICAO,'
      '    DESCRICAO,'
      '    TIPO_VENDA,'
      '    NOME_CONSUMIDOR,'
      '    ORCAMENTO,'
      '    VENDEDO,'
      '    NOME_VENDEDOR'
      'from VER_FAT_VENDAS_NATUREZA'
      '('
      '    :CNPJ,'
      '    :DINI,'
      '    :DFIM,'
      '    :COD_NATUREZA '
      ')')
    Left = 407
    Top = 55
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
        Name = 'COD_NATUREZA'
        ParamType = ptUnknown
      end>
    object Fat_VendasNatuCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."CODIGO"'
    end
    object Fat_VendasNatuDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."DATA"'
    end
    object Fat_VendasNatuFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasNatuHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."HISTORICO"'
      Size = 100
    end
    object Fat_VendasNatuPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."PESSOA_FJ"'
    end
    object Fat_VendasNatuPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_VendasNatuUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."USUARIO"'
    end
    object Fat_VendasNatuNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."NATUREZA"'
    end
    object Fat_VendasNatuNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."NOME_NATUREZA"'
      Size = 50
    end
    object Fat_VendasNatuENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasNatuFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."FORMA_PGTO"'
    end
    object Fat_VendasNatuNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."NUM_NF"'
      DisplayFormat = '###,##0'
    end
    object Fat_VendasNatuNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."NUM_CUPOM"'
      DisplayFormat = '###,##0'
    end
    object Fat_VendasNatuPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."PROPRIEDADE"'
    end
    object Fat_VendasNatuCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."CONVENIADO"'
    end
    object Fat_VendasNatuTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasNatuLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."LOCAL_COBRANCA"'
    end
    object Fat_VendasNatuDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuVLRLIQUIDO: TIBBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."OBSERVACAO"'
      Size = 80
    end
    object Fat_VendasNatuVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."TERCEIRO"'
    end
    object Fat_VendasNatuCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."CARGA"'
    end
    object Fat_VendasNatuVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasNatuREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."REQUISICAO"'
      Size = 6
    end
    object Fat_VendasNatuDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."DESCRICAO"'
      Size = 8
    end
    object Fat_VendasNatuTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasNatuNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Fat_VendasNatuORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."ORCAMENTO"'
    end
    object Fat_VendasNatuVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."VENDEDO"'
    end
    object Fat_VendasNatuNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_NATUREZA"."NOME_VENDEDOR"'
      Size = 50
    end
  end
  object SelNatureza: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ,'
      '               CODIGO, '
      '               NOME,'
      '               INTERESTADUAL '
      'FROM EST_NATUREZA'
      'WHERE CNPJ = :CNPJ'
      'ORDER BY NOME')
    Left = 407
    Top = 100
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
  object VariacoesPreco: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    CODIGO ,'
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
      '    GRUPO ,'
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
      '    DATA ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR ,'
      '    VARIACAO '
      'from VER_VARIACOES_VENDA'
      '( :CNPJ, :DATAINI, :DATAFIM )')
    Left = 407
    Top = 149
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
    object VariacoesPrecoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_VARIACOES_VENDA"."CODIGO"'
    end
    object VariacoesPrecoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_VARIACOES_VENDA"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_VARIACOES_VENDA"."ICM"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_VARIACOES_VENDA"."ICM_SUBS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_VARIACOES_VENDA"."IPI"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_VARIACOES_VENDA"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_VARIACOES_VENDA"."PORC_DESC"'
      DisplayFormat = '% ##,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_VARIACOES_VENDA"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_VARIACOES_VENDA"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_VARIACOES_VENDA"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_VARIACOES_VENDA"."PRODUTO"'
      Size = 15
    end
    object VariacoesPrecoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_VARIACOES_VENDA"."GRUPO"'
    end
    object VariacoesPrecoPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_VARIACOES_VENDA"."PRODUTOFIS"'
      Size = 15
    end
    object VariacoesPrecoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_VARIACOES_VENDA"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_VARIACOES_VENDA"."SEQUENCIA"'
    end
    object VariacoesPrecoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_VARIACOES_VENDA"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object VariacoesPrecoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_VARIACOES_VENDA"."SUBUNIDADE"'
    end
    object VariacoesPrecoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_VARIACOES_VENDA"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VariacoesPrecoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_VARIACOES_VENDA"."NOME_PRODUTO"'
      Size = 50
    end
    object VariacoesPrecoNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_VARIACOES_VENDA"."NOME_FIS"'
      Size = 50
    end
    object VariacoesPrecoALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_VARIACOES_VENDA"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object VariacoesPrecoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_VARIACOES_VENDA"."ORIGEM"'
    end
    object VariacoesPrecoCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_VARIACOES_VENDA"."CTE"'
    end
    object VariacoesPrecoCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_VARIACOES_VENDA"."CTIE"'
    end
    object VariacoesPrecoREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_VARIACOES_VENDA"."REDUCAO"'
    end
    object VariacoesPrecoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"VER_VARIACOES_VENDA"."DATA"'
    end
    object VariacoesPrecoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_VARIACOES_VENDA"."VENDEDOR"'
    end
    object VariacoesPrecoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_VARIACOES_VENDA"."NOME_VENDEDOR"'
      Size = 50
    end
    object VariacoesPrecoVARIACAO: TIBBCDField
      FieldName = 'VARIACAO'
      Origin = '"VER_VARIACOES_VENDA"."VARIACAO"'
      DisplayFormat = '% ##,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SelVeiculos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    PESSOA_FJ,'
      '    TIPO_VEICULO,'
      '    NOME_TIPO,'
      '    MARCA_VEICULO,'
      '    NOME_MARCA,'
      '    MODELO,'
      '    NOME'
      'from VER_VEICULOS ( :CNPJ )')
    Left = 474
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelVeiculosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_VEICULOS"."CODIGO"'
    end
    object SelVeiculosPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_VEICULOS"."PESSOA_FJ"'
    end
    object SelVeiculosTIPO_VEICULO: TIntegerField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_VEICULO'
      Origin = '"VER_VEICULOS"."TIPO_VEICULO"'
    end
    object SelVeiculosNOME_TIPO: TIBStringField
      DisplayLabel = 'Nome Tipo'
      FieldName = 'NOME_TIPO'
      Origin = '"VER_VEICULOS"."NOME_TIPO"'
      Size = 50
    end
    object SelVeiculosMARCA_VEICULO: TIntegerField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA_VEICULO'
      Origin = '"VER_VEICULOS"."MARCA_VEICULO"'
    end
    object SelVeiculosNOME_MARCA: TIBStringField
      DisplayLabel = 'Nome Marca'
      FieldName = 'NOME_MARCA'
      Origin = '"VER_VEICULOS"."NOME_MARCA"'
      Size = 50
    end
    object SelVeiculosMODELO: TIBStringField
      DisplayLabel = 'Modelo'
      FieldName = 'MODELO'
      Origin = '"VER_VEICULOS"."MODELO"'
      Size = 15
    end
    object SelVeiculosNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_VEICULOS"."NOME"'
      Size = 50
    end
  end
  object Produtos_Marca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Produtos_MarcaCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    CODIGO_2 ,'
      '    CODIGO_INTERNO,'
      '    NOME ,'
      '    UNIDADE ,'
      '    NOME_MARCA ,'
      '    CODIGO_M ,'
      '    SUBUNIDADE ,'
      '    QTDADE_2 ,'
      '    PRC_REPOS ,'
      '    PRC_CUSTO_MED ,'
      '    CUSTO_AQUISICAO,'
      '    PRC_VENDA,'
      '    COD_GRUPO ,'
      '    COD_SUB_GRUPO,'
      '    GRUPO,'
      '    SUB_GRUPO'
      'from VER_PRODUTO_MARCA '
      '( :CNPJ, :MARCA_INI, :MARCA_FIM, :ATV ) '
      'order by NOME_MARCA, CODIGO_M, NOME')
    Left = 474
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCA_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MARCA_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end>
    object Produtos_MarcaCODIGO: TIBStringField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_PRODUTO_MARCA"."CODIGO"'
      Size = 15
    end
    object Produtos_MarcaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_PRODUTO_MARCA"."NOME"'
      Size = 50
    end
    object Produtos_MarcaUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"VER_PRODUTO_MARCA"."UNIDADE"'
      Size = 5
    end
    object Produtos_MarcaNOME_MARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'NOME_MARCA'
      Origin = '"VER_PRODUTO_MARCA"."NOME_MARCA"'
      Size = 50
    end
    object Produtos_MarcaCODIGO_M: TIntegerField
      DisplayLabel = 'C'#243'd. Marca'
      FieldName = 'CODIGO_M'
      Origin = '"VER_PRODUTO_MARCA"."CODIGO_M"'
    end
    object Produtos_MarcaSUBUNIDADE: TIntegerField
      DisplayLabel = 'Sub-Unid'
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_PRODUTO_MARCA"."SUBUNIDADE"'
    end
    object Produtos_MarcaQTDADE_2: TIBBCDField
      DisplayLabel = 'F'#237'sica'
      FieldName = 'QTDADE_2'
      Origin = '"VER_PRODUTO_MARCA"."QTDADE_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Produtos_MarcaPRC_REPOS: TIBBCDField
      DisplayLabel = 'Resposi'#231#227'o'
      FieldName = 'PRC_REPOS'
      Origin = '"VER_PRODUTO_MARCA"."PRC_REPOS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Produtos_MarcaPRC_CUSTO_MED: TIBBCDField
      DisplayLabel = 'Cst M'#233'dio'
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VER_PRODUTO_MARCA"."PRC_CUSTO_MED"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Produtos_MarcaPRC_VENDA: TIBBCDField
      DisplayLabel = 'Venda'
      FieldName = 'PRC_VENDA'
      Origin = '"VER_PRODUTO_MARCA"."PRC_VENDA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Produtos_MarcaPRC_CUSTO_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_CUSTO_TOTAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Produtos_MarcaPRC_VENDA_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_VENDA_TOTAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Produtos_MarcaMARGEM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARGEM'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Produtos_MarcaCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"VER_PRODUTO_MARCA"."CODIGO_INTERNO"'
      DisplayFormat = '###,###,##0'
    end
    object Produtos_MarcaCUSTO_AQUISICAO: TIBBCDField
      DisplayLabel = 'Aquisi'#231#227'o'
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"VER_PRODUTO_MARCA"."CUSTO_AQUISICAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Produtos_MarcaCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"VER_PRODUTO_MARCA"."CODIGO_2"'
      Size = 15
    end
    object Produtos_MarcaCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = '"VER_PRODUTO_MARCA"."COD_GRUPO"'
    end
    object Produtos_MarcaCOD_SUB_GRUPO: TIntegerField
      FieldName = 'COD_SUB_GRUPO'
      Origin = '"VER_PRODUTO_MARCA"."COD_SUB_GRUPO"'
    end
    object Produtos_MarcaGRUPO: TIBStringField
      FieldName = 'GRUPO'
      Origin = '"VER_PRODUTO_MARCA"."GRUPO"'
      Size = 50
    end
    object Produtos_MarcaSUB_GRUPO: TIBStringField
      FieldName = 'SUB_GRUPO'
      Origin = '"VER_PRODUTO_MARCA"."SUB_GRUPO"'
      Size = 50
    end
  end
  object SelMarca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME, SELECIONADO '
      'from EST_MARCAS'
      'WHERE CNPJ = :CNPJ'
      'order by NOME')
    Left = 474
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelMarcaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_MARCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelMarcaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_MARCAS"."CODIGO"'
      Required = True
    end
    object SelMarcaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_MARCAS"."NOME"'
      Required = True
      Size = 50
    end
    object SelMarcaSELECIONADO: TIBStringField
      DisplayLabel = 'Sel'
      FieldName = 'SELECIONADO'
      Origin = '"EST_MARCAS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
  end
  object Faturas: TIBQuery
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
      '    FONE ,'
      '    BANCO ,'
      '    ENVIADA ,'
      '    TIPO ,'
      '    CPF_CGC ,'
      '    DATA_BAIXA,'
      '    USUARIO,'
      '    NOME_FANTASIA,'
      '    COMPRADOR,'
      '    FONE_COMPRADOR '
      'FROM VER_FATURA_PERIODO'
      '('
      '    :CNPJ ,   :DINI ,  :DFIM '
      ')'
      '')
    Left = 474
    Top = 149
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
    object FaturasCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA_PERIODO"."CODIGO"'
    end
    object FaturasPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA_PERIODO"."PESSOA_FJ"'
    end
    object FaturasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FATURA_PERIODO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object FaturasDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FATURA_PERIODO"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object FaturasJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FATURA_PERIODO"."JUROS"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object FaturasHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA_PERIODO"."HISTORICO"'
      Size = 100
    end
    object FaturasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FATURA_PERIODO"."NOME"'
      Size = 50
    end
    object FaturasENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_FATURA_PERIODO"."ENDERECO"'
      Size = 50
    end
    object FaturasNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_FATURA_PERIODO"."NUMERO"'
      Size = 15
    end
    object FaturasCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_FATURA_PERIODO"."CIDADE"'
      Size = 50
    end
    object FaturasBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_FATURA_PERIODO"."BAIRRO"'
      Size = 50
    end
    object FaturasCEP: TIBStringField
      DisplayLabel = 'Cep'
      FieldName = 'CEP'
      Origin = '"VER_FATURA_PERIODO"."CEP"'
      FixedChar = True
      Size = 8
    end
    object FaturasUF: TIBStringField
      DisplayLabel = 'Uf'
      FieldName = 'UF'
      Origin = '"VER_FATURA_PERIODO"."UF"'
      FixedChar = True
      Size = 2
    end
    object FaturasFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FATURA_PERIODO"."FONE"'
    end
    object FaturasBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FATURA_PERIODO"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object FaturasENVIADA: TIBStringField
      DisplayLabel = 'Enviada'
      FieldName = 'ENVIADA'
      Origin = '"VER_FATURA_PERIODO"."ENVIADA"'
      FixedChar = True
      Size = 1
    end
    object FaturasTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Origin = '"VER_FATURA_PERIODO"."TIPO"'
      Size = 11
    end
    object FaturasCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FATURA_PERIODO"."CPF_CGC"'
      Size = 15
    end
    object FaturasDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FATURA_PERIODO"."DATA"'
    end
    object FaturasDATA_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Baixa'
      FieldName = 'DATA_BAIXA'
      Origin = '"VER_FATURA_PERIODO"."DATA_BAIXA"'
    end
    object FaturasVENCIMENTO: TDateTimeField
      DisplayLabel = 'Vencto'
      FieldName = 'VENCIMENTO'
      Origin = '"VER_FATURA_PERIODO"."VENCIMENTO"'
    end
    object FaturasCOMPRADOR: TIBStringField
      DisplayLabel = 'Comprador'
      FieldName = 'COMPRADOR'
      Origin = '"VER_FATURA_PERIODO"."COMPRADOR"'
      Size = 50
    end
    object FaturasNOME_FANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'NOME_FANTASIA'
      Origin = '"VER_FATURA_PERIODO"."NOME_FANTASIA"'
      Size = 50
    end
    object FaturasFONE_COMPRADOR: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE_COMPRADOR'
      Origin = '"VER_FATURA_PERIODO"."FONE_COMPRADOR"'
      Size = 15
    end
    object FaturasUSUARIO: TIBStringField
      FieldName = 'USUARIO'
      Origin = '"VER_FATURA_PERIODO"."USUARIO"'
      Size = 14
    end
  end
  object SelRota: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          NOME, '
      '          VENDEDOR '
      'from CRG_ROTAS'
      'Where CNPJ = :CNPJ')
    Left = 474
    Top = 149
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelRotaCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"CRG_ROTAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelRotaCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"CRG_ROTAS"."CODIGO"'
      Required = True
    end
    object SelRotaNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"CRG_ROTAS"."NOME"'
      Required = True
      Size = 50
    end
    object SelRotaVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"CRG_ROTAS"."VENDEDOR"'
      Required = True
    end
  end
  object Notas_Fatura: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Notas_FaturaCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO,'
      '    ANO,'
      '    PESSOA_FJ,'
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
      '    SELECIONADO ,'
      '    TIPO_DOCTO ,'
      '    NUMDUPLICATA ,'
      '    FATURA ,'
      '    NUMBOLETO ,'
      '    NUM_CUPOM,'
      '    CONVENIADO,'
      '    NOME_CONVENIADO'
      'FROM VER_FATURA_RECEBER'
      '( :CNPJ, :FAT )'
      'ORDER BY CONVENIADO')
    Left = 474
    Top = 198
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FAT'
        ParamType = ptUnknown
      end>
    object Notas_FaturaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FATURA_RECEBER"."CODIGO"'
    end
    object Notas_FaturaANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"VER_FATURA_RECEBER"."ANO"'
    end
    object Notas_FaturaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FATURA_RECEBER"."PESSOA_FJ"'
    end
    object Notas_FaturaDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"VER_FATURA_RECEBER"."DOCTO"'
    end
    object Notas_FaturaPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"VER_FATURA_RECEBER"."PARCELA"'
      FixedChar = True
      Size = 6
    end
    object Notas_FaturaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FATURA_RECEBER"."HISTORICO"'
      Size = 100
    end
    object Notas_FaturaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FATURA_RECEBER"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Notas_FaturaVLR_PARCIAL: TIBBCDField
      FieldName = 'VLR_PARCIAL'
      Origin = '"VER_FATURA_RECEBER"."VLR_PARCIAL"'
      Precision = 18
      Size = 4
    end
    object Notas_FaturaJUROS_REC: TIBBCDField
      FieldName = 'JUROS_REC'
      Origin = '"VER_FATURA_RECEBER"."JUROS_REC"'
      Precision = 18
      Size = 4
    end
    object Notas_FaturaDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_FATURA_RECEBER"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object Notas_FaturaBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"VER_FATURA_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object Notas_FaturaORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"VER_FATURA_RECEBER"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object Notas_FaturaCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"VER_FATURA_RECEBER"."CODIGO_VN"'
    end
    object Notas_FaturaANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"VER_FATURA_RECEBER"."ANO_VN"'
    end
    object Notas_FaturaAVISO: TSmallintField
      FieldName = 'AVISO'
      Origin = '"VER_FATURA_RECEBER"."AVISO"'
    end
    object Notas_FaturaSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"VER_FATURA_RECEBER"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object Notas_FaturaTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FATURA_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Notas_FaturaNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"VER_FATURA_RECEBER"."NUMDUPLICATA"'
    end
    object Notas_FaturaFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"VER_FATURA_RECEBER"."FATURA"'
    end
    object Notas_FaturaNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"VER_FATURA_RECEBER"."NUMBOLETO"'
    end
    object Notas_FaturaTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object Notas_FaturaNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FATURA_RECEBER"."NUM_CUPOM"'
    end
    object Notas_FaturaDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"VER_FATURA_RECEBER"."DT_EMISSAO"'
    end
    object Notas_FaturaDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"VER_FATURA_RECEBER"."DT_VENCTO"'
    end
    object Notas_FaturaDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"VER_FATURA_RECEBER"."DT_LANCTO"'
    end
    object Notas_FaturaDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"VER_FATURA_RECEBER"."DT_AVISO"'
    end
    object Notas_FaturaCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FATURA_RECEBER"."CONVENIADO"'
    end
    object Notas_FaturaNOME_CONVENIADO: TIBStringField
      FieldName = 'NOME_CONVENIADO'
      Origin = '"VER_FATURA_RECEBER"."NOME_CONVENIADO"'
      Size = 50
    end
  end
  object Ver_Fat_Vendas_Maiores: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    PESSOA_FJ ,'
      '    NOME ,'
      '    DESC_ACRES ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET ,'
      '    TOTAL ,'
      '    VLRLIQUIDO '
      'from VER_FAT_VENDAS_MAIORES_CLIENTES'
      '( :CNPJ, :DINI, :DFIM )'
      'order by  VLRLIQUIDO DESC')
    Left = 554
    Top = 6
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
    object Ver_Fat_Vendas_MaioresPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."PESSOA_FJ"'
    end
    object Ver_Fat_Vendas_MaioresNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."NOME"'
      Size = 50
    end
    object Ver_Fat_Vendas_MaioresDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Fat_Vendas_MaioresENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Fat_Vendas_MaioresDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Fat_Vendas_MaioresCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Fat_Vendas_MaioresCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Fat_Vendas_MaioresTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Fat_Vendas_MaioresTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Ver_Fat_Vendas_MaioresVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liquido'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_MAIORES_CLIENTES"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Fat_Vendas_Comissoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    SQL.Strings = (
      'Select *'
      'from VER_FAT_VENDAS_ITENS_COMISSAO '
      '( :CNPJ, :CODIGO, :VENDEDOR ) ')
    Left = 554
    Top = 55
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
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        ParamType = ptUnknown
      end>
    object Fat_Vendas_ComissoesPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRODUTO"'
      Size = 15
    end
    object Fat_Vendas_ComissoesSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_ITENS"."SEQUENCIA"'
    end
    object Fat_Vendas_ComissoesQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."QUANTIDADE"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME"'
      Size = 50
    end
    object Fat_Vendas_ComissoesPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_UNITARIO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_ITENS"."ICM"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_ITENS"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_ITENS"."IPI"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_ITENS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_ITENS"."PESO"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."DESCONTO"'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_ITENS"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_Vendas_ComissoesPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_Vendas_ComissoesALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_ITENS"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Fat_Vendas_ComissoesPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_ITENS"."PRODUTOFIS"'
      Size = 15
    end
    object Fat_Vendas_ComissoesNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_ITENS"."NOME_FIS"'
      Size = 50
    end
    object Fat_Vendas_ComissoesCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_ITENS"."CTE"'
    end
    object Fat_Vendas_ComissoesCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_ITENS"."CTIE"'
    end
    object Fat_Vendas_ComissoesORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_ITENS"."ORIGEM"'
    end
    object Fat_Vendas_ComissoesREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_ITENS"."REDUCAO"'
    end
    object Fat_Vendas_ComissoesSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_ITENS"."SUBUNIDADE"'
    end
    object Fat_Vendas_ComissoesGRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_ITENS_COMISSAO"."GRUPO"'
    end
    object Fat_Vendas_ComissoesSUBGRUPO: TIntegerField
      DisplayLabel = 'Sub-Grupo'
      FieldName = 'SUBGRUPO'
      Origin = '"VER_FAT_VENDAS_ITENS_COMISSAO"."SUBGRUPO"'
    end
    object Fat_Vendas_ComissoesNOME_GRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_FAT_VENDAS_ITENS_COMISSAO"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_Vendas_ComissoesNOME_SUBGRUPO: TIBStringField
      DisplayLabel = 'Sub-Grupo'
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_FAT_VENDAS_ITENS_COMISSAO"."NOME_SUBGRUPO"'
      Size = 50
    end
    object Fat_Vendas_ComissoesCOMISSAO_VISTA: TIBBCDField
      DisplayLabel = 'A Vista'
      FieldName = 'COMISSAO_VISTA'
      Origin = '"VER_FAT_VENDAS_ITENS_COMISSAO"."COMISSAO_VISTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_Vendas_ComissoesCOMISSAO_PRAZO: TIBBCDField
      DisplayLabel = 'A Prazo'
      FieldName = 'COMISSAO_PRAZO'
      Origin = '"VER_FAT_VENDAS_ITENS_COMISSAO"."COMISSAO_PRAZO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object Cotas_Vendedores: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR ,'
      '    GRUPO ,'
      '    SUBGRUPO ,'
      '    NOME_GRUPO,'
      '    NOME_SUBGRUPO,'
      '    VALOR,'
      '    COMISSAO_VISTA ,'
      '    COMISSAO_PRAZO'
      'FROM VER_COTAS_POR_VENDEDOR'
      '( :CNPJ )'
      'ORDER BY NOME_VENDEDOR, VENDEDOR')
    Left = 554
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Cotas_VendedoresVENDEDOR: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDOR'
      Origin = '"VER_COTAS_POR_VENDEDOR"."VENDEDOR"'
    end
    object Cotas_VendedoresNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_COTAS_POR_VENDEDOR"."NOME_VENDEDOR"'
      Size = 50
    end
    object Cotas_VendedoresGRUPO: TIntegerField
      DisplayLabel = 'Grupo'
      FieldName = 'GRUPO'
      Origin = '"VER_COTAS_POR_VENDEDOR"."GRUPO"'
    end
    object Cotas_VendedoresSUBGRUPO: TIntegerField
      DisplayLabel = 'Sub-Grupo'
      FieldName = 'SUBGRUPO'
      Origin = '"VER_COTAS_POR_VENDEDOR"."SUBGRUPO"'
    end
    object Cotas_VendedoresNOME_GRUPO: TIBStringField
      DisplayLabel = 'Grupo'
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_COTAS_POR_VENDEDOR"."NOME_GRUPO"'
      Size = 50
    end
    object Cotas_VendedoresNOME_SUBGRUPO: TIBStringField
      DisplayLabel = 'Sub-Grupo'
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_COTAS_POR_VENDEDOR"."NOME_SUBGRUPO"'
      Size = 50
    end
    object Cotas_VendedoresVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_COTAS_POR_VENDEDOR"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Cotas_VendedoresCOMISSAO_VISTA: TIBBCDField
      DisplayLabel = 'Comiss'#227'o Vista'
      FieldName = 'COMISSAO_VISTA'
      Origin = '"VER_COTAS_POR_VENDEDOR"."COMISSAO_VISTA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Cotas_VendedoresCOMISSAO_PRAZO: TIBBCDField
      DisplayLabel = 'Comiss'#227'o Prazo'
      FieldName = 'COMISSAO_PRAZO'
      Origin = '"VER_COTAS_POR_VENDEDOR"."COMISSAO_PRAZO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object SelSubGrupo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    DataSource = DsGrupo
    SQL.Strings = (
      'select CNPJ, GRUPO, NOME, SUBGRUPO from EST_SUBGRUPOS'
      'Where CNPJ = :CNPJ AND GRUPO = :CODIGO'
      'ORDER BY NOME')
    Left = 554
    Top = 149
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
    object SelSubGrupoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_SUBGRUPOS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelSubGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"EST_SUBGRUPOS"."GRUPO"'
      Required = True
    end
    object SelSubGrupoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Required = True
      Size = 50
    end
    object SelSubGrupoSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"EST_SUBGRUPOS"."SUBGRUPO"'
      Required = True
    end
  end
  object DsGrupo: TDataSource
    DataSet = SelGrupo
    Left = 554
    Top = 198
  end
  object Fat_VendasPorGrupo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Fat_VendasPorGrupoCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    DATA ,'
      '    PRODUTO ,'
      '    GRUPO ,'
      '    NOME_GRUPO ,'
      '    SEQUENCIA ,'
      '    QUANTIDADE ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    NF ,'
      '    PRC_UNITARIO ,'
      '    PRC_CUSTO ,'
      '    ICM ,'
      '    ICM_SUBS ,'
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
      '    SUBUNIDADE ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR ,'
      '    VALOR ,'
      '    TOTAL,'
      '    DESC_ACRES'
      'from VER_FAT_VENDAS_POR_GRUPO'
      '( :CNPJ, :DATAINI, :DATAFIM, :NOME_INICIAL, :NOME_FINAL )')
    Left = 554
    Top = 275
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
      end
      item
        DataType = ftUnknown
        Name = 'NOME_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME_FINAL'
        ParamType = ptUnknown
      end>
    object Fat_VendasPorGrupoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."CODIGO"'
    end
    object Fat_VendasPorGrupoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."DATA"'
    end
    object Fat_VendasPorGrupoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasPorGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."GRUPO"'
    end
    object Fat_VendasPorGrupoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_VendasPorGrupoSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."SEQUENCIA"'
    end
    object Fat_VendasPorGrupoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NATUREZA"'
    end
    object Fat_VendasPorGrupoNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_NATUREZA"'
      Size = 50
    end
    object Fat_VendasPorGrupoNF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NF"'
    end
    object Fat_VendasPorGrupoPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRC_UNITARIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRC_CUSTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ICM"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."IPI"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."VOLUME"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PESO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."DESCONTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PORC_DESC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasPorGrupoPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasPorGrupoALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasPorGrupoPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRODUTOFIS"'
      Size = 15
    end
    object Fat_VendasPorGrupoNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_FIS"'
      Size = 50
    end
    object Fat_VendasPorGrupoCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."CTE"'
    end
    object Fat_VendasPorGrupoCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."CTIE"'
    end
    object Fat_VendasPorGrupoORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ORIGEM"'
    end
    object Fat_VendasPorGrupoREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."REDUCAO"'
    end
    object Fat_VendasPorGrupoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."SUBUNIDADE"'
    end
    object Fat_VendasPorGrupoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PESSOA_FJ"'
    end
    object Fat_VendasPorGrupoPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_VendasPorGrupoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."VENDEDOR"'
    end
    object Fat_VendasPorGrupoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_VendasPorGrupoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."DESC_ACRES"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorGrupoVLRLIQUIDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object Fat_VendasGrupo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Fat_VendasGrupoCalcFields
    SQL.Strings = (
      'select'
      '    PRODUTO ,'
      '    GRUPO ,'
      '    NOME_GRUPO ,'
      '    NOME_PRODUTO ,'
      '    UNIDADE ,'
      '    SUBUNIDADE,'
      '    QUANTIDADE ,'
      '    VALOR,'
      '    VENDEDOR,'
      '    FECHADA   ,'
      '    CUSTO'
      'from VER_FAT_VENDAS_GRUPO_SINTETICO'
      '('
      '    :CNPJ ,'
      '    :DATAINI ,'
      '    :DATAFIM ,'
      '    :NOME_INICIAL ,'
      '    :NOME_FINAL '
      ')')
    Left = 637
    Top = 55
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
      end
      item
        DataType = ftUnknown
        Name = 'NOME_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME_FINAL'
        ParamType = ptUnknown
      end>
    object Fat_VendasGrupoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."GRUPO"'
    end
    object Fat_VendasGrupoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_VendasGrupoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasGrupoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasGrupoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."SUBUNIDADE"'
    end
    object Fat_VendasGrupoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Fat_VendasGrupoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."VENDEDOR"'
    end
    object Fat_VendasGrupoFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasGrupoCUSTO: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'CUSTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SINTETICO"."CUSTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object FECHAMENTO_DIARIO: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    DATA,'
      '    PRODUTO,'
      '    NOME,'
      '    LEITURA ,'
      '    ENTRADA ,'
      '    VENDA ,'
      '    CONTAGEM ,'
      '    POSICAO ,'
      '    INICIAL ,'
      '    CUSTO,'
      '    TROCAS_SAI ,'
      '    TROCAS_ENT ,'
      '    GARANTIAS_SAI,'
      '    GARANTIAS_ENT'
      'FROM VER_EST_POSICAO_DIARIA'
      '( :CNPJ, :DINICIAL, :DFINAL )'
      'ORDER BY NOME, PRODUTO')
    Left = 716
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DINICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DFINAL'
        ParamType = ptUnknown
      end>
    object FECHAMENTO_DIARIODATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_EST_POSICAO_DIARIA"."DATA"'
    end
    object FECHAMENTO_DIARIOPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VER_EST_POSICAO_DIARIA"."PRODUTO"'
      Size = 15
    end
    object FECHAMENTO_DIARIONOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_EST_POSICAO_DIARIA"."NOME"'
      Size = 50
    end
    object FECHAMENTO_DIARIOLEITURA: TIBBCDField
      DisplayLabel = 'Leitura'
      FieldName = 'LEITURA'
      Origin = '"VER_EST_POSICAO_DIARIA"."LEITURA"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_EST_POSICAO_DIARIA"."ENTRADA"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOVENDA: TIBBCDField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_EST_POSICAO_DIARIA"."VENDA"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOCONTAGEM: TIBBCDField
      DisplayLabel = 'Contagem'
      FieldName = 'CONTAGEM'
      Origin = '"VER_EST_POSICAO_DIARIA"."CONTAGEM"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOPOSICAO: TIBBCDField
      DisplayLabel = 'Posi'#231#227'o'
      FieldName = 'POSICAO'
      Origin = '"VER_EST_POSICAO_DIARIA"."POSICAO"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOINICIAL: TIBBCDField
      DisplayLabel = 'Inicial'
      FieldName = 'INICIAL'
      Origin = '"VER_EST_POSICAO_DIARIA"."INICIAL"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOCUSTO: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'CUSTO'
      Origin = '"VER_EST_POSICAO_DIARIA"."CUSTO"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOTROCAS_SAI: TIBBCDField
      DisplayLabel = 'Trocas Sai'
      FieldName = 'TROCAS_SAI'
      Origin = '"VER_EST_POSICAO_DIARIA"."TROCAS_SAI"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOTROCAS_ENT: TIBBCDField
      DisplayLabel = 'Trocas Ent'
      FieldName = 'TROCAS_ENT'
      Origin = '"VER_EST_POSICAO_DIARIA"."TROCAS_ENT"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOGARANTIAS_SAI: TIBBCDField
      DisplayLabel = 'Garantias Sai'
      FieldName = 'GARANTIAS_SAI'
      Origin = '"VER_EST_POSICAO_DIARIA"."GARANTIAS_SAI"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_DIARIOGARANTIAS_ENT: TIBBCDField
      DisplayLabel = 'Garantias Ent'
      FieldName = 'GARANTIAS_ENT'
      Origin = '"VER_EST_POSICAO_DIARIA"."GARANTIAS_ENT"'
      DisplayFormat = '###,##0.000'
      Precision = 18
      Size = 4
    end
  end
  object VER_FAT_CAIXAS_MOVIMENTOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    DOCUMENTO ,'
      '    DATA,'
      '    HISTORICO ,'
      '    VALOR ,'
      '    NOME_CONTRAPARTIDA ,'
      '    CONTRA_PARTIDA ,'
      '    TIPO ,'
      '    NOME'
      'FROM VER_FAT_CAIXAS_MOVIMENTOS'
      '( :CNPJ, :DINI, :DFIM )'
      'order by DOCUMENTO')
    Left = 716
    Top = 6
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
    object VER_FAT_CAIXAS_MOVIMENTOSDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."DOCUMENTO"'
    end
    object VER_FAT_CAIXAS_MOVIMENTOSHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."HISTORICO"'
      Size = 100
    end
    object VER_FAT_CAIXAS_MOVIMENTOSVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."VALOR"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VER_FAT_CAIXAS_MOVIMENTOSNOME_CONTRAPARTIDA: TIBStringField
      FieldName = 'NOME_CONTRAPARTIDA'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."NOME_CONTRAPARTIDA"'
      Size = 50
    end
    object VER_FAT_CAIXAS_MOVIMENTOSCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."CONTRA_PARTIDA"'
    end
    object VER_FAT_CAIXAS_MOVIMENTOSTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object VER_FAT_CAIXAS_MOVIMENTOSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."NOME"'
      Size = 50
    end
    object VER_FAT_CAIXAS_MOVIMENTOSDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_CAIXAS_MOVIMENTOS"."DATA"'
    end
  end
  object COMISSOES_POR_FAIXA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CNPJ, '
      '          CODIGO, '
      '          PRAZO, '
      '          VALOR, '
      '          VISTA '
      'from FAT_VENDEDOR_FAIXAS'
      'WHERE CNPJ = :CNPJ AND CODIGO = :CODIGO'
      'ORDER BY VALOR')
    Left = 716
    Top = 149
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
    object COMISSOES_POR_FAIXACNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object COMISSOES_POR_FAIXACODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."CODIGO"'
      Required = True
    end
    object COMISSOES_POR_FAIXAPRAZO: TFloatField
      FieldName = 'PRAZO'
      Origin = '"FAT_VENDEDOR_FAIXAS"."PRAZO"'
    end
    object COMISSOES_POR_FAIXAVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VALOR"'
    end
    object COMISSOES_POR_FAIXAVISTA: TFloatField
      FieldName = 'VISTA'
      Origin = '"FAT_VENDEDOR_FAIXAS"."VISTA"'
    end
  end
  object VendasIndicados: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = VendasIndicadosCalcFields
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
      '    DESCRICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    ORCAMENTO,'
      '    VENDEDO ,'
      '    NOME_VENDEDOR,'
      '    PORCENTAGEM '
      'FROM VER_FAT_VENDAS_INDICADOS'
      '(:CNPJ, :DINI, :DFIM, :PESSOA )')
    Left = 716
    Top = 198
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
    object VendasIndicadosCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."CODIGO"'
    end
    object VendasIndicadosDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."DATA"'
    end
    object VendasIndicadosFECHADA: TIBStringField
      DisplayLabel = 'Fechada'
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object VendasIndicadosHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."HISTORICO"'
      Size = 100
    end
    object VendasIndicadosPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."PESSOA_FJ"'
    end
    object VendasIndicadosPESSOA_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."PESSOA_RAZAO"'
      Size = 50
    end
    object VendasIndicadosUSUARIO: TIntegerField
      DisplayLabel = 'Usr'
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."USUARIO"'
    end
    object VendasIndicadosNATUREZA: TIntegerField
      DisplayLabel = 'Natureza'
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."NATUREZA"'
    end
    object VendasIndicadosNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."NOME_NATUREZA"'
      Size = 50
    end
    object VendasIndicadosENVIADA_CX: TIBStringField
      DisplayLabel = 'Enviada Cx'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object VendasIndicadosFORMA_PGTO: TIntegerField
      DisplayLabel = 'Forma'
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."FORMA_PGTO"'
    end
    object VendasIndicadosNUM_NF: TIntegerField
      DisplayLabel = 'Num'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."NUM_NF"'
    end
    object VendasIndicadosNUM_CUPOM: TIntegerField
      DisplayLabel = 'Cupom'
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."NUM_CUPOM"'
    end
    object VendasIndicadosPROPRIEDADE: TIntegerField
      DisplayLabel = 'Propriedade'
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."PROPRIEDADE"'
    end
    object VendasIndicadosCONVENIADO: TIntegerField
      DisplayLabel = 'Conveniado'
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."CONVENIADO"'
    end
    object VendasIndicadosTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object VendasIndicadosLOCAL_COBRANCA: TIntegerField
      DisplayLabel = 'Local'
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."LOCAL_COBRANCA"'
    end
    object VendasIndicadosDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."DESC_ACRES"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosENTRADA: TIBBCDField
      DisplayLabel = 'Entrada'
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."ENTRADA"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosDINHEIRO: TIBBCDField
      DisplayLabel = 'Dinheiro'
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."DINHEIRO"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosCHEQUE: TIBBCDField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."CHEQUE"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosCARTAO: TIBBCDField
      DisplayLabel = 'Cart'#227'o'
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."CARTAO"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosTICKET: TIBBCDField
      DisplayLabel = 'Ticket'
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."TICKET"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."TOTAL"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Liquido'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."VLRLIQUIDO"'
      DisplayFormat = '###,###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosOBSERVACAO: TIBStringField
      DisplayLabel = 'Obs'
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."OBSERVACAO"'
      Size = 80
    end
    object VendasIndicadosVLR_PARC_LC: TIBBCDField
      DisplayLabel = 'Vlr Parcelado'
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosTERCEIRO: TIntegerField
      DisplayLabel = 'Terceiro'
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."TERCEIRO"'
    end
    object VendasIndicadosCARGA: TIntegerField
      DisplayLabel = 'Carga'
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."CARGA"'
    end
    object VendasIndicadosVOLUME: TIBBCDField
      DisplayLabel = 'Volume'
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosPESO: TIBBCDField
      DisplayLabel = 'Peso'
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."PESO"'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."REQUISICAO"'
      Size = 6
    end
    object VendasIndicadosDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."DESCRICAO"'
      Size = 8
    end
    object VendasIndicadosTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object VendasIndicadosNOME_CONSUMIDOR: TIBStringField
      DisplayLabel = 'Consumdor'
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object VendasIndicadosORCAMENTO: TIntegerField
      DisplayLabel = 'Or'#231'amento'
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."ORCAMENTO"'
    end
    object VendasIndicadosVENDEDO: TIntegerField
      DisplayLabel = 'Vendedor'
      FieldName = 'VENDEDO'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."VENDEDO"'
    end
    object VendasIndicadosNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."NOME_VENDEDOR"'
      Size = 50
    end
    object VendasIndicadosPORCENTAGEM: TIBBCDField
      DisplayLabel = 'Porcentagem'
      FieldName = 'PORCENTAGEM'
      Origin = '"VER_FAT_VENDAS_INDICADOS"."PORCENTAGEM"'
      DisplayFormat = '%#,##0.00'
      Precision = 18
      Size = 4
    end
    object VendasIndicadosBonificacao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Bonificacao'
      DisplayFormat = '###,###,###,##0.00'
      Calculated = True
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
    Left = 637
    Top = 555
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
      FieldName = 'CAIXA'
      Origin = '"ACOMPANHAMENTO_VENDAS"."CAIXA"'
    end
    object ACOMPANHAMENTO_VENDASVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"ACOMPANHAMENTO_VENDAS"."VALOR"'
      DisplayFormat = '###,##0.00'
    end
  end
  object VER_FAT_VENDAS_ANALISE: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      'SOMA,'
      'MES,'
      'ANO'
      'FROM VER_FAT_VENDAS_ANALISE ( :CNPJ, :DATA )'
      'ORDER BY ANO, MES'
      '')
    Left = 213
    Top = 6
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
    object VER_FAT_VENDAS_ANALISESOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"VER_FAT_VENDAS_ANALISE"."SOMA"'
      Precision = 18
      Size = 4
    end
    object VER_FAT_VENDAS_ANALISEMES: TIntegerField
      FieldName = 'MES'
      Origin = '"VER_FAT_VENDAS_ANALISE"."MES"'
    end
    object VER_FAT_VENDAS_ANALISEANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"VER_FAT_VENDAS_ANALISE"."ANO"'
    end
  end
  object VER_FAT_VENDAS_ANALISE_CUSTOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      'SOMA,'
      'MES,'
      'ANO'
      'FROM VER_FAT_VENDAS_ANALISE_CUSTOS'
      '( :CNPJ, :DATA )')
    Left = 56
    Top = 195
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
    object VER_FAT_VENDAS_ANALISE_CUSTOSSOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"VER_FAT_VENDAS_ANALISE_CUSTOS"."SOMA"'
      Precision = 18
      Size = 4
    end
    object VER_FAT_VENDAS_ANALISE_CUSTOSMES: TIntegerField
      FieldName = 'MES'
      Origin = '"VER_FAT_VENDAS_ANALISE_CUSTOS"."MES"'
    end
    object VER_FAT_VENDAS_ANALISE_CUSTOSANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"VER_FAT_VENDAS_ANALISE_CUSTOS"."ANO"'
    end
  end
  object VER_FIN_PAGAS_ANALISE: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      'SOMA,'
      'MES,'
      'ANO,'
      'TIPO_CENTRO,'
      'NOME'
      'FROM VER_FIN_PAGAS_ANALISE'
      '( :CNPJ, :DATA )'
      'WHERE TIPO_CENTRO = :TIPO'
      'ORDER BY CENTRO_CUSTO,  ANO, MES')
    Left = 56
    Top = 100
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
        Name = 'TIPO'
        ParamType = ptUnknown
      end>
    object VER_FIN_PAGAS_ANALISESOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"VER_FIN_PAGAS_ANALISE"."SOMA"'
      Precision = 18
      Size = 4
    end
    object VER_FIN_PAGAS_ANALISEMES: TIntegerField
      FieldName = 'MES'
      Origin = '"VER_FIN_PAGAS_ANALISE"."MES"'
    end
    object VER_FIN_PAGAS_ANALISEANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"VER_FIN_PAGAS_ANALISE"."ANO"'
    end
    object VER_FIN_PAGAS_ANALISETIPO_CENTRO: TIBStringField
      FieldName = 'TIPO_CENTRO'
      Origin = '"VER_FIN_PAGAS_ANALISE"."TIPO_CENTRO"'
      FixedChar = True
      Size = 3
    end
    object VER_FIN_PAGAS_ANALISENOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FIN_PAGAS_ANALISE"."NOME"'
      Size = 50
    end
  end
  object Fat_TrocasCli: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Fat_TrocasCliCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    ENVIADA_CX ,'
      '    FORMA_PGTO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRESC ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC ,'
      '    NOME_CONSUMIDOR ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR ,'
      '    TOTAL_2,'
      '    DESC_ACRESC_2'
      'FROM VER_FAT_TROCAS_CLIENTE'
      '( :CNPJ,  :DINI ,  :DFIM,  :PESSOA )')
    Left = 274
    Top = 323
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
    object Fat_TrocasCliCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."CODIGO"'
    end
    object Fat_TrocasCliDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DATA"'
    end
    object Fat_TrocasCliFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_TrocasCliPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."PESSOA_FJ"'
    end
    object Fat_TrocasCliPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_TrocasCliUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."USUARIO"'
    end
    object Fat_TrocasCliENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Fat_TrocasCliFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."FORMA_PGTO"'
    end
    object Fat_TrocasCliTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Fat_TrocasCliLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."LOCAL_COBRANCA"'
    end
    object Fat_TrocasCliDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliVLRLIQUIDO: TIBBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."OBSERVACAO"'
      Size = 80
    end
    object Fat_TrocasCliVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Fat_TrocasCliVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."VENDEDOR"'
    end
    object Fat_TrocasCliNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_TrocasCliTOTAL_2: TIBBCDField
      DisplayLabel = 'Total 2'
      FieldName = 'TOTAL_2'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliDESC_ACRESC_2: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasCliENTRADAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ENTRADAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Fat_TrocasCliSAIDAS: TFloatField
      FieldKind = fkCalculated
      FieldName = 'SAIDAS'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Fat_TrocasCliLIQUIDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'LIQUIDO'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Fat_TrocasCliAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      Calculated = True
    end
    object Fat_TrocasCliAPRAZO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      Calculated = True
    end
  end
  object Fat_VendasPorMarca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Fat_VendasPorMarcaCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    DATA ,'
      '    PRODUTO ,'
      '    MARCA ,'
      '    NOME_MARCA ,'
      '    SEQUENCIA ,'
      '    QUANTIDADE ,'
      '    NATUREZA ,'
      '    NOME_NATUREZA ,'
      '    NF ,'
      '    PRC_UNITARIO ,'
      '    PRC_CUSTO ,'
      '    ICM ,'
      '    ICM_SUBS ,'
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
      '    SUBUNIDADE ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR ,'
      '    VALOR ,'
      '    TOTAL,'
      '    DESC_ACRES'
      'from VER_FAT_VENDAS_POR_MARCA'
      '( :CNPJ, :DATAINI, :DATAFIM, :NOME_INICIAL, :NOME_FINAL )')
    Left = 274
    Top = 511
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
      end
      item
        DataType = ftUnknown
        Name = 'NOME_INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NOME_FINAL'
        ParamType = ptUnknown
      end>
    object Fat_VendasPorMarcaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."CODIGO"'
    end
    object Fat_VendasPorMarcaDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."DATA"'
    end
    object Fat_VendasPorMarcaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasPorMarcaSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."SEQUENCIA"'
    end
    object Fat_VendasPorMarcaQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NATUREZA"'
    end
    object Fat_VendasPorMarcaNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_NATUREZA"'
      Size = 50
    end
    object Fat_VendasPorMarcaNF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NF"'
    end
    object Fat_VendasPorMarcaPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRC_UNITARIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRC_CUSTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ICM"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."IPI"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."VOLUME"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PESO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."DESCONTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PORC_DESC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasPorMarcaPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRC_UNIT_ORIGINAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasPorMarcaALIQUOTA: TIBStringField
      FieldName = 'ALIQUOTA'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ALIQUOTA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasPorMarcaPRODUTOFIS: TIBStringField
      FieldName = 'PRODUTOFIS'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PRODUTOFIS"'
      Size = 15
    end
    object Fat_VendasPorMarcaNOME_FIS: TIBStringField
      FieldName = 'NOME_FIS'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_FIS"'
      Size = 50
    end
    object Fat_VendasPorMarcaCTE: TIntegerField
      FieldName = 'CTE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."CTE"'
    end
    object Fat_VendasPorMarcaCTIE: TIntegerField
      FieldName = 'CTIE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."CTIE"'
    end
    object Fat_VendasPorMarcaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."ORIGEM"'
    end
    object Fat_VendasPorMarcaREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."REDUCAO"'
    end
    object Fat_VendasPorMarcaSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."SUBUNIDADE"'
    end
    object Fat_VendasPorMarcaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PESSOA_FJ"'
    end
    object Fat_VendasPorMarcaPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_VendasPorMarcaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."VENDEDOR"'
    end
    object Fat_VendasPorMarcaNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_VendasPorMarcaVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_POR_GRUPO"."DESC_ACRES"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasPorMarcaVLRLIQUIDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object Fat_VendasPorMarcaMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"VER_FAT_VENDAS_POR_MARCA"."MARCA"'
    end
    object Fat_VendasPorMarcaNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"VER_FAT_VENDAS_POR_MARCA"."NOME_MARCA"'
      Size = 50
    end
    object Fat_VendasPorMarca_Total_Item: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Total_Item'
      Calculated = True
    end
  end
  object Fat_VendasMarca: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Fat_VendasMarcaCalcFields
    SQL.Strings = (
      'select  * from PCD_REL_VENDAS_MARCA(:CNPJ,:DTINI,:DTFIM)')
    Left = 213
    Top = 511
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        ParamType = ptUnknown
      end>
    object Fat_VendasMarcaCODIGO_VD: TIntegerField
      FieldName = 'CODIGO_VD'
      Origin = '"PCD_REL_VENDAS_MARCA"."CODIGO_VD"'
    end
    object Fat_VendasMarcaQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"PCD_REL_VENDAS_MARCA"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasMarcaUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = '"PCD_REL_VENDAS_MARCA"."UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasMarcaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"PCD_REL_VENDAS_MARCA"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasMarcaTOTAL_ITEM: TIBBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = '"PCD_REL_VENDAS_MARCA"."TOTAL_ITEM"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasMarcaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"PCD_REL_VENDAS_MARCA"."VENDEDOR"'
    end
    object Fat_VendasMarcaFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"PCD_REL_VENDAS_MARCA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasMarcaCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_REL_VENDAS_MARCA"."CLIENTE"'
      Size = 70
    end
    object Fat_VendasMarcaCOD_MARCA: TIntegerField
      FieldName = 'COD_MARCA'
      Origin = '"PCD_REL_VENDAS_MARCA"."COD_MARCA"'
    end
    object Fat_VendasMarcaMARCA: TIBStringField
      FieldName = 'MARCA'
      Origin = '"PCD_REL_VENDAS_MARCA"."MARCA"'
      Size = 50
    end
    object Fat_VendasMarcaN_DOCTO: TIntegerField
      FieldName = 'N_DOCTO'
      Origin = '"PCD_REL_VENDAS_MARCA"."N_DOCTO"'
    end
    object Fat_VendasMarcaDATA_CX: TDateField
      FieldName = 'DATA_CX'
      Origin = '"PCD_REL_VENDAS_MARCA"."DATA_CX"'
    end
    object Fat_VendasMarcaDATA_VD: TDateField
      FieldName = 'DATA_VD'
      Origin = '"PCD_REL_VENDAS_MARCA"."DATA_VD"'
    end
    object Fat_VendasMarcaCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_REL_VENDAS_MARCA"."CFOP"'
    end
    object Fat_VendasMarcaUND: TIBStringField
      FieldName = 'UND'
      Origin = '"PCD_REL_VENDAS_MARCA"."UND"'
      Size = 10
    end
    object Fat_VendasMarcaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_REL_VENDAS_MARCA"."PRODUTO"'
      Size = 70
    end
    object Fat_VendasMarca_Total_Descto: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Total_Descto'
      Calculated = True
    end
    object Fat_VendasMarcaPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"PCD_REL_VENDAS_MARCA"."PESO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasMarcaTOTAL_PESO: TIBBCDField
      FieldName = 'TOTAL_PESO'
      Origin = '"PCD_REL_VENDAS_MARCA"."TOTAL_PESO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasMarcaSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"PCD_REL_VENDAS_MARCA"."SEQUENCIA"'
    end
  end
  object ANALISE_INADIMPLENCIA: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    LANCADO,'
      '    PAGO,'
      '    ABERTO,'
      '    MES ,'
      '    ANO,'
      '    PORCENTAGEM'
      'from ANALISE_INADIMPLENCIA'
      '( :CNPJ, :DATA )')
    Left = 637
    Top = 198
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
    object ANALISE_INADIMPLENCIALANCADO: TIBBCDField
      DisplayLabel = 'Lan'#231'ado'
      FieldName = 'LANCADO'
      Origin = '"ANALISE_INADIMPLENCIA"."LANCADO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ANALISE_INADIMPLENCIAPAGO: TIBBCDField
      DisplayLabel = 'Pago'
      FieldName = 'PAGO'
      Origin = '"ANALISE_INADIMPLENCIA"."PAGO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ANALISE_INADIMPLENCIAABERTO: TIBBCDField
      DisplayLabel = 'Aberto'
      FieldName = 'ABERTO'
      Origin = '"ANALISE_INADIMPLENCIA"."ABERTO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ANALISE_INADIMPLENCIAMES: TIntegerField
      DisplayLabel = 'M'#234's'
      FieldName = 'MES'
      Origin = '"ANALISE_INADIMPLENCIA"."MES"'
    end
    object ANALISE_INADIMPLENCIAANO: TIntegerField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"ANALISE_INADIMPLENCIA"."ANO"'
    end
    object ANALISE_INADIMPLENCIAPORCENTAGEM: TIBBCDField
      FieldName = 'PORCENTAGEM'
      Origin = '"ANALISE_INADIMPLENCIA"."PORCENTAGEM"'
      Precision = 18
      Size = 4
    end
  end
  object Fat_VendasComissao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Fat_VendasComissaoCalcFields
    SQL.Strings = (
      'Select'
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
      '    DESCRICAO ,'
      '    TIPO_VENDA ,'
      '    NOME_CONSUMIDOR ,'
      '    ORCAMENTO ,'
      '    VENDEDO ,'
      '    NOME_VENDEDOR,'
      '    DATA_CAIXA, '
      '    TROCO,'
      '    CANCELADA,'
      '    COM_PRAZO, '
      '    COM_VISTA,'
      '    PRODUTO ,'
      '    NOME_PRODUTO ,'
      '    SEQUENCIA ,'
      '    QUANTIDADE ,'
      '    PRC_UNITARIO ,'
      '    PRC_CUSTO ,'
      '    DESCONTO ,'
      '    PORC_DESC ,'
      '    UNIDADE '
      'from VER_FAT_VENDAS_COMISSAO'
      '(  :CNPJ,  :DTINIC,  :DTFINAL,  :VENDOR ) '
      'ORDER BY VENDEDO, DATA_CAIXA, CODIGO'
      '')
    Left = 637
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDOR'
        ParamType = ptUnknown
      end>
    object Fat_VendasComissaoCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CODIGO"'
    end
    object Fat_VendasComissaoFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasComissaoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."HISTORICO"'
      Size = 100
    end
    object Fat_VendasComissaoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PESSOA_FJ"'
    end
    object Fat_VendasComissaoPESSOA_RAZAO: TIBStringField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_VendasComissaoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."USUARIO"'
    end
    object Fat_VendasComissaoNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NATUREZA"'
    end
    object Fat_VendasComissaoNOME_NATUREZA: TIBStringField
      DisplayLabel = 'Natureza'
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NOME_NATUREZA"'
      Size = 50
    end
    object Fat_VendasComissaoENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasComissaoFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."FORMA_PGTO"'
    end
    object Fat_VendasComissaoNUM_NF: TIntegerField
      DisplayLabel = 'NF'
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NUM_NF"'
    end
    object Fat_VendasComissaoNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NUM_CUPOM"'
    end
    object Fat_VendasComissaoPROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PROPRIEDADE"'
    end
    object Fat_VendasComissaoCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CONVENIADO"'
    end
    object Fat_VendasComissaoTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasComissaoLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."LOCAL_COBRANCA"'
    end
    object Fat_VendasComissaoDESC_ACRES: TIBBCDField
      DisplayLabel = 'Desconto/Acrescimo'
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DESC_ACRES"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoTOTAL: TIBBCDField
      DisplayLabel = 'Total'
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TERCEIRO"'
    end
    object Fat_VendasComissaoCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CARGA"'
    end
    object Fat_VendasComissaoVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VOLUME"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."PESO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."REQUISICAO"'
      Size = 6
    end
    object Fat_VendasComissaoDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DESCRICAO"'
      Size = 8
    end
    object Fat_VendasComissaoTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object Fat_VendasComissaoNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Fat_VendasComissaoORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."ORCAMENTO"'
    end
    object Fat_VendasComissaoVLRLIQUIDO: TIBBCDField
      DisplayLabel = 'Vlr Liquido'
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      EditFormat = '#,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."VENDEDO"'
    end
    object Fat_VendasComissaoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_VendasComissaoAVISTA: TFloatField
      FieldKind = fkCalculated
      FieldName = 'AVISTA'
      Calculated = True
    end
    object Fat_VendasComissaoAPRAZO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'APRAZO'
      Calculated = True
    end
    object Fat_VendasComissaoTROCO: TIBBCDField
      FieldName = 'TROCO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."TROCO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasComissaoCOM_PRAZO: TIBBCDField
      FieldName = 'COM_PRAZO'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."COM_PRAZO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoCOM_VISTA: TIBBCDField
      FieldName = 'COM_VISTA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."COM_VISTA"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoDATA: TDateTimeField
      DisplayLabel = 'Dt Venda'
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DATA"'
    end
    object Fat_VendasComissaoDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_VENDEDOR"."DATA_CAIXA"'
    end
    object Fat_VendasComissaoPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasComissaoNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasComissaoSEQUENCIA: TIntegerField
      DisplayLabel = 'Sequencia'
      FieldName = 'SEQUENCIA'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."SEQUENCIA"'
    end
    object Fat_VendasComissaoQUANTIDADE: TIBBCDField
      DisplayLabel = 'Qntde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."QUANTIDADE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoPRC_UNITARIO: TIBBCDField
      DisplayLabel = 'Unit'#225'rio'
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."PRC_UNITARIO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoPRC_CUSTO: TIBBCDField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."PRC_CUSTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoDESCONTO: TIBBCDField
      DisplayLabel = 'Desconto'
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."DESCONTO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoPORC_DESC: TIBBCDField
      DisplayLabel = 'Porc Desc'
      FieldName = 'PORC_DESC'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."PORC_DESC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasComissaoUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasComissaoItem: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Item'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Fat_VendasComissaoItem_Vista: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Item_Vista'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Fat_VendasComissaoItem_Prazo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Item_Prazo'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
    object Fat_VendasComissaoVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."VENDEDO"'
    end
    object Fat_VendasComissaoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_COMISSAO"."OBSERVACAO"'
      Size = 200
    end
  end
  object Entradas_Itens_Agrupada: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    PRODUTO ,'
      '    NOME_PRODUTO,'
      '    SUM(QUANTIDADE)  QUANTIDADE,'
      '    SUM(PRC_CUSTO)  PRC_CUSTO,'
      '    SUM(PRC_CUSTO_DIG)  PRC_CUSTO_DIG'
      'FROM VER_EST_ENT_ITENS_AGRUPADO'
      '( :CNPJ,  :NDOCTO, :PESSOA_FJ,  :INICIAL, :FINAL )'
      'GROUP BY PRODUTO, NOME_PRODUTO'
      'ORDER BY PRODUTO, NOME_PRODUTO'
      '')
    Left = 637
    Top = 149
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'NDOCTO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'PESSOA_FJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'INICIAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'FINAL'
        ParamType = ptUnknown
      end>
    object Entradas_Itens_AgrupadaPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VER_EST_ENT_ITENS_AGRUPADO"."PRODUTO"'
      Size = 15
    end
    object Entradas_Itens_AgrupadaQUANTIDADE: TFloatField
      DisplayLabel = 'Qtde'
      FieldName = 'QUANTIDADE'
      Origin = '"VER_EST_ENT_ITENS_AGRUPADO"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
    end
    object Entradas_Itens_AgrupadaPRC_CUSTO: TFloatField
      DisplayLabel = 'Custo'
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_EST_ENT_ITENS_AGRUPADO"."PRC_CUSTO"'
      DisplayFormat = '###,##0.00'
    end
    object Entradas_Itens_AgrupadaNOME_PRODUTO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_EST_ENT_ITENS_AGRUPADO"."NOME_PRODUTO"'
      Size = 50
    end
    object Entradas_Itens_AgrupadaPRC_CUSTO_DIG: TFloatField
      DisplayLabel = 'Custo Digitado'
      FieldName = 'PRC_CUSTO_DIG'
      Origin = '"VER_EST_ENT_ITENS_AGRUPADO"."PRC_CUSTO_DIG"'
      DisplayFormat = '###,##0.00'
    end
  end
  object FECHAMENTO_MES: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    PRODUTO ,'
      '    DATA ,'
      '    SALDO_INICIAL,'
      '    ENTRADAS,'
      '    SAIDAS,'
      '    GRUPO,'
      '    CUSTO,'
      '    SUB_GRUPO,'
      '    NOME'
      'FROM VER_EST_FECHAMENTO_MES'
      '('
      ':CNPJ,:MES,:ANO'
      ')'
      '')
    Left = 340
    Top = 323
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MES'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ANO'
        ParamType = ptUnknown
      end>
    object FECHAMENTO_MESPRODUTO: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'PRODUTO'
      Origin = '"VER_EST_FECHAMENTO_MES"."PRODUTO"'
      Size = 15
    end
    object FECHAMENTO_MESDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_EST_FECHAMENTO_MES"."DATA"'
    end
    object FECHAMENTO_MESSALDO_INICIAL: TIBBCDField
      FieldName = 'SALDO_INICIAL'
      Origin = '"VER_EST_FECHAMENTO_MES"."SALDO_INICIAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_MESENTRADAS: TIBBCDField
      FieldName = 'ENTRADAS'
      Origin = '"VER_EST_FECHAMENTO_MES"."ENTRADAS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_MESSAIDAS: TIBBCDField
      FieldName = 'SAIDAS'
      Origin = '"VER_EST_FECHAMENTO_MES"."SAIDAS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_MESGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_EST_FECHAMENTO_MES"."GRUPO"'
    end
    object FECHAMENTO_MESCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VER_EST_FECHAMENTO_MES"."CUSTO"'
      Precision = 18
      Size = 4
    end
    object FECHAMENTO_MESSUB_GRUPO: TIntegerField
      FieldName = 'SUB_GRUPO'
      Origin = '"VER_EST_FECHAMENTO_MES"."SUB_GRUPO"'
    end
    object FECHAMENTO_MESNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_EST_FECHAMENTO_MES"."NOME"'
      Size = 50
    end
  end
  object Fat_TrocasItens: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'Select '
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
      '    NOME_PRODUTO,'
      '    TIPO '
      'from VER_TROCA_ITENS( :CNPJ, :CODIGO) ')
    Left = 213
    Top = 369
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
    object Fat_TrocasItensDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_TROCA_ITENS"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_TROCA_ITENS"."ICM"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_TROCA_ITENS"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_TROCA_ITENS"."IPI"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensPESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_TROCA_ITENS"."PESO"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensPORC_DESC: TIBBCDField
      FieldName = 'PORC_DESC'
      Origin = '"VER_TROCA_ITENS"."PORC_DESC"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_TROCA_ITENS"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensPRC_UNIT_ORIGINAL: TIBBCDField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"VER_TROCA_ITENS"."PRC_UNIT_ORIGINAL"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_TROCA_ITENS"."PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_TROCA_ITENS"."PRODUTO"'
      Size = 15
    end
    object Fat_TrocasItensQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_TROCA_ITENS"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = '"VER_TROCA_ITENS"."SEQUENCIA"'
    end
    object Fat_TrocasItensUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_TROCA_ITENS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_TrocasItensSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_TROCA_ITENS"."SUBUNIDADE"'
    end
    object Fat_TrocasItensVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_TROCA_ITENS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Fat_TrocasItensNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_TROCA_ITENS"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_TrocasItensTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"VER_TROCA_ITENS"."TIPO"'
      FixedChar = True
      Size = 1
    end
  end
  object Fat_VendasSubGrupo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Fat_VendasSubGrupoCalcFields
    SQL.Strings = (
      'select'
      '    PRODUTO ,'
      '    GRUPO ,'
      '    NOME_GRUPO ,'
      '    SUBGRUPO ,'
      '    NOME_SUBGRUPO ,'
      '    NOME_PRODUTO ,'
      '    UNIDADE ,'
      '    SUBUNIDADE,'
      '    QUANTIDADE ,'
      '    VALOR,'
      '    VENDEDOR,'
      '    NOME_VENDEDOR,'
      '    FECHADA   ,'
      '    CUSTO'
      'from VER_FAT_VENDAS_SUBGRUPO'
      '('
      '    :CNPJ ,'
      '    :DATAINI ,'
      '    :DATAFIM ,'
      '    :COD_GRUPO ,'
      '    :COD_SUBGRUPO '
      ')')
    Left = 637
    Top = 259
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
      end
      item
        DataType = ftUnknown
        Name = 'COD_GRUPO'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_SUBGRUPO'
        ParamType = ptUnknown
      end>
    object Fat_VendasSubGrupoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasSubGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."GRUPO"'
    end
    object Fat_VendasSubGrupoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_VendasSubGrupoSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."SUBGRUPO"'
    end
    object Fat_VendasSubGrupoNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."NOME_SUBGRUPO"'
      Size = 50
    end
    object Fat_VendasSubGrupoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasSubGrupoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasSubGrupoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."SUBUNIDADE"'
    end
    object Fat_VendasSubGrupoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasSubGrupoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasSubGrupoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."VENDEDOR"'
    end
    object Fat_VendasSubGrupoFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasSubGrupoCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."CUSTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasSubGrupoTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      Calculated = True
    end
    object Fat_VendasSubGrupoNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_SUBGRUPO"."NOME_VENDEDOR"'
      Size = 50
    end
  end
  object Fat_GarantiasCli: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    DATA ,'
      '    FECHADA ,'
      '    PESSOA_FJ ,'
      '    PESSOA_RAZAO ,'
      '    USUARIO ,'
      '    ENVIADA_CX ,'
      '    FORMA_PGTO ,'
      '    TIPO_DOCTO ,'
      '    LOCAL_COBRANCA ,'
      '    DESC_ACRESC ,'
      '    ENTRADA ,'
      '    DINHEIRO ,'
      '    CHEQUE ,'
      '    CARTAO ,'
      '    TICKET,'
      '    TOTAL ,'
      '    VLRLIQUIDO ,'
      '    OBSERVACAO ,'
      '    VLR_PARC_LC ,'
      '    NOME_CONSUMIDOR ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR ,'
      '    TOTAL_2,'
      '    DESC_ACRESC_2'
      'FROM VER_FAT_GARANTIAS_CLIENTE'
      '( :CNPJ,  :DINI ,  :DFIM,  :PESSOA )')
    Left = 340
    Top = 409
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
    object Fat_GarantiasCliCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."CODIGO"'
    end
    object Fat_GarantiasCliDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DATA"'
    end
    object Fat_GarantiasCliFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_GarantiasCliPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."PESSOA_FJ"'
    end
    object Fat_GarantiasCliPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."PESSOA_RAZAO"'
      Size = 50
    end
    object Fat_GarantiasCliUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."USUARIO"'
    end
    object Fat_GarantiasCliENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object Fat_GarantiasCliFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."FORMA_PGTO"'
    end
    object Fat_GarantiasCliTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object Fat_GarantiasCliLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."LOCAL_COBRANCA"'
    end
    object Fat_GarantiasCliDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DESC_ACRESC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."ENTRADA"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DINHEIRO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."CHEQUE"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."CARTAO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TICKET"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TOTAL"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliVLRLIQUIDO: TIBBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."VLRLIQUIDO"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."OBSERVACAO"'
      Size = 80
    end
    object Fat_GarantiasCliVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."VLR_PARC_LC"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object Fat_GarantiasCliVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."VENDEDOR"'
    end
    object Fat_GarantiasCliNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."NOME_VENDEDOR"'
      Size = 50
    end
    object Fat_GarantiasCliTOTAL_2: TIBBCDField
      DisplayLabel = 'Total 2'
      FieldName = 'TOTAL_2'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."TOTAL_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_GarantiasCliDESC_ACRESC_2: TIBBCDField
      DisplayLabel = 'Desc/Acr'#233'sc'
      FieldName = 'DESC_ACRESC_2'
      Origin = '"VER_FAT_TROCAS_CLIENTE"."DESC_ACRESC_2"'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 4
    end
  end
  object PosicaoEstoqueVenda: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = PosicaoEstoqueVendaCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    CODIGO_INTERNO,'
      '    CUSTO_AQUISICAO,'
      '    NOME ,'
      '    UNIDADE,'
      '    NOME_GRUPO ,'
      '    CODIGO_G ,'
      '    SUBGRUPO ,'
      '    NOME_SUBGRUPO ,'
      '    SUBUNIDADE ,'
      '    QTDADE_2 ,'
      '    PRC_REPOS ,'
      '    PRC_CUSTO_MED ,'
      '    PRC_VENDA ,'
      '    VENDA'
      
        'from VER_PRODUTO_GRUPO_VENDA ( :CNPJ, :GRUPO_INI, :GRUPO_FIM, :A' +
        'TV, :MINI, :MFIM )'
      'ORDER BY NOME_GRUPO, NOME_SUBGRUPO, NOME')
    Left = 56
    Top = 150
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_INI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRUPO_FIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'ATV'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'MFIM'
        ParamType = ptUnknown
      end>
    object PosicaoEstoqueVendaCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO"'
      Size = 15
    end
    object PosicaoEstoqueVendaCODIGO_INTERNO: TIntegerField
      FieldName = 'CODIGO_INTERNO'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO_INTERNO"'
    end
    object PosicaoEstoqueVendaCUSTO_AQUISICAO: TIBBCDField
      FieldName = 'CUSTO_AQUISICAO'
      Origin = '"VER_PRODUTO_GRUPO"."CUSTO_AQUISICAO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoqueVendaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_PRODUTO_GRUPO"."NOME"'
      Size = 50
    end
    object PosicaoEstoqueVendaUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_PRODUTO_GRUPO"."UNIDADE"'
      Size = 5
    end
    object PosicaoEstoqueVendaNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."NOME_GRUPO"'
      Size = 50
    end
    object PosicaoEstoqueVendaCODIGO_G: TIntegerField
      FieldName = 'CODIGO_G'
      Origin = '"VER_PRODUTO_GRUPO"."CODIGO_G"'
    end
    object PosicaoEstoqueVendaSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."SUBGRUPO"'
    end
    object PosicaoEstoqueVendaNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_PRODUTO_GRUPO"."NOME_SUBGRUPO"'
      Size = 50
    end
    object PosicaoEstoqueVendaSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_PRODUTO_GRUPO"."SUBUNIDADE"'
    end
    object PosicaoEstoqueVendaQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VER_PRODUTO_GRUPO"."QTDADE_2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoqueVendaPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_REPOS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoqueVendaPRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_CUSTO_MED"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoqueVendaPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VER_PRODUTO_GRUPO"."PRC_VENDA"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoqueVendaVENDA: TIBBCDField
      FieldName = 'VENDA'
      Origin = '"VER_PRODUTO_GRUPO_VENDA"."VENDA"'
      Precision = 18
      Size = 4
    end
    object PosicaoEstoqueVendaMARGEM: TFloatField
      FieldKind = fkCalculated
      FieldName = 'MARGEM'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object PosicaoEstoqueVendaPRC_CUSTO_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_CUSTO_TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object PosicaoEstoqueVendaPRC_VENDA_TOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'PRC_VENDA_TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object IMPRESSORAFAT: TRDprint
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
    CaptionSetup = 'Rdprint Setup'
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
    Left = 637
    Top = 511
  end
  object ORDENS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = ORDENSCalcFields
    SQL.Strings = (
      'select'
      '    CODIGO ,'
      '    DATA ,'
      '    DATA_FECHAMENTO ,'
      '    PESSOA_FJ ,'
      '    ENVIADA_CX ,'
      '    NOME ,'
      '    NATUREZA ,'
      '    MECANICO ,'
      '    VIAJANTE ,'
      '    ENTRADA ,'
      '    MOTOR ,'
      '    HISTORICO ,'
      '    CHASSI ,'
      '    TOTAL ,'
      '    DESC_ACRESC ,'
      '    CLIENTE ,'
      '    FECHADO ,'
      '    NOME_NATUREZA ,'
      '    NOME_MECANICO ,'
      '    NOME_VIAJANTE ,'
      '    NOME_MOTOR ,'
      '    NF ,'
      '    ALIQUOTA_ISS '
      'FROM VER_ORDEM_SERVICO_PERIODO'
      '( :CNPJ, :DINI, :DFIM )'
      'ORDER BY NOME, PESSOA_FJ')
    Left = 407
    Top = 369
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
    object ORDENSCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."CODIGO"'
    end
    object ORDENSDATA: TDateTimeField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."DATA"'
    end
    object ORDENSDATA_FECHAMENTO: TDateTimeField
      DisplayLabel = 'Fechamento'
      FieldName = 'DATA_FECHAMENTO'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."DATA_FECHAMENTO"'
    end
    object ORDENSPESSOA_FJ: TIntegerField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."PESSOA_FJ"'
    end
    object ORDENSENVIADA_CX: TIBStringField
      DisplayLabel = 'Env. Caixa'
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object ORDENSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."NOME"'
      Size = 50
    end
    object ORDENSNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."NATUREZA"'
    end
    object ORDENSMECANICO: TIntegerField
      FieldName = 'MECANICO'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."MECANICO"'
    end
    object ORDENSVIAJANTE: TIntegerField
      FieldName = 'VIAJANTE'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."VIAJANTE"'
    end
    object ORDENSENTRADA: TDateTimeField
      FieldName = 'ENTRADA'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."ENTRADA"'
      DisplayFormat = '###,##0.00'
    end
    object ORDENSMOTOR: TIntegerField
      FieldName = 'MOTOR'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."MOTOR"'
    end
    object ORDENSHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."HISTORICO"'
      Size = 100
    end
    object ORDENSCHASSI: TIBStringField
      FieldName = 'CHASSI'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."CHASSI"'
      Size = 30
    end
    object ORDENSTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."TOTAL"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ORDENSDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."DESC_ACRESC"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ORDENSCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."CLIENTE"'
      Size = 50
    end
    object ORDENSFECHADO: TIBStringField
      FieldName = 'FECHADO'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."FECHADO"'
      Size = 50
    end
    object ORDENSNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."NOME_NATUREZA"'
      Size = 50
    end
    object ORDENSNOME_MECANICO: TIBStringField
      FieldName = 'NOME_MECANICO'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."NOME_MECANICO"'
      Size = 50
    end
    object ORDENSNOME_VIAJANTE: TIBStringField
      FieldName = 'NOME_VIAJANTE'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."NOME_VIAJANTE"'
      Size = 50
    end
    object ORDENSNOME_MOTOR: TIBStringField
      FieldName = 'NOME_MOTOR'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."NOME_MOTOR"'
      Size = 50
    end
    object ORDENSNF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."NF"'
    end
    object ORDENSALIQUOTA_ISS: TIBBCDField
      FieldName = 'ALIQUOTA_ISS'
      Origin = '"VER_ORDEM_SERVICO_PERIODO"."ALIQUOTA_ISS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ORDENSVLRLIQUIDO: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLRLIQUIDO'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object ORDENS_SERVICOS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    SERVICO ,'
      '    NOME ,'
      '    QUANTIDADE ,'
      '    UNITARIO,'
      '    SELECIONADO '
      'FROM CONSULTA_ORDEM_SERVICO_ITENS'
      '( :CNPJ, :CODIGO )')
    Left = 474
    Top = 369
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
    object ORDENS_SERVICOSSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."SERVICO"'
    end
    object ORDENS_SERVICOSNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."NOME"'
      Size = 50
    end
    object ORDENS_SERVICOSQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."QUANTIDADE"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ORDENS_SERVICOSUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."UNITARIO"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object ORDENS_SERVICOSSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"CONSULTA_ORDEM_SERVICO_ITENS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object ORDENS_SERVICOSTOTAL: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TOTAL'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
  end
  object VER_FAT_VENDAS_ANALISE_CLIENTE: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    PESSOA_FJ ,'
      '    DATA_CAIXA ,'
      '    VENDEDOR ,'
      '    NOME_VENDEDOR ,'
      '    PLACA ,'
      '    SOMA ,'
      '    TOTAL ,'
      '    MES ,'
      '    ANO '
      'FROM VER_FAT_VENDAS_ANALISE_PLACA '
      '( :CNPJ, :DATA, :CLIENTE )'
      'ORDER BY ANO, MES')
    Left = 554
    Top = 369
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
        Name = 'CLIENTE'
        ParamType = ptUnknown
      end>
    object VER_FAT_VENDAS_ANALISE_CLIENTESOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."SOMA"'
      Precision = 18
      Size = 4
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTEMES: TIntegerField
      FieldName = 'MES'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."MES"'
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTEANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."ANO"'
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTEPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."PESSOA_FJ"'
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTEDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."DATA_CAIXA"'
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTEVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."VENDEDOR"'
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTENOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."NOME_VENDEDOR"'
      Size = 50
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTEPLACA: TIBStringField
      FieldName = 'PLACA'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."PLACA"'
      Size = 8
    end
    object VER_FAT_VENDAS_ANALISE_CLIENTETOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_ANALISE_PLACA"."TOTAL"'
      Precision = 18
      Size = 4
    end
  end
  object SelPessoas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
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
      '    ORDEM'
      'FROM VER_PESSOA_FJ ( :CNPJ )'
      'ORDER BY NOME_RAZAO')
    Left = 498
    Top = 251
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
  end
  object VerCheque_Comissao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = VerCheque_ComissaoCalcFields
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
      '    VENDEDOR'
      'from VER_FIN_CHEQUES_COMISSAO '
      '( :CNPJ, :INI, :FIM )'
      'Where VENDEDOR = :VENDEDOR')
    Left = 637
    Top = 6
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
        Name = 'VENDEDOR'
        ParamType = ptUnknown
      end>
    object VerCheque_ComissaoBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"VER_FIN_CHEQUES"."BANCO"'
      FixedChar = True
      Size = 3
    end
    object VerCheque_ComissaoCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"VER_FIN_CHEQUES"."CONTA"'
      Size = 15
    end
    object VerCheque_ComissaoCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"VER_FIN_CHEQUES"."CHEQUE"'
      Size = 6
    end
    object VerCheque_ComissaoVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"VER_FIN_CHEQUES"."VENDA"'
    end
    object VerCheque_ComissaoVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"VER_FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_ComissaoCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"VER_FIN_CHEQUES"."CONCILIADO"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_ComissaoPESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FIN_CHEQUES"."PESSOA_FJ"'
    end
    object VerCheque_ComissaoHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"VER_FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object VerCheque_ComissaoAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"VER_FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object VerCheque_ComissaoNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"VER_FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object VerCheque_ComissaoFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_FIN_CHEQUES"."FONE"'
    end
    object VerCheque_ComissaoFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_FIN_CHEQUES"."FAX"'
    end
    object VerCheque_ComissaoCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_FIN_CHEQUES"."CELULAR"'
    end
    object VerCheque_ComissaoCPF_CGC: TIBStringField
      DisplayLabel = 'Cpf/Cnpj'
      FieldName = 'CPF_CGC'
      Origin = '"VER_FIN_CHEQUES"."CPF_CGC"'
      Size = 15
    end
    object VerCheque_ComissaoTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object VerCheque_ComissaoJUROS: TIBBCDField
      DisplayLabel = 'Juros'
      FieldName = 'JUROS'
      Origin = '"VER_FIN_CHEQUES"."JUROS"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_ComissaoMOEDA1: TIBBCDField
      DisplayLabel = 'Moeda 1'
      FieldName = 'MOEDA1'
      Origin = '"VER_FIN_CHEQUES"."MOEDA1"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_ComissaoMOEDA2: TIBBCDField
      DisplayLabel = 'Moeda 2'
      FieldName = 'MOEDA2'
      Origin = '"VER_FIN_CHEQUES"."MOEDA2"'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 4
    end
    object VerCheque_ComissaoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      DisplayWidth = 2
      FieldName = 'TIPO'
      Origin = '"VER_FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object VerCheque_ComissaoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"VER_FIN_CHEQUES"."PLANILHA"'
    end
    object VerCheque_ComissaoDIGITO_AGENCIA: TIBStringField
      DisplayLabel = 'Dig Ag'#234'ncia'
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"VER_FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_ComissaoDIGITO_CHEQUE: TIBStringField
      DisplayLabel = 'Dig. Cheque'
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"VER_FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object VerCheque_ComissaoEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"VER_FIN_CHEQUES"."EMISSAO"'
    end
    object VerCheque_ComissaoPRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"VER_FIN_CHEQUES"."PRE_DATE"'
    end
    object VerCheque_ComissaoDATA_CONCILIACAO: TDateTimeField
      DisplayLabel = 'Concilia'#231#227'o'
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"VER_FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object VerCheque_ComissaoDATA_ACERTO: TDateTimeField
      DisplayLabel = 'Acerto'
      FieldName = 'DATA_ACERTO'
      Origin = '"VER_FIN_CHEQUES"."DATA_ACERTO"'
    end
    object VerCheque_ComissaoDATA_DEVOLUCAO: TDateTimeField
      DisplayLabel = 'Devolu'#231#227'o'
      FieldName = 'DATA_DEVOLUCAO'
      Origin = '"VER_FIN_CHEQUES"."DATA_DEVOLUCAO"'
    end
    object VerCheque_ComissaoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FIN_CHEQUES_COMISSAO"."VENDEDOR"'
    end
  end
  object Geral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Left = 167
    Top = 323
  end
  object Fat_VendasGrupoSel: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Fat_VendasGrupoSelCalcFields
    SQL.Strings = (
      'Select * from '
      'VER_FAT_VENDAS_GRUPO_SEL( :CNPJ,  :DTINI,  :DTFIM) '
      'WHERE  VENDEDOR = :VENDEDOR')
    Left = 56
    Top = 323
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        ParamType = ptUnknown
      end>
    object Fat_VendasGrupoSelPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasGrupoSelGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."GRUPO"'
    end
    object Fat_VendasGrupoSelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."CODIGO"'
    end
    object Fat_VendasGrupoSelDATA: TDateField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."DATA"'
    end
    object Fat_VendasGrupoSelPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PESSOA_FJ"'
    end
    object Fat_VendasGrupoSelNF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NF"'
    end
    object Fat_VendasGrupoSelNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NATUREZA"'
    end
    object Fat_VendasGrupoSelNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NOME_RAZAO"'
      Size = 50
    end
    object Fat_VendasGrupoSelNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_VendasGrupoSelNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasGrupoSelUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasGrupoSelSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."SUBUNIDADE"'
    end
    object Fat_VendasGrupoSelQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."VALOR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."VENDEDOR"'
    end
    object Fat_VendasGrupoSelFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasGrupoSelCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."CUSTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelCOM_VENDA_VLR: TIBBCDField
      FieldName = 'COM_VENDA_VLR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_VENDA_VLR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelCOM_VENDA_PCT: TIBBCDField
      FieldName = 'COM_VENDA_PCT'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_VENDA_PCT"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelTOTAL_PRODUTO: TIBBCDField
      FieldName = 'TOTAL_PRODUTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."TOTAL_PRODUTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelTOTAL_DESCONTO: TIBBCDField
      FieldName = 'TOTAL_DESCONTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."TOTAL_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelPARTICIP_LUCRO: TIBBCDField
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PARTICIP_LUCRO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelCOM_VISTA_VENDEDOR: TIBBCDField
      FieldName = 'COM_VISTA_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_VISTA_VENDEDOR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelCOM_PRAZO_VENDEDOR: TIBBCDField
      FieldName = 'COM_PRAZO_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_PRAZO_VENDEDOR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelCOMPUTA_VENDA: TIBStringField
      FieldName = 'COMPUTA_VENDA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COMPUTA_VENDA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasGrupoSelPAGA_COMISSAO: TIBStringField
      FieldName = 'PAGA_COMISSAO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PAGA_COMISSAO"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasGrupoSelTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
  end
  object VER_EST_PRODUTOS_GRADES: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    CNPJ ,'
      '    CODIGO,'
      '    CODIGO_2,'
      '    CNPJ_AGRUP,'
      '    COD_AGRUP,'
      '    NOME,'
      '    MARCA,'
      '    NOME_MARCA,'
      '    GRUPO ,'
      '    SUBGRUPO,'
      '    NOME_GRUPO,'
      '    NOME_SUBGRUPO,'
      '    REDUCAO,'
      '    UNIDADE,'
      '    CTE,'
      '    CTIE,'
      '    QTDADE_1,'
      '    QTDADE_2,'
      '    LOCALIZACAO_1,'
      '    LOCALIZACAO_2,'
      '    LOCALIZACAO_3,'
      '    NEG_QTDADE_2,'
      '    QTDADE_MIN,'
      '    QTDADE_MAX,'
      '    COMPLEMENTO_NF,'
      '    DT_ULT_COMPRA,'
      '    QT_ULT_COMPRA,'
      '    DT_ULT_VENDA,'
      '    MARGEM_BRUTA,'
      '    PRC_REPOS,'
      '    PRC_CUSTO_ANT,'
      '    PRC_CUSTO_MED,'
      '    PRC_VENDA,'
      '    PRC_VENDA_ANT,'
      '    PRC_VENDA_MED,'
      '    ALIQUOTA_ECF,'
      '    ORIGEM,'
      '    PESO_LIQ,'
      '    PERC_FRETE,'
      '    IPI,'
      '    VOLUME,'
      '    PROD_PESAVEL,'
      '    ETIQUETA_ENT,'
      '    ATIVO,'
      '    ULTIMO_FORNECEDOR,'
      '    FORNECEDOR ,'
      '    SUBUNIDADE ,'
      '    PRC_CUSTO_CODIF,'
      '    GRADE,'
      '    MATERIAL,'
      '    COR,'
      '    ULTIMA_COMPRA,'
      '    QTDADE_COMPRA ,'
      '    ULTIMA_VENDA ,'
      '    QTDADE_VENDA ,'
      '    ESTOQUE ,'
      '    PERFIL ,'
      '    NOME_PERFIL ,'
      '    NOME_COR ,'
      '    NOME_MATERIAL ,'
      '    NUMERO ,'
      '    INICIAL, '
      '    FINAL,'
      '    INTERVALO'
      'FROM VER_EST_PRODUTOS_GRADES'
      '( :CNPJ )')
    Left = 167
    Top = 411
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VER_EST_PRODUTOS_GRADESCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VER_EST_PRODUTOS_GRADES"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object VER_EST_PRODUTOS_GRADESCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."CODIGO"'
      Size = 15
    end
    object VER_EST_PRODUTOS_GRADESCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"VER_EST_PRODUTOS_GRADES"."CODIGO_2"'
      Size = 15
    end
    object VER_EST_PRODUTOS_GRADESCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"VER_EST_PRODUTOS_GRADES"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object VER_EST_PRODUTOS_GRADESCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"VER_EST_PRODUTOS_GRADES"."COD_AGRUP"'
      Size = 15
    end
    object VER_EST_PRODUTOS_GRADESNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NOME"'
      Size = 50
    end
    object VER_EST_PRODUTOS_GRADESMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."MARCA"'
    end
    object VER_EST_PRODUTOS_GRADESNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NOME_MARCA"'
      Size = 50
    end
    object VER_EST_PRODUTOS_GRADESGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."GRUPO"'
    end
    object VER_EST_PRODUTOS_GRADESSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."SUBGRUPO"'
    end
    object VER_EST_PRODUTOS_GRADESNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NOME_GRUPO"'
      Size = 50
    end
    object VER_EST_PRODUTOS_GRADESNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NOME_SUBGRUPO"'
      Size = 50
    end
    object VER_EST_PRODUTOS_GRADESREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."REDUCAO"'
    end
    object VER_EST_PRODUTOS_GRADESUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_EST_PRODUTOS_GRADES"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"VER_EST_PRODUTOS_GRADES"."CTE"'
    end
    object VER_EST_PRODUTOS_GRADESCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"VER_EST_PRODUTOS_GRADES"."CTIE"'
    end
    object VER_EST_PRODUTOS_GRADESQTDADE_1: TIBBCDField
      FieldName = 'QTDADE_1'
      Origin = '"VER_EST_PRODUTOS_GRADES"."QTDADE_1"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VER_EST_PRODUTOS_GRADES"."QTDADE_2"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"VER_EST_PRODUTOS_GRADES"."LOCALIZACAO_1"'
      Size = 30
    end
    object VER_EST_PRODUTOS_GRADESLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"VER_EST_PRODUTOS_GRADES"."LOCALIZACAO_2"'
      Size = 30
    end
    object VER_EST_PRODUTOS_GRADESLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"VER_EST_PRODUTOS_GRADES"."LOCALIZACAO_3"'
      Size = 30
    end
    object VER_EST_PRODUTOS_GRADESNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object VER_EST_PRODUTOS_GRADESQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"VER_EST_PRODUTOS_GRADES"."QTDADE_MIN"'
    end
    object VER_EST_PRODUTOS_GRADESQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"VER_EST_PRODUTOS_GRADES"."QTDADE_MAX"'
    end
    object VER_EST_PRODUTOS_GRADESCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"VER_EST_PRODUTOS_GRADES"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object VER_EST_PRODUTOS_GRADESDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."DT_ULT_COMPRA"'
    end
    object VER_EST_PRODUTOS_GRADESQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."QT_ULT_COMPRA"'
    end
    object VER_EST_PRODUTOS_GRADESDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."DT_ULT_VENDA"'
    end
    object VER_EST_PRODUTOS_GRADESMARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PRC_REPOS"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPRC_CUSTO_ANT: TIBBCDField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PRC_CUSTO_ANT"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PRC_CUSTO_MED"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPRC_VENDA_ANT: TIBBCDField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PRC_VENDA_ANT"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPRC_VENDA_MED: TIBBCDField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PRC_VENDA_MED"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object VER_EST_PRODUTOS_GRADESORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ORIGEM"'
    end
    object VER_EST_PRODUTOS_GRADESPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPERC_FRETE: TIBBCDField
      FieldName = 'PERC_FRETE'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PERC_FRETE"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_EST_PRODUTOS_GRADES"."IPI"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_EST_PRODUTOS_GRADES"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object VER_EST_PRODUTOS_GRADESETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object VER_EST_PRODUTOS_GRADESATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object VER_EST_PRODUTOS_GRADESULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ULTIMO_FORNECEDOR"'
    end
    object VER_EST_PRODUTOS_GRADESFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"VER_EST_PRODUTOS_GRADES"."FORNECEDOR"'
    end
    object VER_EST_PRODUTOS_GRADESSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_EST_PRODUTOS_GRADES"."SUBUNIDADE"'
    end
    object VER_EST_PRODUTOS_GRADESPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PRC_CUSTO_CODIF"'
      Size = 15
    end
    object VER_EST_PRODUTOS_GRADESGRADE: TIBStringField
      FieldName = 'GRADE'
      Origin = '"VER_EST_PRODUTOS_GRADES"."GRADE"'
      FixedChar = True
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESMATERIAL: TIntegerField
      FieldName = 'MATERIAL'
      Origin = '"VER_EST_PRODUTOS_GRADES"."MATERIAL"'
    end
    object VER_EST_PRODUTOS_GRADESCOR: TIntegerField
      FieldName = 'COR'
      Origin = '"VER_EST_PRODUTOS_GRADES"."COR"'
    end
    object VER_EST_PRODUTOS_GRADESULTIMA_COMPRA: TDateTimeField
      FieldName = 'ULTIMA_COMPRA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ULTIMA_COMPRA"'
    end
    object VER_EST_PRODUTOS_GRADESQTDADE_COMPRA: TIBBCDField
      FieldName = 'QTDADE_COMPRA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."QTDADE_COMPRA"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESULTIMA_VENDA: TDateTimeField
      FieldName = 'ULTIMA_VENDA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ULTIMA_VENDA"'
    end
    object VER_EST_PRODUTOS_GRADESQTDADE_VENDA: TIBBCDField
      FieldName = 'QTDADE_VENDA'
      Origin = '"VER_EST_PRODUTOS_GRADES"."QTDADE_VENDA"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = '"VER_EST_PRODUTOS_GRADES"."ESTOQUE"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADESPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Origin = '"VER_EST_PRODUTOS_GRADES"."PERFIL"'
    end
    object VER_EST_PRODUTOS_GRADESNOME_PERFIL: TIBStringField
      FieldName = 'NOME_PERFIL'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NOME_PERFIL"'
      Size = 50
    end
    object VER_EST_PRODUTOS_GRADESNOME_COR: TIBStringField
      FieldName = 'NOME_COR'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NOME_COR"'
      Size = 50
    end
    object VER_EST_PRODUTOS_GRADESNOME_MATERIAL: TIBStringField
      FieldName = 'NOME_MATERIAL'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NOME_MATERIAL"'
      Size = 50
    end
    object VER_EST_PRODUTOS_GRADESNUMERO: TIntegerField
      FieldName = 'NUMERO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."NUMERO"'
    end
    object VER_EST_PRODUTOS_GRADESINICIAL: TIntegerField
      FieldName = 'INICIAL'
      Origin = '"VER_EST_PRODUTOS_GRADES"."INICIAL"'
    end
    object VER_EST_PRODUTOS_GRADESFINAL: TIntegerField
      FieldName = 'FINAL'
      Origin = '"VER_EST_PRODUTOS_GRADES"."FINAL"'
    end
    object VER_EST_PRODUTOS_GRADESINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"VER_EST_PRODUTOS_GRADES"."INTERVALO"'
    end
  end
  object VER_EST_PRODUTOS_GRADES_NUMEROS: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = VER_EST_PRODUTOS_GRADES_NUMEROSBeforeOpen
    SQL.Strings = (
      'SELECT'
      '    ESTOQUE,'
      '    NUMERO,'
      '    ORDEM '
      'FROM VER_EST_PRODUTOS_GRADES_NUMEROS'
      '( :CNPJ, :PRODUTO, :GRADE )'
      'ORDER BY ORDEM, NUMERO')
    Left = 407
    Top = 462
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
        Name = 'GRADE'
        ParamType = ptUnknown
      end>
    object VER_EST_PRODUTOS_GRADES_NUMEROSESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Origin = '"VER_EST_PRODUTOS_GRADES_NUMEROS"."ESTOQUE"'
      Precision = 18
      Size = 4
    end
    object VER_EST_PRODUTOS_GRADES_NUMEROSNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_EST_PRODUTOS_GRADES_NUMEROS"."NUMERO"'
      Size = 6
    end
    object VER_EST_PRODUTOS_GRADES_NUMEROSORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"VER_EST_PRODUTOS_GRADES_NUMEROS"."ORDEM"'
    end
  end
  object VER_EST_GRADES_ADICIONAL: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = VER_EST_GRADES_ADICIONALBeforeOpen
    SQL.Strings = (
      'Select'
      '   codigo,'
      '   ordem'
      'from VER_EST_GRADES_ADICIONAL'
      '( :CNPJ, :GRADE )'
      'ORDER BY ORDEM')
    Left = 407
    Top = 411
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'GRADE'
        ParamType = ptUnknown
      end>
    object VER_EST_GRADES_ADICIONALCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VER_EST_GRADES_ADICIONAL"."CODIGO"'
      Size = 6
    end
    object VER_EST_GRADES_ADICIONALORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"VER_EST_GRADES_ADICIONAL"."ORDEM"'
    end
  end
  object VER_EST_GRADES: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT '
      '    CODIGO,'
      '    NOME,'
      '    INICIAL,'
      '    FINAL,'
      '    INTERVALO'
      'FROM VER_EST_GRADES'
      '( :CNPJ )'
      'ORDER BY NOME, CODIGO')
    Left = 554
    Top = 411
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object VER_EST_GRADESCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_EST_GRADES"."CODIGO"'
    end
    object VER_EST_GRADESNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_EST_GRADES"."NOME"'
      Size = 50
    end
    object VER_EST_GRADESINICIAL: TIntegerField
      FieldName = 'INICIAL'
      Origin = '"VER_EST_GRADES"."INICIAL"'
    end
    object VER_EST_GRADESFINAL: TIntegerField
      FieldName = 'FINAL'
      Origin = '"VER_EST_GRADES"."FINAL"'
    end
    object VER_EST_GRADESINTERVALO: TIntegerField
      FieldName = 'INTERVALO'
      Origin = '"VER_EST_GRADES"."INTERVALO"'
    end
  end
  object Ver_Pagamentos_Vendas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '*'
      'from VER_DADOS_BAIXA_VENDA'
      '( :CNPJ, :VENDA )')
    Left = 274
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDA'
        ParamType = ptUnknown
      end>
    object Ver_Pagamentos_VendasDATA_BAIXA: TDateField
      FieldName = 'DATA_BAIXA'
      Origin = '"VER_DADOS_BAIXA_VENDA"."DATA_BAIXA"'
    end
    object Ver_Pagamentos_VendasBANCO: TIBStringField
      FieldName = 'BANCO'
      Origin = '"VER_DADOS_BAIXA_VENDA"."BANCO"'
      Size = 15
    end
  end
  object qPosEstGrade: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SelectSQL.Strings = (
      'select sum(ESTOQUE) estoque, perfil, coalesce(codigo , '#39#39')'
      
        '||'#39' | '#39'|| coalesce(produto, '#39#39') || '#39' | '#39'||coalesce(codigo_2, '#39#39')' +
        ' produto, '
      'marca , numero, ordem'
      'from ver_est_posicao_estoque_grade(:cnpj)'
      'group by produto, numero, codigo, codigo_2, ordem, marca, perfil'
      'order by ordem')
    Left = 167
    Top = 464
    object qPosEstGradeESTOQUE: TIBBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 4
    end
    object qPosEstGradeNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Size = 6
    end
    object qPosEstGradeORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object qPosEstGradePERFIL: TIBStringField
      FieldName = 'PERFIL'
      Size = 50
    end
    object qPosEstGradePRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 86
    end
    object qPosEstGradeMARCA: TIBStringField
      FieldName = 'MARCA'
      Size = 50
    end
  end
  object qPerfil: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select PERFIL '
      'from LISTA_PERFIL_PRODUTOS(:cnpj, :produto)')
    Left = 109
    Top = 411
    ParamData = <
      item
        DataType = ftString
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftString
        Name = 'produto'
        ParamType = ptUnknown
      end>
  end
  object Fat_VendasGrupoQntdeSel: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select'
      '    PRODUTO ,'
      '    GRUPO ,'
      '    NOME_GRUPO ,'
      '    NOME_PRODUTO ,'
      '    UNITARIO,'
      '    UNIDADE ,'
      '    PESSOA_FJ,'
      '    NOME_RAZAO,'
      '    DATA,'
      '    NATUREZA,'
      '    NF,'
      '    SUBUNIDADE,'
      '    DESCONTO,'
      '    QUANTIDADE ,'
      '    VALOR,'
      '    VENDEDOR,'
      '    FECHADA   ,'
      '    CUSTO,'
      '    PRC_UNITARIO,'
      '    CODIGO,'
      '    COM_VENDA_VLR, '
      '    COM_VENDA_PCT, '
      '    PARTICIP_LUCRO,'
      '    COM_VISTA_VENDEDOR ,'
      '    COM_PRAZO_VENDEDOR'
      'from VER_FAT_VENDAS_GRUPO_SEL'
      '('
      '    :CNPJ ,'
      '    :DATAINI ,'
      '    :DATAFIM '
      ')')
    Left = 109
    Top = 323
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
    object Fat_VendasGrupoQntdeSelPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PRODUTO"'
      Size = 15
    end
    object Fat_VendasGrupoQntdeSelGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."GRUPO"'
    end
    object Fat_VendasGrupoQntdeSelNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_VendasGrupoQntdeSelNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NOME_PRODUTO"'
      Size = 50
    end
    object Fat_VendasGrupoQntdeSelUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."SUBUNIDADE"'
    end
    object Fat_VendasGrupoQntdeSelDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."DESCONTO"'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."QUANTIDADE"'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."VALOR"'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."VENDEDOR"'
    end
    object Fat_VendasGrupoQntdeSelFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasGrupoQntdeSelCUSTO: TIBBCDField
      FieldName = 'CUSTO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."CUSTO"'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PRC_UNITARIO"'
      DisplayFormat = '##0.00'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."CODIGO"'
    end
    object Fat_VendasGrupoQntdeSelDATA: TDateField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."DATA"'
    end
    object Fat_VendasGrupoQntdeSelPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PESSOA_FJ"'
    end
    object Fat_VendasGrupoQntdeSelNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NOME_RAZAO"'
      Size = 50
    end
    object Fat_VendasGrupoQntdeSelNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NATUREZA"'
    end
    object Fat_VendasGrupoQntdeSelNF: TIntegerField
      FieldName = 'NF'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."NF"'
    end
    object Fat_VendasGrupoQntdeSelCOM_VENDA_VLR: TIBBCDField
      DisplayLabel = 'Com Vlr'
      FieldName = 'COM_VENDA_VLR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_VENDA_VLR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelCOM_VENDA_PCT: TIBBCDField
      DisplayLabel = 'Com Porc'
      FieldName = 'COM_VENDA_PCT'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_VENDA_PCT"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelPARTICIP_LUCRO: TIBBCDField
      DisplayLabel = 'Particip Lucro'
      FieldName = 'PARTICIP_LUCRO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."PARTICIP_LUCRO"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelCOM_VISTA_VENDEDOR: TIBBCDField
      FieldName = 'COM_VISTA_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_VISTA_VENDEDOR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelCOM_PRAZO_VENDEDOR: TIBBCDField
      FieldName = 'COM_PRAZO_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."COM_PRAZO_VENDEDOR"'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoQntdeSelTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object Fat_VendasGrupoQntdeSelUNITARIO: TIBBCDField
      FieldName = 'UNITARIO'
      Origin = '"VER_FAT_VENDAS_GRUPO_SEL"."UNITARIO"'
      Precision = 18
      Size = 4
    end
  end
  object SelCidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select CODIGO, NOME from GLO_CIDADES'
      'where CNPJ = :CNPJ'
      'order by Nome')
    Left = 213
    Top = 323
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      Required = True
    end
    object SelCidadeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object Caixas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select distinct cx.CONTA conta , pln.nome nome'
      'from FAT_USUARIOS_CAIXA cx'
      'inner join ctb_planoconta pln on (cx.conta = pln.conta)'
      'where cx.CNPJ = :CNPJ and ATIVO = '#39'S'#39
      'union'
      
        'select distinct cast (-1 as integer) conta, cast ('#39'Todos os Caix' +
        'as'#39' as varchar(50)) nome'
      'from  FAT_USUARIOS_CAIXA cx'
      'inner join ctb_planoconta pln on (cx.conta = pln.conta)')
    Left = 167
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object CaixasCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object CaixasNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object VER_FAT_VENDAS_ANALISE_MES: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      'SOMA,'
      'SEMANA'
      'FROM VER_FAT_VENDAS_ANALISE_MES ( :CNPJ, :DATAINI, :ULTIMODIA )'
      'ORDER BY SEMANA')
    Left = 274
    Top = 411
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
        Name = 'ULTIMODIA'
        ParamType = ptUnknown
      end>
    object VER_FAT_VENDAS_ANALISE_MESSOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"VER_FAT_VENDAS_ANALISE_MES"."SOMA"'
      Precision = 18
      Size = 4
    end
    object VER_FAT_VENDAS_ANALISE_MESSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Origin = '"VER_FAT_VENDAS_ANALISE_MES"."SEMANA"'
    end
  end
  object VER_FAT_VENDAS_ANALISE_CUSTOS_MES: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '     SOMA,'
      '     SEMANA'
      'FROM VER_FAT_VENDAS_CUSTOS_MES'
      '( :CNPJ, :DATAINI, :ULTIMODIA )'
      'ORDER BY SEMANA')
    Left = 56
    Top = 411
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
        Name = 'ULTIMODIA'
        ParamType = ptUnknown
      end>
    object VER_FAT_VENDAS_ANALISE_CUSTOS_MESSOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"VER_FAT_VENDAS_CUSTOS_MES"."SOMA"'
      Precision = 18
      Size = 4
    end
    object VER_FAT_VENDAS_ANALISE_CUSTOS_MESSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Origin = '"VER_FAT_VENDAS_CUSTOS_MES"."SEMANA"'
    end
  end
  object VER_FIN_PAGAS_ANALISE_MES: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT'
      '    SOMA ,'
      '    SEMANA ,'
      '    TIPO_CENTRO ,'
      '    CENTRO_CUSTO ,'
      '    NOME'
      'FROM VER_FIN_PAGAS_ANALISE_MES'
      '( :CNPJ, :DATAINI, :ULTIMODIA )'
      'WHERE TIPO_CENTRO = :TIPO'
      'ORDER BY NOME,  SEMANA '
      '')
    Left = 213
    Top = 411
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
        Name = 'ULTIMODIA'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'TIPO'
        ParamType = ptUnknown
      end>
    object VER_FIN_PAGAS_ANALISE_MESSOMA: TIBBCDField
      FieldName = 'SOMA'
      Origin = '"VER_FIN_PAGAS_ANALISE_MES"."SOMA"'
      Precision = 18
      Size = 4
    end
    object VER_FIN_PAGAS_ANALISE_MESSEMANA: TIntegerField
      FieldName = 'SEMANA'
      Origin = '"VER_FIN_PAGAS_ANALISE_MES"."SEMANA"'
    end
    object VER_FIN_PAGAS_ANALISE_MESTIPO_CENTRO: TIBStringField
      FieldName = 'TIPO_CENTRO'
      Origin = '"VER_FIN_PAGAS_ANALISE_MES"."TIPO_CENTRO"'
      FixedChar = True
      Size = 3
    end
    object VER_FIN_PAGAS_ANALISE_MESCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"VER_FIN_PAGAS_ANALISE_MES"."CENTRO_CUSTO"'
    end
    object VER_FIN_PAGAS_ANALISE_MESNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_FIN_PAGAS_ANALISE_MES"."NOME"'
      Size = 50
    end
  end
  object Fat_EntradasPorProduto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from VER_EST_ENTRADAS_MANUAL'
      'Where CNPJ = :CNPJ')
    Left = 15
    Top = 651
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Fat_EntradasPorProdutoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object Fat_EntradasPorProdutoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."CODIGO"'
    end
    object Fat_EntradasPorProdutoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."GRUPO"'
    end
    object Fat_EntradasPorProdutoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."NOME_GRUPO"'
      Size = 50
    end
    object Fat_EntradasPorProdutoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."DATA"'
    end
    object Fat_EntradasPorProdutoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."PRODUTO"'
      Size = 15
    end
    object Fat_EntradasPorProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."NOME"'
      Size = 50
    end
    object Fat_EntradasPorProdutoVLR_CAIXA: TIBBCDField
      FieldName = 'VLR_CAIXA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_CAIXA"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_EMBALAGEM: TIBBCDField
      FieldName = 'VLR_EMBALAGEM'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_EMBALAGEM"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_COMPRA: TIBBCDField
      FieldName = 'VLR_COMPRA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_COMPRA"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_IPI: TIBBCDField
      FieldName = 'VLR_IPI'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_IPI"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_FRETE_PROPRIO: TIBBCDField
      FieldName = 'VLR_FRETE_PROPRIO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_FRETE_PROPRIO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_FRETE_TERCEIRO: TIBBCDField
      FieldName = 'VLR_FRETE_TERCEIRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_FRETE_TERCEIRO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_TRIBUTACAO_CREDITO: TIBBCDField
      FieldName = 'VLR_TRIBUTACAO_CREDITO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_TRIBUTACAO_CREDITO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_OUTRAS_DESPESAS: TIBBCDField
      FieldName = 'VLR_OUTRAS_DESPESAS'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_OUTRAS_DESPESAS"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_VENDA: TIBBCDField
      FieldName = 'VLR_VENDA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_VENDA"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_LUCRO: TIBBCDField
      FieldName = 'VLR_LUCRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_LUCRO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_CUSTO_TOTAL: TIBBCDField
      FieldName = 'VLR_CUSTO_TOTAL'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_CUSTO_TOTAL"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object Fat_EntradasPorProdutoVLR_RENTABILIDADE: TIBBCDField
      FieldName = 'VLR_RENTABILIDADE'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_RENTABILIDADE"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoVLR_ICM_VENDA: TIBBCDField
      FieldName = 'VLR_ICM_VENDA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_ICM_VENDA"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoMARGEM_LUCRO: TIBBCDField
      FieldName = 'MARGEM_LUCRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."MARGEM_LUCRO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_FRETE_TERCEIRO: TIBBCDField
      FieldName = 'TOT_FRETE_TERCEIRO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_FRETE_TERCEIRO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_ICM_CREDITO: TIBBCDField
      FieldName = 'TOT_ICM_CREDITO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_ICM_CREDITO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_ICM_DEBITO: TIBBCDField
      FieldName = 'TOT_ICM_DEBITO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_ICM_DEBITO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_RENTABILIDADE: TIBBCDField
      FieldName = 'TOT_RENTABILIDADE'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_RENTABILIDADE"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_IPI: TIBBCDField
      FieldName = 'TOT_IPI'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_IPI"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_DESP_OPERACIONAL: TIBBCDField
      FieldName = 'TOT_DESP_OPERACIONAL'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_DESP_OPERACIONAL"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_DESP_FEDERAL: TIBBCDField
      FieldName = 'TOT_DESP_FEDERAL'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_DESP_FEDERAL"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoTOT_FRETE_PROPRIO: TIBBCDField
      FieldName = 'TOT_FRETE_PROPRIO'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."TOT_FRETE_PROPRIO"'
      Precision = 18
      Size = 4
    end
    object Fat_EntradasPorProdutoHORA: TTimeField
      FieldName = 'HORA'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."HORA"'
    end
    object Fat_EntradasPorProdutoVLR_VENDA_ANTERIOR: TIBBCDField
      FieldName = 'VLR_VENDA_ANTERIOR'
      Origin = '"VER_EST_ENTRADAS_MANUAL"."VLR_VENDA_ANTERIOR"'
      Precision = 18
      Size = 4
    end
  end
  object Ver_Est_Produtos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from VER_EST_PRODUTOS ( :CNPJ )')
    Left = 274
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object Ver_Est_ProdutosCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"VER_EST_PRODUTOS"."CNPJ"'
      FixedChar = True
      Size = 14
    end
    object Ver_Est_ProdutosCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = '"VER_EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object Ver_Est_ProdutosCODIGO_2: TIBStringField
      FieldName = 'CODIGO_2'
      Origin = '"VER_EST_PRODUTOS"."CODIGO_2"'
      Size = 15
    end
    object Ver_Est_ProdutosCNPJ_AGRUP: TIBStringField
      FieldName = 'CNPJ_AGRUP'
      Origin = '"VER_EST_PRODUTOS"."CNPJ_AGRUP"'
      FixedChar = True
      Size = 14
    end
    object Ver_Est_ProdutosCOD_AGRUP: TIBStringField
      FieldName = 'COD_AGRUP'
      Origin = '"VER_EST_PRODUTOS"."COD_AGRUP"'
      Size = 15
    end
    object Ver_Est_ProdutosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object Ver_Est_ProdutosMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = '"VER_EST_PRODUTOS"."MARCA"'
    end
    object Ver_Est_ProdutosGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = '"VER_EST_PRODUTOS"."GRUPO"'
    end
    object Ver_Est_ProdutosSUBGRUPO: TIntegerField
      FieldName = 'SUBGRUPO'
      Origin = '"VER_EST_PRODUTOS"."SUBGRUPO"'
    end
    object Ver_Est_ProdutosNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Origin = '"VER_EST_PRODUTOS"."NOME_GRUPO"'
      Size = 50
    end
    object Ver_Est_ProdutosNOME_SUBGRUPO: TIBStringField
      FieldName = 'NOME_SUBGRUPO'
      Origin = '"VER_EST_PRODUTOS"."NOME_SUBGRUPO"'
      Size = 50
    end
    object Ver_Est_ProdutosREDUCAO: TIntegerField
      FieldName = 'REDUCAO'
      Origin = '"VER_EST_PRODUTOS"."REDUCAO"'
    end
    object Ver_Est_ProdutosUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Ver_Est_ProdutosCTE: TSmallintField
      FieldName = 'CTE'
      Origin = '"VER_EST_PRODUTOS"."CTE"'
    end
    object Ver_Est_ProdutosCTIE: TSmallintField
      FieldName = 'CTIE'
      Origin = '"VER_EST_PRODUTOS"."CTIE"'
    end
    object Ver_Est_ProdutosQTDADE_1: TIBBCDField
      FieldName = 'QTDADE_1'
      Origin = '"VER_EST_PRODUTOS"."QTDADE_1"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosQTDADE_2: TIBBCDField
      FieldName = 'QTDADE_2'
      Origin = '"VER_EST_PRODUTOS"."QTDADE_2"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"VER_EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object Ver_Est_ProdutosLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"VER_EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object Ver_Est_ProdutosLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"VER_EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
    object Ver_Est_ProdutosNEG_QTDADE_2: TIBStringField
      FieldName = 'NEG_QTDADE_2'
      Origin = '"VER_EST_PRODUTOS"."NEG_QTDADE_2"'
      FixedChar = True
      Size = 1
    end
    object Ver_Est_ProdutosQTDADE_MIN: TIntegerField
      FieldName = 'QTDADE_MIN'
      Origin = '"VER_EST_PRODUTOS"."QTDADE_MIN"'
    end
    object Ver_Est_ProdutosQTDADE_MAX: TIntegerField
      FieldName = 'QTDADE_MAX'
      Origin = '"VER_EST_PRODUTOS"."QTDADE_MAX"'
    end
    object Ver_Est_ProdutosCOMPLEMENTO_NF: TIBStringField
      FieldName = 'COMPLEMENTO_NF'
      Origin = '"VER_EST_PRODUTOS"."COMPLEMENTO_NF"'
      FixedChar = True
      Size = 1
    end
    object Ver_Est_ProdutosDT_ULT_COMPRA: TDateTimeField
      FieldName = 'DT_ULT_COMPRA'
      Origin = '"VER_EST_PRODUTOS"."DT_ULT_COMPRA"'
    end
    object Ver_Est_ProdutosQT_ULT_COMPRA: TIntegerField
      FieldName = 'QT_ULT_COMPRA'
      Origin = '"VER_EST_PRODUTOS"."QT_ULT_COMPRA"'
    end
    object Ver_Est_ProdutosDT_ULT_VENDA: TDateTimeField
      FieldName = 'DT_ULT_VENDA'
      Origin = '"VER_EST_PRODUTOS"."DT_ULT_VENDA"'
    end
    object Ver_Est_ProdutosMARGEM_BRUTA: TIBBCDField
      FieldName = 'MARGEM_BRUTA'
      Origin = '"VER_EST_PRODUTOS"."MARGEM_BRUTA"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPRC_REPOS: TIBBCDField
      FieldName = 'PRC_REPOS'
      Origin = '"VER_EST_PRODUTOS"."PRC_REPOS"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPRC_CUSTO_ANT: TIBBCDField
      FieldName = 'PRC_CUSTO_ANT'
      Origin = '"VER_EST_PRODUTOS"."PRC_CUSTO_ANT"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPRC_CUSTO_MED: TIBBCDField
      FieldName = 'PRC_CUSTO_MED'
      Origin = '"VER_EST_PRODUTOS"."PRC_CUSTO_MED"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VER_EST_PRODUTOS"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPRC_VENDA_ANT: TIBBCDField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"VER_EST_PRODUTOS"."PRC_VENDA_ANT"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPRC_VENDA_MED: TIBBCDField
      FieldName = 'PRC_VENDA_MED'
      Origin = '"VER_EST_PRODUTOS"."PRC_VENDA_MED"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosALIQUOTA_ECF: TIBStringField
      FieldName = 'ALIQUOTA_ECF'
      Origin = '"VER_EST_PRODUTOS"."ALIQUOTA_ECF"'
      FixedChar = True
      Size = 5
    end
    object Ver_Est_ProdutosORIGEM: TSmallintField
      FieldName = 'ORIGEM'
      Origin = '"VER_EST_PRODUTOS"."ORIGEM"'
    end
    object Ver_Est_ProdutosPESO_LIQ: TIBBCDField
      FieldName = 'PESO_LIQ'
      Origin = '"VER_EST_PRODUTOS"."PESO_LIQ"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPERC_FRETE: TIBBCDField
      FieldName = 'PERC_FRETE'
      Origin = '"VER_EST_PRODUTOS"."PERC_FRETE"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_EST_PRODUTOS"."IPI"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_EST_PRODUTOS"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object Ver_Est_ProdutosPROD_PESAVEL: TIBStringField
      FieldName = 'PROD_PESAVEL'
      Origin = '"VER_EST_PRODUTOS"."PROD_PESAVEL"'
      FixedChar = True
      Size = 1
    end
    object Ver_Est_ProdutosETIQUETA_ENT: TIBStringField
      FieldName = 'ETIQUETA_ENT'
      Origin = '"VER_EST_PRODUTOS"."ETIQUETA_ENT"'
      FixedChar = True
      Size = 1
    end
    object Ver_Est_ProdutosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"VER_EST_PRODUTOS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object Ver_Est_ProdutosULTIMO_FORNECEDOR: TIntegerField
      FieldName = 'ULTIMO_FORNECEDOR'
      Origin = '"VER_EST_PRODUTOS"."ULTIMO_FORNECEDOR"'
    end
    object Ver_Est_ProdutosFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = '"VER_EST_PRODUTOS"."FORNECEDOR"'
    end
    object Ver_Est_ProdutosSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_EST_PRODUTOS"."SUBUNIDADE"'
    end
    object Ver_Est_ProdutosNOME_MARCA: TIBStringField
      FieldName = 'NOME_MARCA'
      Origin = '"VER_EST_PRODUTOS"."NOME_MARCA"'
      Size = 50
    end
    object Ver_Est_ProdutosPRC_CUSTO_CODIF: TIBStringField
      FieldName = 'PRC_CUSTO_CODIF'
      Origin = '"VER_EST_PRODUTOS"."PRC_CUSTO_CODIF"'
      Size = 15
    end
  end
  object lkpUsuario: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select distinct cx.usuario, u.login'
      'from FAT_USUARIOS_CAIXA cx'
      'inner join sis_usuarios u on (u.codigo = cx.usuario)'
      'where cx.CNPJ = :CNPJ and ATIVO = '#39'S'#39
      'union'
      
        'select distinct cast (-1 as integer) usuario, cast ('#39'Todos'#39' as v' +
        'archar(10)) login'
      'from FAT_USUARIOS_CAIXA cx')
    Left = 109
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object lkpUsuarioUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object lkpUsuarioLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Required = True
      Size = 10
    end
  end
  object SelUsuario: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select CODIGO, '
      '          LOGIN, '
      '          NOME, '
      '          PERFIL, '
      '          SENHA'
      'from SIS_USUARIOS')
    Left = 554
    Top = 464
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
  object Fat_VendasGrupoSelecao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = Fat_VendasGrupoSelCalcFields
    SQL.Strings = (
      
        'SELECT SUM(VD.total_desconto) total_desconto, SUM(VD.total_produ' +
        'to) total_produto,SUM(VD.CUSTO) TOTAL_CUSTO,'
      'SUM(QUANTIDADE) total_QUANTIDADE,'
      
        '       PRODUTO,GRUPO,NATUREZA,NOME_GRUPO,NOME_PRODUTO,PRC_UNITAR' +
        'IO,'
      
        '      COM_VENDA_VLR, COM_VENDA_PCT, PARTICIP_LUCRO, COM_VISTA_VE' +
        'NDEDOR, COM_PRAZO_VENDEDOR,'
      
        '      COMPUTA_VENDA, PAGA_COMISSAO FROM VER_FAT_VENDAS_GRUPO_SEL' +
        '( :CNPJ,  :DTINI,  :DTFIM ) VD'
      'WHERE  VENDEDOR = :VENDEDOR'
      
        'GROUP BY PRODUTO,GRUPO,NATUREZA,NOME_GRUPO,NOME_PRODUTO,PRC_UNIT' +
        'ARIO,'
      
        '      COM_VENDA_VLR, COM_VENDA_PCT, PARTICIP_LUCRO, COM_VISTA_VE' +
        'NDEDOR, COM_PRAZO_VENDEDOR,'
      '      COMPUTA_VENDA, PAGA_COMISSAO')
    Left = 56
    Top = 511
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFIM'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'VENDEDOR'
        ParamType = ptUnknown
      end>
    object Fat_VendasGrupoSelecaoTOTAL_DESCONTO: TIBBCDField
      FieldName = 'TOTAL_DESCONTO'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoTOTAL_PRODUTO: TIBBCDField
      FieldName = 'TOTAL_PRODUTO'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoTOTAL_CUSTO: TIBBCDField
      FieldName = 'TOTAL_CUSTO'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoTOTAL_QUANTIDADE: TIBBCDField
      FieldName = 'TOTAL_QUANTIDADE'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 15
    end
    object Fat_VendasGrupoSelecaoGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object Fat_VendasGrupoSelecaoNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
    end
    object Fat_VendasGrupoSelecaoNOME_GRUPO: TIBStringField
      FieldName = 'NOME_GRUPO'
      Size = 50
    end
    object Fat_VendasGrupoSelecaoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Size = 50
    end
    object Fat_VendasGrupoSelecaoPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoCOM_VENDA_VLR: TIBBCDField
      FieldName = 'COM_VENDA_VLR'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoCOM_VENDA_PCT: TIBBCDField
      FieldName = 'COM_VENDA_PCT'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoPARTICIP_LUCRO: TIBBCDField
      FieldName = 'PARTICIP_LUCRO'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoCOM_VISTA_VENDEDOR: TIBBCDField
      FieldName = 'COM_VISTA_VENDEDOR'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoCOM_PRAZO_VENDEDOR: TIBBCDField
      FieldName = 'COM_PRAZO_VENDEDOR'
      Precision = 18
      Size = 4
    end
    object Fat_VendasGrupoSelecaoCOMPUTA_VENDA: TIBStringField
      FieldName = 'COMPUTA_VENDA'
      FixedChar = True
      Size = 1
    end
    object Fat_VendasGrupoSelecaoPAGA_COMISSAO: TIBStringField
      FieldName = 'PAGA_COMISSAO'
      FixedChar = True
      Size = 1
    end
  end
  object SelMecanico: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select CNPJ, CODIGO, NOME'
      'from OFC_MECANICOS'
      'WHERE CNPJ = :CNPJ'
      'order by NOME')
    Left = 340
    Top = 511
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object IBStringField1: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"EST_MARCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object IntegerField1: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"EST_MARCAS"."CODIGO"'
      Required = True
    end
    object IBStringField2: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Origin = '"EST_MARCAS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object qryRelVendasGerais: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterCancel = Notas_FaturaCalcFields
    SQL.Strings = (
      'select * from pcd_rel_vendas_gerais(:cnpj,:dt_ini,:dt_fin)')
    Left = 109
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end>
    object qryRelVendasGeraisN_DOCTO: TIntegerField
      FieldName = 'N_DOCTO'
      Origin = '"PCD_REL_VENDAS_GERAIS"."N_DOCTO"'
    end
    object qryRelVendasGeraisNOME_RAZAO: TIBStringField
      DisplayWidth = 60
      FieldName = 'NOME_RAZAO'
      Origin = '"PCD_REL_VENDAS_GERAIS"."NOME_RAZAO"'
      Size = 60
    end
    object qryRelVendasGeraisDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."DATA"'
    end
    object qryRelVendasGeraisCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_REL_VENDAS_GERAIS"."CFOP"'
    end
    object qryRelVendasGeraisTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object qryRelVendasGeraisDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."DATA_CAIXA"'
    end
    object qryRelVendasGeraisVLR_BRUTO: TIBBCDField
      FieldName = 'VLR_BRUTO'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_BRUTO"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGeraisVLR_DESC_ACRESC: TIBBCDField
      FieldName = 'VLR_DESC_ACRESC'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGeraisVLR_TOTAL: TIBBCDField
      FieldName = 'VLR_TOTAL'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGeraisVLR_BASE_ICM: TIBBCDField
      FieldName = 'VLR_BASE_ICM'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_BASE_ICM"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGeraisVLR_ICM: TIBBCDField
      FieldName = 'VLR_ICM'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_ICM"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGeraisVLR_ICM_SUB: TIBBCDField
      FieldName = 'VLR_ICM_SUB'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_ICM_SUB"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGeraisVLR_BASE_ICM_SUB: TIBBCDField
      FieldName = 'VLR_BASE_ICM_SUB'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_BASE_ICM_SUB"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasGeraisCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object qryRelVendasGeraisSTATUS: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PCD_REL_VENDAS_GERAIS"."STATUS"'
      Size = 10
    end
    object qryRelVendasGeraisTIPO_DOC: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"PCD_REL_VENDAS_GERAIS"."TIPO_DOC"'
    end
    object qryRelVendasGeraisCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."COD_VENDA"'
    end
    object qryRelVendasGeraisPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_REL_VENDAS_GERAIS"."PESSOA_FJ"'
    end
  end
  object qryTtlContabil: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterCancel = Notas_FaturaCalcFields
    SQL.Strings = (
      'select * from PCD_TOTAL_FISCAL(:cnpj,:dt_ini,:dt_fin,:cliente)')
    Left = 167
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qryTtlContabilCTE5VLRICMS: TIBBCDField
      FieldName = 'CTE5VLRICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTE5VLRICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTE5TOTAL: TIBBCDField
      FieldName = 'CTE5TOTAL'
      Origin = '"PCD_TOTAL_FISCAL"."CTE5TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTE5BASEICMS: TIBBCDField
      FieldName = 'CTE5BASEICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTE5BASEICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEESTBASEICMS: TIBBCDField
      FieldName = 'CTEESTBASEICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEESTBASEICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEESTVLRICMS: TIBBCDField
      FieldName = 'CTEESTVLRICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEESTVLRICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEESTTOTAL: TIBBCDField
      FieldName = 'CTEESTTOTAL'
      Origin = '"PCD_TOTAL_FISCAL"."CTEESTTOTAL"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEINTBASEICMS: TIBBCDField
      FieldName = 'CTEINTBASEICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEINTBASEICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEINTVLRICMS: TIBBCDField
      FieldName = 'CTEINTVLRICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEINTVLRICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEINTTOTAL: TIBBCDField
      FieldName = 'CTEINTTOTAL'
      Origin = '"PCD_TOTAL_FISCAL"."CTEINTTOTAL"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTE3BASEICMS: TIBBCDField
      FieldName = 'CTE3BASEICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTE3BASEICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTE3VLRICMS: TIBBCDField
      FieldName = 'CTE3VLRICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTE3VLRICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTE3TOTAL: TIBBCDField
      FieldName = 'CTE3TOTAL'
      Origin = '"PCD_TOTAL_FISCAL"."CTE3TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEDIVBASEICMS: TIBBCDField
      FieldName = 'CTEDIVBASEICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEDIVBASEICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEDIVVLRICMS: TIBBCDField
      FieldName = 'CTEDIVVLRICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEDIVVLRICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEDIVTOTAL: TIBBCDField
      FieldName = 'CTEDIVTOTAL'
      Origin = '"PCD_TOTAL_FISCAL"."CTEDIVTOTAL"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEDEVBASEICMS: TIBBCDField
      FieldName = 'CTEDEVBASEICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEDEVBASEICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEDEVVLRICMS: TIBBCDField
      FieldName = 'CTEDEVVLRICMS'
      Origin = '"PCD_TOTAL_FISCAL"."CTEDEVVLRICMS"'
      Precision = 18
      Size = 4
    end
    object qryTtlContabilCTEDEVTOTAL: TIBBCDField
      FieldName = 'CTEDEVTOTAL'
      Origin = '"PCD_TOTAL_FISCAL"."CTEDEVTOTAL"'
      Precision = 18
      Size = 4
    end
  end
  object Entradas_Produto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select *'
      'from VER_EST_ENTRADAS ( :CNPJ, :PESSOA_FJ )')
    Left = 274
    Top = 275
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
    object Entradas_ProdutoNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"VER_EST_ENTRADAS"."NDOCTO"'
    end
    object Entradas_ProdutoPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"VER_EST_ENTRADAS"."PRODUTO"'
      Size = 15
    end
    object Entradas_ProdutoUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"VER_EST_ENTRADAS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object Entradas_ProdutoQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"VER_EST_ENTRADAS"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"VER_EST_ENTRADAS"."PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoPERC_LUCRO: TIBBCDField
      FieldName = 'PERC_LUCRO'
      Origin = '"VER_EST_ENTRADAS"."PERC_LUCRO"'
      Precision = 18
      Size = 2
    end
    object Entradas_ProdutoPRC_VENDA: TIBBCDField
      FieldName = 'PRC_VENDA'
      Origin = '"VER_EST_ENTRADAS"."PRC_VENDA"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoPRC_VENDA_ANT: TIBBCDField
      FieldName = 'PRC_VENDA_ANT'
      Origin = '"VER_EST_ENTRADAS"."PRC_VENDA_ANT"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Origin = '"VER_EST_ENTRADAS"."PRC_CUSTO"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoICM: TIBBCDField
      FieldName = 'ICM'
      Origin = '"VER_EST_ENTRADAS"."ICM"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoICM_SUBS: TIBBCDField
      FieldName = 'ICM_SUBS'
      Origin = '"VER_EST_ENTRADAS"."ICM_SUBS"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoIPI: TIBBCDField
      FieldName = 'IPI'
      Origin = '"VER_EST_ENTRADAS"."IPI"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoIPI_PRODUTO: TIBBCDField
      FieldName = 'IPI_PRODUTO'
      Origin = '"VER_EST_ENTRADAS"."IPI_PRODUTO"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoTAXAS: TIBBCDField
      FieldName = 'TAXAS'
      Origin = '"VER_EST_ENTRADAS"."TAXAS"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoDESCONTOS: TIBBCDField
      FieldName = 'DESCONTOS'
      Origin = '"VER_EST_ENTRADAS"."DESCONTOS"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoEMBALAGEM: TIBBCDField
      FieldName = 'EMBALAGEM'
      Origin = '"VER_EST_ENTRADAS"."EMBALAGEM"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoFRETE: TIBBCDField
      FieldName = 'FRETE'
      Origin = '"VER_EST_ENTRADAS"."FRETE"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoSEGURO: TIBBCDField
      FieldName = 'SEGURO'
      Origin = '"VER_EST_ENTRADAS"."SEGURO"'
      Precision = 18
      Size = 4
    end
    object Entradas_ProdutoNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"VER_EST_ENTRADAS"."NOME_PRODUTO"'
      Size = 50
    end
    object Entradas_ProdutoSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"VER_EST_ENTRADAS"."SUBUNIDADE"'
    end
    object Entradas_ProdutoDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
      Origin = '"VER_EST_ENTRADAS"."DATA_NF"'
    end
    object Entradas_ProdutoDATA_REF: TDateTimeField
      FieldName = 'DATA_REF'
      Origin = '"VER_EST_ENTRADAS"."DATA_REF"'
    end
    object Entradas_ProdutoDATA_ENT: TDateTimeField
      FieldName = 'DATA_ENT'
      Origin = '"VER_EST_ENTRADAS"."DATA_ENT"'
    end
    object Entradas_ProdutoSERIE_NF: TIBStringField
      FieldName = 'SERIE_NF'
      Origin = '"VER_EST_ENTRADAS"."SERIE_NF"'
      FixedChar = True
      Size = 3
    end
    object Entradas_ProdutoNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_EST_ENTRADAS"."NATUREZA"'
    end
    object Entradas_ProdutoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"VER_EST_ENTRADAS"."NOME"'
      Size = 50
    end
  end
  object qryComissaoVend: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_REL_COMISSAO_VED(:cnpj,:vendedor, :dt_ini,:dt_' +
        'fin)'
      'order by tipo_mov, data')
    Left = 340
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end>
    object qryComissaoVendCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_COM_REC"."CODIGO"'
    end
    object qryComissaoVendDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_REL_COM_REC"."DATA"'
    end
    object qryComissaoVendPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_REL_COM_REC"."PESSOA_FJ"'
    end
    object qryComissaoVendCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_REL_COM_REC"."CLIENTE"'
      Size = 55
    end
    object qryComissaoVendNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"PCD_REL_COM_REC"."NATUREZA"'
    end
    object qryComissaoVendDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_REL_COM_REC"."DOCTO"'
      Size = 15
    end
    object qryComissaoVendTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_REL_COM_REC"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryComissaoVendPORCENTAGEM: TIBBCDField
      FieldName = 'PORCENTAGEM'
      Origin = '"PCD_REL_COM_REC"."PORCENTAGEM"'
      Precision = 18
      Size = 4
    end
    object qryComissaoVendDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"PCD_REL_COM_REC"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object qryComissaoVendLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Origin = '"PCD_REL_COM_REC"."LIQUIDO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoVendVISTA: TIBBCDField
      FieldName = 'VISTA'
      Origin = '"PCD_REL_COM_REC"."VISTA"'
      Precision = 18
      Size = 4
    end
    object qryComissaoVendPRAZO: TIBBCDField
      FieldName = 'PRAZO'
      Origin = '"PCD_REL_COM_REC"."PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoVendTIPO_MOV: TIBStringField
      FieldName = 'TIPO_MOV'
      Origin = '"PCD_REL_COM_REC"."TIPO_MOV"'
      Size = 10
    end
    object qryComissaoVendFORM_PAGTO: TIntegerField
      FieldName = 'FORM_PAGTO'
      Origin = '"PCD_REL_COMISSAO_VED"."FORM_PAGTO"'
    end
    object qryComissaoVendVLR_COMISSAO: TIBBCDField
      FieldName = 'VLR_COMISSAO'
      Origin = '"PCD_REL_COMISSAO_VED"."VLR_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoVendTIPO_FAT: TIBStringField
      FieldName = 'TIPO_FAT'
      Origin = '"PCD_REL_COMISSAO_VED"."TIPO_FAT"'
      Size = 10
    end
    object qryComissaoVendID_AGRUPADOR: TIntegerField
      FieldName = 'ID_AGRUPADOR'
      Origin = '"PCD_REL_COMISSAO_VED"."ID_AGRUPADOR"'
    end
  end
  object qryComissaoRec: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_REL_COMISSAO_REC(:cnpj,:vendedor, :dt_ini,:dt_' +
        'fin)'
      'order by ORIGEM, data')
    Left = 415
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end>
    object qryComissaoRecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_COMISSAO_REC"."CODIGO"'
    end
    object qryComissaoRecDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_REL_COMISSAO_REC"."DATA"'
    end
    object qryComissaoRecPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_REL_COMISSAO_REC"."PESSOA_FJ"'
    end
    object qryComissaoRecCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_REL_COMISSAO_REC"."CLIENTE"'
      Size = 55
    end
    object qryComissaoRecDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_REL_COMISSAO_REC"."DOCTO"'
      Size = 15
    end
    object qryComissaoRecTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_REL_COMISSAO_REC"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryComissaoRecCOD_REC: TIntegerField
      FieldName = 'COD_REC'
      Origin = '"PCD_REL_COMISSAO_REC"."COD_REC"'
    end
    object qryComissaoRecCOD_ORIGEM: TIntegerField
      FieldName = 'COD_ORIGEM'
      Origin = '"PCD_REL_COMISSAO_REC"."COD_ORIGEM"'
    end
    object qryComissaoRecORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"PCD_REL_COMISSAO_REC"."ORIGEM"'
      Size = 10
    end
    object qryComissaoRecLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Origin = '"PCD_REL_COMISSAO_REC"."LIQUIDO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoRecDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"PCD_REL_COMISSAO_REC"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoRecJUROS: TIBBCDField
      FieldName = 'JUROS'
      Origin = '"PCD_REL_COMISSAO_REC"."JUROS"'
      Precision = 18
      Size = 4
    end
    object qryComissaoRecVLR_COMISSAO: TIBBCDField
      FieldName = 'VLR_COMISSAO'
      Origin = '"PCD_REL_COMISSAO_REC"."VLR_COMISSAO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoRecPORCENTAGEM: TIBBCDField
      FieldName = 'PORCENTAGEM'
      Origin = '"PCD_REL_COMISSAO_REC"."PORCENTAGEM"'
      Precision = 18
      Size = 4
    end
    object qryComissaoRecNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_REL_COMISSAO_REC"."NUM_NF"'
    end
    object qryComissaoRecTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PCD_REL_COMISSAO_REC"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object qryComissaoRecPCT_BAIXA: TIBBCDField
      FieldName = 'PCT_BAIXA'
      Origin = '"PCD_REL_COMISSAO_REC"."PCT_BAIXA"'
      Precision = 18
      Size = 4
    end
    object qryComissaoRecVLR_BX_ORIG: TIBBCDField
      FieldName = 'VLR_BX_ORIG'
      Origin = '"PCD_REL_COMISSAO_REC"."VLR_BX_ORIG"'
      Precision = 18
      Size = 4
    end
  end
  object qryComissaoTrc: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from PCD_REL_COMISSAO_TRC(:cnpj,:vendedor, :dt_ini,:dt_' +
        'fin)'
      'order by tipo_mov, data')
    Left = 490
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end>
    object qryComissaoTrcCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_COMISSAO_TRC"."CODIGO"'
    end
    object qryComissaoTrcDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_REL_COMISSAO_TRC"."DATA"'
    end
    object qryComissaoTrcCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_REL_COMISSAO_TRC"."CLIENTE"'
      Size = 50
    end
    object qryComissaoTrcPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_REL_COMISSAO_TRC"."PESSOA_FJ"'
    end
    object qryComissaoTrcTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_REL_COMISSAO_TRC"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryComissaoTrcDESC_ACRESC: TIBBCDField
      FieldName = 'DESC_ACRESC'
      Origin = '"PCD_REL_COMISSAO_TRC"."DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object qryComissaoTrcTOTAL_2: TIBBCDField
      FieldName = 'TOTAL_2'
      Origin = '"PCD_REL_COMISSAO_TRC"."TOTAL_2"'
      Precision = 18
      Size = 4
    end
    object qryComissaoTrcDESC_ACRESC_2: TIBBCDField
      FieldName = 'DESC_ACRESC_2'
      Origin = '"PCD_REL_COMISSAO_TRC"."DESC_ACRESC_2"'
      Precision = 18
      Size = 4
    end
    object qryComissaoTrcENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"PCD_REL_COMISSAO_TRC"."ENTRADA"'
      Precision = 18
      Size = 4
    end
    object qryComissaoTrcVISTA: TIBBCDField
      FieldName = 'VISTA'
      Origin = '"PCD_REL_COMISSAO_TRC"."VISTA"'
      Precision = 18
      Size = 4
    end
    object qryComissaoTrcTIPO_MOV: TIBStringField
      FieldName = 'TIPO_MOV'
      Origin = '"PCD_REL_COMISSAO_TRC"."TIPO_MOV"'
      FixedChar = True
      Size = 10
    end
    object qryComissaoTrcLIQUIDO: TIBBCDField
      FieldName = 'LIQUIDO'
      Origin = '"PCD_REL_COMISSAO_TRC"."LIQUIDO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoTrcPRAZO: TIBBCDField
      FieldName = 'PRAZO'
      Origin = '"PCD_REL_COMISSAO_TRC"."PRAZO"'
      Precision = 18
      Size = 4
    end
  end
  object qryVendasPeriodo: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select *  from PCD_REL_VENDAS_PERIODO(:cnpj,:dini,:dfim)')
    Left = 728
    Top = 352
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
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
    object qryVendasPeriodoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."CODIGO"'
    end
    object qryVendasPeriodoTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_REL_VENDAS_PERIODO"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoTOTAL_BRUTO: TIBBCDField
      FieldName = 'TOTAL_BRUTO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."TOTAL_BRUTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"PCD_REL_VENDAS_PERIODO"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object qryVendasPeriodoDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."HISTORICO"'
      Size = 100
    end
    object qryVendasPeriodoPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PESSOA_FJ"'
    end
    object qryVendasPeriodoUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."USUARIO"'
    end
    object qryVendasPeriodoNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"PCD_REL_VENDAS_PERIODO"."NATUREZA"'
    end
    object qryVendasPeriodoNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_REL_VENDAS_PERIODO"."NUM_NF"'
    end
    object qryVendasPeriodoNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"PCD_REL_VENDAS_PERIODO"."NUM_CUPOM"'
    end
    object qryVendasPeriodoOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."OBSERVACAO"'
      Size = 80
    end
    object qryVendasPeriodoTIPO_MOV: TIBStringField
      FieldName = 'TIPO_MOV'
      Origin = '"PCD_REL_VENDAS_PERIODO"."TIPO_MOV"'
      FixedChar = True
      Size = 5
    end
    object qryVendasPeriodoNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"PCD_REL_VENDAS_PERIODO"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object qryVendasPeriodoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"PCD_REL_VENDAS_PERIODO"."VENDEDOR"'
    end
    object qryVendasPeriodoCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"PCD_REL_VENDAS_PERIODO"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object qryVendasPeriodoPRD_COD: TIBStringField
      FieldName = 'PRD_COD'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_COD"'
      FixedChar = True
      Size = 15
    end
    object qryVendasPeriodoPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_NOME"'
      FixedChar = True
      Size = 50
    end
    object qryVendasPeriodoPRD_UNIDADE: TIBStringField
      FieldName = 'PRD_UNIDADE'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qryVendasPeriodoPRD_SUBUNIDADE: TIntegerField
      FieldName = 'PRD_SUBUNIDADE'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_SUBUNIDADE"'
    end
    object qryVendasPeriodoPRD_QUANTIDADE: TIBBCDField
      FieldName = 'PRD_QUANTIDADE'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoPRD_PRC_UNITARIO: TIBBCDField
      FieldName = 'PRD_PRC_UNITARIO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoPRD_DESCONTO: TIBBCDField
      FieldName = 'PRD_DESCONTO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoPRD_TOTAL: TIBBCDField
      FieldName = 'PRD_TOTAL'
      Origin = '"PCD_REL_VENDAS_PERIODO"."PRD_TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoVLR_VISTA: TIBBCDField
      FieldName = 'VLR_VISTA'
      Origin = '"PCD_REL_VENDAS_PERIODO"."VLR_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoVLR_PRAZO: TIBBCDField
      FieldName = 'VLR_PRAZO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."VLR_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_REL_VENDAS_PERIODO"."DOCTO"'
      FixedChar = True
      Size = 15
    end
    object qryVendasPeriodoDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"PCD_REL_VENDAS_PERIODO"."DATA"'
    end
    object qryVendasPeriodoDATA_CX: TDateField
      FieldName = 'DATA_CX'
      Origin = '"PCD_REL_VENDAS_PERIODO"."DATA_CX"'
    end
  end
  object qryVendasPeriodoSint: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      'select *  from PCD_REL_VENDAS_PERIODO_SINT(:cnpj,:dini,:dfim)')
    Left = 15
    Top = 411
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
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
    object qryVendasPeriodoSintCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."CODIGO"'
    end
    object qryVendasPeriodoSintTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoSintTOTAL_BRUTO: TIBBCDField
      FieldName = 'TOTAL_BRUTO'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."TOTAL_BRUTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoSintDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoSintFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object qryVendasPeriodoSintPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."PESSOA_FJ"'
    end
    object qryVendasPeriodoSintUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."USUARIO"'
    end
    object qryVendasPeriodoSintNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."NATUREZA"'
    end
    object qryVendasPeriodoSintNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."NUM_NF"'
    end
    object qryVendasPeriodoSintNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."NUM_CUPOM"'
    end
    object qryVendasPeriodoSintOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."OBSERVACAO"'
      Size = 80
    end
    object qryVendasPeriodoSintTIPO_MOV: TIBStringField
      FieldName = 'TIPO_MOV'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."TIPO_MOV"'
      FixedChar = True
      Size = 5
    end
    object qryVendasPeriodoSintNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object qryVendasPeriodoSintVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."VENDEDOR"'
    end
    object qryVendasPeriodoSintCANCELADA: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object qryVendasPeriodoSintVLR_VISTA: TIBBCDField
      FieldName = 'VLR_VISTA'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."VLR_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoSintVLR_PRAZO: TIBBCDField
      FieldName = 'VLR_PRAZO'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."VLR_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryVendasPeriodoSintDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."DOCTO"'
      FixedChar = True
      Size = 15
    end
    object qryVendasPeriodoSintDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."DATA"'
    end
    object qryVendasPeriodoSintDATA_CX: TDateField
      FieldName = 'DATA_CX'
      Origin = '"PCD_REL_VENDAS_PERIODO_SINT"."DATA_CX"'
    end
  end
  object qryComissaoGeral: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryComissaoGeralCalcFields
    SQL.Strings = (
      
        'select *  from pcd_com_vendedor(:cnpj,:vendedor,:vlrvista,:vlrpr' +
        'azo)')
    Left = 274
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlrvista'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vlrprazo'
        ParamType = ptUnknown
      end>
    object qryComissaoGeralCOMISSAO_VISTA: TIBBCDField
      FieldName = 'COMISSAO_VISTA'
      Origin = '"PCD_COM_VENDEDOR"."COMISSAO_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryComissaoGeralCOMISSAO_PRAZO: TIBBCDField
      FieldName = 'COMISSAO_PRAZO'
      Origin = '"PCD_COM_VENDEDOR"."COMISSAO_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoGeralCOM_VISTA: TIBBCDField
      FieldName = 'COM_VISTA'
      Origin = '"PCD_COM_VENDEDOR"."COM_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryComissaoGeralCOM_PRAZO: TIBBCDField
      FieldName = 'COM_PRAZO'
      Origin = '"PCD_COM_VENDEDOR"."COM_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryComissaoGeralTotalComissoes: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalComissoes'
      Calculated = True
    end
  end
  object qrySeriesNF: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select psa.codigo||'#39'-'#39'||psa.nome_razao Cliente,'
      '       coalesce(cdd.nome,'#39#39')||'#39' - '#39'||coalesce(cdd.uf,'#39#39'),'
      
        '       coalesce(psa.endereco,0) ||'#39' N'#186':'#39'||coalesce(psa.numero,0)' +
        ' Endereco,'
      
        '       vd.codigo cod_venda, vd.data dt_venda, vd.data_caixa, vd.' +
        'desc_acres,'
      
        '       vd.total, vd.num_cupom, vd.num_nf, psa.nome_razao Nome_co' +
        'nsumidor,'
      
        '       vdd.nome Nome_Vendedor, fpgto.codigo||'#39'-'#39'||coalesce(fpgto' +
        '.nome,'#39#39') forma_pagto,'
      
        '       vdi.sequencia, prd.nome, vdi.quantidade, vdi.prc_unitario' +
        ','
      '       (vdi.quantidade * vdi.prc_unitario) total_item'
      'from fat_vendas vd'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = vd.pessoa_fj and ' +
        'psa.cnpj = vd.cnpj)'
      'inner join glo_cidades cdd on (psa.cidade = cdd.codigo)'
      
        'inner join fat_vendedor vdd on (vd.vendedor = vdd.codigo and vdd' +
        '.cnpj = vd.cnpj)'
      
        'inner join fin_formas_pagto fpgto on (vd.forma_pgto = fpgto.codi' +
        'go)'
      
        'inner join fat_vendas_itens vdi on (vd.codigo = vdi.codigo and v' +
        'di.cnpj = vd.cnpj)'
      'inner join est_produtos prd on (vdi.produto = prd.codigo)'
      'where vd.codigo = :venda and psa.codigo = :cliente')
    Left = 274
    Top = 607
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end>
    object qrySeriesNFCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Required = True
      Size = 62
    end
    object qrySeriesNFCONCATENATION: TIBStringField
      FieldName = 'CONCATENATION'
      Size = 55
    end
    object qrySeriesNFENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Size = 30
    end
    object qrySeriesNFCOD_VENDA: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object qrySeriesNFDT_VENDA: TDateTimeField
      FieldName = 'DT_VENDA'
      Origin = '"FAT_VENDAS"."DATA"'
      Required = True
    end
    object qrySeriesNFDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object qrySeriesNFDESC_ACRES: TFloatField
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object qrySeriesNFTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
    end
    object qrySeriesNFNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object qrySeriesNFNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object qrySeriesNFNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
    object qrySeriesNFNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object qrySeriesNFFORMA_PAGTO: TIBStringField
      FieldName = 'FORMA_PAGTO'
      Size = 62
    end
    object qrySeriesNFSEQUENCIA: TSmallintField
      FieldName = 'SEQUENCIA'
      Origin = '"FAT_VENDAS_ITENS"."SEQUENCIA"'
      Required = True
    end
    object qrySeriesNFNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Required = True
      Size = 50
    end
    object qrySeriesNFQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object qrySeriesNFPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
    end
    object qrySeriesNFTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
      Required = True
    end
  end
  object dsQrySeriesNF: TDataSource
    DataSet = qrySeriesNF
    Left = 213
    Top = 607
  end
  object qryRelDevolucoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterCancel = Notas_FaturaCalcFields
    SQL.Strings = (
      'select * from PCD_REL_DEVOLUCOES(:cnpj,:dt_ini,:dt_fin)')
    Left = 554
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end>
    object IntegerField2: TIntegerField
      FieldName = 'N_DOCTO'
      Origin = '"PCD_REL_VENDAS_GERAIS"."N_DOCTO"'
    end
    object IBStringField3: TIBStringField
      DisplayWidth = 60
      FieldName = 'NOME_RAZAO'
      Origin = '"PCD_REL_VENDAS_GERAIS"."NOME_RAZAO"'
      Size = 60
    end
    object DateField1: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."DATA"'
    end
    object IntegerField3: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_REL_VENDAS_GERAIS"."CFOP"'
    end
    object IBStringField4: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object DateField2: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."DATA_CAIXA"'
    end
    object IBBCDField1: TIBBCDField
      FieldName = 'VLR_BRUTO'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_BRUTO"'
      Precision = 18
      Size = 4
    end
    object IBBCDField2: TIBBCDField
      FieldName = 'VLR_DESC_ACRESC'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_DESC_ACRESC"'
      Precision = 18
      Size = 4
    end
    object IBBCDField3: TIBBCDField
      FieldName = 'VLR_TOTAL'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_TOTAL"'
      Precision = 18
      Size = 4
    end
    object IBBCDField4: TIBBCDField
      FieldName = 'VLR_BASE_ICM'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_BASE_ICM"'
      Precision = 18
      Size = 4
    end
    object IBBCDField5: TIBBCDField
      FieldName = 'VLR_ICM'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_ICM"'
      Precision = 18
      Size = 4
    end
    object IBBCDField6: TIBBCDField
      FieldName = 'VLR_ICM_SUB'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_ICM_SUB"'
      Precision = 18
      Size = 4
    end
    object IBBCDField7: TIBBCDField
      FieldName = 'VLR_BASE_ICM_SUB'
      Origin = '"PCD_REL_VENDAS_GERAIS"."VLR_BASE_ICM_SUB"'
      Precision = 18
      Size = 4
    end
    object IBStringField5: TIBStringField
      FieldName = 'CANCELADA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."CANCELADA"'
      FixedChar = True
      Size = 1
    end
    object IBStringField6: TIBStringField
      FieldName = 'STATUS'
      Origin = '"PCD_REL_VENDAS_GERAIS"."STATUS"'
      Size = 10
    end
    object IntegerField4: TIntegerField
      FieldName = 'TIPO_DOC'
      Origin = '"PCD_REL_VENDAS_GERAIS"."TIPO_DOC"'
    end
    object IntegerField5: TIntegerField
      FieldName = 'COD_VENDA'
      Origin = '"PCD_REL_VENDAS_GERAIS"."COD_VENDA"'
    end
    object IntegerField6: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_REL_VENDAS_GERAIS"."PESSOA_FJ"'
    end
  end
  object qryRelVendasProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select cod_produto, produto, sum(qtde) qtde,'
      'avg(valor) preco_medio, sum((qtde * valor) + desc_rateado) total'
      
        'from pcd_rel_produtos(:cnpj,:dt_ini,:dt_fin,:produto,:cliente,:g' +
        'rupo,:subgrupo,:marca)'
      'group by produto, cod_produto'
      'order by produto, cod_produto')
    Left = 364
    Top = 607
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'produto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cliente'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'grupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'subgrupo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end>
    object qryRelVendasProdutosCOD_PRODUTO: TIBStringField
      DisplayWidth = 15
      FieldName = 'COD_PRODUTO'
      Size = 14
    end
    object qryRelVendasProdutosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object qryRelVendasProdutosQTDE: TIBBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 4
    end
    object qryRelVendasProdutosPRECO_MEDIO: TIBBCDField
      FieldName = 'PRECO_MEDIO'
      Precision = 18
      Size = 4
    end
    object qryRelVendasProdutosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object RelEntradasProdutos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.TransactionProc
    SQL.Strings = (
      'select pcd.produto, sum(pcd.qtde) qtde,'
      'avg(pcd.valor) preco_medio,'
      'sum(pcd.qtde * pcd.valor)  total'
      'from pcd_rel_Entradas_produtos(:cnpj,:dt_ini,:dt_fin) pcd'
      ''
      ''
      '')
    Left = 407
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_ini'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_fin'
        ParamType = ptUnknown
      end>
    object RelEntradasProdutosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 50
    end
    object RelEntradasProdutosQTDE: TIBBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 4
    end
    object RelEntradasProdutosPRECO_MEDIO: TIBBCDField
      FieldName = 'PRECO_MEDIO'
      Precision = 18
      Size = 4
    end
    object RelEntradasProdutosTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object ClientesAlf: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT '
      '               PESSOA,'
      '               CODIGO,'
      '               ATIVIDADE,'
      '               NOME_RAZAO,'
      '               FANTASIA,'
      '               ENDERECO,'
      '               NUMERO,'
      '               COMPLEMENTO,'
      '               BAIRRO,'
      '               CIDADE,'
      '               CEP,'
      '               CPF_CGC,'
      '               CPF_CGC CPF,'
      '               CPF_CGC CNPJ,'
      '               RG_IE,'
      '               FONE,'
      '               FAX,'
      '               CELULAR,'
      '               EMAIL,'
      '               NOME_VENDEDOR,'
      '               NOME_FORMA_PAGTO,'
      '               PRAZO,'
      '               COMPRADOR,'
      '               DT_CADASTRO,'
      '               BLOQUEADO,'
      '               NOME_CLASSIF,'
      '               COD_CLASSIF,'
      '               COD_VENDEDOR,'
      '               REGIAO,'
      '               ASSINA_NOTA,'
      '               UF,'
      '               DT_NASCIMENTO,'
      '               FREQUENCIA '
      'FROM  VER_PESSOAS ( :CNPJ )'
      '')
    Left = 407
    Top = 495
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object ClientesAlfPESSOA: TIBStringField
      DisplayLabel = 'Pessoa'
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOAS"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object ClientesAlfCODIGO: TIntegerField
      DisplayLabel = 'C'#243'd. Cliente'
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOAS"."CODIGO"'
    end
    object ClientesAlfNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOAS"."NOME_RAZAO"'
      Size = 50
    end
    object ClientesAlfFANTASIA: TIBStringField
      DisplayLabel = 'Fantasia'
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOAS"."FANTASIA"'
      Size = 50
    end
    object ClientesAlfENDERECO: TIBStringField
      DisplayLabel = 'Endere'#231'o'
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOAS"."ENDERECO"'
      Size = 50
    end
    object ClientesAlfNUMERO: TIBStringField
      DisplayLabel = 'N'#186
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOAS"."NUMERO"'
      Size = 15
    end
    object ClientesAlfCOMPLEMENTO: TIBStringField
      DisplayLabel = 'Complemento'
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOAS"."COMPLEMENTO"'
      Size = 30
    end
    object ClientesAlfBAIRRO: TIBStringField
      DisplayLabel = 'Bairro'
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOAS"."BAIRRO"'
      Size = 50
    end
    object ClientesAlfCIDADE: TIBStringField
      DisplayLabel = 'Cidade'
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOAS"."CIDADE"'
      Size = 50
    end
    object ClientesAlfCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOAS"."CEP"'
      Size = 8
    end
    object ClientesAlfCPF_CGC: TIBStringField
      DisplayLabel = 'CPF/CNPJ'
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOAS"."CPF_CGC"'
      Size = 15
    end
    object ClientesAlfCPF: TIBStringField
      FieldName = 'CPF'
      Origin = '"VER_PESSOAS"."CPF_CGC"'
      EditMask = '000\.000\.000-00;1;_'
      Size = 15
    end
    object ClientesAlfRG_IE: TIBStringField
      DisplayLabel = 'RG/IE'
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOAS"."RG_IE"'
      Size = 15
    end
    object ClientesAlfFONE: TIBStringField
      DisplayLabel = 'Fone'
      FieldName = 'FONE'
      Origin = '"VER_PESSOAS"."FONE"'
    end
    object ClientesAlfFAX: TIBStringField
      DisplayLabel = 'Fax'
      FieldName = 'FAX'
      Origin = '"VER_PESSOAS"."FAX"'
    end
    object ClientesAlfCELULAR: TIBStringField
      DisplayLabel = 'Celular'
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOAS"."CELULAR"'
    end
    object ClientesAlfEMAIL: TIBStringField
      DisplayLabel = 'Email'
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOAS"."EMAIL"'
      Size = 80
    end
    object ClientesAlfNOME_VENDEDOR: TIBStringField
      DisplayLabel = 'Vendedor'
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_PESSOAS"."NOME_VENDEDOR"'
      Size = 50
    end
    object ClientesAlfNOME_FORMA_PAGTO: TIBStringField
      DisplayLabel = 'Forma Pagto.'
      FieldName = 'NOME_FORMA_PAGTO'
      Origin = '"VER_PESSOAS"."NOME_FORMA_PAGTO"'
      Size = 50
    end
    object ClientesAlfPRAZO: TIntegerField
      DisplayLabel = 'Prazo'
      FieldName = 'PRAZO'
      Origin = '"VER_PESSOAS"."PRAZO"'
    end
    object ClientesAlfCOMPRADOR: TIBStringField
      DisplayLabel = 'Comprador'
      FieldName = 'COMPRADOR'
      Origin = '"VER_PESSOAS"."COMPRADOR"'
      Size = 50
    end
    object ClientesAlfDT_CADASTRO: TDateTimeField
      DisplayLabel = 'Dt. Cadastro'
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOAS"."DT_CADASTRO"'
    end
    object ClientesAlfBLOQUEADO: TIBStringField
      DisplayLabel = 'Bloqueado'
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOAS"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object ClientesAlfNOME_CLASSIF: TIBStringField
      DisplayLabel = 'Classifica'#231#227'o'
      FieldName = 'NOME_CLASSIF'
      Origin = '"VER_PESSOAS"."NOME_CLASSIF"'
      Size = 50
    end
    object ClientesAlfCOD_CLASSIF: TIntegerField
      DisplayLabel = 'C'#243'd. Classifica'#231#227'o'
      FieldName = 'COD_CLASSIF'
      Origin = '"VER_PESSOAS"."COD_CLASSIF"'
    end
    object ClientesAlfCOD_VENDEDOR: TIntegerField
      DisplayLabel = 'C'#243'd. Vendedor'
      FieldName = 'COD_VENDEDOR'
      Origin = '"VER_PESSOAS"."COD_VENDEDOR"'
    end
    object ClientesAlfREGIAO: TIntegerField
      DisplayLabel = 'Regi'#227'o'
      FieldName = 'REGIAO'
      Origin = '"VER_PESSOAS"."REGIAO"'
    end
    object ClientesAlfASSINA_NOTA: TIBStringField
      DisplayLabel = 'Ass. NF'
      FieldName = 'ASSINA_NOTA'
      Origin = '"VER_PESSOAS"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object ClientesAlfUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOAS"."UF"'
      FixedChar = True
      Size = 2
    end
    object ClientesAlfDT_NASCIMENTO: TDateTimeField
      DisplayLabel = 'Dt. Nascto'
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOAS"."DT_NASCIMENTO"'
    end
    object ClientesAlfFREQUENCIA: TIBStringField
      DisplayLabel = 'Frequ'#234'ncia'
      FieldName = 'FREQUENCIA'
      Origin = '"VER_PESSOAS"."FREQUENCIA"'
      FixedChar = True
      Size = 3
    end
    object ClientesAlfATIVIDADE: TIBStringField
      DisplayLabel = 'Atividade'
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOAS"."ATIVIDADE"'
      Size = 50
    end
  end
  object qryMaxMin: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select * from pcd_est_max_min(:cnpj,:tipo,:fornecedor,:marca,:ti' +
        'po_calc) order by prd_grupo, prd_sub_grupo, prd_produto ')
    Left = 695
    Top = 444
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fornecedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'marca'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_calc'
        ParamType = ptUnknown
      end>
    object qryMaxMinPRD_EST_FISICO: TIBBCDField
      FieldName = 'PRD_EST_FISICO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_EST_FISICO"'
      Precision = 18
      Size = 4
    end
    object qryMaxMinPRD_PRODUTO: TIBStringField
      FieldName = 'PRD_PRODUTO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_PRODUTO"'
      Size = 67
    end
    object qryMaxMinPRD_GRUPO: TIBStringField
      FieldName = 'PRD_GRUPO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_GRUPO"'
      Size = 50
    end
    object qryMaxMinPRD_SUB_GRUPO: TIBStringField
      FieldName = 'PRD_SUB_GRUPO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_SUB_GRUPO"'
      Size = 50
    end
    object qryMaxMinPRD_DT_ULTCOMPRA: TDateField
      FieldName = 'PRD_DT_ULTCOMPRA'
      Origin = '"PCD_EST_MAX_MIN"."PRD_DT_ULTCOMPRA"'
    end
    object qryMaxMinPRD_DT_ULTVENDA: TDateField
      FieldName = 'PRD_DT_ULTVENDA'
      Origin = '"PCD_EST_MAX_MIN"."PRD_DT_ULTVENDA"'
    end
    object qryMaxMinPRD_ESTOQUE: TIBBCDField
      FieldName = 'PRD_ESTOQUE'
      Origin = '"PCD_EST_MAX_MIN"."PRD_ESTOQUE"'
      Precision = 18
      Size = 4
    end
    object qryMaxMinPRD_ATIVO: TIBStringField
      FieldName = 'PRD_ATIVO'
      Origin = '"PCD_EST_MAX_MIN"."PRD_ATIVO"'
      FixedChar = True
      Size = 1
    end
  end
  object dsEntradasProd: TDataSource
    DataSet = Fat_EntradasPorProduto
    Left = 15
    Top = 607
  end
  object qryRelEntProd: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelEntProdCalcFields
    SQL.Strings = (
      'select * from PCD_REL_ENT_PRODUTOS(:cnpj,:data1,:data2)'
      'order by num_nf')
    Left = 15
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object qryRelEntProdFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"PCD_REL_ENT_PRODUTOS"."FORNECEDOR"'
      Size = 65
    end
    object qryRelEntProdDATA_NF: TDateField
      FieldName = 'DATA_NF'
      Origin = '"PCD_REL_ENT_PRODUTOS"."DATA_NF"'
    end
    object qryRelEntProdPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_REL_ENT_PRODUTOS"."PRODUTO"'
      Size = 80
    end
    object qryRelEntProdNUM_NF: TIBStringField
      FieldName = 'NUM_NF'
      Origin = '"PCD_REL_ENT_PRODUTOS"."NUM_NF"'
    end
    object qryRelEntProdQTDE: TIBBCDField
      FieldName = 'QTDE'
      Origin = '"PCD_REL_ENT_PRODUTOS"."QTDE"'
      Precision = 18
      Size = 4
    end
    object qryRelEntProdVLR_UNITARIO: TIBBCDField
      FieldName = 'VLR_UNITARIO'
      Origin = '"PCD_REL_ENT_PRODUTOS"."VLR_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object qryRelEntProdTOTAL_ITEM: TIBBCDField
      FieldName = 'TOTAL_ITEM'
      Origin = '"PCD_REL_ENT_PRODUTOS"."TOTAL_ITEM"'
      Precision = 18
      Size = 4
    end
    object qryRelEntProdORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"PCD_REL_ENT_PRODUTOS"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object qryRelEntProdDESCONTO_NOTA: TIBBCDField
      FieldName = 'DESCONTO_NOTA'
      Origin = '"PCD_REL_ENT_PRODUTOS"."DESCONTO_NOTA"'
      Precision = 18
      Size = 4
    end
    object qryRelEntProdTOTAL_NOTA: TIBBCDField
      FieldName = 'TOTAL_NOTA'
      Origin = '"PCD_REL_ENT_PRODUTOS"."TOTAL_NOTA"'
      Precision = 18
      Size = 4
    end
    object qryRelEntProdCOD_FORN: TIntegerField
      FieldName = 'COD_FORN'
      Origin = '"PCD_REL_ENT_PRODUTOS"."COD_FORN"'
    end
    object qryRelEntProdTotal_Liquido: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total_Liquido'
      Calculated = True
    end
    object qryRelEntProdAQUI: TIBStringField
      FieldName = 'AQUI'
      Origin = '"PCD_REL_ENT_PRODUTOS"."AQUI"'
      FixedChar = True
      Size = 3
    end
    object qryRelEntProdCFOP: TIntegerField
      FieldName = 'CFOP'
      Origin = '"PCD_REL_ENT_PRODUTOS"."CFOP"'
    end
    object qryRelEntProdNDOC: TIBStringField
      FieldName = 'NDOC'
      Origin = '"PCD_REL_ENT_PRODUTOS"."NDOC"'
    end
  end
  object qryRelResEnt: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      ''
      
        'select produto, sum(qtde) qtde, sum(total_item) total from PCD_R' +
        'EL_ENT_PRODUTOS(:cnpj,:data1,:data2)'
      'group by produto'
      'order by produto')
    Left = 56
    Top = 6
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object qryRelResEntPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 80
    end
    object qryRelResEntQTDE: TIBBCDField
      FieldName = 'QTDE'
      Precision = 18
      Size = 4
    end
    object qryRelResEntTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Precision = 18
      Size = 4
    end
  end
  object qryRelCotacoes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select c.data, c.codigo, c.desc_acresc, c.total,pgt.nome, c.nome' +
        ' fornecedor,'
      
        'coalesce(ci.produto,'#39#39') ||'#39'-'#39'||coalesce(ci.nome_produto,'#39#39') nome' +
        '_produto, ci.porc_desc, ci.prc_unit_original,'
      
        'ci.prc_unitario, ci.prc_custo, ci.quantidade, ci.unidade, ci.sub' +
        'unidade,'
      'coalesce(c.fechado,'#39'N'#39') fechado  from fat_cotacoes c'
      
        'left join fin_formas_pagto pgt on (pgt.codigo = c.codigo and pgt' +
        '.cnpj = c.cnpj)'
      
        'inner join fat_cotacoes_itens ci on (ci.codigo = c.codigo and ci' +
        '.cnpj = c.cnpj)'
      'where c.cnpj = :cnpj and (c.data between :data1 and :data2)'
      'order by c.codigo'
      ''
      ''
      ''
      ''
      ''
      '')
    Left = 117
    Top = 651
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object qryRelCotacoesDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FAT_COTACOES"."DATA"'
      Required = True
    end
    object qryRelCotacoesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_COTACOES"."CODIGO"'
      Required = True
    end
    object qryRelCotacoesDESC_ACRESC: TFloatField
      FieldName = 'DESC_ACRESC'
      Origin = '"FAT_COTACOES"."DESC_ACRESC"'
    end
    object qryRelCotacoesTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_COTACOES"."TOTAL"'
    end
    object qryRelCotacoesNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_FORMAS_PAGTO"."NOME"'
      Size = 50
    end
    object qryRelCotacoesFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Origin = '"FAT_COTACOES"."NOME"'
      Size = 50
    end
    object qryRelCotacoesNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Size = 66
    end
    object qryRelCotacoesPORC_DESC: TFloatField
      FieldName = 'PORC_DESC'
      Origin = '"FAT_COTACOES_ITENS"."PORC_DESC"'
    end
    object qryRelCotacoesPRC_UNIT_ORIGINAL: TFloatField
      FieldName = 'PRC_UNIT_ORIGINAL'
      Origin = '"FAT_COTACOES_ITENS"."PRC_UNIT_ORIGINAL"'
    end
    object qryRelCotacoesPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_COTACOES_ITENS"."PRC_UNITARIO"'
    end
    object qryRelCotacoesPRC_CUSTO: TFloatField
      FieldName = 'PRC_CUSTO'
      Origin = '"FAT_COTACOES_ITENS"."PRC_CUSTO"'
    end
    object qryRelCotacoesQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_COTACOES_ITENS"."QUANTIDADE"'
    end
    object qryRelCotacoesUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"FAT_COTACOES_ITENS"."UNIDADE"'
      Required = True
      FixedChar = True
      Size = 4
    end
    object qryRelCotacoesSUBUNIDADE: TIntegerField
      FieldName = 'SUBUNIDADE'
      Origin = '"FAT_COTACOES_ITENS"."SUBUNIDADE"'
    end
    object qryRelCotacoesFECHADO: TIBStringField
      FieldName = 'FECHADO'
      FixedChar = True
      Size = 1
    end
  end
  object lkpTransportadora: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select t.codigo, t.nome from glo_transportadoras t'
      ''
      ''
      ''
      ''
      '')
    Left = 199
    Top = 643
    object lkpTransportadoraCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_TRANSPORTADORAS"."CODIGO"'
      Required = True
    end
    object lkpTransportadoraNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TRANSPORTADORAS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object lkpFornecedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select f.pessoa_fj, psa.nome_razao  from glo_fornecedores f'
      
        'inner join glo_pessoas_fj psa on (psa.codigo = f.pessoa_fj and p' +
        'sa.cnpj = f.cnpj)'
      ''
      ''
      ''
      '')
    Left = 309
    Top = 651
    object lkpFornecedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"GLO_FORNECEDORES"."PESSOA_FJ"'
      Required = True
    end
    object lkpFornecedorNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
  end
  object dsVendaMarca: TDataSource
    AutoEdit = False
    DataSet = Fat_VendasMarca
    Left = 167
    Top = 511
  end
  object qryRelVendasCidade: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      ''
      
        'Select * From VER_FAT_VENDAS_CIDADE( :CNPJ, :DTINIC, :DTFINAL, :' +
        'CIDADE)')
    Left = 474
    Top = 607
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTINIC'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DTFINAL'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'CIDADE'
        ParamType = ptUnknown
      end>
    object qryRelVendasCidadeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."CODIGO"'
    end
    object qryRelVendasCidadeDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."DATA"'
    end
    object qryRelVendasCidadeFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object qryRelVendasCidadeHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."HISTORICO"'
      Size = 100
    end
    object qryRelVendasCidadePESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"VER_FAT_VENDAS_CIDADE"."PESSOA_FJ"'
    end
    object qryRelVendasCidadePESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."PESSOA_RAZAO"'
      Size = 50
    end
    object qryRelVendasCidadeUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."USUARIO"'
    end
    object qryRelVendasCidadeNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."NATUREZA"'
    end
    object qryRelVendasCidadeNOME_NATUREZA: TIBStringField
      FieldName = 'NOME_NATUREZA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."NOME_NATUREZA"'
      Size = 50
    end
    object qryRelVendasCidadeENVIADA_CX: TIBStringField
      FieldName = 'ENVIADA_CX'
      Origin = '"VER_FAT_VENDAS_CIDADE"."ENVIADA_CX"'
      FixedChar = True
      Size = 1
    end
    object qryRelVendasCidadeFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."FORMA_PGTO"'
    end
    object qryRelVendasCidadeNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"VER_FAT_VENDAS_CIDADE"."NUM_NF"'
    end
    object qryRelVendasCidadeNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"VER_FAT_VENDAS_CIDADE"."NUM_CUPOM"'
    end
    object qryRelVendasCidadePROPRIEDADE: TIntegerField
      FieldName = 'PROPRIEDADE'
      Origin = '"VER_FAT_VENDAS_CIDADE"."PROPRIEDADE"'
    end
    object qryRelVendasCidadeCONVENIADO: TIntegerField
      FieldName = 'CONVENIADO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."CONVENIADO"'
    end
    object qryRelVendasCidadeTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryRelVendasCidadeLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."LOCAL_COBRANCA"'
    end
    object qryRelVendasCidadeDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"VER_FAT_VENDAS_CIDADE"."DESC_ACRES"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeENTRADA: TIBBCDField
      FieldName = 'ENTRADA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."ENTRADA"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"VER_FAT_VENDAS_CIDADE"."CHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."CARTAO"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"VER_FAT_VENDAS_CIDADE"."TICKET"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"VER_FAT_VENDAS_CIDADE"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeVLRLIQUIDO: TIBBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."VLRLIQUIDO"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeOBSERVACAO: TIBStringField
      FieldName = 'OBSERVACAO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."OBSERVACAO"'
      Size = 80
    end
    object qryRelVendasCidadeVLR_PARC_LC: TIBBCDField
      FieldName = 'VLR_PARC_LC'
      Origin = '"VER_FAT_VENDAS_CIDADE"."VLR_PARC_LC"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."TERCEIRO"'
    end
    object qryRelVendasCidadeCARGA: TIntegerField
      FieldName = 'CARGA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."CARGA"'
    end
    object qryRelVendasCidadeVOLUME: TIBBCDField
      FieldName = 'VOLUME'
      Origin = '"VER_FAT_VENDAS_CIDADE"."VOLUME"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadePESO: TIBBCDField
      FieldName = 'PESO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."PESO"'
      Precision = 18
      Size = 4
    end
    object qryRelVendasCidadeREQUISICAO: TIBStringField
      FieldName = 'REQUISICAO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."REQUISICAO"'
      Size = 6
    end
    object qryRelVendasCidadeDESCRICAO: TBlobField
      FieldName = 'DESCRICAO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."DESCRICAO"'
      Size = 8
    end
    object qryRelVendasCidadeTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"VER_FAT_VENDAS_CIDADE"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object qryRelVendasCidadeNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"VER_FAT_VENDAS_CIDADE"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object qryRelVendasCidadeORCAMENTO: TIntegerField
      FieldName = 'ORCAMENTO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."ORCAMENTO"'
    end
    object qryRelVendasCidadeVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"VER_FAT_VENDAS_CIDADE"."VENDEDO"'
    end
    object qryRelVendasCidadeCODIGO_CIDADE: TIntegerField
      FieldName = 'CODIGO_CIDADE'
      Origin = '"VER_FAT_VENDAS_CIDADE"."CODIGO_CIDADE"'
    end
    object qryRelVendasCidadeNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_FAT_VENDAS_CIDADE"."NOME_VENDEDOR"'
      Size = 50
    end
  end
  object qryRelPessoaConveio: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT * FROM  VER_PESSOAS_CONVENIO ( :CNPJ, :CONVENIO )')
    Left = 167
    Top = 607
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
    object qryRelPessoaConveioCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOAS_CONVENIO"."CODIGO"'
    end
    object qryRelPessoaConveioNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOAS_CONVENIO"."NOME_RAZAO"'
      Size = 50
    end
    object qryRelPessoaConveioFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOAS_CONVENIO"."FANTASIA"'
      Size = 50
    end
    object qryRelPessoaConveioCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOAS_CONVENIO"."COD_ATIVIDADE"'
    end
    object qryRelPessoaConveioCOD_CLASSIF: TIntegerField
      FieldName = 'COD_CLASSIF'
      Origin = '"VER_PESSOAS_CONVENIO"."COD_CLASSIF"'
    end
    object qryRelPessoaConveioPRAZO: TIntegerField
      FieldName = 'PRAZO'
      Origin = '"VER_PESSOAS_CONVENIO"."PRAZO"'
    end
    object qryRelPessoaConveioCOMPRADOR: TIBStringField
      FieldName = 'COMPRADOR'
      Origin = '"VER_PESSOAS_CONVENIO"."COMPRADOR"'
      Size = 50
    end
    object qryRelPessoaConveioATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOAS_CONVENIO"."ATIVIDADE"'
      Size = 50
    end
    object qryRelPessoaConveioNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_PESSOAS_CONVENIO"."NOME_VENDEDOR"'
      Size = 50
    end
    object qryRelPessoaConveioCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOAS_CONVENIO"."COD_ENDERECO"'
    end
    object qryRelPessoaConveioCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"VER_PESSOAS_CONVENIO"."COD_VENDEDOR"'
    end
    object qryRelPessoaConveioNOME_CLASSIF: TIBStringField
      FieldName = 'NOME_CLASSIF'
      Origin = '"VER_PESSOAS_CONVENIO"."NOME_CLASSIF"'
      Size = 50
    end
    object qryRelPessoaConveioENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOAS_CONVENIO"."ENDERECO"'
      Size = 50
    end
    object qryRelPessoaConveioNOME_FORMA_PAGTO: TIBStringField
      FieldName = 'NOME_FORMA_PAGTO'
      Origin = '"VER_PESSOAS_CONVENIO"."NOME_FORMA_PAGTO"'
      Size = 50
    end
    object qryRelPessoaConveioNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOAS_CONVENIO"."NUMERO"'
      Size = 15
    end
    object qryRelPessoaConveioCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOAS_CONVENIO"."COMPLEMENTO"'
      Size = 30
    end
    object qryRelPessoaConveioCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOAS_CONVENIO"."COD_BAIRRO"'
    end
    object qryRelPessoaConveioBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOAS_CONVENIO"."BAIRRO"'
      Size = 50
    end
    object qryRelPessoaConveioCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOAS_CONVENIO"."COD_CIDADE"'
    end
    object qryRelPessoaConveioCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOAS_CONVENIO"."CIDADE"'
      Size = 50
    end
    object qryRelPessoaConveioUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOAS_CONVENIO"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryRelPessoaConveioBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOAS_CONVENIO"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object qryRelPessoaConveioCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOAS_CONVENIO"."CEP"'
      Size = 8
    end
    object qryRelPessoaConveioFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOAS_CONVENIO"."FONE"'
    end
    object qryRelPessoaConveioFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOAS_CONVENIO"."FAX"'
    end
    object qryRelPessoaConveioCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOAS_CONVENIO"."CELULAR"'
    end
    object qryRelPessoaConveioPESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOAS_CONVENIO"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object qryRelPessoaConveioCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOAS_CONVENIO"."CPF_CGC"'
      Size = 15
    end
    object qryRelPessoaConveioRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOAS_CONVENIO"."RG_IE"'
      Size = 15
    end
    object qryRelPessoaConveioCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOAS_CONVENIO"."CONTATO"'
      Size = 30
    end
    object qryRelPessoaConveioDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOAS_CONVENIO"."DT_NASCIMENTO"'
    end
    object qryRelPessoaConveioDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOAS_CONVENIO"."DT_CADASTRO"'
    end
    object qryRelPessoaConveioEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOAS_CONVENIO"."EMAIL"'
      Size = 80
    end
    object qryRelPessoaConveioOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOAS_CONVENIO"."OBS"'
      Size = 8
    end
    object qryRelPessoaConveioREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"VER_PESSOAS_CONVENIO"."REGIAO"'
    end
    object qryRelPessoaConveioINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOAS_CONVENIO"."INSC_MUNIC"'
      Size = 15
    end
    object qryRelPessoaConveioORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"VER_PESSOAS_CONVENIO"."ORDEM"'
    end
    object qryRelPessoaConveioFREQUENCIA: TIBStringField
      FieldName = 'FREQUENCIA'
      Origin = '"VER_PESSOAS_CONVENIO"."FREQUENCIA"'
      FixedChar = True
      Size = 3
    end
    object qryRelPessoaConveioASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VER_PESSOAS_CONVENIO"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
  end
  object qryRelPessoaCheque: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT * FROM  VER_PESSOAS_CHEQUE ( :CNPJ )')
    Left = 213
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object qryRelPessoaChequeCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"VER_PESSOAS_CHEQUE"."CODIGO"'
    end
    object qryRelPessoaChequeNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"VER_PESSOAS_CHEQUE"."NOME_RAZAO"'
      Size = 50
    end
    object qryRelPessoaChequeFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"VER_PESSOAS_CHEQUE"."FANTASIA"'
      Size = 50
    end
    object qryRelPessoaChequeCOD_ATIVIDADE: TIntegerField
      FieldName = 'COD_ATIVIDADE'
      Origin = '"VER_PESSOAS_CHEQUE"."COD_ATIVIDADE"'
    end
    object qryRelPessoaChequeCOD_CLASSIF: TIntegerField
      FieldName = 'COD_CLASSIF'
      Origin = '"VER_PESSOAS_CHEQUE"."COD_CLASSIF"'
    end
    object qryRelPessoaChequePRAZO: TIntegerField
      FieldName = 'PRAZO'
      Origin = '"VER_PESSOAS_CHEQUE"."PRAZO"'
    end
    object qryRelPessoaChequeCOMPRADOR: TIBStringField
      FieldName = 'COMPRADOR'
      Origin = '"VER_PESSOAS_CHEQUE"."COMPRADOR"'
      Size = 50
    end
    object qryRelPessoaChequeATIVIDADE: TIBStringField
      FieldName = 'ATIVIDADE'
      Origin = '"VER_PESSOAS_CHEQUE"."ATIVIDADE"'
      Size = 50
    end
    object qryRelPessoaChequeNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"VER_PESSOAS_CHEQUE"."NOME_VENDEDOR"'
      Size = 50
    end
    object qryRelPessoaChequeCOD_ENDERECO: TIntegerField
      FieldName = 'COD_ENDERECO'
      Origin = '"VER_PESSOAS_CHEQUE"."COD_ENDERECO"'
    end
    object qryRelPessoaChequeCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"VER_PESSOAS_CHEQUE"."COD_VENDEDOR"'
    end
    object qryRelPessoaChequeNOME_CLASSIF: TIBStringField
      FieldName = 'NOME_CLASSIF'
      Origin = '"VER_PESSOAS_CHEQUE"."NOME_CLASSIF"'
      Size = 50
    end
    object qryRelPessoaChequeENDERECO: TIBStringField
      FieldName = 'ENDERECO'
      Origin = '"VER_PESSOAS_CHEQUE"."ENDERECO"'
      Size = 50
    end
    object qryRelPessoaChequeNOME_FORMA_PAGTO: TIBStringField
      FieldName = 'NOME_FORMA_PAGTO'
      Origin = '"VER_PESSOAS_CHEQUE"."NOME_FORMA_PAGTO"'
      Size = 50
    end
    object qryRelPessoaChequeNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"VER_PESSOAS_CHEQUE"."NUMERO"'
      Size = 15
    end
    object qryRelPessoaChequeCOMPLEMENTO: TIBStringField
      FieldName = 'COMPLEMENTO'
      Origin = '"VER_PESSOAS_CHEQUE"."COMPLEMENTO"'
      Size = 30
    end
    object qryRelPessoaChequeCOD_BAIRRO: TIntegerField
      FieldName = 'COD_BAIRRO'
      Origin = '"VER_PESSOAS_CHEQUE"."COD_BAIRRO"'
    end
    object qryRelPessoaChequeBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"VER_PESSOAS_CHEQUE"."BAIRRO"'
      Size = 50
    end
    object qryRelPessoaChequeCOD_CIDADE: TIntegerField
      FieldName = 'COD_CIDADE'
      Origin = '"VER_PESSOAS_CHEQUE"."COD_CIDADE"'
    end
    object qryRelPessoaChequeCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"VER_PESSOAS_CHEQUE"."CIDADE"'
      Size = 50
    end
    object qryRelPessoaChequeUF: TIBStringField
      FieldName = 'UF'
      Origin = '"VER_PESSOAS_CHEQUE"."UF"'
      FixedChar = True
      Size = 2
    end
    object qryRelPessoaChequeBLOQUEADO: TIBStringField
      FieldName = 'BLOQUEADO'
      Origin = '"VER_PESSOAS_CHEQUE"."BLOQUEADO"'
      FixedChar = True
      Size = 1
    end
    object qryRelPessoaChequeCEP: TIBStringField
      FieldName = 'CEP'
      Origin = '"VER_PESSOAS_CHEQUE"."CEP"'
      Size = 8
    end
    object qryRelPessoaChequeFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"VER_PESSOAS_CHEQUE"."FONE"'
    end
    object qryRelPessoaChequeFAX: TIBStringField
      FieldName = 'FAX'
      Origin = '"VER_PESSOAS_CHEQUE"."FAX"'
    end
    object qryRelPessoaChequeCELULAR: TIBStringField
      FieldName = 'CELULAR'
      Origin = '"VER_PESSOAS_CHEQUE"."CELULAR"'
    end
    object qryRelPessoaChequePESSOA: TIBStringField
      FieldName = 'PESSOA'
      Origin = '"VER_PESSOAS_CHEQUE"."PESSOA"'
      FixedChar = True
      Size = 1
    end
    object qryRelPessoaChequeCPF_CGC: TIBStringField
      FieldName = 'CPF_CGC'
      Origin = '"VER_PESSOAS_CHEQUE"."CPF_CGC"'
      Size = 15
    end
    object qryRelPessoaChequeRG_IE: TIBStringField
      FieldName = 'RG_IE'
      Origin = '"VER_PESSOAS_CHEQUE"."RG_IE"'
      Size = 15
    end
    object qryRelPessoaChequeCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"VER_PESSOAS_CHEQUE"."CONTATO"'
      Size = 30
    end
    object qryRelPessoaChequeDT_NASCIMENTO: TDateField
      FieldName = 'DT_NASCIMENTO'
      Origin = '"VER_PESSOAS_CHEQUE"."DT_NASCIMENTO"'
    end
    object qryRelPessoaChequeDT_CADASTRO: TDateField
      FieldName = 'DT_CADASTRO'
      Origin = '"VER_PESSOAS_CHEQUE"."DT_CADASTRO"'
    end
    object qryRelPessoaChequeEMAIL: TIBStringField
      FieldName = 'EMAIL'
      Origin = '"VER_PESSOAS_CHEQUE"."EMAIL"'
      Size = 80
    end
    object qryRelPessoaChequeOBS: TBlobField
      FieldName = 'OBS'
      Origin = '"VER_PESSOAS_CHEQUE"."OBS"'
      Size = 8
    end
    object qryRelPessoaChequeREGIAO: TIntegerField
      FieldName = 'REGIAO'
      Origin = '"VER_PESSOAS_CHEQUE"."REGIAO"'
    end
    object qryRelPessoaChequeINSC_MUNIC: TIBStringField
      FieldName = 'INSC_MUNIC'
      Origin = '"VER_PESSOAS_CHEQUE"."INSC_MUNIC"'
      Size = 15
    end
    object qryRelPessoaChequeASSINA_NOTA: TIBStringField
      FieldName = 'ASSINA_NOTA'
      Origin = '"VER_PESSOAS_CHEQUE"."ASSINA_NOTA"'
      FixedChar = True
      Size = 1
    end
    object qryRelPessoaChequeORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = '"VER_PESSOAS_CHEQUE"."ORDEM"'
    end
    object qryRelPessoaChequeFREQUENCIA: TIBStringField
      FieldName = 'FREQUENCIA'
      Origin = '"VER_PESSOAS_CHEQUE"."FREQUENCIA"'
      FixedChar = True
      Size = 3
    end
  end
  object qryRelComFaixa: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AutoCalcFields = False
    SQL.Strings = (
      'select * from pcd_comissao_faixa(:cnpj,:dini,:dfim)')
    Left = 407
    Top = 323
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
    object qryRelComFaixaCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_COMISSAO_FAIXA"."CODIGO"'
    end
    object qryRelComFaixaPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"PCD_COMISSAO_FAIXA"."PESSOA_FJ"'
    end
    object qryRelComFaixaPESSOA_RAZAO: TIBStringField
      FieldName = 'PESSOA_RAZAO'
      Origin = '"PCD_COMISSAO_FAIXA"."PESSOA_RAZAO"'
      Size = 50
    end
    object qryRelComFaixaDATA_CAIXA: TDateField
      FieldName = 'DATA_CAIXA'
      Origin = '"PCD_COMISSAO_FAIXA"."DATA_CAIXA"'
    end
    object qryRelComFaixaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_COMISSAO_FAIXA"."DATA"'
    end
    object qryRelComFaixaDESC_ACRES: TIBBCDField
      FieldName = 'DESC_ACRES'
      Origin = '"PCD_COMISSAO_FAIXA"."DESC_ACRES"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaDINHEIRO: TIBBCDField
      FieldName = 'DINHEIRO'
      Origin = '"PCD_COMISSAO_FAIXA"."DINHEIRO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaCHEQUE: TIBBCDField
      FieldName = 'CHEQUE'
      Origin = '"PCD_COMISSAO_FAIXA"."CHEQUE"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaCARTAO: TIBBCDField
      FieldName = 'CARTAO'
      Origin = '"PCD_COMISSAO_FAIXA"."CARTAO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaTICKET: TIBBCDField
      FieldName = 'TICKET'
      Origin = '"PCD_COMISSAO_FAIXA"."TICKET"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaTOTAL: TIBBCDField
      FieldName = 'TOTAL'
      Origin = '"PCD_COMISSAO_FAIXA"."TOTAL"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaTROCO: TIBBCDField
      FieldName = 'TROCO'
      Origin = '"PCD_COMISSAO_FAIXA"."TROCO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaVLRLIQUIDO: TIBBCDField
      FieldName = 'VLRLIQUIDO'
      Origin = '"PCD_COMISSAO_FAIXA"."VLRLIQUIDO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaTIPO_VENDA: TIBStringField
      FieldName = 'TIPO_VENDA'
      Origin = '"PCD_COMISSAO_FAIXA"."TIPO_VENDA"'
      FixedChar = True
      Size = 3
    end
    object qryRelComFaixaNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"PCD_COMISSAO_FAIXA"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object qryRelComFaixaVENDEDO: TIntegerField
      FieldName = 'VENDEDO'
      Origin = '"PCD_COMISSAO_FAIXA"."VENDEDO"'
    end
    object qryRelComFaixaNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"PCD_COMISSAO_FAIXA"."NOME_VENDEDOR"'
      Size = 50
    end
    object qryRelComFaixaPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_COMISSAO_FAIXA"."PRODUTO"'
      Size = 15
    end
    object qryRelComFaixaQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Origin = '"PCD_COMISSAO_FAIXA"."QUANTIDADE"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaPRC_UNITARIO: TIBBCDField
      FieldName = 'PRC_UNITARIO'
      Origin = '"PCD_COMISSAO_FAIXA"."PRC_UNITARIO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaDESCONTO: TIBBCDField
      FieldName = 'DESCONTO'
      Origin = '"PCD_COMISSAO_FAIXA"."DESCONTO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaCOM_VISTA: TIBBCDField
      FieldName = 'COM_VISTA'
      Origin = '"PCD_COMISSAO_FAIXA"."COM_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaCOM_PRAZO: TIBBCDField
      FieldName = 'COM_PRAZO'
      Origin = '"PCD_COMISSAO_FAIXA"."COM_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaFECHADA: TIBStringField
      FieldName = 'FECHADA'
      Origin = '"PCD_COMISSAO_FAIXA"."FECHADA"'
      FixedChar = True
      Size = 1
    end
    object qryRelComFaixaVLR_VISTA: TIBBCDField
      FieldName = 'VLR_VISTA'
      Origin = '"PCD_COMISSAO_FAIXA"."VLR_VISTA"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaVLR_PRAZO: TIBBCDField
      FieldName = 'VLR_PRAZO'
      Origin = '"PCD_COMISSAO_FAIXA"."VLR_PRAZO"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaVLR_ITEM: TIBBCDField
      FieldName = 'VLR_ITEM'
      Origin = '"PCD_COMISSAO_FAIXA"."VLR_ITEM"'
      Precision = 18
      Size = 4
    end
    object qryRelComFaixaNOME_PRODUTO: TIBStringField
      FieldName = 'NOME_PRODUTO'
      Origin = '"PCD_COMISSAO_FAIXA"."NOME_PRODUTO"'
      Size = 70
    end
    object qryRelComFaixaCOM_TOTAL: TIBBCDField
      FieldName = 'COM_TOTAL'
      Origin = '"PCD_COMISSAO_FAIXA"."COM_TOTAL"'
      Precision = 18
      Size = 4
    end
  end
  object dsRelComFaixa: TDataSource
    DataSet = qryRelComFaixa
    Left = 474
    Top = 323
  end
  object qryRelCliConsumidor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select total, vd.codigo, data, forma_pgto, num_cupom,  desc_acre' +
        's, nome_consumidor,'
      
        '       total_nota,data_caixa, documentos_consumidor, endereco_co' +
        'nsumidor,'
      
        '       cidade_consumidor, fone_consumidor, bairro_consumidor, u.' +
        'login, u.codigo cod_user'
      'from fat_vendas vd'
      'inner join sis_usuarios u on (u.codigo = vd.usuario)'
      
        'where vd.cnpj = :cnpj and (vd.data_caixa between :data1 and :dat' +
        'a2)'
      
        'and coalesce(vd.cancelada,'#39'N'#39') = '#39'N'#39' and coalesce(vd.fechada,'#39'N'#39 +
        ') = '#39'S'#39
      'and vd.pessoa_fj = 1 and coalesce(vd.nome_consumidor,'#39#39') <> '#39#39
      'order by vd.data, u.login, nome_consumidor, vd.codigo')
    Left = 56
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object qryRelCliConsumidorDATA: TDateTimeField
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
      Required = True
    end
    object qryRelCliConsumidorFORMA_PGTO: TIntegerField
      FieldName = 'FORMA_PGTO'
      Origin = '"FAT_VENDAS"."FORMA_PGTO"'
    end
    object qryRelCliConsumidorNUM_CUPOM: TIntegerField
      FieldName = 'NUM_CUPOM'
      Origin = '"FAT_VENDAS"."NUM_CUPOM"'
    end
    object qryRelCliConsumidorDESC_ACRES: TFloatField
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object qryRelCliConsumidorNOME_CONSUMIDOR: TIBStringField
      FieldName = 'NOME_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."NOME_CONSUMIDOR"'
      Size = 50
    end
    object qryRelCliConsumidorTOTAL_NOTA: TFloatField
      FieldName = 'TOTAL_NOTA'
      Origin = '"FAT_VENDAS"."TOTAL_NOTA"'
    end
    object qryRelCliConsumidorDATA_CAIXA: TDateTimeField
      FieldName = 'DATA_CAIXA'
      Origin = '"FAT_VENDAS"."DATA_CAIXA"'
    end
    object qryRelCliConsumidorDOCUMENTOS_CONSUMIDOR: TIBStringField
      FieldName = 'DOCUMENTOS_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."DOCUMENTOS_CONSUMIDOR"'
    end
    object qryRelCliConsumidorENDERECO_CONSUMIDOR: TIBStringField
      FieldName = 'ENDERECO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."ENDERECO_CONSUMIDOR"'
      Size = 30
    end
    object qryRelCliConsumidorCIDADE_CONSUMIDOR: TIBStringField
      FieldName = 'CIDADE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."CIDADE_CONSUMIDOR"'
      Size = 50
    end
    object qryRelCliConsumidorFONE_CONSUMIDOR: TIBStringField
      FieldName = 'FONE_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."FONE_CONSUMIDOR"'
    end
    object qryRelCliConsumidorBAIRRO_CONSUMIDOR: TIBStringField
      FieldName = 'BAIRRO_CONSUMIDOR'
      Origin = '"FAT_VENDAS"."BAIRRO_CONSUMIDOR"'
      Size = 50
    end
    object qryRelCliConsumidorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object qryRelCliConsumidorTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
    end
    object qryRelCliConsumidorLOGIN: TIBStringField
      FieldName = 'LOGIN'
      Origin = '"SIS_USUARIOS"."LOGIN"'
      Required = True
      Size = 10
    end
    object qryRelCliConsumidorCOD_USER: TIntegerField
      FieldName = 'COD_USER'
      Origin = '"SIS_USUARIOS"."CODIGO"'
      Required = True
    end
  end
  object dsCliConsumidor: TDataSource
    DataSet = qryRelCliConsumidor
    Left = 109
    Top = 511
  end
  object MalaDireta: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = MalaDiretaBeforeOpen
    DeleteSQL.Strings = (
      'delete from sis_empresas'
      'where'
      '  CNPJ = :OLD_CNPJ')
    InsertSQL.Strings = (
      'insert into sis_empresas'
      '  (CNPJ, CONFIG_MALADIRETA)'
      'values'
      '  (:CNPJ, :CONFIG_MALADIRETA)')
    RefreshSQL.Strings = (
      'Select * '
      'from sis_empresas '
      'where'
      '  CNPJ = :CNPJ')
    SelectSQL.Strings = (
      'select  cnpj, config_maladireta'
      'from sis_empresas'
      'where cnpj = :cnpj')
    ModifySQL.Strings = (
      'update sis_empresas'
      'set'
      '  CNPJ = :CNPJ,'
      '  CONFIG_MALADIRETA = :CONFIG_MALADIRETA'
      'where'
      '  CNPJ = :OLD_CNPJ')
    Left = 56
    Top = 651
    object MalaDiretaCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"SIS_EMPRESAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object MalaDiretaCONFIG_MALADIRETA: TMemoField
      FieldName = 'CONFIG_MALADIRETA'
      Origin = '"SIS_EMPRESAS"."CONFIG_MALADIRETA"'
      BlobType = ftMemo
      Size = 8
    end
  end
  object qryRelAuxContagem: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select coalesce(prd.codigo,'#39#39')||'#39' - '#39'||coalesce(prd.nome,'#39#39') prd' +
        '_produto, prd.unidade, gr.nome prd_grupo, sgr.nome prd_sub_grupo' +
        ', '
      'prd.localizacao_1,prd.localizacao_2,prd.localizacao_3'
      'from est_produtos prd'
      
        'left join est_grupos gr on (gr.codigo = prd.grupo and gr.cnpj = ' +
        'prd.cnpj)'
      
        'left join est_subgrupos sgr on (sgr.subgrupo = prd.subgrupo and ' +
        'sgr.cnpj = prd.cnpj)')
    Left = 474
    Top = 511
    object qryRelAuxContagemPRD_PRODUTO: TIBStringField
      FieldName = 'PRD_PRODUTO'
      Size = 68
    end
    object qryRelAuxContagemUNIDADE: TIBStringField
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qryRelAuxContagemPRD_GRUPO: TIBStringField
      FieldName = 'PRD_GRUPO'
      Origin = '"EST_GRUPOS"."NOME"'
      Size = 50
    end
    object qryRelAuxContagemPRD_SUB_GRUPO: TIBStringField
      FieldName = 'PRD_SUB_GRUPO'
      Origin = '"EST_SUBGRUPOS"."NOME"'
      Size = 50
    end
    object qryRelAuxContagemLOCALIZACAO_1: TIBStringField
      FieldName = 'LOCALIZACAO_1'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_1"'
      Size = 30
    end
    object qryRelAuxContagemLOCALIZACAO_2: TIBStringField
      FieldName = 'LOCALIZACAO_2'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_2"'
      Size = 30
    end
    object qryRelAuxContagemLOCALIZACAO_3: TIBStringField
      FieldName = 'LOCALIZACAO_3'
      Origin = '"EST_PRODUTOS"."LOCALIZACAO_3"'
      Size = 30
    end
  end
  object SelBairro: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select b.codigo, b.nome from glo_bairros b'
      'where b.cnpj = :cnpj')
    Left = 340
    Top = 369
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object IntegerField7: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CIDADES"."CODIGO"'
      Required = True
    end
    object IBStringField7: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CIDADES"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelModelos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select md.codigo, md.nome from glo_modelo_propriedade md'
      'where cnpj = :cnpj')
    Left = 56
    Top = 55
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelModelosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_MODELO_PROPRIEDADE"."CODIGO"'
      Required = True
    end
    object SelModelosNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_MODELO_PROPRIEDADE"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelLogradouro: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select codigo, nome from glo_logradouros lgd'
      'where cnpj = :cnpj')
    Left = 15
    Top = 100
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelLogradouroCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_LOGRADOUROS"."CODIGO"'
      Required = True
    end
    object SelLogradouroNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelRegiao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select * from glo_regioes reg'
      'where reg.cnpj = :cnpj'
      'order by reg.nome')
    Left = 221
    Top = 125
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelRegiaoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_REGIOES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelRegiaoVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = '"GLO_REGIOES"."VENDEDOR"'
    end
    object SelRegiaoTERCEIRO: TIntegerField
      FieldName = 'TERCEIRO'
      Origin = '"GLO_REGIOES"."TERCEIRO"'
    end
    object SelRegiaoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"GLO_REGIOES"."DESCRICAO"'
      Size = 100
    end
    object SelRegiaoCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_REGIOES"."CODIGO"'
      Required = True
    end
    object SelRegiaoNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_REGIOES"."NOME"'
      Size = 50
    end
    object SelRegiaoTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = '"GLO_REGIOES"."TECNICO"'
    end
  end
  object SelVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'SELECT V.CNPJ,'
      '               V.CODIGO, '
      '               V.PESSOA_FJ, '
      '               P.NOME_RAZAO'
      'FROM FAT_VENDEDOR V'
      '            INNER JOIN GLO_PESSOAS_FJ P'
      '                        ON (P.CODIGO = V.PESSOA_FJ)'
      'WHERE V.CNPJ = :CNPJ AND ATIVO = '#39'S'#39
      'ORDER BY P.NOME_RAZAO')
    Left = 274
    Top = 149
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object IBStringField9: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object IntegerField9: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object IntegerField10: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
      Required = True
    end
    object IBStringField10: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Required = True
      Size = 50
    end
  end
  object SelTipoContrato: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select t.codigo, t.nome from glo_tipo_contrato t'
      'where t.cnpj = :cnpj')
    Left = 109
    Top = 275
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object IntegerField11: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      Required = True
    end
    object IBStringField11: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
  end
  object qryRelVendasTerceiros: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = qryRelVendasTerceirosCalcFields
    SQL.Strings = (
      
        'select * from pcd_venda_terceiro(:cnpj,:data1,:data2,:tipo,:tipo' +
        '_dt)')
    Left = 167
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_dt'
        ParamType = ptUnknown
      end>
    object qryRelVendasTerceirosDATA_VD: TDateField
      FieldName = 'DATA_VD'
      Origin = '"PCD_VENDA_TERCEIRO"."DATA_VD"'
    end
    object qryRelVendasTerceirosVLR_TOTAL: TFloatField
      FieldName = 'VLR_TOTAL'
      Origin = '"PCD_VENDA_TERCEIRO"."VLR_TOTAL"'
    end
    object qryRelVendasTerceirosVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      Origin = '"PCD_VENDA_TERCEIRO"."VLR_DESCONTO"'
    end
    object qryRelVendasTerceirosVLR_LIQUIDO: TFloatField
      FieldName = 'VLR_LIQUIDO'
      Origin = '"PCD_VENDA_TERCEIRO"."VLR_LIQUIDO"'
    end
    object qryRelVendasTerceirosTTL_CUSTO_ITENS: TFloatField
      FieldName = 'TTL_CUSTO_ITENS'
      Origin = '"PCD_VENDA_TERCEIRO"."TTL_CUSTO_ITENS"'
    end
    object qryRelVendasTerceirosLB_PCT: TFloatField
      FieldName = 'LB_PCT'
      Origin = '"PCD_VENDA_TERCEIRO"."LB_PCT"'
    end
    object qryRelVendasTerceirosLB_VLR: TFloatField
      FieldName = 'LB_VLR'
      Origin = '"PCD_VENDA_TERCEIRO"."LB_VLR"'
    end
    object qryRelVendasTerceirosCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_VENDEDOR"'
    end
    object qryRelVendasTerceirosVENDEDOR: TIBStringField
      FieldName = 'VENDEDOR'
      Origin = '"PCD_VENDA_TERCEIRO"."VENDEDOR"'
      Size = 50
    end
    object qryRelVendasTerceirosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"PCD_VENDA_TERCEIRO"."CODIGO"'
    end
    object qryRelVendasTerceirosCOD_TERCEIRO: TIntegerField
      FieldName = 'COD_TERCEIRO'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_TERCEIRO"'
    end
    object qryRelVendasTerceirosTERCEIRO: TIBStringField
      FieldName = 'TERCEIRO'
      Origin = '"PCD_VENDA_TERCEIRO"."TERCEIRO"'
      Size = 50
    end
    object qryRelVendasTerceirosCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_CLIENTE"'
    end
    object qryRelVendasTerceirosCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_VENDA_TERCEIRO"."CLIENTE"'
      Size = 50
    end
    object qryRelVendasTerceirosCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_FORNECEDOR"'
    end
    object qryRelVendasTerceirosCOD_MARCA: TIntegerField
      FieldName = 'COD_MARCA'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_MARCA"'
    end
    object qryRelVendasTerceirosCOD_SUBGRUPO: TIntegerField
      FieldName = 'COD_SUBGRUPO'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_SUBGRUPO"'
    end
    object qryRelVendasTerceirosCOD_GRUPO: TIntegerField
      FieldName = 'COD_GRUPO'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_GRUPO"'
    end
    object qryRelVendasTerceirosCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"PCD_VENDA_TERCEIRO"."COD_PRODUTO"'
      Size = 15
    end
    object qryRelVendasTerceirosPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Origin = '"PCD_VENDA_TERCEIRO"."PRODUTO"'
      Size = 50
    end
    object qryRelVendasTerceirosProduto2: TIBStringField
      FieldKind = fkCalculated
      FieldName = 'Produto2'
      Size = 100
      Calculated = True
    end
    object qryRelVendasTerceirosCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"PCD_VENDA_TERCEIRO"."COM_VISTA"'
    end
    object qryRelVendasTerceirosCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"PCD_VENDA_TERCEIRO"."COM_PRAZO"'
    end
    object qryRelVendasTerceirosTotalComissao: TFloatField
      FieldKind = fkCalculated
      FieldName = 'TotalComissao'
      Calculated = True
    end
  end
  object SelClassificao: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select c.codigo, c.nome from glo_classificacao c'
      '  where c.cnpj = :cnpj')
    Left = 167
    Top = 149
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object IntegerField12: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_LOGRADOUROS"."CODIGO"'
      Required = True
    end
    object IBStringField12: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Required = True
      Size = 50
    end
  end
  object SelLocalCob: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select cb.codigo, cb.nome from fin_local_cobranca cb'
      '  where cb.cnpj = :cnpj')
    Left = 109
    Top = 55
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelLocalCobCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_LOCAL_COBRANCA"."CODIGO"'
      Required = True
    end
    object SelLocalCobNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_LOCAL_COBRANCA"."NOME"'
      Required = True
      Size = 50
    end
  end
  object qryRelReceber: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select * from pcd_rel_receber(:cnpj,:data1,:data2,:dt_cx,:tipo)')
    Left = 213
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'dt_cx'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
    object qryRelReceberCOD_CLIENTE: TIntegerField
      FieldName = 'COD_CLIENTE'
      Origin = '"PCD_REL_RECEBER"."COD_CLIENTE"'
    end
    object qryRelReceberCOD_RECEBER: TIntegerField
      FieldName = 'COD_RECEBER'
      Origin = '"PCD_REL_RECEBER"."COD_RECEBER"'
    end
    object qryRelReceberDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"PCD_REL_RECEBER"."DOCTO"'
    end
    object qryRelReceberTIPO_DOCTO: TIBStringField
      FieldName = 'TIPO_DOCTO'
      Origin = '"PCD_REL_RECEBER"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object qryRelReceberCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Origin = '"PCD_REL_RECEBER"."CLIENTE"'
      Size = 50
    end
    object qryRelReceberHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"PCD_REL_RECEBER"."HISTORICO"'
      Size = 100
    end
    object qryRelReceberPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"PCD_REL_RECEBER"."PARCELA"'
      Size = 6
    end
    object qryRelReceberDT_EMISSAO: TDateField
      FieldName = 'DT_EMISSAO'
      Origin = '"PCD_REL_RECEBER"."DT_EMISSAO"'
    end
    object qryRelReceberDT_VENCTO: TDateField
      FieldName = 'DT_VENCTO'
      Origin = '"PCD_REL_RECEBER"."DT_VENCTO"'
    end
    object qryRelReceberDT_LANCTO: TDateField
      FieldName = 'DT_LANCTO'
      Origin = '"PCD_REL_RECEBER"."DT_LANCTO"'
    end
    object qryRelReceberVALOR_NOMINAL: TFloatField
      FieldName = 'VALOR_NOMINAL'
      Origin = '"PCD_REL_RECEBER"."VALOR_NOMINAL"'
    end
    object qryRelReceberBX_PARCIAL: TFloatField
      FieldName = 'BX_PARCIAL'
      Origin = '"PCD_REL_RECEBER"."BX_PARCIAL"'
    end
    object qryRelReceberSALDO: TFloatField
      FieldName = 'SALDO'
      Origin = '"PCD_REL_RECEBER"."SALDO"'
    end
    object qryRelReceberCOD_CLASSIFICACAO: TIntegerField
      FieldName = 'COD_CLASSIFICACAO'
      Origin = '"PCD_REL_RECEBER"."COD_CLASSIFICACAO"'
    end
    object qryRelReceberCLASSIFICACAO: TIBStringField
      FieldName = 'CLASSIFICACAO'
      Origin = '"PCD_REL_RECEBER"."CLASSIFICACAO"'
      Size = 50
    end
    object qryRelReceberCOD_LOCALCOBRANCA: TIntegerField
      FieldName = 'COD_LOCALCOBRANCA'
      Origin = '"PCD_REL_RECEBER"."COD_LOCALCOBRANCA"'
    end
    object qryRelReceberLOCALCOBRANCA: TIBStringField
      FieldName = 'LOCALCOBRANCA'
      Origin = '"PCD_REL_RECEBER"."LOCALCOBRANCA"'
      Size = 50
    end
    object qryRelReceberCOD_VENDEDOR: TIntegerField
      FieldName = 'COD_VENDEDOR'
      Origin = '"PCD_REL_RECEBER"."COD_VENDEDOR"'
    end
    object qryRelReceberNOME_VENDEDOR: TIBStringField
      FieldName = 'NOME_VENDEDOR'
      Origin = '"PCD_REL_RECEBER"."NOME_VENDEDOR"'
      Size = 50
    end
    object qryRelReceberCOD_REGIAO: TIntegerField
      FieldName = 'COD_REGIAO'
      Origin = '"PCD_REL_RECEBER"."COD_REGIAO"'
    end
    object qryRelReceberREGIAO: TIBStringField
      FieldName = 'REGIAO'
      Origin = '"PCD_REL_RECEBER"."REGIAO"'
      Size = 50
    end
    object qryRelReceberCOD_ROTA: TIntegerField
      FieldName = 'COD_ROTA'
      Origin = '"PCD_REL_RECEBER"."COD_ROTA"'
    end
    object qryRelReceberROTA: TIBStringField
      FieldName = 'ROTA'
      Origin = '"PCD_REL_RECEBER"."ROTA"'
      Size = 50
    end
    object qryRelReceberFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"PCD_REL_RECEBER"."FONE"'
    end
    object qryRelReceberCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"PCD_REL_RECEBER"."CONTATO"'
      Size = 30
    end
    object qryRelReceberLOCAL_TRABALHO: TIBStringField
      FieldName = 'LOCAL_TRABALHO'
      Origin = '"PCD_REL_RECEBER"."LOCAL_TRABALHO"'
      Size = 50
    end
    object qryRelReceberDATA_ULT_BX: TDateField
      FieldName = 'DATA_ULT_BX'
      Origin = '"PCD_REL_RECEBER"."DATA_ULT_BX"'
    end
    object qryRelReceberJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"PCD_REL_RECEBER"."JUROS"'
    end
    object qryRelReceberMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = '"PCD_REL_RECEBER"."MULTA"'
    end
    object qryRelReceberDESCTO_RES: TFloatField
      FieldName = 'DESCTO_RES'
      Origin = '"PCD_REL_RECEBER"."DESCTO_RES"'
    end
    object qryRelReceberARQ_MORTO: TIBStringField
      FieldName = 'ARQ_MORTO'
      Origin = '"PCD_REL_RECEBER"."ARQ_MORTO"'
      FixedChar = True
      Size = 1
    end
    object qryRelReceberVENDA: TIntegerField
      FieldName = 'VENDA'
      Origin = '"PCD_REL_RECEBER"."VENDA"'
    end
    object qryRelReceberNOME_CLIENTE: TIBStringField
      FieldName = 'NOME_CLIENTE'
      Origin = '"PCD_REL_RECEBER"."NOME_CLIENTE"'
      Size = 50
    end
    object qryRelReceberVLR_COMISSAO: TFloatField
      FieldName = 'VLR_COMISSAO'
      Origin = '"PCD_REL_RECEBER"."VLR_COMISSAO"'
    end
    object qryRelReceberPORCENTAGEM: TFloatField
      FieldName = 'PORCENTAGEM'
      Origin = '"PCD_REL_RECEBER"."PORCENTAGEM"'
    end
    object qryRelReceberCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"PCD_REL_RECEBER"."CIDADE"'
    end
    object qryRelReceberCIDADE_NOME: TIBStringField
      FieldName = 'CIDADE_NOME'
      Origin = '"PCD_REL_RECEBER"."CIDADE_NOME"'
      Size = 50
    end
    object qryRelReceberNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"PCD_REL_RECEBER"."NUM_NF"'
    end
  end
  object SelTipoDocto: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select d.sigla, d.nome from glo_tipos_docto d'
      'where d.cnpj = :cnpj')
    Left = 413
    Top = 236
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
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
  object qryRelRecebidas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRecLink
    SQL.Strings = (
      'select * from fin_baixas_receber bx'
      'where bx.pessoa_fj = :COD_CLIENTE '
      'and bx.codigo_cr = :COD_RECEBER'
      'and bx.cnpj = :cnpj'
      'and (coalesce(bx.act_tipo_baixa,'#39'1'#39') <> '#39'4'#39')'
      'order by bx.codigo')
    Left = 15
    Top = 323
    ParamData = <
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'COD_RECEBER'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRelRecebidasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_BAIXAS_RECEBER"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRelRecebidasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO"'
      Required = True
    end
    object qryRelRecebidasANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"FIN_BAIXAS_RECEBER"."ANO"'
      Required = True
    end
    object qryRelRecebidasCODIGO_CR: TIntegerField
      FieldName = 'CODIGO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_CR"'
      Required = True
    end
    object qryRelRecebidasANO_CR: TSmallintField
      FieldName = 'ANO_CR'
      Origin = '"FIN_BAIXAS_RECEBER"."ANO_CR"'
      Required = True
    end
    object qryRelRecebidasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FIN_BAIXAS_RECEBER"."USUARIO"'
    end
    object qryRelRecebidasDT_BAIXA: TDateTimeField
      FieldName = 'DT_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_BAIXA"'
      Required = True
    end
    object qryRelRecebidasHISTORICO_BX: TIBStringField
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object qryRelRecebidasVLR_BAIXA: TFloatField
      FieldName = 'VLR_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."VLR_BAIXA"'
    end
    object qryRelRecebidasJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."JUROS"'
    end
    object qryRelRecebidasDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FIN_BAIXAS_RECEBER"."DESCONTOS"'
    end
    object qryRelRecebidasPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_RECEBER"."PLANILHA"'
      Required = True
    end
    object qryRelRecebidasTAXA_JUROS: TFloatField
      FieldName = 'TAXA_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TAXA_JUROS"'
    end
    object qryRelRecebidasTIPO_JUROS: TIBStringField
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_RECEBER"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object qryRelRecebidasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_RECEBER"."PESSOA_FJ"'
      Required = True
    end
    object qryRelRecebidasDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_EMISSAO"'
      Required = True
    end
    object qryRelRecebidasDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_VENCTO"'
      Required = True
    end
    object qryRelRecebidasDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_LANCTO"'
    end
    object qryRelRecebidasDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_RECEBER"."DOCTO"'
      Required = True
    end
    object qryRelRecebidasPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_RECEBER"."PARCELA"'
      Required = True
      Size = 6
    end
    object qryRelRecebidasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_RECEBER"."HISTORICO"'
      Size = 100
    end
    object qryRelRecebidasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_BAIXAS_RECEBER"."VALOR"'
    end
    object qryRelRecebidasVLR_PARCIAL: TFloatField
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_BAIXAS_RECEBER"."VLR_PARCIAL"'
    end
    object qryRelRecebidasJUROS_REC: TFloatField
      FieldName = 'JUROS_REC'
      Origin = '"FIN_BAIXAS_RECEBER"."JUROS_REC"'
    end
    object qryRelRecebidasDESCONTOS_REC: TFloatField
      FieldName = 'DESCONTOS_REC'
      Origin = '"FIN_BAIXAS_RECEBER"."DESCONTOS_REC"'
    end
    object qryRelRecebidasBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryRelRecebidasORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_RECEBER"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryRelRecebidasCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_VN"'
    end
    object qryRelRecebidasANO_VN: TSmallintField
      FieldName = 'ANO_VN'
      Origin = '"FIN_BAIXAS_RECEBER"."ANO_VN"'
    end
    object qryRelRecebidasAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."AVISO"'
    end
    object qryRelRecebidasDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"FIN_BAIXAS_RECEBER"."DT_AVISO"'
    end
    object qryRelRecebidasFATURA: TIntegerField
      FieldName = 'FATURA'
      Origin = '"FIN_BAIXAS_RECEBER"."FATURA"'
    end
    object qryRelRecebidasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BAIXAS_RECEBER"."NOME"'
      Size = 50
    end
    object qryRelRecebidasNUMBOLETO: TIntegerField
      FieldName = 'NUMBOLETO'
      Origin = '"FIN_BAIXAS_RECEBER"."NUMBOLETO"'
    end
    object qryRelRecebidasNUMDUPLICATA: TIntegerField
      FieldName = 'NUMDUPLICATA'
      Origin = '"FIN_BAIXAS_RECEBER"."NUMDUPLICATA"'
    end
    object qryRelRecebidasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"FIN_BAIXAS_RECEBER"."CONTA"'
    end
    object qryRelRecebidasTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FIN_BAIXAS_RECEBER"."TURNO"'
    end
    object qryRelRecebidasCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"FIN_BAIXAS_RECEBER"."COBRADOR"'
    end
    object qryRelRecebidasLOCAL_COBRANCA: TIntegerField
      FieldName = 'LOCAL_COBRANCA'
      Origin = '"FIN_BAIXAS_RECEBER"."LOCAL_COBRANCA"'
    end
    object qryRelRecebidasCODIGO_TRC: TIntegerField
      FieldName = 'CODIGO_TRC'
      Origin = '"FIN_BAIXAS_RECEBER"."CODIGO_TRC"'
    end
    object qryRelRecebidasVLR_ORIG_ALT: TIBStringField
      FieldName = 'VLR_ORIG_ALT'
      Origin = '"FIN_BAIXAS_RECEBER"."VLR_ORIG_ALT"'
      FixedChar = True
      Size = 1
    end
    object qryRelRecebidasBAIXA_BLT: TIBStringField
      FieldName = 'BAIXA_BLT'
      Origin = '"FIN_BAIXAS_RECEBER"."BAIXA_BLT"'
      FixedChar = True
      Size = 1
    end
    object qryRelRecebidasBLT_NOSSO_NUM: TLargeintField
      FieldName = 'BLT_NOSSO_NUM'
      Origin = '"FIN_BAIXAS_RECEBER"."BLT_NOSSO_NUM"'
    end
    object qryRelRecebidasBLT_BANCO: TIntegerField
      FieldName = 'BLT_BANCO'
      Origin = '"FIN_BAIXAS_RECEBER"."BLT_BANCO"'
    end
    object qryRelRecebidasBLT_REM_GERADA: TIBStringField
      FieldName = 'BLT_REM_GERADA'
      Origin = '"FIN_BAIXAS_RECEBER"."BLT_REM_GERADA"'
      FixedChar = True
      Size = 1
    end
    object qryRelRecebidasMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = '"FIN_BAIXAS_RECEBER"."MULTA"'
    end
    object qryRelRecebidasVARIACAO: TFloatField
      FieldName = 'VARIACAO'
      Origin = '"FIN_BAIXAS_RECEBER"."VARIACAO"'
    end
    object qryRelRecebidasVALOR_NOMINAL: TFloatField
      FieldName = 'VALOR_NOMINAL'
      Origin = '"FIN_BAIXAS_RECEBER"."VALOR_NOMINAL"'
    end
    object qryRelRecebidasPGT_FX_CODIGO: TIntegerField
      FieldName = 'PGT_FX_CODIGO'
      Origin = '"FIN_BAIXAS_RECEBER"."PGT_FX_CODIGO"'
    end
    object qryRelRecebidasPGT_FX_INI: TIntegerField
      FieldName = 'PGT_FX_INI'
      Origin = '"FIN_BAIXAS_RECEBER"."PGT_FX_INI"'
    end
    object qryRelRecebidasPGT_FX_FIN: TIntegerField
      FieldName = 'PGT_FX_FIN'
      Origin = '"FIN_BAIXAS_RECEBER"."PGT_FX_FIN"'
    end
    object qryRelRecebidasPGT_FX_PCT_PAGTO: TFloatField
      FieldName = 'PGT_FX_PCT_PAGTO'
      Origin = '"FIN_BAIXAS_RECEBER"."PGT_FX_PCT_PAGTO"'
    end
    object qryRelRecebidasCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_BAIXAS_RECEBER"."COD_INDEXADOR"'
    end
    object qryRelRecebidasIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_BAIXAS_RECEBER"."IDX_DATABASE"'
    end
    object qryRelRecebidasIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_BAIXAS_RECEBER"."IDX_COTACAO"'
    end
    object qryRelRecebidasIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_BAIXAS_RECEBER"."IDX_QTDE"'
    end
    object qryRelRecebidasBX_IDX_QTDE: TFloatField
      FieldName = 'BX_IDX_QTDE'
      Origin = '"FIN_BAIXAS_RECEBER"."BX_IDX_QTDE"'
    end
    object qryRelRecebidasBX_IDX_COTACAO: TFloatField
      FieldName = 'BX_IDX_COTACAO'
      Origin = '"FIN_BAIXAS_RECEBER"."BX_IDX_COTACAO"'
    end
    object qryRelRecebidasJURO_CALCULADO: TFloatField
      FieldName = 'JURO_CALCULADO'
      Origin = '"FIN_BAIXAS_RECEBER"."JURO_CALCULADO"'
    end
    object qryRelRecebidasDESCONTO_CALCULADO: TFloatField
      FieldName = 'DESCONTO_CALCULADO'
      Origin = '"FIN_BAIXAS_RECEBER"."DESCONTO_CALCULADO"'
    end
    object qryRelRecebidasVARIACAO_CALCULADA: TFloatField
      FieldName = 'VARIACAO_CALCULADA'
      Origin = '"FIN_BAIXAS_RECEBER"."VARIACAO_CALCULADA"'
    end
    object qryRelRecebidasMULTA_CALCULADA: TFloatField
      FieldName = 'MULTA_CALCULADA'
      Origin = '"FIN_BAIXAS_RECEBER"."MULTA_CALCULADA"'
    end
    object qryRelRecebidasCOD_ACERTOCONTA: TIntegerField
      FieldName = 'COD_ACERTOCONTA'
      Origin = '"FIN_BAIXAS_RECEBER"."COD_ACERTOCONTA"'
    end
    object qryRelRecebidasCOD_CONFIG_TITULO: TIntegerField
      FieldName = 'COD_CONFIG_TITULO'
      Origin = '"FIN_BAIXAS_RECEBER"."COD_CONFIG_TITULO"'
    end
    object qryRelRecebidasCOD_EVENTOCONTABIL: TIntegerField
      FieldName = 'COD_EVENTOCONTABIL'
      Origin = '"FIN_BAIXAS_RECEBER"."COD_EVENTOCONTABIL"'
    end
    object qryRelRecebidasACT_TIPO_BAIXA: TIBStringField
      FieldName = 'ACT_TIPO_BAIXA'
      Origin = '"FIN_BAIXAS_RECEBER"."ACT_TIPO_BAIXA"'
      FixedChar = True
      Size = 1
    end
  end
  object dsRecLink: TDataSource
    DataSet = qryRelReceber
    Left = 56
    Top = 275
  end
  object qryRelCobRec: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRecLink
    SQL.Strings = (
      'select * from fin_cobrancas cb'
      
        'where cb.cnpj = :cnpj and cb.receber = :COD_RECEBER and cb.pesso' +
        'a_fj = :COD_CLIENTE'
      'order by cb.data_cobranca, cb.hr_cobranca')
    Left = 15
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'COD_RECEBER'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptUnknown
      end>
    object qryRelCobRecCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_COBRANCAS"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRelCobRecPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_COBRANCAS"."PESSOA_FJ"'
      Required = True
    end
    object qryRelCobRecDATA_COBRANCA: TDateTimeField
      FieldName = 'DATA_COBRANCA'
      Origin = '"FIN_COBRANCAS"."DATA_COBRANCA"'
      Required = True
    end
    object qryRelCobRecRECEBER: TIntegerField
      FieldName = 'RECEBER'
      Origin = '"FIN_COBRANCAS"."RECEBER"'
      Required = True
    end
    object qryRelCobRecORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_COBRANCAS"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryRelCobRecMOTIVO: TIntegerField
      FieldName = 'MOTIVO'
      Origin = '"FIN_COBRANCAS"."MOTIVO"'
      Required = True
    end
    object qryRelCobRecCOBRAR_EM: TDateTimeField
      FieldName = 'COBRAR_EM'
      Origin = '"FIN_COBRANCAS"."COBRAR_EM"'
      Required = True
    end
    object qryRelCobRecHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_COBRANCAS"."HISTORICO"'
      Size = 100
    end
    object qryRelCobRecPAGO_EM: TDateTimeField
      FieldName = 'PAGO_EM'
      Origin = '"FIN_COBRANCAS"."PAGO_EM"'
    end
    object qryRelCobRecNOME_MOTIVO: TIBStringField
      FieldName = 'NOME_MOTIVO'
      Origin = '"FIN_COBRANCAS"."NOME_MOTIVO"'
      Size = 50
    end
    object qryRelCobRecCOBRADOR: TIntegerField
      FieldName = 'COBRADOR'
      Origin = '"FIN_COBRANCAS"."COBRADOR"'
    end
    object qryRelCobRecNOME_COBRADOR: TIBStringField
      FieldName = 'NOME_COBRADOR'
      Origin = '"FIN_COBRANCAS"."NOME_COBRADOR"'
      Size = 50
    end
    object qryRelCobRecANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"FIN_COBRANCAS"."ANO"'
    end
    object qryRelCobRecSELECIONADO: TIBStringField
      FieldName = 'SELECIONADO'
      Origin = '"FIN_COBRANCAS"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object qryRelCobRecINDICE: TIBStringField
      FieldName = 'INDICE'
      Origin = '"FIN_COBRANCAS"."INDICE"'
      Size = 70
    end
    object qryRelCobRecDT_INSERT: TDateTimeField
      FieldName = 'DT_INSERT'
      Origin = '"FIN_COBRANCAS"."DT_INSERT"'
    end
    object qryRelCobRecHR_COBRAR_EM: TTimeField
      FieldName = 'HR_COBRAR_EM'
      Origin = '"FIN_COBRANCAS"."HR_COBRAR_EM"'
    end
    object qryRelCobRecHR_COBRANCA: TTimeField
      FieldName = 'HR_COBRANCA'
      Origin = '"FIN_COBRANCAS"."HR_COBRANCA"'
      Required = True
    end
  end
  object qryRelVDRec: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRecLink
    SQL.Strings = (
      
        'select vd.codigo, vd.num_nf, vd.data, vd.nome, vd.total, vd.desc' +
        '_acres,'
      
        '       (coalesce(vd.total,0) + coalesce(vd.desc_acres,0)) vd_tot' +
        'al,'
      
        '       vdi.quantidade, vdi.prc_unitario, vdi.desconto, prd.codig' +
        'o cod_produto, (coalesce(prd.codigo,'#39#39')||'#39'-'#39'||coalesce(prd.nome,' +
        #39#39')) produto,'
      
        '       ((coalesce(vdi.prc_unitario,0) ) * coalesce(vdi.quantidad' +
        'e,0)) total_item'
      '    from fat_vendas vd'
      
        '    inner join fat_vendas_itens vdi on (vdi.cnpj = vd.cnpj and v' +
        'di.codigo = vd.codigo)'
      
        '    inner join est_produtos prd on (prd.codigo = vdi.produto and' +
        ' vdi.cnpj = vd.cnpj)'
      
        '    where vd.cnpj = :cnpj and vd.codigo = :venda and vd.pessoa_f' +
        'j = :cod_cliente')
    Left = 109
    Top = 464
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'venda'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'COD_CLIENTE'
        ParamType = ptUnknown
      end>
    object qryRelVDRecNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDAS"."NOME"'
      Size = 50
    end
    object qryRelVDRecTOTAL: TFloatField
      FieldName = 'TOTAL'
      Origin = '"FAT_VENDAS"."TOTAL"'
    end
    object qryRelVDRecDESC_ACRES: TFloatField
      FieldName = 'DESC_ACRES'
      Origin = '"FAT_VENDAS"."DESC_ACRES"'
    end
    object qryRelVDRecVD_TOTAL: TFloatField
      FieldName = 'VD_TOTAL'
    end
    object qryRelVDRecQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"FAT_VENDAS_ITENS"."QUANTIDADE"'
    end
    object qryRelVDRecPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"FAT_VENDAS_ITENS"."PRC_UNITARIO"'
    end
    object qryRelVDRecDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      Origin = '"FAT_VENDAS_ITENS"."DESCONTO"'
    end
    object qryRelVDRecCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object qryRelVDRecTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
    end
    object qryRelVDRecCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDAS"."CODIGO"'
      Required = True
    end
    object qryRelVDRecPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 66
    end
    object qryRelVDRecNUM_NF: TIntegerField
      FieldName = 'NUM_NF'
      Origin = '"FAT_VENDAS"."NUM_NF"'
    end
    object qryRelVDRecDATA: TDateField
      FieldName = 'DATA'
      Origin = '"FAT_VENDAS"."DATA"'
    end
  end
  object qryRelEstoqueComp: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsRecLink
    SQL.Strings = (
      
        'select cliente,produto, origem, codigo, prd_nome, marca, psa_cod' +
        'igo, psa_nome_razao,'
      
        'sum(quantidade) quantidade, sum(total_item) total_item, sum(prc_' +
        'custo) prc_custo'
      'from pcd_lst_est_comprometido(:cnpj)'
      'where codigo = :codigo and psa_codigo = :psa and'
      'fornecedor = :fornecedor'
      
        'group by codigo, produto,  prd_nome, marca, psa_nome_razao,psa_c' +
        'odigo, cliente, origem'
      'order by psa_nome_razao, codigo, prd_nome ')
    Left = 56
    Top = 369
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
        Name = 'psa'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'fornecedor'
        ParamType = ptUnknown
      end>
    object qryRelEstoqueCompPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 70
    end
    object qryRelEstoqueCompCODIGO: TIntegerField
      FieldName = 'CODIGO'
    end
    object qryRelEstoqueCompPRD_NOME: TIBStringField
      FieldName = 'PRD_NOME'
      Size = 50
    end
    object qryRelEstoqueCompMARCA: TIBStringField
      FieldName = 'MARCA'
      Size = 50
    end
    object qryRelEstoqueCompPSA_CODIGO: TIntegerField
      FieldName = 'PSA_CODIGO'
    end
    object qryRelEstoqueCompPSA_NOME_RAZAO: TIBStringField
      FieldName = 'PSA_NOME_RAZAO'
      Size = 50
    end
    object qryRelEstoqueCompQUANTIDADE: TIBBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 4
    end
    object qryRelEstoqueCompTOTAL_ITEM: TIBBCDField
      FieldName = 'TOTAL_ITEM'
      Precision = 18
      Size = 4
    end
    object qryRelEstoqueCompPRC_CUSTO: TIBBCDField
      FieldName = 'PRC_CUSTO'
      Precision = 18
      Size = 4
    end
    object qryRelEstoqueCompCLIENTE: TIBStringField
      FieldName = 'CLIENTE'
      Size = 70
    end
    object qryRelEstoqueCompORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Size = 50
    end
  end
  object qryRelPagar: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelPagarCalcFields
    SQL.Strings = (
      
        'select coalesce(psa.codigo,0) cod_fornecedor, coalesce(psa.nome_' +
        'razao,'#39'Fornecedor n'#227'o definido'#39')fornecedor,'
      
        'pgr.origem, pgr.codigo cod_PAGAR, pgr.docto, pgr.parcela, pgr.dt' +
        '_emissao, pgr.dt_vencto, pgr.dt_lancto,'
      
        'coalesce(pgr.valor,0) valor_nominal, coalesce(pgr.vlr_parcial,0)' +
        ' bx_parcial, pgr.historico, psa.cidade, psa.fone,dt_ultima_baixa' +
        ', '
      
        'psa.contato, cct.codigo cct_codigo, cct.nome cct_nome, ct.codigo' +
        ' cod_contrato, ct.descricao ctr_nome'
      'from fin_contas_pagar pgr'
      
        'left join glo_pessoas_fj psa on (pgr.pessoa_fj = psa.codigo and ' +
        'psa.cnpj = pgr.cnpj)'
      
        'inner join fin_centro_custo cct on (cct.codigo = pgr.centro_cust' +
        'o and pgr.cnpj = cct.cnpj)'
      'left join ctr_contrato ct on (ct.codigo = pgr.cod_contrato)'
      'where pgr.cnpj = :cnpj ')
    Left = 15
    Top = 275
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRelPagarCOD_FORNECEDOR: TIntegerField
      FieldName = 'COD_FORNECEDOR'
    end
    object qryRelPagarFORNECEDOR: TIBStringField
      FieldName = 'FORNECEDOR'
      Size = 50
    end
    object qryRelPagarORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_CONTAS_PAGAR"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryRelPagarCOD_PAGAR: TIntegerField
      FieldName = 'COD_PAGAR'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO"'
      Required = True
    end
    object qryRelPagarDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DOCTO"'
      Required = True
    end
    object qryRelPagarPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_PAGAR"."PARCELA"'
      Required = True
      Size = 6
    end
    object qryRelPagarDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_EMISSAO"'
      Required = True
    end
    object qryRelPagarDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_VENCTO"'
      Required = True
    end
    object qryRelPagarDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_LANCTO"'
    end
    object qryRelPagarVALOR_NOMINAL: TFloatField
      FieldName = 'VALOR_NOMINAL'
    end
    object qryRelPagarBX_PARCIAL: TFloatField
      FieldName = 'BX_PARCIAL'
    end
    object qryRelPagarHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_CONTAS_PAGAR"."HISTORICO"'
      Size = 100
    end
    object qryRelPagarCIDADE: TIntegerField
      FieldName = 'CIDADE'
      Origin = '"GLO_PESSOAS_FJ"."CIDADE"'
    end
    object qryRelPagarFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object qryRelPagarCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_PESSOAS_FJ"."CONTATO"'
      Size = 30
    end
    object qryRelPagarCCT_CODIGO: TIntegerField
      FieldName = 'CCT_CODIGO'
      Origin = '"FIN_CENTRO_CUSTO"."CODIGO"'
      Required = True
    end
    object qryRelPagarCCT_NOME: TIBStringField
      FieldName = 'CCT_NOME'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Required = True
      Size = 50
    end
    object qryRelPagarcod_nome_fornecedor: TStringField
      FieldKind = fkCalculated
      FieldName = 'cod_nome_fornecedor'
      Size = 100
      Calculated = True
    end
    object qryRelPagarDT_ULTIMA_BAIXA: TDateTimeField
      FieldName = 'DT_ULTIMA_BAIXA'
      Origin = '"FIN_CONTAS_PAGAR"."DT_ULTIMA_BAIXA"'
    end
    object qryRelPagarSaldo: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Saldo'
      Calculated = True
    end
    object qryRelPagarCOD_CONTRATO: TIntegerField
      FieldName = 'COD_CONTRATO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      Required = True
    end
    object qryRelPagarCTR_NOME: TIBStringField
      FieldName = 'CTR_NOME'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
  object qryRelPagas: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    DataSource = dsPgLink
    SQL.Strings = (
      'select * from fin_baixas_pagar bx'
      'where bx.pessoa_fj = :COD_FORNECEDOR'
      'and bx.codigo_pg = :COD_PAGAR'
      'and bx.cnpj = :cnpj'
      'and (coalesce(act_tipo_baixa,'#39'1'#39') <> '#39'4'#39')'
      'order by bx.codigo')
    Left = 15
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'COD_FORNECEDOR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'COD_PAGAR'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object qryRelPagasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_BAIXAS_PAGAR"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object qryRelPagasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO"'
      Required = True
    end
    object qryRelPagasANO: TSmallintField
      FieldName = 'ANO'
      Origin = '"FIN_BAIXAS_PAGAR"."ANO"'
      Required = True
    end
    object qryRelPagasCODIGO_PG: TIntegerField
      FieldName = 'CODIGO_PG'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO_PG"'
      Required = True
    end
    object qryRelPagasANO_PG: TSmallintField
      FieldName = 'ANO_PG'
      Origin = '"FIN_BAIXAS_PAGAR"."ANO_PG"'
      Required = True
    end
    object qryRelPagasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = '"FIN_BAIXAS_PAGAR"."USUARIO"'
    end
    object qryRelPagasDT_BAIXA: TDateTimeField
      FieldName = 'DT_BAIXA'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_BAIXA"'
      Required = True
    end
    object qryRelPagasHISTORICO_BX: TIBStringField
      FieldName = 'HISTORICO_BX'
      Origin = '"FIN_BAIXAS_PAGAR"."HISTORICO_BX"'
      Required = True
      Size = 100
    end
    object qryRelPagasVLR_BAIXA: TFloatField
      FieldName = 'VLR_BAIXA'
      Origin = '"FIN_BAIXAS_PAGAR"."VLR_BAIXA"'
    end
    object qryRelPagasJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FIN_BAIXAS_PAGAR"."JUROS"'
    end
    object qryRelPagasDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"FIN_BAIXAS_PAGAR"."DESCONTOS"'
    end
    object qryRelPagasPLANILHA: TIntegerField
      FieldName = 'PLANILHA'
      Origin = '"FIN_BAIXAS_PAGAR"."PLANILHA"'
      Required = True
    end
    object qryRelPagasTAXA_JUROS: TFloatField
      FieldName = 'TAXA_JUROS'
      Origin = '"FIN_BAIXAS_PAGAR"."TAXA_JUROS"'
    end
    object qryRelPagasTIPO_JUROS: TIBStringField
      FieldName = 'TIPO_JUROS'
      Origin = '"FIN_BAIXAS_PAGAR"."TIPO_JUROS"'
      FixedChar = True
      Size = 1
    end
    object qryRelPagasPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_BAIXAS_PAGAR"."PESSOA_FJ"'
      Required = True
    end
    object qryRelPagasDT_EMISSAO: TDateTimeField
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_EMISSAO"'
      Required = True
    end
    object qryRelPagasDT_VENCTO: TDateTimeField
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_VENCTO"'
      Required = True
    end
    object qryRelPagasDT_LANCTO: TDateTimeField
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_LANCTO"'
    end
    object qryRelPagasDOCTO: TIBStringField
      FieldName = 'DOCTO'
      Origin = '"FIN_BAIXAS_PAGAR"."DOCTO"'
      Required = True
    end
    object qryRelPagasPARCELA: TIBStringField
      FieldName = 'PARCELA'
      Origin = '"FIN_BAIXAS_PAGAR"."PARCELA"'
      Required = True
      Size = 6
    end
    object qryRelPagasHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"FIN_BAIXAS_PAGAR"."HISTORICO"'
      Size = 100
    end
    object qryRelPagasVALOR: TFloatField
      FieldName = 'VALOR'
      Origin = '"FIN_BAIXAS_PAGAR"."VALOR"'
    end
    object qryRelPagasVLR_PARCIAL: TFloatField
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_BAIXAS_PAGAR"."VLR_PARCIAL"'
    end
    object qryRelPagasJUROS_PAG: TFloatField
      FieldName = 'JUROS_PAG'
      Origin = '"FIN_BAIXAS_PAGAR"."JUROS_PAG"'
    end
    object qryRelPagasDESCONTOS_PAG: TFloatField
      FieldName = 'DESCONTOS_PAG'
      Origin = '"FIN_BAIXAS_PAGAR"."DESCONTOS_PAG"'
    end
    object qryRelPagasBOLETO: TIBStringField
      FieldName = 'BOLETO'
      Origin = '"FIN_BAIXAS_PAGAR"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object qryRelPagasORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_BAIXAS_PAGAR"."ORIGEM"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object qryRelPagasCODIGO_ENT: TIntegerField
      FieldName = 'CODIGO_ENT'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO_ENT"'
    end
    object qryRelPagasANO_ENT: TSmallintField
      FieldName = 'ANO_ENT'
      Origin = '"FIN_BAIXAS_PAGAR"."ANO_ENT"'
    end
    object qryRelPagasAVISO: TIntegerField
      FieldName = 'AVISO'
      Origin = '"FIN_BAIXAS_PAGAR"."AVISO"'
    end
    object qryRelPagasDT_AVISO: TDateTimeField
      FieldName = 'DT_AVISO'
      Origin = '"FIN_BAIXAS_PAGAR"."DT_AVISO"'
    end
    object qryRelPagasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_BAIXAS_PAGAR"."NOME"'
      Size = 50
    end
    object qryRelPagasCENTRO_CUSTO: TIntegerField
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FIN_BAIXAS_PAGAR"."CENTRO_CUSTO"'
    end
    object qryRelPagasDUPLICATA: TIBStringField
      FieldName = 'DUPLICATA'
      Origin = '"FIN_BAIXAS_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object qryRelPagasCONFERIDA: TIBStringField
      FieldName = 'CONFERIDA'
      Origin = '"FIN_BAIXAS_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
    object qryRelPagasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = '"FIN_BAIXAS_PAGAR"."CONTA"'
    end
    object qryRelPagasTOTAL_ENTRADA: TFloatField
      FieldName = 'TOTAL_ENTRADA'
      Origin = '"FIN_BAIXAS_PAGAR"."TOTAL_ENTRADA"'
    end
    object qryRelPagasTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FIN_BAIXAS_PAGAR"."TURNO"'
    end
    object qryRelPagasCONTABILIDADE: TIntegerField
      FieldName = 'CONTABILIDADE'
      Origin = '"FIN_BAIXAS_PAGAR"."CONTABILIDADE"'
    end
    object qryRelPagasCODIGO_VN: TIntegerField
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_BAIXAS_PAGAR"."CODIGO_VN"'
    end
    object qryRelPagasCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_BAIXAS_PAGAR"."COD_INDEXADOR"'
    end
    object qryRelPagasIDX_DATABASE: TDateField
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_BAIXAS_PAGAR"."IDX_DATABASE"'
    end
    object qryRelPagasIDX_COTACAO: TFloatField
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_BAIXAS_PAGAR"."IDX_COTACAO"'
    end
    object qryRelPagasIDX_QTDE: TFloatField
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_BAIXAS_PAGAR"."IDX_QTDE"'
    end
    object qryRelPagasVARIACAO: TFloatField
      FieldName = 'VARIACAO'
      Origin = '"FIN_BAIXAS_PAGAR"."VARIACAO"'
    end
    object qryRelPagasMULTA: TFloatField
      FieldName = 'MULTA'
      Origin = '"FIN_BAIXAS_PAGAR"."MULTA"'
    end
    object qryRelPagasBX_IDX_QTDE: TFloatField
      FieldName = 'BX_IDX_QTDE'
      Origin = '"FIN_BAIXAS_PAGAR"."BX_IDX_QTDE"'
    end
    object qryRelPagasBX_IDX_COTACAO: TFloatField
      FieldName = 'BX_IDX_COTACAO'
      Origin = '"FIN_BAIXAS_PAGAR"."BX_IDX_COTACAO"'
    end
    object qryRelPagasJURO_CALCULADO: TFloatField
      FieldName = 'JURO_CALCULADO'
      Origin = '"FIN_BAIXAS_PAGAR"."JURO_CALCULADO"'
    end
    object qryRelPagasVARIACAO_CALCULADA: TFloatField
      FieldName = 'VARIACAO_CALCULADA'
      Origin = '"FIN_BAIXAS_PAGAR"."VARIACAO_CALCULADA"'
    end
    object qryRelPagasMULTA_CALCULADA: TFloatField
      FieldName = 'MULTA_CALCULADA'
      Origin = '"FIN_BAIXAS_PAGAR"."MULTA_CALCULADA"'
    end
    object qryRelPagasDESCONTO_CALCULADO: TFloatField
      FieldName = 'DESCONTO_CALCULADO'
      Origin = '"FIN_BAIXAS_PAGAR"."DESCONTO_CALCULADO"'
    end
    object qryRelPagasCOD_ACERTOCONTA: TIntegerField
      FieldName = 'COD_ACERTOCONTA'
      Origin = '"FIN_BAIXAS_PAGAR"."COD_ACERTOCONTA"'
    end
    object qryRelPagasCOD_CONFIG_TITULO: TIntegerField
      FieldName = 'COD_CONFIG_TITULO'
      Origin = '"FIN_BAIXAS_PAGAR"."COD_CONFIG_TITULO"'
    end
    object qryRelPagasCOD_EVENTOCONTABIL: TIntegerField
      FieldName = 'COD_EVENTOCONTABIL'
      Origin = '"FIN_BAIXAS_PAGAR"."COD_EVENTOCONTABIL"'
    end
    object qryRelPagasACT_TIPO_BAIXA: TIBStringField
      FieldName = 'ACT_TIPO_BAIXA'
      Origin = '"FIN_BAIXAS_PAGAR"."ACT_TIPO_BAIXA"'
      FixedChar = True
      Size = 1
    end
  end
  object dsPgLink: TDataSource
    DataSet = qryRelPagar
    Left = 15
    Top = 511
  end
  object qryRelENTPag: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    OnCalcFields = qryRelENTPagCalcFields
    DataSource = dsPgLink
    SQL.Strings = (
      
        'select et.FRETE_LF, et.natureza,et.ndocto, et.data_ent, et.data_' +
        'nf, et.data_ref, et.nome,'
      '       vlr_produtos,vlr_produtos_lc,vlr_desconto,vlr_embalagem,'
      
        '       vlr_frete,vlr_seguro,vlr_ipi,vlr_ipi_lc,vlr_bc_icm,perc_i' +
        'cm,'
      '       vlr_icm,vlr_icm_subs,vlr_parc_lc,et.taxas,eti.quantidade,'
      '       eti.prc_unitario, eti.descontos, prd.codigo cod_produto,'
      
        '       (coalesce(prd.codigo,'#39#39')||'#39'-'#39'||coalesce(prd.nome,'#39#39')) pro' +
        'duto,'
      
        '       ((coalesce(eti.prc_unitario,0) - coalesce(eti.descontos,0' +
        ')) * coalesce(eti.quantidade,0)) total_item'
      'from est_entradas et'
      
        'left join est_entradas_itens eti on (eti.cnpj = et.cnpj and eti.' +
        'ndocto = et.ndocto)'
      
        'left join est_produtos prd on (prd.codigo = eti.produto and prd.' +
        'cnpj = eti.cnpj)'
      
        'where et.cnpj = :cnpj and et.ndocto = :docto and et.pessoa_fj = ' +
        ':cod_fornecedor'
      '')
    Left = 56
    Top = 555
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'docto'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cod_fornecedor'
        ParamType = ptUnknown
      end>
    object qryRelENTPagFRETE_LF: TIBStringField
      FieldName = 'FRETE_LF'
      Origin = '"EST_ENTRADAS"."FRETE_LF"'
      FixedChar = True
      Size = 1
    end
    object qryRelENTPagNATUREZA: TIntegerField
      FieldName = 'NATUREZA'
      Origin = '"EST_ENTRADAS"."NATUREZA"'
      Required = True
    end
    object qryRelENTPagNDOCTO: TIBStringField
      FieldName = 'NDOCTO'
      Origin = '"EST_ENTRADAS"."NDOCTO"'
      Required = True
    end
    object qryRelENTPagDATA_ENT: TDateTimeField
      FieldName = 'DATA_ENT'
      Origin = '"EST_ENTRADAS"."DATA_ENT"'
      Required = True
    end
    object qryRelENTPagDATA_NF: TDateTimeField
      FieldName = 'DATA_NF'
      Origin = '"EST_ENTRADAS"."DATA_NF"'
      Required = True
    end
    object qryRelENTPagDATA_REF: TDateTimeField
      FieldName = 'DATA_REF'
      Origin = '"EST_ENTRADAS"."DATA_REF"'
      Required = True
    end
    object qryRelENTPagNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"EST_ENTRADAS"."NOME"'
      Size = 50
    end
    object qryRelENTPagVLR_PRODUTOS: TFloatField
      FieldName = 'VLR_PRODUTOS'
      Origin = '"EST_ENTRADAS"."VLR_PRODUTOS"'
    end
    object qryRelENTPagVLR_PRODUTOS_LC: TFloatField
      FieldName = 'VLR_PRODUTOS_LC'
      Origin = '"EST_ENTRADAS"."VLR_PRODUTOS_LC"'
    end
    object qryRelENTPagVLR_DESCONTO: TFloatField
      FieldName = 'VLR_DESCONTO'
      Origin = '"EST_ENTRADAS"."VLR_DESCONTO"'
    end
    object qryRelENTPagVLR_EMBALAGEM: TFloatField
      FieldName = 'VLR_EMBALAGEM'
      Origin = '"EST_ENTRADAS"."VLR_EMBALAGEM"'
    end
    object qryRelENTPagVLR_FRETE: TFloatField
      FieldName = 'VLR_FRETE'
      Origin = '"EST_ENTRADAS"."VLR_FRETE"'
    end
    object qryRelENTPagVLR_SEGURO: TFloatField
      FieldName = 'VLR_SEGURO'
      Origin = '"EST_ENTRADAS"."VLR_SEGURO"'
    end
    object qryRelENTPagVLR_IPI: TFloatField
      FieldName = 'VLR_IPI'
      Origin = '"EST_ENTRADAS"."VLR_IPI"'
    end
    object qryRelENTPagVLR_IPI_LC: TFloatField
      FieldName = 'VLR_IPI_LC'
      Origin = '"EST_ENTRADAS"."VLR_IPI_LC"'
    end
    object qryRelENTPagVLR_BC_ICM: TFloatField
      FieldName = 'VLR_BC_ICM'
      Origin = '"EST_ENTRADAS"."VLR_BC_ICM"'
    end
    object qryRelENTPagPERC_ICM: TFloatField
      FieldName = 'PERC_ICM'
      Origin = '"EST_ENTRADAS"."PERC_ICM"'
    end
    object qryRelENTPagVLR_ICM: TFloatField
      FieldName = 'VLR_ICM'
      Origin = '"EST_ENTRADAS"."VLR_ICM"'
    end
    object qryRelENTPagVLR_ICM_SUBS: TFloatField
      FieldName = 'VLR_ICM_SUBS'
      Origin = '"EST_ENTRADAS"."VLR_ICM_SUBS"'
    end
    object qryRelENTPagVLR_PARC_LC: TFloatField
      FieldName = 'VLR_PARC_LC'
      Origin = '"EST_ENTRADAS"."VLR_PARC_LC"'
    end
    object qryRelENTPagTAXAS: TFloatField
      FieldName = 'TAXAS'
      Origin = '"EST_ENTRADAS"."TAXAS"'
    end
    object qryRelENTPagQUANTIDADE: TFloatField
      FieldName = 'QUANTIDADE'
      Origin = '"EST_ENTRADAS_ITENS"."QUANTIDADE"'
      Required = True
    end
    object qryRelENTPagPRC_UNITARIO: TFloatField
      FieldName = 'PRC_UNITARIO'
      Origin = '"EST_ENTRADAS_ITENS"."PRC_UNITARIO"'
      Required = True
    end
    object qryRelENTPagDESCONTOS: TFloatField
      FieldName = 'DESCONTOS'
      Origin = '"EST_ENTRADAS_ITENS"."DESCONTOS"'
    end
    object qryRelENTPagCOD_PRODUTO: TIBStringField
      FieldName = 'COD_PRODUTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Required = True
      Size = 15
    end
    object qryRelENTPagPRODUTO: TIBStringField
      FieldName = 'PRODUTO'
      Size = 66
    end
    object qryRelENTPagTOTAL_ITEM: TFloatField
      FieldName = 'TOTAL_ITEM'
    end
    object qryRelENTPagVLR_TOTAL_NF: TFloatField
      FieldKind = fkCalculated
      FieldName = 'VLR_TOTAL_NF'
      Calculated = True
    end
  end
  object SelTipoDocto2: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = KardexBeforeOpen
    SQL.Strings = (
      'select d.sigla, d.nome from glo_tipos_docto d'
      'where d.cnpj = :cnpj')
    Left = 632
    Top = 328
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end>
    object SelTipoDocto2SIGLA: TIBStringField
      FieldName = 'SIGLA'
      Origin = '"GLO_TIPOS_DOCTO"."SIGLA"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object SelTipoDocto2NOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_TIPOS_DOCTO"."NOME"'
      Required = True
      Size = 50
    end
  end
  object qryConsultaRomaneio: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterClose = KardexAfterClose
    BeforeOpen = KardexBeforeOpen
    OnCalcFields = Fat_VendasVendCalcFields
    SQL.Strings = (
      
        'select vdi.produto ,prd.nome, prd.unidade, mrc.nome marca, prd.q' +
        'ntde_pdr_carga, prd.und_carregamento,'
      '     sum(vdi.quantidade) qtde_vendida,'
      
        '     (cast(sum(vdi.quantidade) as integer)/cast( coalesce(prd.qn' +
        'tde_pdr_carga,1) as integer)) ||'#39' '#39'||coalesce(un2.nome,'#39'<NAO DEF' +
        'INIDA>'#39')||'#39'(s)'#39' und_transporte,'
      ''
      '     cast('
      '            ('
      '              ('
      
        '               (sum(vdi.quantidade)/coalesce(prd.qntde_pdr_carga' +
        ',1))'
      '                -'
      
        '               (cast(sum(vdi.quantidade) as integer)/cast(coales' +
        'ce(prd.qntde_pdr_carga,1) as integer))'
      '              )'
      '               * coalesce(prd.qntde_pdr_carga,1)'
      '             )'
      
        '          as integer)  ||'#39' '#39'||coalesce(un1.nome,'#39'<NAO DEFINIDA>'#39 +
        ')||'#39'(s)'#39' und_individual,'
      
        'sum((vdi.prc_unitario  * vdi.quantidade) + ((((vdi.prc_unitario ' +
        '* vdi.quantidade) * 100)/vd.total) * vd.desc_acres)/100) total_l' +
        'iquido,'
      '          sum(vdi.prc_unitario  * vdi.quantidade) total_bruto,'
      
        '          sum((vdi.desconto  * vdi.quantidade) - ((((vdi.prc_uni' +
        'tario * vdi.quantidade) * 100)/vd.total) * vd.desc_acres)/100) t' +
        'otal_descontos'
      '    from fat_vendas_itens vdi'
      
        '    inner join fat_vendas vd on (vd.cnpj = vdi.cnpj and vd.codig' +
        'o = vdi.codigo)'
      
        '    inner join est_natureza nat on (nat.cnpj = vd.cnpj and nat.c' +
        'odigo = vd.natureza)'
      
        '    left join fat_vendedor vdd on (vd.cnpj = vdd.cnpj and vd.ven' +
        'dedor = vdd.codigo)'
      
        '    inner join est_produtos prd on (vdi.cnpj = prd.cnpj and vdi.' +
        'produto = prd.codigo)'
      
        '    left join EST_UNIDADES un1 on (un1.cnpj = prd.cnpj and un1.s' +
        'igla = prd.unidade)'
      
        '    left join EST_UNIDADES un2 on (un2.cnpj = prd.cnpj and un2.s' +
        'igla = prd.und_carregamento)'
      
        '    left join est_marcas mrc on (prd.cnpj = mrc.cnpj and prd.mar' +
        'ca = mrc.codigo)'
      '    where vdi.cnpj = :cnpj'
      '    and(vd.data_caixa between :data1 and :data2)'
      
        '    and coalesce(vd.fechada,'#39'N'#39') = '#39'S'#39' and coalesce(vd.enviada_c' +
        'x,'#39'N'#39') = '#39'S'#39
      
        '    and coalesce(vd.cancelada,'#39'N'#39') = '#39'N'#39' and nat.es = '#39'S'#39' and co' +
        'alesce(nat.computa_venda,'#39'N'#39') = '#39'S'#39
      ''
      '')
    Left = 701
    Top = 349
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object qryConsultaRomaneioPRODUTO: TIBStringField
      DisplayLabel = 'C'#243'd. Produto'
      FieldName = 'PRODUTO'
      Origin = '"FAT_VENDAS_ITENS"."PRODUTO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Size = 15
    end
    object qryConsultaRomaneioNOME: TIBStringField
      DisplayLabel = 'Produto'
      FieldName = 'NOME'
      Origin = '"EST_PRODUTOS"."NOME"'
      Size = 50
    end
    object qryConsultaRomaneioUNIDADE: TIBStringField
      DisplayLabel = 'Unidade'
      FieldName = 'UNIDADE'
      Origin = '"EST_PRODUTOS"."UNIDADE"'
      FixedChar = True
      Size = 4
    end
    object qryConsultaRomaneioQNTDE_PDR_CARGA: TFloatField
      DisplayLabel = 'Qtde. Carga'
      FieldName = 'QNTDE_PDR_CARGA'
      Origin = '"EST_PRODUTOS"."QNTDE_PDR_CARGA"'
      DisplayFormat = '###,##0.00'
    end
    object qryConsultaRomaneioUND_CARREGAMENTO: TIBStringField
      DisplayLabel = 'Und. Carregamento'
      FieldName = 'UND_CARREGAMENTO'
      Origin = '"EST_PRODUTOS"."UND_CARREGAMENTO"'
      FixedChar = True
      Size = 4
    end
    object qryConsultaRomaneioQTDE_VENDIDA: TFloatField
      DisplayLabel = 'Qtde. Vendida'
      FieldName = 'QTDE_VENDIDA'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object qryConsultaRomaneioMARCA: TIBStringField
      DisplayLabel = 'Marca'
      FieldName = 'MARCA'
      ProviderFlags = []
      Size = 50
    end
    object qryConsultaRomaneioUND_TRANSPORTE: TIBStringField
      DisplayLabel = 'Und. Trasnporte'
      FieldName = 'UND_TRANSPORTE'
      ProviderFlags = []
      Size = 72
    end
    object qryConsultaRomaneioUND_INDIVIDUAL: TIBStringField
      DisplayLabel = 'Und. Individual'
      FieldName = 'UND_INDIVIDUAL'
      ProviderFlags = []
      Size = 75
    end
    object qryConsultaRomaneioTOTAL_LIQUIDO: TFloatField
      DisplayLabel = 'Ttl. Liquido'
      FieldName = 'TOTAL_LIQUIDO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object qryConsultaRomaneioTOTAL_BRUTO: TFloatField
      DisplayLabel = 'Ttl. Bruto'
      FieldName = 'TOTAL_BRUTO'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
    object qryConsultaRomaneioTOTAL_DESCONTOS: TFloatField
      DisplayLabel = 'Ttl. Desconto'
      FieldName = 'TOTAL_DESCONTOS'
      ProviderFlags = []
      DisplayFormat = '###,##0.00'
    end
  end
end
