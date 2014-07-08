object FrmConfigurarPerfil: TFrmConfigurarPerfil
  Left = 381
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Configurar Perfil'
  ClientHeight = 387
  ClientWidth = 469
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
    Width = 469
    Height = 387
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
      Top = 353
      Width = 465
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
      Caption = 'Configurar Perfil'
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 355
      Width = 465
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 465
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 465
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object dxDBEdit12: TdxDBEdit
      Left = 192
      Top = 7
      Width = 193
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
      TabOrder = 1
      OnEnter = cmbBancoEnter
      OnExit = cmbBancoExit
      OnKeyDown = dxDBEdit1KeyDown
      DataField = 'COMPUTADOR'
      DataSource = DataSource
      ReadOnly = False
      StoredValues = 64
    end
    object dxPageControl1: TcxPageControl
      Left = 2
      Top = 50
      Width = 465
      Height = 303
      ActivePage = tbsOutros
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      ClientRectBottom = 298
      ClientRectLeft = 2
      ClientRectRight = 460
      ClientRectTop = 24
      object tbsCondicional: TcxTabSheet
        Caption = 'Condicional'
        object Label3: TcxLabel
          Left = 42
          Top = 22
          Caption = 'Folha a Vista'
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 26
          Top = 77
          Caption = 'Tipo Impressora'
          ParentFont = False
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 26
          Top = 104
          Caption = 'Porta Imp. Vista'
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 22
          Top = 132
          Caption = 'Porta Imp. Prazo'
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 58
          Top = 160
          Caption = 'Vias Vista'
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 54
          Top = 189
          Caption = 'Vias Prazo'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 38
          Top = 49
          Caption = 'Folha a Prazo'
          ParentFont = False
          Transparent = True
        end
        object Label22: TcxLabel
          Left = 10
          Top = 216
          Caption = 'Negrito Empresa ( 36 ) '
          ParentFont = False
          Transparent = True
        end
        object dxDBEdit2: TdxDBEdit
          Left = 110
          Top = 17
          Width = 42
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
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FOLHA_VISTA_CONDICIONAL'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit6: TdxDBEdit
          Left = 110
          Top = 72
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 2
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_IMP_CONDICIONAL'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit10: TdxDBEdit
          Left = 110
          Top = 99
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 3
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTA_IMP_CONDICIONAL_VISTA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit14: TdxDBEdit
          Left = 110
          Top = 127
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 4
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTA_IMP_CONDICIONAL_PRAZO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit18: TdxDBEdit
          Left = 110
          Top = 155
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 5
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VIAS_CONDICIONAL_VISTA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit20: TdxDBEdit
          Left = 110
          Top = 184
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 6
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VIAS_CONDICIONAL_PRAZO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit3: TdxDBEdit
          Left = 110
          Top = 44
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 1
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FOLHA_PRAZO_CONDICIONAL'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit21: TdxDBEdit
          Left = 128
          Top = 211
          Width = 23
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 7
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'IMP_NEGRITO_EMPRESA_36'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
      end
      object tbsPedido: TcxTabSheet
        Caption = 'Pedido'
        object Label5: TcxLabel
          Left = 42
          Top = 22
          Caption = 'Folha a Vista'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 38
          Top = 49
          Caption = 'Folha a Prazo'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 26
          Top = 77
          Caption = 'Tipo Impressora'
          ParentFont = False
          Transparent = True
        end
        object Label10: TcxLabel
          Left = 26
          Top = 104
          Caption = 'Porta Imp. Vista'
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 22
          Top = 132
          Caption = 'Porta Imp. Prazo'
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 58
          Top = 160
          Caption = 'Vias Vista'
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 54
          Top = 189
          Caption = 'Vias Prazo'
          ParentFont = False
          Transparent = True
        end
        object Label37: TcxLabel
          Left = 171
          Top = 158
          Caption = 'Folha Troca'
          ParentFont = False
          Transparent = True
        end
        object dxDBEdit1: TdxDBEdit
          Left = 110
          Top = 17
          Width = 42
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
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FOLHA_VISTA_PEDIDO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit4: TdxDBEdit
          Left = 110
          Top = 44
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 1
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FOLHA_PRAZO_PEDIDO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit5: TdxDBEdit
          Left = 110
          Top = 72
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 2
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_IMP_PEDIDO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit7: TdxDBEdit
          Left = 110
          Top = 99
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 3
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTA_IMP_PEDIDO_VISTA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit8: TdxDBEdit
          Left = 110
          Top = 127
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 4
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTA_IMP_PEDIDO_PRAZO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit9: TdxDBEdit
          Left = 110
          Top = 155
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 5
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VIAS_PEDIDO_VISTA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit11: TdxDBEdit
          Left = 110
          Top = 184
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 6
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VIAS_PEDIDO_PRAZO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object cbEtiqueta: TdxDBCheckEdit
          Left = 23
          Top = 218
          Width = 131
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 7
          Alignment = taRightJustify
          Caption = 'Imprime Promissoria ?'
          DataField = 'IMPRIME_PROMISSORIA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit24: TdxDBEdit
          Left = 234
          Top = 153
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 8
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FOLHA_VISTA_TROCA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
      end
      object tbsIF: TcxTabSheet
        Caption = 'Imp. Fiscal'
        object Label32: TcxLabel
          Left = 33
          Top = 23
          Caption = 'T01'
          ParentFont = False
          Transparent = True
        end
        object Label33: TcxLabel
          Left = 33
          Top = 47
          Caption = 'T02'
          ParentFont = False
          Transparent = True
        end
        object Label34: TcxLabel
          Left = 33
          Top = 71
          Caption = 'T03'
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 33
          Top = 96
          Caption = 'T04'
          ParentFont = False
          Transparent = True
        end
        object Label36: TcxLabel
          Left = 33
          Top = 120
          Caption = 'T05'
          ParentFont = False
          Transparent = True
        end
        object Label23: TcxLabel
          Left = 39
          Top = 170
          Caption = 'FF'
          ParentFont = False
          Transparent = True
        end
        object Label24: TcxLabel
          Left = 43
          Top = 194
          Caption = 'II'
          ParentFont = False
          Transparent = True
        end
        object Label27: TcxLabel
          Left = 33
          Top = 145
          Caption = 'T06'
          ParentFont = False
          Transparent = True
        end
        object CmbT01: TdxDBPickEdit
          Left = 58
          Top = 19
          Width = 70
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_T01'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object dxDBPickEdit1: TdxDBPickEdit
          Left = 58
          Top = 43
          Width = 70
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_T02'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object dxDBPickEdit2: TdxDBPickEdit
          Left = 58
          Top = 67
          Width = 70
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
          TabOrder = 2
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_T03'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object dxDBPickEdit3: TdxDBPickEdit
          Left = 58
          Top = 92
          Width = 70
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
          TabOrder = 3
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_T04'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object dxDBPickEdit4: TdxDBPickEdit
          Left = 58
          Top = 116
          Width = 70
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
          TabOrder = 4
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_T05'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object dxDBPickEdit5: TdxDBPickEdit
          Left = 58
          Top = 166
          Width = 70
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
          TabOrder = 6
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_FF'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object dxDBPickEdit6: TdxDBPickEdit
          Left = 58
          Top = 190
          Width = 70
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
          TabOrder = 7
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_II'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object dxDBPickEdit7: TdxDBPickEdit
          Left = 58
          Top = 141
          Width = 70
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
          TabOrder = 5
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_T06'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'M1700'
            'M1200'
            'M0700'
            'M0500'
            'M0300')
        end
        object Button1: TcxButton
          Left = 184
          Top = 16
          Width = 75
          Height = 25
          Caption = 'Ler Al'#237'quotas'
          TabOrder = 8
          OnClick = Button1Click
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 8
          Top = 217
          Width = 122
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          Alignment = taRightJustify
          Caption = 'Emite Contra Vale?'
          DataField = 'PDV_CONTRA_VALE'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit5: TdxDBCheckEdit
          Left = 144
          Top = 216
          Width = 80
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 10
          Alignment = taRightJustify
          Caption = 'Autenticar?'
          DataField = 'AUTENTICAR'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object tbsLeitor: TcxTabSheet
        Caption = 'Leitor Cheque'
        object Label28: TcxLabel
          Left = 26
          Top = 38
          Caption = 'Porta Leitor de Cheque'
          ParentFont = False
          Transparent = True
        end
        object Panel4: TPanel
          Left = 234
          Top = 31
          Width = 213
          Height = 139
          BevelOuter = bvNone
          TabOrder = 0
          object Label52: TcxLabel
            Left = 22
            Top = 7
            Caption = 'Bits por segundo'
            ParentFont = False
            Transparent = True
          end
          object Label53: TcxLabel
            Left = 38
            Top = 32
            Caption = 'Bits de dados'
            ParentFont = False
            Transparent = True
          end
          object Label54: TcxLabel
            Left = 60
            Top = 57
            Caption = 'Paridade'
            ParentFont = False
            Transparent = True
          end
          object Label55: TcxLabel
            Left = 33
            Top = 82
            Caption = 'Bits de parada'
            ParentFont = False
            Transparent = True
          end
          object Label56: TcxLabel
            Left = 19
            Top = 107
            Caption = 'Controle de fluxo'
            ParentFont = False
            Transparent = True
          end
          object dxDBPickEdit26: TdxDBPickEdit
            Left = 110
            Top = 5
            Width = 80
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LEITOR_BITSPORSEGUNDO'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '2400'
              '4800'
              '9600'
              '14400'
              '19200'
              '38400'
              '57600')
          end
          object dxDBPickEdit27: TdxDBPickEdit
            Left = 110
            Top = 30
            Width = 80
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LEITOR_BITSDADOS'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '4'
              '5'
              '6'
              '7'
              '8')
          end
          object dxDBPickEdit28: TdxDBPickEdit
            Left = 110
            Top = 55
            Width = 80
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
            TabOrder = 2
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LEITOR_PARIDADE'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              'Even'
              'Odd'
              'Nenhum'
              'Mark'
              'Space')
          end
          object dxDBPickEdit29: TdxDBPickEdit
            Left = 110
            Top = 80
            Width = 80
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
            TabOrder = 3
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LEITOR_BITSPARADA'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '1'
              '1,5'
              '2')
          end
          object dxDBPickEdit30: TdxDBPickEdit
            Left = 110
            Top = 105
            Width = 80
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
            TabOrder = 4
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LEITOR_FLUXO'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              'Xon / Xoff'
              'Hardware'
              'Nenhum')
          end
        end
        object dxDBPickEdit31: TdxDBPickEdit
          Left = 145
          Top = 36
          Width = 80
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTALEITORCHEQUE'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4'
            'TECLADO')
        end
      end
      object tbsBalanca: TcxTabSheet
        Caption = 'Balan'#231'a'
        object Label40: TcxLabel
          Left = 71
          Top = 38
          Caption = 'Porta Balan'#231'a'
          ParentFont = False
          Transparent = True
        end
        object dxDBPickEdit20: TdxDBPickEdit
          Left = 145
          Top = 36
          Width = 80
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTABALANCA'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4')
        end
        object Panel3: TPanel
          Left = 234
          Top = 31
          Width = 213
          Height = 139
          BevelOuter = bvNone
          TabOrder = 1
          object Label47: TcxLabel
            Left = 22
            Top = 7
            Caption = 'Bits por segundo'
            ParentFont = False
            Transparent = True
          end
          object Label48: TcxLabel
            Left = 38
            Top = 32
            Caption = 'Bits de dados'
            ParentFont = False
            Transparent = True
          end
          object Label49: TcxLabel
            Left = 60
            Top = 57
            Caption = 'Paridade'
            ParentFont = False
            Transparent = True
          end
          object Label50: TcxLabel
            Left = 33
            Top = 82
            Caption = 'Bits de parada'
            ParentFont = False
            Transparent = True
          end
          object Label51: TcxLabel
            Left = 19
            Top = 107
            Caption = 'Controle de fluxo'
            ParentFont = False
            Transparent = True
          end
          object dxDBPickEdit21: TdxDBPickEdit
            Left = 110
            Top = 5
            Width = 80
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BAL_BITSPORSEGUNDO'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '2400'
              '4800'
              '9600'
              '14400'
              '19200'
              '38400'
              '56000')
          end
          object dxDBPickEdit22: TdxDBPickEdit
            Left = 110
            Top = 30
            Width = 80
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BAL_BITSDADOS'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '4'
              '5'
              '6'
              '7'
              '8')
          end
          object dxDBPickEdit23: TdxDBPickEdit
            Left = 110
            Top = 55
            Width = 80
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
            TabOrder = 2
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BAL_PARIDADE'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              'Even'
              'Odd'
              'Nenhum'
              'Mark'
              'Space')
          end
          object dxDBPickEdit24: TdxDBPickEdit
            Left = 110
            Top = 80
            Width = 80
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
            TabOrder = 3
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BAL_BITSPARADA'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '1'
              '1,5'
              '2')
          end
          object dxDBPickEdit25: TdxDBPickEdit
            Left = 110
            Top = 105
            Width = 80
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
            TabOrder = 4
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'BAL_FLUXO'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              'XON_XOFF'
              'RTS_CTS'
              'DSR_DTR'
              'Nenhum')
          end
        end
      end
      object tbsOutros: TcxTabSheet
        Caption = 'Outros'
        object Label15: TcxLabel
          Left = 16
          Top = 33
          Caption = 'For'#231'a Impress'#227'o nos Prod do Ped'
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 123
          Top = 59
          Caption = 'Vias Recibo'
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 116
          Top = 86
          Caption = 'Porta Recibo'
          ParentFont = False
          Transparent = True
        end
        object Label19: TcxLabel
          Left = 94
          Top = 165
          Caption = 'Folha Pendencias'
          ParentFont = False
          Transparent = True
        end
        object Label21: TcxLabel
          Left = 94
          Top = 191
          Caption = 'Porta Pend'#234'ncias'
          ParentFont = False
          Transparent = True
        end
        object Label25: TcxLabel
          Left = 79
          Top = 112
          Caption = 'Tipo Impressora Pdv'
          ParentFont = False
          Transparent = True
        end
        object Label26: TcxLabel
          Left = 105
          Top = 139
          Caption = 'Porta Imp. Pdv'
          ParentFont = False
          Transparent = True
        end
        object Label41: TcxLabel
          Left = 226
          Top = 33
          Caption = 'Folha Cadastros'
          ParentFont = False
          Transparent = True
        end
        object Label38: TcxLabel
          Left = 230
          Top = 59
          Caption = 'Agente'
          ParentFont = False
          Transparent = True
        end
        object Label39: TcxLabel
          Left = 226
          Top = 165
          Caption = 'Tam. Col Daruma'
          ParentFont = False
          Transparent = True
        end
        object dxDBEdit13: TdxDBEdit
          Left = 184
          Top = 28
          Width = 42
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
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'IMP_FORCADO_PROD_PED'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit15: TdxDBEdit
          Left = 184
          Top = 54
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 1
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VIAS_RECIBO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit16: TdxDBEdit
          Left = 184
          Top = 81
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 3
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTA_RECIBO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit17: TdxDBEdit
          Left = 184
          Top = 160
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 6
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'FOLHA_PENDENCIAS'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit19: TdxDBEdit
          Left = 184
          Top = 186
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 7
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTA_PENDENCIAS'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit22: TdxDBEdit
          Left = 184
          Top = 107
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 4
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_IMP_PDV'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit23: TdxDBEdit
          Left = 184
          Top = 134
          Width = 166
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 5
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTA_PDV'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 60
          Top = 210
          Width = 196
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 8
          Alignment = taLeftJustify
          Caption = 'Emite Comprovante do Rest. Pdv ?'
          DataField = 'EMITE_COMPROVANTE_PDV'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit28: TdxDBEdit
          Left = 311
          Top = 28
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 10
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'TIPO_FOLHA_CADASTROS'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 260
          Top = 209
          Width = 196
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 9
          Alignment = taLeftJustify
          Caption = 'Emite Comprovante Nf Pdv ( Prazo )'
          DataField = 'PDV_EMITE_COMPROVANTE_NF'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 260
          Top = 230
          Width = 158
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 11
          Alignment = taLeftJustify
          Caption = 'Confirma Imp. Pdv ( Epson )'
          DataField = 'PDV_CONFIRMA_IMPRESSAO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit25: TdxDBEdit
          Left = 266
          Top = 54
          Width = 84
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 2
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_AGENTE'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit26: TdxDBEdit
          Left = 308
          Top = 160
          Width = 42
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 12
          OnEnter = cmbBancoEnter
          OnExit = cmbBancoExit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PDV_LINHA_RECIBO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBCheckEdit6: TdxDBCheckEdit
          Left = 260
          Top = 251
          Width = 158
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          Alignment = taLeftJustify
          Caption = 'Confirma Imp. Pdv A Vista?'
          DataField = 'PDV_CONFIRMA_IMPRESSAO_VISTA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueGrayed = 'N'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit7: TdxDBCheckEdit
          Left = 60
          Top = 232
          Width = 196
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
          Alignment = taLeftJustify
          Caption = 'Envia Email Autom'#225'tico de Estoque'
          DataField = 'EST_MIN_ENVIA_AUTOMATICO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit8: TdxDBCheckEdit
          Left = 60
          Top = 251
          Width = 196
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 25
          Alignment = taLeftJustify
          Caption = 'Exibe Mapas (Geolocaliza'#231#227'o)'
          DataField = 'EXIBE_MAPA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object dxTabSheet1: TcxTabSheet
        Caption = 'Leitor Barras'
        object Label64: TcxLabel
          Left = 71
          Top = 38
          Caption = 'Porta Balan'#231'a'
          ParentFont = False
          Transparent = True
        end
        object Panel6: TPanel
          Left = 234
          Top = 31
          Width = 213
          Height = 139
          BevelOuter = bvNone
          TabOrder = 2
          object Label59: TcxLabel
            Left = 22
            Top = 7
            Caption = 'Bits por segundo'
            ParentFont = False
            Transparent = True
          end
          object Label60: TcxLabel
            Left = 38
            Top = 32
            Caption = 'Bits de dados'
            ParentFont = False
            Transparent = True
          end
          object Label61: TcxLabel
            Left = 60
            Top = 57
            Caption = 'Paridade'
            ParentFont = False
            Transparent = True
          end
          object Label62: TcxLabel
            Left = 33
            Top = 82
            Caption = 'Bits de parada'
            ParentFont = False
            Transparent = True
          end
          object Label63: TcxLabel
            Left = 19
            Top = 107
            Caption = 'Controle de fluxo'
            ParentFont = False
            Transparent = True
          end
          object dxDBPickEdit32: TdxDBPickEdit
            Left = 110
            Top = 5
            Width = 80
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LET_BITSPORSEGUNDO'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '2400'
              '4800'
              '9600'
              '14400'
              '19200'
              '38400'
              '56000')
          end
          object dxDBPickEdit33: TdxDBPickEdit
            Left = 110
            Top = 30
            Width = 80
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
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LET_BITSDADOS'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '4'
              '5'
              '6'
              '7'
              '8')
          end
          object dxDBPickEdit34: TdxDBPickEdit
            Left = 110
            Top = 55
            Width = 80
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
            TabOrder = 2
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LET_PARIDADE'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              'Even'
              'Odd'
              'Nenhum'
              'Mark'
              'Space')
          end
          object dxDBPickEdit35: TdxDBPickEdit
            Left = 110
            Top = 80
            Width = 80
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
            TabOrder = 3
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LET_BITSPARADA'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              '1'
              '1,5'
              '2')
          end
          object dxDBPickEdit36: TdxDBPickEdit
            Left = 110
            Top = 105
            Width = 80
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
            TabOrder = 4
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'LET_FLUXO'
            DataSource = DataSource
            PopupBorder = pbFlat
            Items.Strings = (
              'XON_XOFF'
              'RTS_CTS'
              'DSR_DTR'
              'Nenhum')
          end
        end
        object dxDBPickEdit37: TdxDBPickEdit
          Left = 145
          Top = 36
          Width = 80
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
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'PORTALEITOR'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'COM1'
            'COM2'
            'COM3'
            'COM4')
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
    Left = 389
    Top = 111
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
    Left = 397
    Top = 65528
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
    Left = 385
    Top = 176
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
    end
  end
  object DataSource: TDataSource
    DataSet = DmApp.Perfil_Computador
    OnStateChange = DataSourceStateChange
    Left = 429
    Top = 24
  end
end
