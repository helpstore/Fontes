object frmGeraFinComissoes: TfrmGeraFinComissoes
  Left = 257
  Top = 117
  Width = 449
  Height = 499
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Provisionar Comiss'#245'es'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 441
    Height = 472
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pnlClientResize
    object Panel2: TPanel
      Left = 2
      Top = 438
      Width = 437
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        437
        32)
      object BtnOk: TcxButton
        Left = 265
        Top = 4
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActGerar
        Anchors = [akRight, akBottom]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          66666666666666666666666666666666666666666666666666666666AC666666
          66666666F86666666666666A22C666666666666F88866666666666A2222C6666
          666666F88888666666666A222222C66666666F888888866666666A22CA222C66
          66666F888F88886666666A2C66A222C666666F8866F8888666666AC6666A222C
          66666F86666F8888666666666666A222C66666666666F8888666666666666A22
          2C66666666666F8888666666666666A222C66666666666F8888666666666666A
          22C666666666666F8886666666666666A2C6666666666666F886666666666666
          6AC66666666666666F8666666666666666666666666666666666}
        NumGlyphs = 2
      end
      object RzBitBtn2: TcxButton
        Left = 345
        Top = 4
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Action = ActFechar
        Anchors = [akRight, akBottom]
        Cancel = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
    object gbData: TGroupBox
      Left = 7
      Top = 268
      Width = 426
      Height = 162
      Caption = 'Dados Financeiros'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label35: TcxLabel
        Left = 160
        Top = 64
        Caption = 'Centro de Custo'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Agente'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 8
        Top = 64
        Caption = 'Dt. Vencto'
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 8
        Top = 110
        Caption = 'Hist'#243'rico'
        ParentFont = False
        Transparent = True
      end
      object cmbCCusto: TdxLookupEdit
        Left = 160
        Top = 80
        Width = 257
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 2
        OnEnter = lkpAgenteEnter
        OnExit = lkpAgenteExit
        OnKeyDown = lkpAgenteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCCusto
        LookupKeyValue = Null
      end
      object lkpAgente: TdxLookupEdit
        Left = 8
        Top = 32
        Width = 409
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        OnEnter = lkpAgenteEnter
        OnExit = lkpAgenteExit
        OnKeyDown = lkpAgenteKeyDown
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsAgentes
        LookupKeyValue = Null
      end
      object dtVencto: TdxDateEdit
        Left = 8
        Top = 80
        Width = 145
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        OnEnter = lkpAgenteEnter
        OnExit = lkpAgenteExit
        OnKeyDown = lkpAgenteKeyDown
        Date = -700000.000000000000000000
        UseEditMask = True
        StoredValues = 4
      end
      object edtHistorico: TdxEdit
        Left = 8
        Top = 125
        Width = 409
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 3
        OnEnter = lkpAgenteEnter
        OnExit = lkpAgenteExit
        OnKeyDown = lkpAgenteKeyDown
        CharCase = ecUpperCase
      end
    end
    object Panel1: TPanel
      Left = 2
      Top = 2
      Width = 437
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      ParentColor = True
      TabOrder = 2
      object b2: TBevel
        Left = 8
        Top = 33
        Width = 148
        Height = 2
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 6
        Top = 9
        Caption = 'Provisionar Comiss'#245'es'
        ParentFont = False
        Transparent = True
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 43
      Width = 437
      Height = 220
      Align = alTop
      BevelOuter = bvNone
      Color = clCaptionText
      TabOrder = 3
      object GridReceber: TdxDBGrid
        Left = 0
        Top = 0
        Width = 437
        Height = 220
        Bands = <
          item
            Caption = 'Pend'#234'ncias'
          end>
        DefaultLayout = False
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
        DataSource = DataSource
        Filter.Criteria = {00000000}
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'MS Sans Serif'
        HeaderFont.Style = []
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoExtMultiSelect, edgoSeekDetail, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoSyncSelection, edgoUseBookmarks]
        OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GridReceberCNPJ: TdxDBGridMaskColumn
          Visible = False
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CNPJ'
        end
        object GridReceberCODIGO: TdxDBGridMaskColumn
          Width = 51
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object GridReceberAGENTE: TdxDBGridMaskColumn
          Sorted = csUp
          Width = 219
          BandIndex = 0
          RowIndex = 0
          FieldName = 'AGENTE'
        end
        object GridReceberVALOR: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
          SummaryFooterType = cstSum
          SummaryField = 'VALOR'
        end
        object GridReceberDT_GERACAO: TdxDBGridDateColumn
          Width = 79
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DT_GERACAO'
        end
        object GridReceberSTATUS: TdxDBGridMaskColumn
          Visible = False
          Width = 40
          BandIndex = 0
          RowIndex = 0
          FieldName = 'STATUS'
        end
      end
    end
  end
  object Actions: TActionList
    Left = 181
    Top = 65524
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActGerar: TAction
      Caption = '&Ok'
      OnExecute = ActGerarExecute
    end
  end
  object dsCCusto: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelCentro
    Left = 264
    Top = 4
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.QryQuitarComissoes
    Left = 267
    Top = 74
  end
  object dsAgentes: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelPessoas
    Left = 303
    Top = 5
  end
end
