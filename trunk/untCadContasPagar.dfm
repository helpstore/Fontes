inherited frmCadContasPagar: TfrmCadContasPagar
  Left = -8
  Top = -8
  Width = 1296
  Height = 776
  Caption = 'Contas '#224' Pagar'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pgcCadastro: TcxPageControl
    Width = 1280
    Height = 712
    ClientRectBottom = 708
    ClientRectRight = 1276
    inherited tbsLista: TcxTabSheet
      inherited Grid: TcxGrid
        Width = 1272
        Height = 664
        inherited GridDBBandedTableView2: TcxGridDBBandedTableView
          object GridDBBandedTableView2CNPJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CNPJ'
            Position.BandIndex = 0
            Position.ColIndex = 0
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO_VN: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO_VN'
            Position.BandIndex = 0
            Position.ColIndex = 1
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO'
            Position.BandIndex = 0
            Position.ColIndex = 2
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ANO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ANO'
            Position.BandIndex = 0
            Position.ColIndex = 3
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PESSOA_FJ: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PESSOA_FJ'
            Width = 68
            Position.BandIndex = 0
            Position.ColIndex = 4
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DT_EMISSAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_EMISSAO'
            Position.BandIndex = 0
            Position.ColIndex = 5
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DT_VENCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_VENCTO'
            Position.BandIndex = 0
            Position.ColIndex = 6
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DT_LANCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_LANCTO'
            Position.BandIndex = 0
            Position.ColIndex = 7
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DOCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DOCTO'
            Position.BandIndex = 0
            Position.ColIndex = 8
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PARCELA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PARCELA'
            Position.BandIndex = 0
            Position.ColIndex = 9
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2HISTORICO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'HISTORICO'
            Position.BandIndex = 0
            Position.ColIndex = 10
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2VALOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR'
            Position.BandIndex = 0
            Position.ColIndex = 11
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2VLR_PARCIAL: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VLR_PARCIAL'
            Position.BandIndex = 0
            Position.ColIndex = 12
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2JUROS_PAG: TcxGridDBBandedColumn
            DataBinding.FieldName = 'JUROS_PAG'
            Position.BandIndex = 0
            Position.ColIndex = 13
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DESCONTOS: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DESCONTOS'
            Position.BandIndex = 0
            Position.ColIndex = 14
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2BOLETO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'BOLETO'
            Position.BandIndex = 0
            Position.ColIndex = 15
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ORIGEM: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ORIGEM'
            Position.BandIndex = 0
            Position.ColIndex = 16
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CODIGO_ENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CODIGO_ENT'
            Position.BandIndex = 0
            Position.ColIndex = 17
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2ANO_ENT: TcxGridDBBandedColumn
            DataBinding.FieldName = 'ANO_ENT'
            Position.BandIndex = 0
            Position.ColIndex = 18
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2AVISO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'AVISO'
            Position.BandIndex = 0
            Position.ColIndex = 19
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DT_AVISO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_AVISO'
            Position.BandIndex = 0
            Position.ColIndex = 20
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2SELECIONADO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'SELECIONADO'
            Position.BandIndex = 0
            Position.ColIndex = 21
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CENTRO_CUSTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CENTRO_CUSTO'
            Position.BandIndex = 0
            Position.ColIndex = 22
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME'
            Position.BandIndex = 0
            Position.ColIndex = 23
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DUPLICATA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DUPLICATA'
            Position.BandIndex = 0
            Position.ColIndex = 24
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONFERIDA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONFERIDA'
            Position.BandIndex = 0
            Position.ColIndex = 25
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2TOTAL_ENTRADA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TOTAL_ENTRADA'
            Position.BandIndex = 0
            Position.ColIndex = 26
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2PLANILHA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'PLANILHA'
            Position.BandIndex = 0
            Position.ColIndex = 27
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2FLUXO_CAIXA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'FLUXO_CAIXA'
            Position.BandIndex = 0
            Position.ColIndex = 28
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CONTABILIDADE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CONTABILIDADE'
            Position.BandIndex = 0
            Position.ColIndex = 29
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2DT_ULTIMA_BAIXA: TcxGridDBBandedColumn
            DataBinding.FieldName = 'DT_ULTIMA_BAIXA'
            Position.BandIndex = 0
            Position.ColIndex = 30
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2TIPO_DOCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'TIPO_DOCTO'
            Position.BandIndex = 0
            Position.ColIndex = 31
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_INDEXADOR: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_INDEXADOR'
            Position.BandIndex = 0
            Position.ColIndex = 32
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2IDX_DATABASE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IDX_DATABASE'
            Position.BandIndex = 0
            Position.ColIndex = 33
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2IDX_COTACAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IDX_COTACAO'
            Position.BandIndex = 0
            Position.ColIndex = 34
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2IDX_QTDE: TcxGridDBBandedColumn
            DataBinding.FieldName = 'IDX_QTDE'
            Position.BandIndex = 0
            Position.ColIndex = 35
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2VALOR_EXTENSO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'VALOR_EXTENSO'
            Position.BandIndex = 0
            Position.ColIndex = 36
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_CONFIG_TITULO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CONFIG_TITULO'
            Position.BandIndex = 0
            Position.ColIndex = 37
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_RAZAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_RAZAO'
            Position.BandIndex = 0
            Position.ColIndex = 38
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2COD_CONTRATO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'COD_CONTRATO'
            Position.BandIndex = 0
            Position.ColIndex = 39
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CTR_DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CTR_DESCRICAO'
            Position.BandIndex = 0
            Position.ColIndex = 40
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2CC_DESCRICAO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'CC_DESCRICAO'
            Position.BandIndex = 0
            Position.ColIndex = 41
            Position.RowIndex = 0
          end
          object GridDBBandedTableView2NOME_TIPO_DOCTO: TcxGridDBBandedColumn
            DataBinding.FieldName = 'NOME_TIPO_DOCTO'
            Position.BandIndex = 0
            Position.ColIndex = 42
            Position.RowIndex = 0
          end
        end
      end
      inherited Panel1: TPanel
        Width = 1272
      end
    end
    inherited tbsEdita: TcxTabSheet
      inherited Panel2: TPanel
        Width = 1272
        Height = 681
      end
    end
  end
  inherited dtList: TIBQuery
    SQL.Strings = (
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
    Left = 89
    Top = 20
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Cnpj'
        ParamType = ptUnknown
      end>
    object dtListCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FIN_CONTAS_PAGAR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtListCODIGO_VN: TIntegerField
      DisplayLabel = 'C'#243'd. Faturamento'
      FieldName = 'CODIGO_VN'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO_VN"'
    end
    object dtListCODIGO: TIntegerField
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object dtListANO: TSmallintField
      DisplayLabel = 'Ano'
      FieldName = 'ANO'
      Origin = '"FIN_CONTAS_PAGAR"."ANO"'
    end
    object dtListPESSOA_FJ: TIntegerField
      DisplayLabel = 'C'#243'd. Fornecedor'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CONTAS_PAGAR"."PESSOA_FJ"'
    end
    object dtListDT_EMISSAO: TDateTimeField
      DisplayLabel = 'Dt. Emiss'#227'o'
      FieldName = 'DT_EMISSAO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_EMISSAO"'
    end
    object dtListDT_VENCTO: TDateTimeField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_VENCTO"'
    end
    object dtListDT_LANCTO: TDateTimeField
      DisplayLabel = 'Dt. Lancto'
      FieldName = 'DT_LANCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_LANCTO"'
    end
    object dtListDOCTO: TIBStringField
      DisplayLabel = 'Docto'
      FieldName = 'DOCTO'
      Origin = '"FIN_CONTAS_PAGAR"."DOCTO"'
    end
    object dtListPARCELA: TIBStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Origin = '"FIN_CONTAS_PAGAR"."PARCELA"'
      Size = 6
    end
    object dtListHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CONTAS_PAGAR"."HISTORICO"'
      Size = 100
    end
    object dtListVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CONTAS_PAGAR"."VALOR"'
    end
    object dtListVLR_PARCIAL: TFloatField
      DisplayLabel = 'Vlr. Parcial'
      FieldName = 'VLR_PARCIAL'
      Origin = '"FIN_CONTAS_PAGAR"."VLR_PARCIAL"'
    end
    object dtListJUROS_PAG: TFloatField
      DisplayLabel = 'Juros Pagos'
      FieldName = 'JUROS_PAG'
      Origin = '"FIN_CONTAS_PAGAR"."JUROS_PAG"'
    end
    object dtListDESCONTOS: TFloatField
      DisplayLabel = 'Descontos'
      FieldName = 'DESCONTOS'
      Origin = '"FIN_CONTAS_PAGAR"."DESCONTOS"'
    end
    object dtListBOLETO: TIBStringField
      DisplayLabel = 'Boleto'
      FieldName = 'BOLETO'
      Origin = '"FIN_CONTAS_PAGAR"."BOLETO"'
      FixedChar = True
      Size = 1
    end
    object dtListORIGEM: TIBStringField
      DisplayLabel = 'Origem'
      FieldName = 'ORIGEM'
      Origin = '"FIN_CONTAS_PAGAR"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object dtListANO_ENT: TSmallintField
      DisplayLabel = 'Ano Entrada'
      FieldName = 'ANO_ENT'
      Origin = '"FIN_CONTAS_PAGAR"."ANO_ENT"'
    end
    object dtListCODIGO_ENT: TIntegerField
      DisplayLabel = 'Cod. Entrada'
      FieldName = 'CODIGO_ENT'
      Origin = '"FIN_CONTAS_PAGAR"."CODIGO_ENT"'
    end
    object dtListAVISO: TIntegerField
      DisplayLabel = 'Aviso'
      FieldName = 'AVISO'
      Origin = '"FIN_CONTAS_PAGAR"."AVISO"'
    end
    object dtListDT_AVISO: TDateTimeField
      DisplayLabel = 'Dt. Aviso'
      FieldName = 'DT_AVISO'
      Origin = '"FIN_CONTAS_PAGAR"."DT_AVISO"'
    end
    object dtListSELECIONADO: TIBStringField
      DisplayLabel = 'X'
      FieldName = 'SELECIONADO'
      Origin = '"FIN_CONTAS_PAGAR"."SELECIONADO"'
      FixedChar = True
      Size = 1
    end
    object dtListCENTRO_CUSTO: TIntegerField
      DisplayLabel = 'C. Custo'
      FieldName = 'CENTRO_CUSTO'
      Origin = '"FIN_CONTAS_PAGAR"."CENTRO_CUSTO"'
    end
    object dtListNOME: TIBStringField
      DisplayLabel = 'Fornecedor'
      FieldName = 'NOME'
      Origin = '"FIN_CONTAS_PAGAR"."NOME"'
      Size = 50
    end
    object dtListDUPLICATA: TIBStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Origin = '"FIN_CONTAS_PAGAR"."DUPLICATA"'
      Size = 15
    end
    object dtListCONFERIDA: TIBStringField
      DisplayLabel = 'Conferida'
      FieldName = 'CONFERIDA'
      Origin = '"FIN_CONTAS_PAGAR"."CONFERIDA"'
      FixedChar = True
      Size = 1
    end
    object dtListTOTAL_ENTRADA: TFloatField
      DisplayLabel = 'Ttl. Entrada'
      FieldName = 'TOTAL_ENTRADA'
      Origin = '"FIN_CONTAS_PAGAR"."TOTAL_ENTRADA"'
    end
    object dtListPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
      Origin = '"FIN_CONTAS_PAGAR"."PLANILHA"'
    end
    object dtListFLUXO_CAIXA: TDateTimeField
      DisplayLabel = 'Fluxo Caixa'
      FieldName = 'FLUXO_CAIXA'
      Origin = '"FIN_CONTAS_PAGAR"."FLUXO_CAIXA"'
    end
    object dtListCONTABILIDADE: TIntegerField
      DisplayLabel = 'Contabilidade'
      FieldName = 'CONTABILIDADE'
      Origin = '"FIN_CONTAS_PAGAR"."CONTABILIDADE"'
    end
    object dtListDT_ULTIMA_BAIXA: TDateTimeField
      DisplayLabel = 'Dt. Ult. Baixa'
      FieldName = 'DT_ULTIMA_BAIXA'
      Origin = '"FIN_CONTAS_PAGAR"."DT_ULTIMA_BAIXA"'
    end
    object dtListTIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tp. Docto'
      FieldName = 'TIPO_DOCTO'
      Origin = '"FIN_CONTAS_PAGAR"."TIPO_DOCTO"'
      FixedChar = True
      Size = 3
    end
    object dtListCOD_INDEXADOR: TIntegerField
      DisplayLabel = 'C'#243'd. Indexador'
      FieldName = 'COD_INDEXADOR'
      Origin = '"FIN_CONTAS_PAGAR"."COD_INDEXADOR"'
    end
    object dtListIDX_DATABASE: TDateField
      DisplayLabel = 'Idx. Dt. Base'
      FieldName = 'IDX_DATABASE'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_DATABASE"'
    end
    object dtListIDX_COTACAO: TFloatField
      DisplayLabel = 'Idx. Cota'#231#227'o'
      FieldName = 'IDX_COTACAO'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_COTACAO"'
    end
    object dtListIDX_QTDE: TFloatField
      DisplayLabel = 'Idx. Qtde'
      FieldName = 'IDX_QTDE'
      Origin = '"FIN_CONTAS_PAGAR"."IDX_QTDE"'
    end
    object dtListVALOR_EXTENSO: TIBStringField
      DisplayLabel = 'Vlr. Extenso'
      FieldName = 'VALOR_EXTENSO'
      Origin = '"FIN_CONTAS_PAGAR"."VALOR_EXTENSO"'
      Size = 200
    end
    object dtListCOD_CONFIG_TITULO: TIntegerField
      DisplayLabel = 'Cod. Cfg. Titulo'
      FieldName = 'COD_CONFIG_TITULO'
      Origin = '"FIN_CONTAS_PAGAR"."COD_CONFIG_TITULO"'
    end
    object dtListNOME_RAZAO: TIBStringField
      DisplayLabel = 'Nome Raz'#227'o'
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object dtListCOD_CONTRATO: TIntegerField
      DisplayLabel = 'C'#243'd. Contrato'
      FieldName = 'COD_CONTRATO'
      Origin = '"FIN_CONTAS_PAGAR"."COD_CONTRATO"'
    end
    object dtListCTR_DESCRICAO: TIBStringField
      DisplayLabel = 'Contrato'
      FieldName = 'CTR_DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
    object dtListCC_DESCRICAO: TIBStringField
      DisplayLabel = 'Centro de Custo'
      FieldName = 'CC_DESCRICAO'
      Origin = '"FIN_CENTRO_CUSTO"."NOME"'
      Size = 50
    end
    object dtListNOME_TIPO_DOCTO: TIBStringField
      DisplayLabel = 'Tipo Docto'
      FieldName = 'NOME_TIPO_DOCTO'
      Origin = '"GLO_TIPOS_DOCTO"."NOME"'
      Size = 50
    end
    object dtListTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'Total'
      Calculated = True
    end
    object dtList_Total_Geral_IDX: TFloatField
      FieldKind = fkCalculated
      FieldName = '_Total_Geral_IDX'
      Calculated = True
    end
  end
  inherited dxBarManager: TdxBarManager
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    DockControlHeights = (
      0
      0
      0
      26)
  end
  inherited cxImageList1: TcxImageList
    FormatVersion = 1
  end
  object Contas_Pagar: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
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
    Left = 174
    Top = 39
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
end
