object FrmDigitaCotacoes: TFrmDigitaCotacoes
  Left = 217
  Top = 143
  Width = 545
  Height = 452
  Caption = 'Cota'#231#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 537
    Height = 399
    Align = alClient
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
      Left = 1
      Top = 396
      Width = 535
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 1
      Top = 1
      Width = 535
      Height = 41
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 0
      object b2: TBevel
        Left = 8
        Top = 35
        Width = 149
        Height = 2
        Shape = bsTopLine
      end
      object LblTitulo: TcxLabel
        Left = 6
        Top = 8
        Caption = 'Cota'#231#245'es'
        ParentFont = False
        Transparent = True
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 42
      Width = 535
      Height = 55
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object Label3: TcxLabel
        Left = 329
        Top = 4
        Caption = 'Data'
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 432
        Top = 3
        Caption = 'Valor'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 10
        Top = 4
        Caption = 'Moeda'
        ParentFont = False
        Transparent = True
      end
      object btnMoeda: TcxButton
        Left = 299
        Top = 18
        Width = 23
        Height = 24
        Cursor = crHandPoint
        TabOrder = 6
        OnClick = btnMoedaClick
        Glyph.Data = {
          06030000424D06030000000000003600000028000000100000000F0000000100
          180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          0000000000000000000000000000000000000000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
          000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFFFFFFFF00FFFF00000000FF
          FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
          FFFFFFFFFF000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
          000000FFFFFF00FFFF00000000FFFFFFFFFF00FFFF00000000FFFF00000000FF
          FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00000000000000
          0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000BFBFBFBFBFBF
          000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
          FF000000FFFFFF000000BFBFBFBFBFBF00000000000000000000000000000000
          0000000000000000000000000000000000000000FFFFFF000000BFBFBFBFBFBF
          BFBFBF00000000FFFFFFFFFF00FFFFFFFFFF000000FFFFFFFFFFFFFFFFFFFFFF
          FFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000
          0000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFFFF
          FF000000000000000000BFBFBFBFBFBFBFBFBF00007FBFBFBFBFBFBFBFBFBFBF
          BFBF000000FFFFFFFFFFFFFFFFFFFFFFFF000000000000BFBFBFBFBFBFBFBFBF
          00007F00007F00007FBFBFBFBFBFBFBFBFBF0000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBF00007F00007F00007F00007F00007FBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
          BFBFBFBFBFBFBFBFBFBF}
      end
      object cmbMoeda: TdxDBLookupEdit
        Left = 9
        Top = 19
        Width = 289
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
        Style.HotTrack = True
        Style.Shadow = False
        TabOrder = 0
        OnEnter = cmbMoedaEnter
        OnExit = cmbMoedaExit
        OnKeyDown = cmbMoedaKeyDown
        DataField = 'COD_MOEDA'
        DataSource = DataSource
        ReadOnly = False
        ClearKey = 46
        ListFieldName = 'NOME'
        Revertable = True
        KeyFieldName = 'CODIGO'
        ListSource = DsMoeda
        LookupKeyValue = Null
        StoredValues = 64
      end
      object edtValor: TdxDBCalcEdit
        Left = 431
        Top = 19
        Width = 93
        Hint = 'Custo indexado.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 2
        OnEnter = cmbMoedaEnter
        OnExit = cmbMoedaExit
        OnKeyDown = cmbMoedaKeyDown
        DataField = 'VALOR'
        DataSource = DataSource
        ButtonGlyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000CED3D6000000
          0000000000000000000000000000000000000000000000000000000000000000
          00CED3D600008486008486008400008400008400008400008400008400008400
          008400008400008400008400000000000000848600FFFFFF8486008486008486
          0084860084860084860084860084860084860084860084000000000000008486
          00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
          00008400000000000000848600FFFFFF84860084860084860084860084860084
          86008486008486008486008486008400000000000000848600FFFF0084860000
          0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
          0000848600FFFFFF848600848600848600848600848600848600848600848600
          8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
          C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
          000000000000848600FFFF000000000000000000000000000000000000000000
          000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
          00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
          D684860084860084860084860084860084860084860084860084860084860084
          8600848600CED3D60000}
        PopupBorder = pbFrame3D
      end
      object edtData: TdxDBDateEdit
        Left = 327
        Top = 19
        Width = 100
        Color = clWhite
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
        OnEnter = cmbMoedaEnter
        OnExit = cmbMoedaExit
        OnKeyDown = cmbMoedaKeyDown
        DataField = 'DATA'
        DataSource = DataSource
        DateValidation = True
        UseEditMask = True
        StoredValues = 4
      end
    end
    object Panel4: TPanel
      Left = 1
      Top = 97
      Width = 535
      Height = 299
      Align = alClient
      Color = clWhite
      TabOrder = 2
      object GRID: TdxDBGrid
        Left = 1
        Top = 1
        Width = 533
        Height = 297
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CODIGO'
        ShowGroupPanel = True
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        TabOrder = 0
        DataSource = DataSource
        Filter.Active = True
        Filter.Criteria = {00000000}
        GroupNodeColor = 15977833
        LookAndFeel = lfFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
        ShowRowFooter = True
        object GRIDCODIGO: TdxDBGridMaskColumn
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
        end
        object GRIDMOEDA: TdxDBGridMaskColumn
          Width = 104
          BandIndex = 0
          RowIndex = 0
          FieldName = 'MOEDA'
        end
        object GRIDSIGLA: TdxDBGridMaskColumn
          Width = 67
          BandIndex = 0
          RowIndex = 0
          FieldName = 'SIGLA'
        end
        object GRIDDATA: TdxDBGridDateColumn
          Width = 100
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object GRIDVALOR: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
        end
        object GRIDCOD_MOEDA: TdxDBGridMaskColumn
          Visible = False
          Width = 71
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COD_MOEDA'
        end
      end
    end
  end
  object DsMoeda: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.Moeda
    Left = 152
    Top = 64
  end
  object DataSource: TDataSource
    DataSet = dmFinanceiro2.Cotacoes
    OnStateChange = DataSourceStateChange
    Left = 192
    Top = 232
  end
  object BarMgr: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'DB Navigator')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 297
    Top = 215
    DockControlHeights = (
      0
      0
      0
      26)
    object BarMgrBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockedDockingStyle = dsBottom
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsBottom
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 177
      FloatClientHeight = 93
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarBDBNavFirst'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavPrev'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavNext'
        end
        item
          Visible = True
          ItemName = 'dxBarBDBNavLast'
        end
        item
          Visible = True
          ItemName = 'btnIncluir'
        end
        item
          Visible = True
          ItemName = 'btnAlterar'
        end
        item
          Visible = True
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'BtnSalvar'
        end
        item
          Visible = True
          ItemName = 'BtnCancelar'
        end
        item
          Visible = True
          ItemName = 'btnGerarCotacoes'
        end
        item
          Visible = True
          ItemName = 'BtnFechar'
        end>
      OldName = 'Navega'#231#227'o'
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btnIncluir: TdxBarButton
      Action = ActIncluir
      Category = 0
      Glyph.Data = {
        EE000000424DEE000000000000007600000028000000100000000F0000000100
        04000000000078000000130B0000130B00001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00888888888888
        888888800000000000888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFFF0888880FFFFFFFF
        F0888880FFFFFFFFF0888880FFFFFF0000888880FFFFFF0F08888880FFFFFF00
        888888800000000888888888888888888888}
    end
    object btnExcluir: TdxBarButton
      Action = ActExcluir
      Category = 0
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0080800000000000000000000000000000000000000000000000000000000080
        80008080008080000000008080008080008080000000FFFFFF7F7F7F7F7F7F7F
        7F7F7F7F7F7F7F7F7F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        008080000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000080
        80008080008080000000008080000000008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080000000008080000000008080008080
        000000000000FFFFFF000000BFBFBF000000BFBFBF0000007F7F7F0000000000
        00008080008080000000008080008080008080000000FFFFFF000000BFBFBF00
        00007F7F7F0000007F7F7F000000008080008080008080000000008080008080
        0080800000007F7F7F0000007F7F7F0000007F7F7F0000007F7F7F0000000080
        8000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        000000FFFFFFBFBFBFBFBFBFBFBFBF7F7F7F7F7F7F7F7F7F7F7F7F7F7F7F0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000008080008080
        0080800080800080800000007F7F7F7F7F7F7F7F7F0000000080800080800080
        8000808000808000000000808000808000808000808000808000000000000000
        0000000000000000008080008080008080008080008080000000}
    end
    object BtnSalvar: TdxBarButton
      Action = ActPost
      Category = 0
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        1800000000000003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F000000000000000000000000000000000000BFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000000000007F7F000000BFBFBFBFBFBF000000
        007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F
        7F007F7F000000BFBFBFBFBFBF000000007F7F007F7F00000000000000000000
        0000000000000000000000000000007F7F007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00007F7F000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBF000000
        007F7F000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000BFBFBFBFBFBF000000007F7F000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBF000000BFBFBFBFBFBF000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF}
    end
    object BtnCancelar: TdxBarButton
      Action = ActCancel
      Category = 0
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        8000808000808000808000808000008080008080008080008080008080008080
        0080800080800080800080800080800080800080800080800080800080800080
        80000080800080800000FF0000FF0000FF0080800080807F7F7F0000007F7F7F
        0080800080800000FF0000FF0000FF0080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800080800080800000FF0000FF0000FF7F
        7F7F0000007F7F7F0000FF0000FF0000FF008080008080008080008080000080
        800080800080800080800080800000FF0000FF0000FF0080800000FF0000FF00
        00FF008080008080008080008080008080000080800080800080800080800080
        800080800000FF0000FF0000000000FF0000FF00808000808000808000808000
        8080008080000080800080800080800080800080800080800080800000800000
        0000008000808000808000808000808000808000808000808000008080008080
        0080800080800080800080800000FF0000800000000000800000FF0080800080
        80008080008080008080008080000080800080800080800080800080800000FF
        0000FF0000000000000000000000FF0000FF0080800080800080800080800080
        80000080800080800080800080800000FF0000FF0000FF000000000000000000
        0000FF0000FF0000FF0080800080800080800080800000808000808000808000
        00FF0000FF0000FF0080800000000000000000000080800000FF0000FF0000FF
        008080008080008080000080800080800000FF0000FF0000FF0080800080807F
        7F7F0000007F7F7F0080800080800000FF0000FF0000FF008080008080000080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080008080008080008080008080000080800080800080800080800080
        8000808000808000808000808000808000808000808000808000808000808000
        8080008080000080800080800080800080800080800080800080800080800080
        8000808000808000808000808000808000808000808000808000}
    end
    object BtnFechar: TdxBarButton
      Align = iaRight
      Caption = 'Fechar'
      Category = 0
      Hint = 'Fechar'
      Visible = ivAlways
      Glyph.Data = {
        36030000424D360300000000000036000000280000000F000000100000000100
        1800000000000003000000000000000000000000000000000000008080008080
        0000000000000000000000000000000000000000000000000000000000000000
        0000808000808000000000808000808000000000008000FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000FFFF00000000FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000008000008000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        00000000008000008000008000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        00008080008080000000008080008080000000000080FFFF0000008000000000
        FFFF00FFFF00FFFF00FFFF00FFFF000000008080008080000000008080008080
        000000000080FFFF00FFFF0000000000FFFF00FFFF00FFFF00FFFF00FFFF0000
        0000808000808000000000808000808000000000000000000000000000000000
        0000000000000000000000000000000000008080008080000000}
      PaintStyle = psCaptionGlyph
      ShortCut = 27
      OnClick = FecharExecute
    end
    object btnAlterar: TdxBarButton
      Action = ActAlterar
      Category = 0
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
    object btnGerarCotacoes: TdxBarButton
      Action = ActGerarRegCot
      Category = 0
    end
    object dxBarBDBNavFirst: TdxBarDBNavButton
      Caption = 'ActInicio'
      Category = 1
      Enabled = False
      Hint = 'Ir ao primeiro registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777708777780007777770877800000777777088000000
        0777777087780000077777708777780007777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnFirst
    end
    object dxBarBDBNavPrev: TdxBarDBNavButton
      Caption = 'ActPrior'
      Category = 1
      Enabled = False
      Hint = 'Ir ao registro anterior'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777777777780777777777777800077777777778000007777777780000000
        7777777777800000777777777777800077777777777777807777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnPrior
    end
    object dxBarBDBNavNext: TdxBarDBNavButton
      Caption = 'ActNext'
      Category = 1
      Enabled = False
      Hint = 'Ir ao pr'#243'ximo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777708777777777777770008777777777777000008777777777700000008
        7777777700000877777777770008777777777777087777777777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnNext
    end
    object dxBarBDBNavLast: TdxBarDBNavButton
      Caption = 'ActLast'
      Category = 1
      Enabled = False
      Hint = 'Ir ao '#250'ltimo registro'
      Visible = ivAlways
      Glyph.Data = {
        F6000000424DF600000000000000760000002800000010000000100000000100
        0400000000008000000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        7777777777777777777777777777777777777777777777777777777777777777
        7777777087777778077777700087777807777770000087780777777000000088
        0777777000008778077777700087777807777770877777780777777777777777
        7777777777777777777777777777777777777777777777777777}
      NavButton = dxbnLast
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarMgr
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 269
    Top = 215
  end
  object Actions: TActionList
    Left = 176
    Top = 159
    object ActIncluir: TAction
      Tag = 1
      Caption = 'ActIncluir'
      Hint = 'Incluir um novo registro [Ins]'
      ShortCut = 45
      OnExecute = ActIncluirExecute
    end
    object ActAlterar: TAction
      Tag = 1
      Caption = 'ActAlterar'
      Hint = 'Incluir o registro selecionado [Enter]'
      ShortCut = 117
      OnExecute = ActAlterarExecute
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 46
      OnExecute = ActExcluirExecute
    end
    object ActPost: TAction
      Tag = 1
      Caption = 'Salvar informa'#231#245'es'
      Hint = 'Salvar informa'#231#245'es'
      ShortCut = 121
      OnExecute = ActPostExecute
    end
    object ActCancel: TAction
      Caption = 'ActCancel'
      Hint = 'Cancelar informa'#231#245'es'
      ShortCut = 27
      OnExecute = ActCancelExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar  '
    end
    object actLookup: TAction
      Tag = 1
      Caption = 'actLookup'
      ShortCut = 115
    end
    object ActGerarRegCot: TAction
      Tag = 1
      Caption = 'Gerar Registros de Cota'#231#245'es ( F9 )'
      ShortCut = 120
      OnExecute = ActGerarRegCotExecute
    end
  end
  object stgCotMoedas: TcxPropertiesStore
    Components = <
      item
        Component = GRID
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
        Component = GRIDCOD_MOEDA
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
        Component = GRIDCODIGO
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
        Component = GRIDDATA
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
        Component = GRIDMOEDA
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
        Component = GRIDSIGLA
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
        Component = GRIDVALOR
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
    StorageName = 'stgCotMoedas'
    Left = 82
    Top = 208
  end
end
