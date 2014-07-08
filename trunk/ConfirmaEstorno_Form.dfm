object FrmConfirmaEstorno: TFrmConfirmaEstorno
  Left = 252
  Top = 108
  Width = 706
  Height = 534
  BorderIcons = [biSystemMenu]
  Caption = ' Confirmar Estorno '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 496
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clCaptionText
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 463
      Width = 686
      Height = 31
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object BtnOk: TcxButton
        Left = 508
        Top = 3
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Caption = '&Confirmar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ModalResult = 1
        ParentFont = False
        TabOrder = 0
        OnClick = BtnOkClick
        Glyph.Data = {
          F6000000424DF600000000000000760000002800000010000000100000000100
          0400000000008000000000000000000000001000000000000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00555555555555
          5555555555555555555555555905555555555555999055555555555599905555
          5555555999990555555555999999055555555799059990555555790555599055
          5555555555599905555555555555990555555555555559905555555555555579
          0555555555555557905555555555555559905555555555555555}
      end
      object RzBitBtn2: TcxButton
        Left = 600
        Top = 3
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActFechar
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ModalResult = 2
        ParentFont = False
        TabOrder = 1
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00330000000000
          03333377777777777F333301BBBBBBBB033333773F3333337F3333011BBBBBBB
          0333337F73F333337F33330111BBBBBB0333337F373F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F337F33337F333301110BBBBB0333337F337FF3337F33330111B0BBBB
          0333337F337733337F333301110BBBBB0333337F337F33337F333301110BBBBB
          0333337F3F7F33337F333301E10BBBBB0333337F7F7F33337F333301EE0BBBBB
          0333337F777FFFFF7F3333000000000003333377777777777333}
        NumGlyphs = 2
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 686
      Height = 44
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label4: TcxLabel
        Left = 274
        Top = 3
        Caption = 'Valor'
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 62
        Top = 2
        Caption = 'Favorecido'
        ParentFont = False
        Transparent = True
      end
      object LBLVENCIMENTO: TcxLabel
        Left = 3
        Top = 4
        Caption = 'Planilha'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 357
        Top = 3
        Caption = 'Data Baixa'
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 431
        Top = 3
        Caption = 'Hist'#243'rico'
        ParentFont = False
        Transparent = True
      end
      object Valor: TdxDBEdit
        Left = 274
        Top = 17
        Width = 81
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        TabOrder = 0
        Alignment = taRightJustify
        DataField = 'VALOR'
        DataSource = dsPlanilha
        StoredValues = 1
      end
      object Nome: TdxDBEdit
        Left = 60
        Top = 18
        Width = 213
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        TabOrder = 1
        DataField = 'FAVORECIDO'
        DataSource = dsPlanilha
      end
      object DataBaixa: TdxDBEdit
        Left = 3
        Top = 18
        Width = 56
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        TabOrder = 2
        DataField = 'PLANILHA'
        DataSource = dsPlanilha
      end
      object dxEdit1: TdxDBEdit
        Left = 355
        Top = 17
        Width = 73
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        TabOrder = 3
        DataField = 'DATA'
        DataSource = dsPlanilha
      end
      object dxDBEdit1: TdxDBEdit
        Left = 430
        Top = 17
        Width = 258
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        TabOrder = 4
        DataField = 'FAVORECIDO'
        DataSource = dsPlanilha
      end
    end
    object pnlMovBancario: TPanel
      Left = 2
      Top = 362
      Width = 686
      Height = 103
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 2
      object GridMovimentos: TdxDBGrid
        Left = 0
        Top = 15
        Width = 686
        Height = 88
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CODIGO'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsMovBancarios
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GridMovimentosCODIGO: TdxDBGridMaskColumn
          Width = 48
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
          SummaryFooterType = cstCount
        end
        object GridMovimentosVALOR: TdxDBGridMaskColumn
          Sorted = csUp
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '###,###,##0.00'
        end
        object GridMovimentosDATA: TdxDBGridDateColumn
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object GridMovimentosHISTORICO: TdxDBGridMaskColumn
          Width = 232
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HISTORICO'
        end
        object GridMovimentosTIPO: TdxDBGridMaskColumn
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPO'
        end
        object GridMovimentosCONTA: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONTA'
        end
        object GridMovimentosTIPO_LANCAMENTO: TdxDBGridMaskColumn
          Visible = False
          Width = 81
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPO_LANCAMENTO'
        end
        object GridMovimentosPLANILHA: TdxDBGridMaskColumn
          Width = 63
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLANILHA'
        end
      end
      object Panel9: TPanel
        Left = 0
        Top = 0
        Width = 686
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Movimentos Banc'#225'rios'
        Color = 15977833
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnlRecebimento: TPanel
      Left = 2
      Top = 46
      Width = 686
      Height = 118
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 3
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 686
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Recebimentos '#224' serem Estornados'
        Color = 15977833
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object gridRecebimentos: TdxDBGrid
        Left = 0
        Top = 15
        Width = 686
        Height = 103
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CODIGO'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsRecebidas
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object gridRecebimentosCODIGO: TdxDBGridMaskColumn
          Width = 49
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
          SummaryFooterType = cstCount
          SummaryFooterField = 'CODIGO'
        end
        object gridRecebimentosVLR_BAIXA: TdxDBGridMaskColumn
          Sorted = csUp
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VLR_BAIXA'
          SummaryFooterType = cstSum
          SummaryFooterField = 'VLR_BAIXA'
          SummaryFooterFormat = '###,###,##0.00'
          SummaryType = cstSum
          SummaryField = 'VLR_BAIXA'
          SummaryFormat = '###,###,##0.00'
        end
        object gridRecebimentosJUROS: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'JUROS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'JUROS'
          SummaryFooterFormat = '###,###,##0.00'
          SummaryFormat = '###,###,##0.00'
        end
        object gridRecebimentosDESCONTOS: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCONTOS'
          SummaryFooterType = cstSum
          SummaryFooterField = 'DESCONTOS'
          SummaryFooterFormat = '###,###,##0.00'
          SummaryFormat = '###,###,##0.00'
        end
        object gridRecebimentosDT_BAIXA: TdxDBGridDateColumn
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DT_BAIXA'
        end
        object gridRecebimentosHISTORICO_BX: TdxDBGridMaskColumn
          Width = 322
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HISTORICO_BX'
        end
        object gridRecebimentosPLANILHA: TdxDBGridMaskColumn
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLANILHA'
        end
      end
    end
    object pnlCheques: TPanel
      Left = 2
      Top = 164
      Width = 686
      Height = 96
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 4
      object GridCheques: TdxDBGrid
        Left = 0
        Top = 15
        Width = 686
        Height = 81
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'INDICE'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsCheques
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GridChequesCHEQUE: TdxDBGridMaskColumn
          Width = 53
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CHEQUE'
          SummaryFooterType = cstCount
        end
        object GridChequesDIGITO_CHEQUE: TdxDBGridMaskColumn
          Visible = False
          Width = 61
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DIGITO_CHEQUE'
        end
        object GridChequesVALOR: TdxDBGridMaskColumn
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '###,###,##0.00'
          SummaryFormat = '###,###,##0.00'
        end
        object GridChequesNOME: TdxDBGridMaskColumn
          Sorted = csUp
          Width = 126
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME'
        end
        object GridChequesPRE_DATE: TdxDBGridDateColumn
          Width = 68
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PRE_DATE'
        end
        object GridChequesHISTORICO: TdxDBGridMaskColumn
          Width = 133
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HISTORICO'
        end
        object GridChequesCONCILIADO: TdxDBGridMaskColumn
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONCILIADO'
        end
        object GridChequesPLANILHA: TdxDBGridMaskColumn
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLANILHA'
        end
        object GridChequesPROCESSADO: TdxDBGridMaskColumn
          Visible = False
          Width = 57
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PROCESSADO'
        end
        object GridChequesCMC7: TdxDBGridMaskColumn
          Visible = False
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CMC7'
        end
        object GridChequesINDICE: TdxDBGridMaskColumn
          Visible = False
          Width = 223
          BandIndex = 0
          RowIndex = 0
          FieldName = 'INDICE'
        end
      end
      object Panel6: TPanel
        Left = 0
        Top = 0
        Width = 686
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cheques'
        Color = 15977833
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
    object pnlCartoes: TPanel
      Left = 2
      Top = 260
      Width = 686
      Height = 102
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 5
      object GridCartoes: TdxDBGrid
        Left = 0
        Top = 15
        Width = 686
        Height = 87
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CODIGO'
        ShowSummaryFooter = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        AutoExpandOnSearch = False
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = dsCartoes
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GridCartoesCODIGO: TdxDBGridMaskColumn
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
          SummaryFooterType = cstCount
        end
        object GridCartoesVALOR: TdxDBGridMaskColumn
          Sorted = csUp
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '###,###,##0.00'
          SummaryFormat = '###,###,##0.00'
        end
        object GridCartoesDATA: TdxDBGridDateColumn
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object GridCartoesNUM_CARTAO: TdxDBGridMaskColumn
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUM_CARTAO'
        end
        object GridCartoesNUM_BANCO: TdxDBGridMaskColumn
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUM_BANCO'
        end
        object GridCartoesNUM_CONTA: TdxDBGridMaskColumn
          Width = 60
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NUM_CONTA'
        end
        object GridCartoesCONCILIADO: TdxDBGridMaskColumn
          Width = 59
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CONCILIADO'
        end
        object GridCartoesTIPO_DOC: TdxDBGridMaskColumn
          Visible = False
          Width = 42
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPO_DOC'
        end
        object GridCartoesTIPO: TdxDBGridMaskColumn
          Visible = False
          Width = 23
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPO'
        end
        object GridCartoesPROCESSADO: TdxDBGridMaskColumn
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PROCESSADO'
        end
        object GridCartoesPLANILHA: TdxDBGridMaskColumn
          Width = 58
          BandIndex = 0
          RowIndex = 0
          FieldName = 'PLANILHA'
        end
      end
      object Panel8: TPanel
        Left = 0
        Top = 0
        Width = 686
        Height = 15
        Align = alTop
        BevelOuter = bvNone
        Caption = 'Cart'#245'es'
        Color = 15977833
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
      end
    end
  end
  object Actions: TActionList
    Left = 601
    Top = 8
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object dsRecebidas: TDataSource
    DataSet = dmFinanceiro2.qryEstRecebidas
    Left = 426
    Top = 88
  end
  object dsCheques: TDataSource
    DataSet = dmFinanceiro2.qryEstCheques
    Left = 234
    Top = 216
  end
  object dsCartoes: TDataSource
    DataSet = dmFinanceiro2.qryEstCartoes
    Left = 234
    Top = 304
  end
  object dsMovBancarios: TDataSource
    DataSet = dmFinanceiro2.qryEstMovBanc
    Left = 242
    Top = 392
  end
  object dsPlanilha: TDataSource
    DataSet = dmFinanceiro2.qryEstPlanilha
    Left = 234
    Top = 32
  end
  object stgFrmExtornaReceber: TcxPropertiesStore
    Components = <
      item
        Component = GridCartoes
        Properties.Strings = (
          'Align'
          'Anchors'
          'ArrowsColor'
          'AutoExpandOnSearch'
          'AutoSearchColor'
          'AutoSearchTextColor'
          'BandColor'
          'BandFont'
          'BandMaxRowCount'
          'BandRowCount'
          'Bands'
          'BorderStyle'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomizingRowCount'
          'DataSource'
          'DblClkExpanding'
          'DefaultFields'
          'DefaultLayout'
          'DefaultRowHeight'
          'DragCursor'
          'DragMode'
          'Enabled'
          'Filter'
          'FixedBandLineColor'
          'FixedBandLineWidth'
          'Font'
          'GridLineColor'
          'GrIndicatorWidth'
          'GroupNodeColor'
          'GroupNodeTextColor'
          'GroupPanelColor'
          'GroupPanelFontColor'
          'HeaderColor'
          'HeaderFont'
          'HeaderMinRowCount'
          'HeaderPanelMaxRowCount'
          'HeaderPanelRowCount'
          'Height'
          'HelpContext'
          'HideFocusRect'
          'HideSelection'
          'HideSelectionColor'
          'HideSelectionTextColor'
          'HighlightColor'
          'HighlightTextColor'
          'Hint'
          'IndentDesc'
          'IniFileName'
          'IniSectionName'
          'KeyField'
          'Left'
          'LookAndFeel'
          'MaxRowLineCount'
          'Name'
          'Options'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsDB'
          'OptionsEx'
          'OptionsView'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PartialLoad'
          'PartialLoadBufferCount'
          'PopupMenu'
          'PreviewFieldName'
          'PreviewFont'
          'PreviewLines'
          'PreviewMaxLength'
          'RegistryPath'
          'RowFooterColor'
          'RowFooterTextColor'
          'RowSeparatorLineWidth'
          'ScrollBars'
          'ShowBands'
          'ShowGrid'
          'ShowGroupPanel'
          'ShowHeader'
          'ShowHiddenInCustomizeBox'
          'ShowHint'
          'ShowNewItemRow'
          'ShowPreviewGrid'
          'ShowRowFooter'
          'ShowSummaryFooter'
          'SimpleCustomizeBox'
          'SummaryGroups'
          'SummarySeparator'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseBookmarks'
          'Visible'
          'WaitForExpandNodeTime'
          'Width')
      end
      item
        Component = GridCartoesCODIGO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesCONCILIADO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesDATA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesNUM_BANCO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesNUM_CARTAO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesNUM_CONTA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesPLANILHA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesPROCESSADO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesTIPO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesTIPO_DOC
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCartoesVALOR
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridCheques
        Properties.Strings = (
          'Align'
          'Anchors'
          'ArrowsColor'
          'AutoExpandOnSearch'
          'AutoSearchColor'
          'AutoSearchTextColor'
          'BandColor'
          'BandFont'
          'BandMaxRowCount'
          'BandRowCount'
          'Bands'
          'BorderStyle'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomizingRowCount'
          'DataSource'
          'DblClkExpanding'
          'DefaultFields'
          'DefaultLayout'
          'DefaultRowHeight'
          'DragCursor'
          'DragMode'
          'Enabled'
          'Filter'
          'FixedBandLineColor'
          'FixedBandLineWidth'
          'Font'
          'GridLineColor'
          'GrIndicatorWidth'
          'GroupNodeColor'
          'GroupNodeTextColor'
          'GroupPanelColor'
          'GroupPanelFontColor'
          'HeaderColor'
          'HeaderFont'
          'HeaderMinRowCount'
          'HeaderPanelMaxRowCount'
          'HeaderPanelRowCount'
          'Height'
          'HelpContext'
          'HideFocusRect'
          'HideSelection'
          'HideSelectionColor'
          'HideSelectionTextColor'
          'HighlightColor'
          'HighlightTextColor'
          'Hint'
          'IndentDesc'
          'IniFileName'
          'IniSectionName'
          'KeyField'
          'Left'
          'LookAndFeel'
          'MaxRowLineCount'
          'Name'
          'Options'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsDB'
          'OptionsEx'
          'OptionsView'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PartialLoad'
          'PartialLoadBufferCount'
          'PopupMenu'
          'PreviewFieldName'
          'PreviewFont'
          'PreviewLines'
          'PreviewMaxLength'
          'RegistryPath'
          'RowFooterColor'
          'RowFooterTextColor'
          'RowSeparatorLineWidth'
          'ScrollBars'
          'ShowBands'
          'ShowGrid'
          'ShowGroupPanel'
          'ShowHeader'
          'ShowHiddenInCustomizeBox'
          'ShowHint'
          'ShowNewItemRow'
          'ShowPreviewGrid'
          'ShowRowFooter'
          'ShowSummaryFooter'
          'SimpleCustomizeBox'
          'SummaryGroups'
          'SummarySeparator'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseBookmarks'
          'Visible'
          'WaitForExpandNodeTime'
          'Width')
      end
      item
        Component = GridChequesCHEQUE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesCMC7
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesCONCILIADO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesDIGITO_CHEQUE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesHISTORICO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesINDICE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesNOME
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesPLANILHA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesPRE_DATE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesPROCESSADO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridChequesVALOR
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentos
        Properties.Strings = (
          'Align'
          'Anchors'
          'ArrowsColor'
          'AutoExpandOnSearch'
          'AutoSearchColor'
          'AutoSearchTextColor'
          'BandColor'
          'BandFont'
          'BandMaxRowCount'
          'BandRowCount'
          'Bands'
          'BorderStyle'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomizingRowCount'
          'DataSource'
          'DblClkExpanding'
          'DefaultFields'
          'DefaultLayout'
          'DefaultRowHeight'
          'DragCursor'
          'DragMode'
          'Enabled'
          'Filter'
          'FixedBandLineColor'
          'FixedBandLineWidth'
          'Font'
          'GridLineColor'
          'GrIndicatorWidth'
          'GroupNodeColor'
          'GroupNodeTextColor'
          'GroupPanelColor'
          'GroupPanelFontColor'
          'HeaderColor'
          'HeaderFont'
          'HeaderMinRowCount'
          'HeaderPanelMaxRowCount'
          'HeaderPanelRowCount'
          'Height'
          'HelpContext'
          'HideFocusRect'
          'HideSelection'
          'HideSelectionColor'
          'HideSelectionTextColor'
          'HighlightColor'
          'HighlightTextColor'
          'Hint'
          'IndentDesc'
          'IniFileName'
          'IniSectionName'
          'KeyField'
          'Left'
          'LookAndFeel'
          'MaxRowLineCount'
          'Name'
          'Options'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsDB'
          'OptionsEx'
          'OptionsView'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PartialLoad'
          'PartialLoadBufferCount'
          'PopupMenu'
          'PreviewFieldName'
          'PreviewFont'
          'PreviewLines'
          'PreviewMaxLength'
          'RegistryPath'
          'RowFooterColor'
          'RowFooterTextColor'
          'RowSeparatorLineWidth'
          'ScrollBars'
          'ShowBands'
          'ShowGrid'
          'ShowGroupPanel'
          'ShowHeader'
          'ShowHiddenInCustomizeBox'
          'ShowHint'
          'ShowNewItemRow'
          'ShowPreviewGrid'
          'ShowRowFooter'
          'ShowSummaryFooter'
          'SimpleCustomizeBox'
          'SummaryGroups'
          'SummarySeparator'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseBookmarks'
          'Visible'
          'WaitForExpandNodeTime'
          'Width')
      end
      item
        Component = GridMovimentosCODIGO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentosCONTA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentosDATA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentosHISTORICO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentosPLANILHA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentosTIPO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentosTIPO_LANCAMENTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridMovimentosVALOR
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = gridRecebimentos
        Properties.Strings = (
          'Align'
          'Anchors'
          'ArrowsColor'
          'AutoExpandOnSearch'
          'AutoSearchColor'
          'AutoSearchTextColor'
          'BandColor'
          'BandFont'
          'BandMaxRowCount'
          'BandRowCount'
          'Bands'
          'BorderStyle'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomizingRowCount'
          'DataSource'
          'DblClkExpanding'
          'DefaultFields'
          'DefaultLayout'
          'DefaultRowHeight'
          'DragCursor'
          'DragMode'
          'Enabled'
          'Filter'
          'FixedBandLineColor'
          'FixedBandLineWidth'
          'Font'
          'GridLineColor'
          'GrIndicatorWidth'
          'GroupNodeColor'
          'GroupNodeTextColor'
          'GroupPanelColor'
          'GroupPanelFontColor'
          'HeaderColor'
          'HeaderFont'
          'HeaderMinRowCount'
          'HeaderPanelMaxRowCount'
          'HeaderPanelRowCount'
          'Height'
          'HelpContext'
          'HideFocusRect'
          'HideSelection'
          'HideSelectionColor'
          'HideSelectionTextColor'
          'HighlightColor'
          'HighlightTextColor'
          'Hint'
          'IndentDesc'
          'IniFileName'
          'IniSectionName'
          'KeyField'
          'Left'
          'LookAndFeel'
          'MaxRowLineCount'
          'Name'
          'Options'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsDB'
          'OptionsEx'
          'OptionsView'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PartialLoad'
          'PartialLoadBufferCount'
          'PopupMenu'
          'PreviewFieldName'
          'PreviewFont'
          'PreviewLines'
          'PreviewMaxLength'
          'RegistryPath'
          'RowFooterColor'
          'RowFooterTextColor'
          'RowSeparatorLineWidth'
          'ScrollBars'
          'ShowBands'
          'ShowGrid'
          'ShowGroupPanel'
          'ShowHeader'
          'ShowHiddenInCustomizeBox'
          'ShowHint'
          'ShowNewItemRow'
          'ShowPreviewGrid'
          'ShowRowFooter'
          'ShowSummaryFooter'
          'SimpleCustomizeBox'
          'SummaryGroups'
          'SummarySeparator'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseBookmarks'
          'Visible'
          'WaitForExpandNodeTime'
          'Width')
      end
      item
        Component = gridRecebimentosCODIGO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = gridRecebimentosDESCONTOS
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = gridRecebimentosDT_BAIXA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'ButtonGlyph'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DateButtons'
          'DateOnError'
          'DateValidation'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'PopupAlignment'
          'PopupBorder'
          'ReadOnly'
          'RowIndex'
          'SaveTime'
          'ShowButtonStyle'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'UseEditMask'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = gridRecebimentosHISTORICO_BX
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = gridRecebimentosJUROS
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = gridRecebimentosPLANILHA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = gridRecebimentosVLR_BAIXA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFrmExtornaReceber'
    Left = 200
    Top = 151
  end
end
