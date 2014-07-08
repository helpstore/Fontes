object FrmVerFechamentoDiario: TFrmVerFechamentoDiario
  Left = 9
  Top = 23
  Width = 786
  Height = 565
  BorderIcons = [biSystemMenu]
  Caption = 'Fechamento Diario'
  Color = clBtnFace
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
    Width = 778
    Height = 538
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Bevel1: TBevel
      Left = 2
      Top = 534
      Width = 774
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 184
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TRxLabel
      Left = 6
      Top = 8
      Width = 219
      Height = 23
      Caption = 'Ver Fechamento Diario'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clSilver
      ShadowPos = spRightBottom
    end
    object Panel2: TPanel
      Left = 2
      Top = 494
      Width = 774
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object RzBitBtn2: TcxButton
        Left = 8
        Top = 7
        Width = 91
        Cursor = crHandPoint
        Cancel = True
        FrameFlat = True
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
         
         
        TabOrder = 0
        TextStyle = tsNormal
        OnClick = RzBitBtn2Click
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
    object PC: TcxPageControl
      Left = 8
      Top = 40
      Width = 761
      Height = 449
      ActivePage = dxTabSheet1
      HideButtons = False
      HotTrack = False
      MultiLine = False
      OwnerDraw = False
      RaggedRight = False
      ScrollOpposite = False
      TabHeight = 0
      TabOrder = 1
      TabPosition = dxtpTop
      TabStop = True
      TabWidth = 0
      object dxTabSheet1: TcxTabSheet
        Caption = 'Impressão'
        object Label2: TcxLabel
Transparent = True
          Left = 4
          Top = 10
          Width = 64
          Height = 13
          Caption = 'Data Inicial'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label1: TcxLabel
Transparent = True
          Left = 106
          Top = 10
          Width = 56
          Height = 13
          Caption = 'Data Final'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object Label4: TcxLabel
Transparent = True
          Left = 209
          Top = 8
          Width = 45
          Height = 13
          Caption = 'Produto'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
        end
        object edDtInicial: TdxDateEdit
          Left = 2
          Top = 27
          Width = 98
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
          OnKeyDown = edDtInicialKeyDown
          Date = -700000
          UseEditMask = True
          StoredValues = 4
        end
        object edDtFinal: TdxDateEdit
          Left = 104
          Top = 27
          Width = 98
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
          OnKeyDown = edDtInicialKeyDown
          Date = -700000
          UseEditMask = True
          StoredValues = 4
        end
        object RzBitBtn1: TcxButton
          Left = 378
          Top = 25
          Width = 98
          Cursor = crHandPoint
          FrameFlat = True
          Caption = '&Visualizar'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
           
           
          TabOrder = 3
          TextStyle = tsNormal
          Action = ActListar
          Glyph.Data = {
            36030000424D3603000000000000360000002800000010000000100000000100
            1800000000000003000000000000000000000000000000000000008080008080
            0080800080800080800080800000000000000000000000000000000000000000
            00000000000000000000008080008080008080008080008080008080000000FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000000000000000
            008080000000000000000000000000000000FFFFFFFFFFFF000000FFFFFF0000
            00000000FFFFFF000000FFFF0000000000000000FFFFFFFFFF00FFFFFFFFFF00
            FFFF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF00000000
            00FFFFFFFFFF00FFFFFFFFFF000000000000000000FFFFFFFFFFFFFFFFFFFFFF
            FF000000FFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF000000FFFFFF000000000000FFFFFFFFFFFF000000FFFF00000000
            00FFFFFFFFFF00FFFFFFFFFF00000000000000000000000000000000FFFF0000
            00FFFFFFFFFFFF000000FFFF00000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00
            FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFF000000FFFF00000000
            00FFFFFFFFFF000000000000000000000000000000000000000000FFFFFFFFFF
            FFFFFFFFFFFFFF00000000000000000000000000FFFFFFFFFF00FFFF00000000
            000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF000000008080008080
            00808000000000000000000000000000FFFF000000FFFFFFFFFFFFFFFFFFFFFF
            FFFFFFFFFFFFFF00000000808000808000808000808000808000000000FFFF00
            0000FFFFFFFFFFFFFFFFFFFFFFFF000000000000000000000000008080008080
            00808000808000000000FFFF000000FFFFFFFFFFFF000000000000FFFFFF0000
            00FFFFFFFFFFFF00000000808000808000808000000000FFFF000000000000FF
            FFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFFFF000000008080008080008080
            0000000000FF000000008080000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF0000
            0000000000808000808000808000808000808000000000808000808000000000
            0000000000000000000000000000000000008080008080008080}
        end
        object edcodigo: TdxButtonEdit
          Left = 207
          Top = 27
          Width = 165
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnKeyDown = edDtInicialKeyDown
          Buttons = <
            item
              Default = True
            end>
          ClickKey = 40
          OnButtonClick = edcodigoButtonClick
          StoredValues = 4
          ExistButtons = True
        end
        object GRID: TdxDBGrid
          Left = 1
          Top = 54
          Width = 760
          Height = 371
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'CODIGO'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          BorderStyle = bsNone
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          AutoExpandOnSearch = False
          BandFont.Charset = DEFAULT_CHARSET
          BandFont.Color = clWindowText
          BandFont.Height = -11
          BandFont.Name = 'MS Sans Serif'
          BandFont.Style = []
          Filter.Criteria = {00000000}
          HeaderFont.Charset = DEFAULT_CHARSET
          HeaderFont.Color = clWindowText
          HeaderFont.Height = -11
          HeaderFont.Name = 'MS Sans Serif'
          HeaderFont.Style = []
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
          OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
          PreviewFont.Charset = DEFAULT_CHARSET
          PreviewFont.Color = clBlue
          PreviewFont.Height = -11
          PreviewFont.Name = 'MS Sans Serif'
          PreviewFont.Style = []
        end
      end
    end
  end
  object Actions: TActionList
    Left = 432
    Top = 16
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActFechamento: TAction
      Tag = 1
      Caption = 'Fechamento'
      ShortCut = 120
    end
    object ActListar: TAction
      Tag = 1
      Caption = 'Listar'
      OnExecute = ActListarExecute
    end
    object ActExcluirPeriodo: TAction
      Caption = 'Excluir Período'
      ShortCut = 122
    end
  end
  object Storage: TFormStorage
    Options = []
    StoredValues = <>
    Left = 338
    Top = 29
  end
  object DataSource1: TDataSource
    DataSet = DMApp.Tabelas_Sistema
    Left = 344
    Top = 191
  end
end
