object FrmCheque_Venda: TFrmCheque_Venda
  Left = 420
  Top = 210
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Cheques'
  ClientHeight = 330
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
    Height = 330
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
    object Bevel2: TBevel
      Left = 6
      Top = 40
      Width = 610
      Height = 94
      Shape = bsFrame
    end
    object Bevel1: TBevel
      Left = 2
      Top = 296
      Width = 620
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
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Cheques da Venda'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 278
      Top = 105
      Caption = 'Valor'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 151
      Top = 105
      Caption = 'Data'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 140
      Top = 52
      Caption = 'Pessoa'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 20
      Top = 105
      Caption = 'Vencto'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 476
      Top = 78
      Caption = 'Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 24
      Top = 52
      Caption = 'Venda'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 237
      Top = 78
      Caption = 'Conta'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 22
      Top = 78
      Caption = 'Banco'
      ParentFont = False
      Transparent = True
    end
    object btnBancos: TcxButton
      Left = 210
      Top = 74
      Width = 23
      Height = 22
      Cursor = crHandPoint
      TabOrder = 25
      OnClick = btnBancosClick
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
    object Label9: TcxLabel
      Left = 219
      Top = 16
      Caption = 'Valor Total Para Desdobramento / Desdobrado'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 351
      Top = 78
      Caption = 'Ag'#234'ncia'
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 298
      Width = 620
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 12
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
    object EdValor: TdxDBCalcEdit
      Left = 306
      Top = 99
      Width = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 10
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'VALOR'
      DataSource = DataSource
    end
    object EdData: TdxDBDateEdit
      Left = 177
      Top = 99
      Width = 88
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
      TabOrder = 9
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'EMISSAO'
      DataSource = DataSource
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object GRID: TDBGrid
      Left = 5
      Top = 138
      Width = 612
      Height = 153
      BorderStyle = bsNone
      DataSource = DataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      ReadOnly = True
      TabOrder = 13
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = GRIDKeyPress
      Columns = <
        item
          Color = clMenu
          Expanded = False
          FieldName = 'BANCO'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'CONTA'
          Width = 64
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'CHEQUE'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'EMISSAO'
          Width = 60
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'PRE_DATE'
          Width = 60
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'VALOR'
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'HISTORICO'
          Width = 217
          Visible = True
        end>
    end
    object EdVencimento: TdxDBDateEdit
      Left = 59
      Top = 99
      Width = 88
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'PRE_DATE'
      DataSource = DataSource
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object dxDBEdit2: TdxDBEdit
      Left = 59
      Top = 47
      Width = 74
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.HotTrack = True
      TabOrder = 0
      TabStop = False
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'VENDA'
      DataSource = DataSource
      ReadOnly = True
      StoredValues = 64
    end
    object cmbBanco: TdxDBLookupEdit
      Left = 59
      Top = 73
      Width = 151
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
      TabOrder = 2
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'BANCO'
      DataSource = DataSource
      ReadOnly = False
      ClearKey = 46
      ListFieldName = 'NOME'
      Revertable = True
      KeyFieldName = 'CODIGO'
      ListSource = DsBanco
      LookupKeyValue = Null
      StoredValues = 64
    end
    object EdConta: TdxDBEdit
      Left = 270
      Top = 73
      Width = 77
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtAlways
      Style.HotTrack = True
      TabOrder = 3
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'CONTA'
      DataSource = DataSource
    end
    object dxDBEdit1: TdxDBEdit
      Left = 514
      Top = 73
      Width = 74
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtAlways
      Style.HotTrack = True
      TabOrder = 6
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit1Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'CHEQUE'
      DataSource = DataSource
    end
    object dxDBEdit4: TdxDBEdit
      Left = 394
      Top = 99
      Width = 212
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtAlways
      Style.HotTrack = True
      TabOrder = 11
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      CharCase = ecUpperCase
      DataField = 'HISTORICO'
      DataSource = DataSource
    end
    object EdDesdobrado: TdxEdit
      Left = 535
      Top = 11
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
      TabOrder = 14
      Alignment = taRightJustify
      StoredValues = 1
    end
    object EdAgencia: TdxDBEdit
      Left = 391
      Top = 73
      Width = 64
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtAlways
      Style.HotTrack = True
      TabOrder = 4
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'AGENCIA'
      DataSource = DataSource
    end
    object dxDBEdit6: TdxDBEdit
      Left = 456
      Top = 73
      Width = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtAlways
      Style.HotTrack = True
      TabOrder = 5
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'DIGITO_AGENCIA'
      DataSource = DataSource
    end
    object dxDBEdit7: TdxDBEdit
      Left = 589
      Top = 73
      Width = 17
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtAlways
      Style.HotTrack = True
      TabOrder = 7
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'DIGITO_CHEQUE'
      DataSource = DataSource
    end
    object EDNOME: TdxDBEdit
      Left = 178
      Top = 47
      Width = 428
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
      Style.ButtonTransparence = ebtAlways
      Style.HotTrack = True
      TabOrder = 1
      OnEnter = dxDBEdit2Enter
      OnExit = dxDBEdit2Exit
      OnKeyDown = dxDBEdit1KeyDown
      CharCase = ecUpperCase
      DataField = 'NOME'
      DataSource = DataSource
    end
    object edtValorTotal: TdxEdit
      Left = 453
      Top = 11
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
      TabOrder = 15
      Alignment = taRightJustify
      StoredValues = 1
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
    Font.Height = -12
    Font.Name = 'Segoe UI'
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
    DataSet = dtCheque
    OnStateChange = DataSourceStateChange
    Left = 373
    Top = 248
  end
  object DsBanco: TDataSource
    DataSet = DMCadastros.Bancos
    Left = 285
    Top = 200
  end
  object dtCheque: TIBDataSet
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    AfterDelete = dtChequeAfterDelete
    AfterInsert = dtChequeAfterInsert
    AfterPost = dtChequeAfterPost
    BeforeClose = dtChequeBeforeClose
    BeforeOpen = dtChequeBeforeOpen
    OnNewRecord = dtChequeNewRecord
    DeleteSQL.Strings = (
      'delete from FIN_CHEQUES'
      'where'
      '  BANCO = :OLD_BANCO and'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    InsertSQL.Strings = (
      'insert into FIN_CHEQUES'
      
        '  (TROCA, AGENCIA, BANCO, CHEQUE, CNPJ, CONCILIADO, CONTA, EMISS' +
        'AO, '
      'HISTORICO, '
      '   PESSOA_FJ, PRE_DATE, VALOR, VENDA, NOME, DATA_CONCILIACAO, '
      'JUROS, MOEDA1, '
      
        '   MOEDA2, TIPO, DATA_ACERTO, DATA_CAIXA, USUARIO, DIGITO_AGENCI' +
        'A, '
      'DIGITO_CONTA, '
      '   DIGITO_CHEQUE, ORIGEM, TURNO)'
      'values'
      
        '  (:TROCA, :AGENCIA, :BANCO, :CHEQUE, :CNPJ, :CONCILIADO, :CONTA' +
        ', '
      ':EMISSAO, '
      '   :HISTORICO, :PESSOA_FJ, :PRE_DATE, :VALOR, :VENDA, :NOME, '
      ':DATA_CONCILIACAO, '
      '   :JUROS, :MOEDA1, :MOEDA2, :TIPO, :DATA_ACERTO, :DATA_CAIXA, '
      ':USUARIO, '
      
        '   :DIGITO_AGENCIA, :DIGITO_CONTA, :DIGITO_CHEQUE, :ORIGEM, :TUR' +
        'NO)')
    RefreshSQL.Strings = (
      'Select '
      '  ID,'
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
      '  CMC7,'
      '  MARCADO,'
      '  CONTA_CONC,'
      '  USUARIO_CONC,'
      '  TURNO_CONC,'
      '  DATA_REMESSA,'
      '  DATA_REAPRES,'
      '  INDICE,'
      '  TROCA'
      'from FIN_CHEQUES '
      'where'
      '  BANCO = :BANCO and'
      '  CHEQUE = :CHEQUE and'
      '  CNPJ = :CNPJ and'
      '  CONTA = :CONTA')
    SelectSQL.Strings = (
      'select '
      '         TROCA,'
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
      '          VENDA,'
      '         NOME ,'
      '         DATA_CONCILIACAO ,'
      '         JUROS ,'
      '         MOEDA1 ,'
      '         MOEDA2 ,'
      '         TIPO ,'
      '         DATA_ACERTO,'
      '         DATA_CAIXA,'
      '         USUARIO,'
      '         DIGITO_AGENCIA,'
      '         DIGITO_CONTA,'
      '         DIGITO_CHEQUE,'
      '         ORIGEM,'
      '         TURNO'
      'from FIN_CHEQUES'
      'Where CNPJ = :CNPJ and VENDA = :CODIGO')
    ModifySQL.Strings = (
      'update FIN_CHEQUES'
      'set'
      '  TROCA = :TROCA,'
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
      '  JUROS = :JUROS,'
      '  MOEDA1 = :MOEDA1,'
      '  MOEDA2 = :MOEDA2,'
      '  TIPO = :TIPO,'
      '  DATA_ACERTO = :DATA_ACERTO,'
      '  DATA_CAIXA = :DATA_CAIXA,'
      '  USUARIO = :USUARIO,'
      '  DIGITO_AGENCIA = :DIGITO_AGENCIA,'
      '  DIGITO_CONTA = :DIGITO_CONTA,'
      '  DIGITO_CHEQUE = :DIGITO_CHEQUE,'
      '  ORIGEM = :ORIGEM,'
      '  TURNO = :TURNO'
      'where'
      '  BANCO = :OLD_BANCO and'
      '  CHEQUE = :OLD_CHEQUE and'
      '  CNPJ = :OLD_CNPJ and'
      '  CONTA = :OLD_CONTA')
    Left = 406
    Top = 248
    object dtChequeCNPJ: TIBStringField
      DisplayLabel = 'Cnpj'
      FieldName = 'CNPJ'
      Origin = '"FIN_CHEQUES"."CNPJ"'
      Required = True
      FixedChar = True
      Size = 14
    end
    object dtChequeAGENCIA: TIBStringField
      DisplayLabel = 'Ag'#234'ncia'
      FieldName = 'AGENCIA'
      Origin = '"FIN_CHEQUES"."AGENCIA"'
      Size = 6
    end
    object dtChequeBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'BANCO'
      Origin = '"FIN_CHEQUES"."BANCO"'
      Required = True
      FixedChar = True
      Size = 3
    end
    object dtChequeCHEQUE: TIBStringField
      DisplayLabel = 'Cheque'
      FieldName = 'CHEQUE'
      Origin = '"FIN_CHEQUES"."CHEQUE"'
      Required = True
      Size = 6
    end
    object dtChequeCONCILIADO: TIBStringField
      DisplayLabel = 'Conciliado'
      FieldName = 'CONCILIADO'
      Origin = '"FIN_CHEQUES"."CONCILIADO"'
      Required = True
      FixedChar = True
      Size = 1
    end
    object dtChequeCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'CONTA'
      Origin = '"FIN_CHEQUES"."CONTA"'
      Required = True
      Size = 15
    end
    object dtChequeEMISSAO: TDateTimeField
      DisplayLabel = 'Emiss'#227'o'
      FieldName = 'EMISSAO'
      Origin = '"FIN_CHEQUES"."EMISSAO"'
    end
    object dtChequeHISTORICO: TIBStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Origin = '"FIN_CHEQUES"."HISTORICO"'
      Size = 100
    end
    object dtChequePESSOA_FJ: TIntegerField
      DisplayLabel = 'Cliente'
      FieldName = 'PESSOA_FJ'
      Origin = '"FIN_CHEQUES"."PESSOA_FJ"'
      Required = True
      OnValidate = dtChequePESSOA_FJValidate
    end
    object dtChequePRE_DATE: TDateTimeField
      DisplayLabel = 'Pr'#233'-Date'
      FieldName = 'PRE_DATE'
      Origin = '"FIN_CHEQUES"."PRE_DATE"'
    end
    object dtChequeVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      Origin = '"FIN_CHEQUES"."VALOR"'
      DisplayFormat = '###,###,##0.00'
    end
    object dtChequeVENDA: TIntegerField
      DisplayLabel = 'Venda'
      FieldName = 'VENDA'
      Origin = '"FIN_CHEQUES"."VENDA"'
    end
    object dtChequeNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FIN_CHEQUES"."NOME"'
      Size = 50
    end
    object dtChequeDATA_CONCILIACAO: TDateTimeField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"FIN_CHEQUES"."DATA_CONCILIACAO"'
    end
    object dtChequeJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = '"FIN_CHEQUES"."JUROS"'
    end
    object dtChequeMOEDA1: TFloatField
      FieldName = 'MOEDA1'
      Origin = '"FIN_CHEQUES"."MOEDA1"'
    end
    object dtChequeMOEDA2: TFloatField
      FieldName = 'MOEDA2'
      Origin = '"FIN_CHEQUES"."MOEDA2"'
    end
    object dtChequeTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"FIN_CHEQUES"."TIPO"'
      FixedChar = True
      Size = 2
    end
    object dtChequeDATA_ACERTO: TDateTimeField
      FieldName = 'DATA_ACERTO'
      Origin = '"FIN_CHEQUES"."DATA_ACERTO"'
    end
    object dtChequeDATA_CAIXA: TDateTimeField
      DisplayLabel = 'Data Caixa'
      FieldName = 'DATA_CAIXA'
      Origin = '"FIN_CHEQUES"."DATA_CAIXA"'
    end
    object dtChequeUSUARIO: TIntegerField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'USUARIO'
      Origin = '"FIN_CHEQUES"."USUARIO"'
    end
    object dtChequeDIGITO_AGENCIA: TIBStringField
      FieldName = 'DIGITO_AGENCIA'
      Origin = '"FIN_CHEQUES"."DIGITO_AGENCIA"'
      FixedChar = True
      Size = 1
    end
    object dtChequeDIGITO_CONTA: TIBStringField
      FieldName = 'DIGITO_CONTA'
      Origin = '"FIN_CHEQUES"."DIGITO_CONTA"'
      FixedChar = True
      Size = 1
    end
    object dtChequeDIGITO_CHEQUE: TIBStringField
      FieldName = 'DIGITO_CHEQUE'
      Origin = '"FIN_CHEQUES"."DIGITO_CHEQUE"'
      FixedChar = True
      Size = 1
    end
    object dtChequeORIGEM: TIBStringField
      FieldName = 'ORIGEM'
      Origin = '"FIN_CHEQUES"."ORIGEM"'
      FixedChar = True
      Size = 3
    end
    object dtChequeTURNO: TIntegerField
      FieldName = 'TURNO'
      Origin = '"FIN_CHEQUES"."TURNO"'
    end
    object dtChequeTROCA: TIntegerField
      FieldName = 'TROCA'
      Origin = '"FIN_CHEQUES"."TROCA"'
    end
  end
end
