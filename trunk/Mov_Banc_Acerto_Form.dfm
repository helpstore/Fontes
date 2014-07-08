object FrmMovAvisoBancario: TFrmMovAvisoBancario
  Left = 238
  Top = 107
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Acerto - Aviso Banc'#225'rio'
  ClientHeight = 356
  ClientWidth = 624
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 624
    Height = 356
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
    OnResize = pnlClientResize
    object Bevel1: TBevel
      Left = 2
      Top = 322
      Width = 620
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 324
      Width = 620
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 620
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 620
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 2
      Width = 620
      Height = 38
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 1
      object b2: TBevel
        Left = 8
        Top = 32
        Width = 184
        Height = 2
        Shape = bsTopLine
      end
      object Label9: TcxLabel
        Left = 295
        Top = 13
        Caption = 'Total Movimento / Desdobrado'
        ParentFont = False
        Transparent = True
      end
      object LblTitulo: TcxLabel
        Left = 6
        Top = 5
        Caption = 'Acerto - Aviso Banc'#225'rio'
        ParentFont = False
        Transparent = True
      end
      object EdDesdobrado: TdxEdit
        Left = 535
        Top = 8
        Width = 80
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        Alignment = taRightJustify
        StoredValues = 1
      end
      object edtValorTotal: TdxEdit
        Left = 453
        Top = 8
        Width = 80
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        Alignment = taRightJustify
        StoredValues = 1
      end
    end
    object Panel4: TPanel
      Left = 2
      Top = 40
      Width = 620
      Height = 129
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 2
      object Bevel2: TBevel
        Left = 3
        Top = 2
        Width = 608
        Height = 120
        Shape = bsFrame
      end
      object BtnConta: TcxButton
        Left = 552
        Top = 5
        Width = 22
        Height = 22
        Cursor = crHandPoint
        TabOrder = 9
        OnClick = BtnContaClick
        Glyph.Data = {
          06030000424D06030000000000003600000028000000100000000F0000000100
          180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          0000000000000000000000000000000000000000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
          000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
          FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
          000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
          FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
      object LblConta: TcxLabel
        Left = 299
        Top = 10
        AutoSize = False
        Caption = 'Tipo'
        ParentFont = False
        Transparent = True
        Height = 13
        Width = 205
      end
      object Label8: TcxLabel
        Left = 294
        Top = 40
        Caption = 'Valor'
        ParentFont = False
        Transparent = True
      end
      object BtnTipoDoc: TcxButton
        Left = 207
        Top = 65
        Width = 21
        Height = 22
        Cursor = crHandPoint
        TabOrder = 12
        Glyph.Data = {
          06030000424D06030000000000003600000028000000100000000F0000000100
          180000000000D0020000C30E0000C30E00000000000000000000BFBFBFBFBFBF
          0000000000000000000000000000000000000000000000000000000000000000
          00000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
          000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
          FF000000BFBFBFBFBFBFBFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBF
          000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FF
          FF000000000000000000BFBFBFBFBFBF00000000FFFFFFFFFF00FFFFFFFFFF00
          FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF000000FFFFFF000000BFBFBFBFBFBF
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
      object Label2: TcxLabel
        Left = 10
        Top = 69
        Caption = 'Documento'
        ParentFont = False
        Transparent = True
      end
      object Label1: TcxLabel
        Left = 23
        Top = 92
        Caption = 'Hist'#243'rico'
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 42
        Top = 40
        Caption = 'Data'
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 33
        Top = 10
        Caption = 'Acerto'
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 177
        Top = 41
        Caption = 'Tipo'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 166
        Top = 10
        Caption = 'Conta'
        ParentFont = False
        Transparent = True
      end
      object Panel2: TPanel
        Left = 453
        Top = 34
        Width = 122
        Height = 54
        BevelInner = bvLowered
        TabOrder = 6
        object Shape7: TShape
          Left = 3
          Top = 3
          Width = 115
          Height = 17
          Brush.Color = clAppWorkSpace
          Pen.Color = clBtnShadow
        end
        object RxLabel2: TcxLabel
          Left = 4
          Top = 4
          Caption = 'Data de Concilia'#231#227'o'
          ParentFont = False
          Transparent = True
        end
        object dxDBDateEdit1: TdxDBDateEdit
          Left = 8
          Top = 23
          Width = 105
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = edtChequeKeyDown
          DataField = 'DATA_CONCILIACAO'
          DataSource = DataSource
          DateValidation = True
          UseEditMask = True
          StoredValues = 4
        end
      end
      object dxDBEdit15: TdxDBEdit
        Left = 70
        Top = 90
        Width = 376
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 5
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        CharCase = ecUpperCase
        DataField = 'HISTORICO'
        DataSource = DataSource
      end
      object edDocto: TdxDBEdit
        Left = 235
        Top = 64
        Width = 211
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 4
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        CharCase = ecUpperCase
        DataField = 'DOCUMENTO'
        DataSource = DataSource
      end
      object EdValor: TdxDBCalcEdit
        Left = 327
        Top = 35
        Width = 119
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
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        DataField = 'VALOR'
        DataSource = DataSource
      end
      object CmbTipo: TdxDBPickEdit
        Left = 201
        Top = 35
        Width = 87
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.ButtonTransparence = ebtNone
        Style.HotTrack = False
        TabOrder = 7
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        DataField = 'TIPO'
        DataSource = DataSource
        PopupBorder = pbFlat
        DropDownListStyle = True
        Items.Strings = (
          'C'
          'D')
      end
      object EdConta: TdxButtonEdit
        Left = 201
        Top = 5
        Width = 87
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
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        Buttons = <
          item
            Default = True
          end>
        ClickKey = 40
        OnButtonClick = EdContaButtonClick
        ExistButtons = True
      end
      object cmbTipo_Doc: TdxDBLookupEdit
        Left = 71
        Top = 64
        Width = 136
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
        Style.HotTrack = False
        Style.Shadow = False
        TabOrder = 3
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        DataField = 'COD_DOC'
        DataSource = DataSource
        ReadOnly = False
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        Revertable = True
        KeyFieldName = 'SIGLA'
        ListSource = DsTipo_Doc
        LookupKeyValue = Null
        StoredValues = 64
      end
      object EdData: TdxDBDateEdit
        Left = 71
        Top = 35
        Width = 90
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
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        DataField = 'DATA'
        DataSource = DataSource
        DateValidation = True
        UseEditMask = True
        StoredValues = 4
      end
      object dxDBEdit2: TdxDBEdit
        Left = 71
        Top = 5
        Width = 90
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.HotTrack = False
        TabOrder = 8
        TabStop = False
        OnEnter = dxDBEdit2Enter
        OnExit = dxDBEdit2Exit
        OnKeyDown = edtChequeKeyDown
        DataField = 'COD_ACERTOCONTA'
        DataSource = DataSource
        ReadOnly = True
        StoredValues = 64
      end
    end
    object Panel5: TPanel
      Left = 2
      Top = 169
      Width = 620
      Height = 153
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 3
      object GRID: TdxDBGrid
        Left = 0
        Top = 0
        Width = 620
        Height = 153
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'CODIGO'
        SummaryGroups = <>
        SummarySeparator = ', '
        Align = alClient
        BorderStyle = bsNone
        Color = clWhite
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
        LookAndFeel = lfUltraFlat
        OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
        OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
        OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        object GRIDBANCO: TdxDBGridMaskColumn
          Width = 37
          BandIndex = 0
          RowIndex = 0
          FieldName = 'BANCO'
        end
        object GRIDCOD_DOC: TdxDBGridColumn
          Caption = 'Documento'
          Width = 34
          BandIndex = 0
          RowIndex = 0
          FieldName = 'COD_DOC'
        end
        object GRIDDOCUMENTO: TdxDBGridMaskColumn
          Sorted = csUp
          Width = 124
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DOCUMENTO'
        end
        object GRIDDATA: TdxDBGridDateColumn
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA'
        end
        object GRIDDATA_CONCILIACAO: TdxDBGridDateColumn
          Caption = 'Concilia'#231#227'o'
          Width = 112
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DATA_CONCILIACAO'
        end
        object GRIDVALOR: TdxDBGridMaskColumn
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
          SummaryFooterType = cstSum
          SummaryFooterField = 'VALOR'
        end
        object GRIDTIPO: TdxDBGridMaskColumn
          Width = 27
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPO'
        end
        object GRIDHISTORICO: TdxDBGridMaskColumn
          Width = 484
          BandIndex = 0
          RowIndex = 0
          FieldName = 'HISTORICO'
        end
        object GRIDTIPO_LANCAMENTO: TdxDBGridMaskColumn
          Width = 69
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPO_LANCAMENTO'
        end
      end
    end
  end
  object BarDBNavigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 461
    Top = 247
  end
  object BarManager: TdxBarManager
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
    Left = 373
    Top = 200
    DockControlHeights = (
      0
      0
      0
      0)
    object BarManagerBar1: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Navega'#231#227'o'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 290
      FloatTop = 163
      FloatClientWidth = 23
      FloatClientHeight = 198
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
          ItemName = 'btnExcluir'
        end
        item
          Visible = True
          ItemName = 'btnLocalizar'
        end
        item
          Visible = True
          ItemName = 'BtnListagem'
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
    object btnLocalizar: TdxBarButton
      Action = ActLocalizar
      Category = 0
      Glyph.Data = {
        36050000424D360500000000000036040000280000000E000000100000000100
        0800000000000001000000000000000000000001000000000000000000003300
        00006600000099000000CC000000FF0000000033000033330000663300009933
        0000CC330000FF33000000660000336600006666000099660000CC660000FF66
        000000990000339900006699000099990000CC990000FF99000000CC000033CC
        000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
        0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
        330000333300333333006633330099333300CC333300FF333300006633003366
        33006666330099663300CC663300FF6633000099330033993300669933009999
        3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
        330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
        66006600660099006600CC006600FF0066000033660033336600663366009933
        6600CC336600FF33660000666600336666006666660099666600CC666600FF66
        660000996600339966006699660099996600CC996600FF99660000CC660033CC
        660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
        6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
        990000339900333399006633990099339900CC339900FF339900006699003366
        99006666990099669900CC669900FF6699000099990033999900669999009999
        9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
        990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
        CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
        CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
        CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
        CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
        CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
        FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
        FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
        FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
        FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000ACACACACACAC
        ACACACAC0000ACAC0000ACACACACACACACACAC02230500AC0000ACAC00000000
        00000223050500000000ACAC56ACACACAC02230505ACAC000000ACAC56D7D7D7
        02230505ACD7AC000000ACAC56000056AC0505ACD7D7AC000000AC56AC23AC00
        5656ACD7D7D7AC00000056D723AC23AC00ACD7D7D7D7AC0000005623D723AC23
        00ACD7D7D7D7AC00000056D723D723AC00ACD7D7D7D7AC000000AC56D723D700
        ACD7D7D7D7D7AC000000ACAC565600ACD7D7D7D7D7D7AC000000ACAC56D7D7D7
        D7D7D7D7000000000000ACAC56D7D7D7D7D7D7D7ACD756AC0000ACAC56D7D7D7
        D7D7D7D7AC56ACAC0000ACAC565656565656565656ACACAC0000}
    end
    object BtnSalvar: TdxBarButton
      Action = ActPost
      Category = 0
      Enabled = False
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
      Enabled = False
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
    object BtnListagem: TdxBarButton
      Action = ActListagem
      Category = 0
      Glyph.Data = {
        EE030000424DEE03000000000000360000002800000012000000110000000100
        180000000000B803000000000000000000000000000000000000BFBFBF000000
        000000000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBF000000000000000000BFBFBF00000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        00000000000000000000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0000000
        0000000000FFFFFFC0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C00000000000000000FFFFFF
        C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0C0
        C00000FF0000FFC0C0C0C0C0C00000000000000000FFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000080808000000000000080808080808080808080808080
        8080808080808080808080808080808080808080808080000000000000808080
        0000BFBFBFBFBFBF000000000000000000000000000000000000000000000000
        000000000000000000000000000000000000BFBFBFBFBFBF0000BFBFBFBFBFBF
        000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000000000BFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000000000000000000000000000000000000000FFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000000000000000
        000000000000000000FFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBF000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFF000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFF
        FF000000000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BF
        BFBFBFBFBFBFBFBF0000BFBFBFBFBFBFBFBFBF000000FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000BFBFBFBFBFBFBFBFBF
        0000BFBFBFBFBFBFBFBFBF000000000000000000000000000000000000000000
        000000000000000000000000000000BFBFBFBFBFBFBFBFBF0000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF0000}
    end
    object BtnFechar: TdxBarButton
      Action = ActFechar
      Align = iaRight
      Category = 0
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
  object Actions: TActionList
    Left = 537
    Top = 248
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
    end
    object ActExcluir: TAction
      Tag = 1
      Caption = 'ActExcluir'
      Hint = 'Excluir o registro selecionado [Shift+Del]'
      ShortCut = 8238
      OnExecute = ActExcluirExecute
    end
    object ActLocalizar: TAction
      Caption = 'ActLocalizar'
      Hint = 'Localizar registros [F3]'
      ShortCut = 114
      OnExecute = ActLocalizarExecute
    end
    object ActListagem: TAction
      Tag = 1
      Caption = 'ActListagem'
      Hint = 'Emitir listagem de '
      ShortCut = 116
    end
    object ActPost: TAction
      Caption = 'ActPost'
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
      OnExecute = ActFecharExecute
    end
    object ActLookup: TAction
      Caption = 'ActLookup'
      ShortCut = 115
      OnExecute = ActLookupExecute
    end
    object ActPeriodo: TAction
      Caption = 'ActPeriodo'
      ShortCut = 120
    end
  end
  object DataSource: TDataSource
    DataSet = Movimento
    OnStateChange = DataSourceStateChange
    Left = 325
    Top = 200
  end
  object DsBanco: TDataSource
    DataSet = DMCadastros.Bancos
    Left = 285
    Top = 200
  end
  object DsConta: TDataSource
    AutoEdit = False
    DataSet = DmPlano.PlanoMovimento
    Left = 464
    Top = 16
  end
  object Movimento: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterDelete = MovimentoAfterDelete
    AfterPost = MovimentoAfterPost
    BeforePost = MovimentoBeforePost
    OnNewRecord = MovimentoNewRecord
    DeleteSQL.Strings = (
      'delete from CTB_MOVIMENTO_CONTABIL'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into CTB_MOVIMENTO_CONTABIL'
      
        '  (ANO, BANCO, CNPJ, COD_ACERTOCONTA, COD_DOC, CODIGO, CONTA, CO' +
        'NTRA_PARTIDA, '
      
        '   DATA, DATA_CONCILIACAO, DOCUMENTO, FORNECEDOR, HISTORICO, MES' +
        ', ORIGEM, '
      '   PLANILHA, TIPO, TIPO_LANCAMENTO, VALOR)'
      'values'
      
        '  (:ANO, :BANCO, :CNPJ, :COD_ACERTOCONTA, :COD_DOC, :CODIGO, :CO' +
        'NTA, :CONTRA_PARTIDA, '
      
        '   :DATA, :DATA_CONCILIACAO, :DOCUMENTO, :FORNECEDOR, :HISTORICO' +
        ', :MES, '
      '   :ORIGEM, :PLANILHA, :TIPO, :TIPO_LANCAMENTO, :VALOR)')
    RefreshSQL.Strings = (
      'Select '
      '  CNPJ,'
      '  CODIGO,'
      '  DATA,'
      '  TIPO,'
      '  DOCUMENTO,'
      '  HISTORICO,'
      '  MES,'
      '  ANO,'
      '  VALOR,'
      '  CONTA,'
      '  ORIGEM,'
      '  PLANILHA,'
      '  CONTRA_PARTIDA,'
      '  BANCO,'
      '  DATA_CONCILIACAO,'
      '  TIPO_LANCAMENTO,'
      '  COD_DOC,'
      '  FORNECEDOR,'
      '  EXCLUIR,'
      '  VALOR_INDEXADO,'
      '  COD_ACERTOCONTA'
      'from CTB_MOVIMENTO_CONTABIL '
      'where'
      '  CNPJ = :CNPJ and'
      '  CODIGO = :CODIGO')
    SelectSQL.Strings = (
      'select  ctb.* from ctb_movimento_contabil ctb'
      'where  ctb.cnpj = :cnpj'
      'and ((ctb.conta = :conta) or (:conta = 0))'
      
        'and (cast(ctb.data as date) between coalesce(:ini,cast('#39'01.01.20' +
        '01'#39' as date)) and coalesce(:fim,cast('#39'01.01.2050'#39' as date)))')
    ModifySQL.Strings = (
      'update CTB_MOVIMENTO_CONTABIL'
      'set'
      '  ANO = :ANO,'
      '  BANCO = :BANCO,'
      '  CNPJ = :CNPJ,'
      '  COD_ACERTOCONTA = :COD_ACERTOCONTA,'
      '  COD_DOC = :COD_DOC,'
      '  CODIGO = :CODIGO,'
      '  CONTA = :CONTA,'
      '  CONTRA_PARTIDA = :CONTRA_PARTIDA,'
      '  DATA = :DATA,'
      '  DATA_CONCILIACAO = :DATA_CONCILIACAO,'
      '  DOCUMENTO = :DOCUMENTO,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  HISTORICO = :HISTORICO,'
      '  MES = :MES,'
      '  ORIGEM = :ORIGEM,'
      '  PLANILHA = :PLANILHA,'
      '  TIPO = :TIPO,'
      '  TIPO_LANCAMENTO = :TIPO_LANCAMENTO,'
      '  VALOR = :VALOR'
      'where'
      '  CNPJ = :OLD_CNPJ and'
      '  CODIGO = :OLD_CODIGO')
    Left = 232
    Top = 10
    object MovimentoCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object MovimentoCODIGO: TIntegerField
      Tag = 1
      DisplayLabel = 'C'#243'digo'
      FieldName = 'CODIGO'
      Required = True
    end
    object MovimentoBANCO: TIBStringField
      Tag = 1
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Required = True
      Size = 3
    end
    object MovimentoDOCUMENTO: TIBStringField
      Tag = 1
      DisplayLabel = 'Documento'
      FieldName = 'DOCUMENTO'
      Required = True
    end
    object MovimentoHISTORICO: TIBStringField
      Tag = 1
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 100
    end
    object MovimentoVALOR: TFloatField
      Tag = 1
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Required = True
      DisplayFormat = '###,###,##0.00'
    end
    object MovimentoTIPO: TIBStringField
      DisplayLabel = 'Tipo'
      FieldName = 'TIPO'
      Size = 1
    end
    object MovimentoTIPO_LANCAMENTO: TIBStringField
      DisplayLabel = 'Tipo de Lanc'
      FieldName = 'TIPO_LANCAMENTO'
      Required = True
      Size = 1
    end
    object MovimentoCOD_DOC: TIBStringField
      DisplayLabel = 'Tipo de Doc'
      FieldName = 'COD_DOC'
      Required = True
      Size = 3
    end
    object MovimentoFORNECEDOR: TIntegerField
      DisplayLabel = 'Forn'
      FieldName = 'FORNECEDOR'
    end
    object MovimentoPLANILHA: TIntegerField
      DisplayLabel = 'Planilha'
      FieldName = 'PLANILHA'
    end
    object MovimentoMES: TIntegerField
      FieldName = 'MES'
      Origin = '"MOVIMENTO_CONTABIL"."MES"'
      Required = True
    end
    object MovimentoANO: TIntegerField
      FieldName = 'ANO'
      Origin = '"MOVIMENTO_CONTABIL"."ANO"'
      Required = True
    end
    object MovimentoORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"MOVIMENTO_CONTABIL"."ORIGEM"'
      Required = True
      Size = 15
    end
    object MovimentoCONTRA_PARTIDA: TIntegerField
      FieldName = 'CONTRA_PARTIDA'
      Origin = '"MOVIMENTO_CONTABIL"."CONTRA_PARTIDA"'
    end
    object MovimentoCONTA: TIntegerField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"MOVIMENTO_CONTABIL"."CONTA"'
      Required = True
    end
    object MovimentoEXCLUIR: TIBStringField
      FieldName = 'EXCLUIR'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."EXCLUIR"'
      FixedChar = True
      Size = 1
    end
    object MovimentoVALOR_INDEXADO: TFloatField
      FieldName = 'VALOR_INDEXADO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."VALOR_INDEXADO"'
    end
    object MovimentoCOD_ACERTOCONTA: TIntegerField
      FieldName = 'COD_ACERTOCONTA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."COD_ACERTOCONTA"'
    end
    object MovimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object MovimentoDATA_CONCILIACAO: TDateField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA_CONCILIACAO"'
    end
  end
  object DsTipo_Doc: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Tipo_Documento
    Left = 413
    Top = 16
  end
end
