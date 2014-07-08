object FrmAlteraVendas: TFrmAlteraVendas
  Left = 25
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Altera'#231#227'o de Vendas '
  ClientHeight = 247
  ClientWidth = 745
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 745
    Height = 247
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
      Top = 213
      Width = 741
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
      Caption = 'Visualizar Altera'#231#227'o de Vendas'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 33
      Top = 49
      Caption = 'C'#243'digo'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 275
      Top = 47
      Caption = 'Data'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 33
      Top = 73
      Caption = 'Cliente'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 22
      Top = 96
      Caption = 'Natureza'
      ParentFont = False
      Transparent = True
    end
    object Label19: TcxLabel
      Left = 279
      Top = 96
      Caption = 'Ecf'
      ParentFont = False
      Transparent = True
    end
    object LBLTERCEIROS: TcxLabel
      Left = 403
      Top = 72
      Caption = 'Terceiro'
      ParentFont = False
      Transparent = True
    end
    object Label18: TcxLabel
      Left = 152
      Top = 96
      Caption = 'Nf'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 396
      Top = 47
      Caption = 'Vendedor'
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 423
      Top = 97
      Caption = 'Obs'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 424
      Top = 120
      Caption = 'Hist'
      ParentFont = False
      Transparent = True
    end
    object Label34: TcxLabel
      Left = 256
      Top = 120
      Caption = 'Entrada'
      ParentFont = False
      Transparent = True
    end
    object Label35: TcxLabel
      Left = 270
      Top = 144
      Caption = 'Local'
      ParentFont = False
      Transparent = True
    end
    object Label29: TcxLabel
      Left = 33
      Top = 144
      Caption = 'Tp Doc'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 27
      Top = 167
      Caption = 'Dinheiro'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 33
      Top = 192
      Caption = 'Cart'#227'o'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 266
      Top = 192
      Caption = 'Ticket'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 257
      Top = 167
      Caption = 'Cheque'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 519
      Top = 47
      Caption = 'Caixa'
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 215
      Width = 741
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 2
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 741
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 741
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object EdDocumento: TdxDBEdit
      Left = 73
      Top = 43
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 3
      DataField = 'CODIGO'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object cbFrete: TdxDBCheckEdit
      Left = 174
      Top = 43
      Width = 70
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      TabOrder = 4
      Alignment = taRightJustify
      Caption = 'Fechada'
      DataField = 'FECHADA'
      DataSource = DataSource
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      StoredValues = 1
    end
    object dxDBEdit21: TdxDBEdit
      Left = 251
      Top = 43
      Width = 22
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
      Style.HotTrack = True
      TabOrder = 5
      DataField = 'LOCAL'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object EdDataNota: TdxDBDateEdit
      Left = 300
      Top = 43
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 0
      Alignment = taLeftJustify
      DataField = 'DATA'
      DataSource = DataSource
      ReadOnly = False
      DateOnError = deToday
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      StoredValues = 69
    end
    object dxDBEdit3: TdxDBEdit
      Left = 126
      Top = 67
      Width = 267
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
      TabOrder = 6
      DataField = 'NOME'
      DataSource = DataSource
    end
    object EdNatureza: TdxDBEdit
      Left = 73
      Top = 91
      Width = 54
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
      TabOrder = 7
      DataField = 'NATUREZA'
      DataSource = DataSource
    end
    object EdVendedor: TdxDBEdit
      Left = 449
      Top = 43
      Width = 54
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
      TabOrder = 8
      DataField = 'VENDEDOR'
      DataSource = DataSource
    end
    object EdTerceiro: TdxDBEdit
      Left = 449
      Top = 67
      Width = 54
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
      DataField = 'TERCEIRO'
      DataSource = DataSource
    end
    object dxDBEdit2: TdxDBEdit
      Left = 450
      Top = 91
      Width = 287
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
      TabOrder = 10
      DataField = 'OBSERVACAO'
      DataSource = DataSource
    end
    object dxDBEdit20: TdxDBEdit
      Left = 450
      Top = 115
      Width = 287
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
      TabOrder = 11
      DataField = 'HISTORICO'
      DataSource = DataSource
    end
    object Panel3: TPanel
      Left = 580
      Top = 139
      Width = 156
      Height = 71
      BevelInner = bvRaised
      BevelOuter = bvNone
      TabOrder = 12
      object Label25: TcxLabel
        Left = 11
        Top = 8
        Caption = 'Total Lan'#231'ado'
        ParentFont = False
        Transparent = True
      end
      object Label27: TcxLabel
        Left = 129
        Top = 30
        Caption = 'Total'
        ParentFont = False
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 24
        Top = 30
        Caption = 'Desc/Acr'#233's'
        ParentFont = False
        Transparent = True
      end
      object dxDBEdit6: TdxDBEdit
        Left = 78
        Top = 5
        Width = 75
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
        TabOrder = 0
        TabStop = False
        DataField = 'TOTAL'
        DataSource = DataSource
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit8: TdxDBEdit
        Left = 78
        Top = 43
        Width = 75
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
        TabOrder = 1
        TabStop = False
        DataField = 'Total_Geral'
        DataSource = DataSource
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBEdit7: TdxDBEdit
        Left = 2
        Top = 43
        Width = 76
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
        TabOrder = 2
        TabStop = False
        DataField = 'DESC_ACRES'
        DataSource = DataSource
        ReadOnly = True
        StoredValues = 64
      end
    end
    object edObservacoes: TdxDBMemo
      Left = 395
      Top = 139
      Width = 184
      Enabled = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 13
      DataField = 'DESCRICAO'
      Height = 72
    end
    object dxDBEdit13: TdxDBEdit
      Left = 300
      Top = 115
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 14
      DataField = 'ENTRADA'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit14: TdxDBEdit
      Left = 300
      Top = 139
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 15
      DataField = 'LOCAL_COBRANCA'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit12: TdxDBEdit
      Left = 73
      Top = 139
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 16
      DataField = 'TIPO_DOCTO'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit15: TdxDBEdit
      Left = 73
      Top = 163
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 17
      DataField = 'DINHEIRO'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit17: TdxDBEdit
      Left = 73
      Top = 187
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 18
      DataField = 'CARTAO'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit19: TdxDBEdit
      Left = 300
      Top = 187
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 19
      DataField = 'TICKET'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit16: TdxDBEdit
      Left = 300
      Top = 163
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 20
      DataField = 'CHEQUE'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxDBEdit1: TdxDBEdit
      Left = 73
      Top = 67
      Width = 54
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
      TabOrder = 21
      DataField = 'NATUREZA'
      DataSource = DataSource
    end
    object EdInicial: TdxDBEdit
      Left = 167
      Top = 91
      Width = 94
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.HotTrack = True
      TabOrder = 22
      OnKeyDown = dxDBEdit1KeyDown
      CharCase = ecUpperCase
      DataField = 'NUM_NF'
      DataSource = DataSource
    end
    object dxDBEdit4: TdxDBEdit
      Left = 300
      Top = 91
      Width = 94
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.HotTrack = True
      TabOrder = 23
      OnKeyDown = dxDBEdit1KeyDown
      CharCase = ecUpperCase
      DataField = 'NUM_CUPOM'
      DataSource = DataSource
    end
    object dxDBDateEdit1: TdxDBDateEdit
      Left = 548
      Top = 43
      Width = 94
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
      Style.HotTrack = True
      TabOrder = 1
      Alignment = taLeftJustify
      DataField = 'DATA_CAIXA'
      DataSource = DataSource
      ReadOnly = False
      DateOnError = deToday
      DateValidation = True
      SaveTime = False
      UseEditMask = True
      StoredValues = 69
    end
    object dxDBCheckEdit1: TdxDBCheckEdit
      Left = 73
      Top = 117
      Width = 96
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      TabOrder = 24
      Alignment = taRightJustify
      Caption = 'Cancelada'
      DataField = 'CANCELADA'
      DataSource = DataSource
      ValueChecked = 'S'
      ValueUnchecked = 'N'
      StoredValues = 1
    end
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
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    PopupMenuLinks = <>
    Style = bmsFlat
    UseSystemFont = True
    Left = 541
    Top = 136
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
  end
  object Actions: TActionList
    Left = 441
    Top = 160
    object ActAlterar: TAction
      Tag = 1
      Caption = 'ActAlterar'
      ShortCut = 117
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
  end
  object DataSource: TDataSource
    OnStateChange = DataSourceStateChange
    Left = 501
    Top = 168
  end
end
