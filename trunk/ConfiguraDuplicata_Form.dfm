object FrmConfigurarDuplicatas: TFrmConfigurarDuplicatas
  Left = 190
  Top = 104
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Configurar Duplicatas '
  ClientHeight = 438
  ClientWidth = 578
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
    Width = 578
    Height = 438
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
      Top = 404
      Width = 574
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
    object LblTitulo: TLabel
      Left = 6
      Top = 8
      Width = 197
      Height = 23
      Caption = 'Configurar Duplicata'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblRegistros: TLabel
      Left = 517
      Top = 14
      Width = 24
      Height = 16
      Alignment = taRightJustify
      Caption = '1/1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 406
      Width = 574
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 574
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 574
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
  end
  object PageControl1: TPageControl
    Left = 0
    Top = 37
    Width = 578
    Height = 365
    ActivePage = tbsGrafico
    Style = tsFlatButtons
    TabOrder = 5
    object tbsGrafico: TTabSheet
      Caption = 'Modo Gr'#225'fico'
      object GroupBox1: TGroupBox
        Left = 4
        Top = 12
        Width = 245
        Height = 97
        Caption = 'Configura'#231#245'es - Duplicatas'
        TabOrder = 0
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 8
          Top = 20
          Width = 225
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.ButtonStyle = btsSimple
          TabOrder = 0
          Alignment = taRightJustify
          Caption = 'Definir impress'#227'o gr'#225'fica como padr'#227'o'
          DataField = 'DPL_GRAFICA'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object btnConfigurar: TBitBtn
          Left = 8
          Top = 52
          Width = 109
          Height = 25
          Caption = '&Configurar'
          TabOrder = 1
          OnClick = btnConfigurarClick
          Kind = bkRetry
        end
      end
    end
    object tbsTexto: TTabSheet
      Caption = 'Modo Texto'
      ImageIndex = 1
      object Panel2: TPanel
        Left = 0
        Top = 0
        Width = 570
        Height = 334
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
        object Bevel3: TBevel
          Left = 2
          Top = 330
          Width = 566
          Height = 2
          Align = alBottom
          Shape = bsTopLine
        end
        object Label15: TLabel
          Left = 9
          Top = 28
          Width = 74
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label22: TLabel
          Left = 148
          Top = 28
          Width = 71
          Height = 13
          Alignment = taRightJustify
          Caption = 'Vencimento Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label24: TLabel
          Left = 305
          Top = 28
          Width = 42
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label25: TLabel
          Left = 455
          Top = 28
          Width = 39
          Height = 13
          Alignment = taRightJustify
          Caption = 'Data Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label26: TLabel
          Left = 149
          Top = 57
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Documento Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label27: TLabel
          Left = 10
          Top = 57
          Width = 73
          Height = 13
          Alignment = taRightJustify
          Caption = 'Documento Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label28: TLabel
          Left = 427
          Top = 86
          Width = 67
          Height = 13
          Alignment = taRightJustify
          Caption = 'Instru'#231#245'es Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label29: TLabel
          Left = 277
          Top = 86
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Instru'#231#245'es Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label30: TLabel
          Left = 158
          Top = 86
          Width = 59
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Fat Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label31: TLabel
          Left = 21
          Top = 86
          Width = 62
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Fat Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label32: TLabel
          Left = 29
          Top = 114
          Width = 54
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sacado Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label33: TLabel
          Left = 168
          Top = 114
          Width = 51
          Height = 13
          Alignment = taRightJustify
          Caption = 'Sacado Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label34: TLabel
          Left = 424
          Top = 147
          Width = 70
          Height = 13
          Alignment = taRightJustify
          Caption = 'Tam da P'#225'gina'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label35: TLabel
          Left = 330
          Top = 148
          Width = 17
          Height = 13
          Alignment = taRightJustify
          Caption = 'Lpp'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label36: TLabel
          Left = 289
          Top = 57
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Extenso Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label37: TLabel
          Left = 439
          Top = 57
          Width = 55
          Height = 13
          Alignment = taRightJustify
          Caption = 'Extenso Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label38: TLabel
          Left = 298
          Top = 115
          Width = 49
          Height = 13
          Alignment = taRightJustify
          Caption = 'Venda Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label39: TLabel
          Left = 448
          Top = 115
          Width = 46
          Height = 13
          Alignment = taRightJustify
          Caption = 'Venda Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label40: TLabel
          Left = 3
          Top = 149
          Width = 83
          Height = 13
          Alignment = taRightJustify
          Caption = 'Porta Impressora'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label41: TLabel
          Left = 22
          Top = 179
          Width = 61
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Dpl Dst'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object Label42: TLabel
          Left = 159
          Top = 179
          Width = 58
          Height = 13
          Alignment = taRightJustify
          Caption = 'Valor Dpl Alt'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
        end
        object dxDBEdit20: TdxDBEdit
          Left = 90
          Top = 23
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VENCIMENTO_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit21: TdxDBEdit
          Left = 222
          Top = 23
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'VENCIMENTO_ALT'
          DataSource = DataSource
        end
        object dxDBEdit23: TdxDBEdit
          Left = 354
          Top = 23
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
          TabOrder = 2
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DATA_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit24: TdxDBEdit
          Left = 497
          Top = 23
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
          TabOrder = 3
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'DATA_ALT'
          DataSource = DataSource
        end
        object dxDBEdit25: TdxDBEdit
          Left = 222
          Top = 52
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'DOCUMENTO_ALT'
          DataSource = DataSource
        end
        object dxDBEdit26: TdxDBEdit
          Left = 90
          Top = 52
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
          TabOrder = 4
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'DOCUMENTO_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit27: TdxDBEdit
          Left = 497
          Top = 81
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
          TabOrder = 11
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'INSTRUCOES_ALT'
          DataSource = DataSource
        end
        object dxDBEdit28: TdxDBEdit
          Left = 354
          Top = 81
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'INSTRUCOES_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit29: TdxDBEdit
          Left = 222
          Top = 81
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
          TabOrder = 9
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'VALOR_ALT'
          DataSource = DataSource
        end
        object dxDBEdit30: TdxDBEdit
          Left = 90
          Top = 81
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VALOR_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit31: TdxDBEdit
          Left = 90
          Top = 109
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'SACADO_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit32: TdxDBEdit
          Left = 222
          Top = 109
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
          TabOrder = 13
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'SACADO_ALT'
          DataSource = DataSource
        end
        object dxDBEdit33: TdxDBEdit
          Left = 497
          Top = 142
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
          TabOrder = 17
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'TAMANHOPAGINA'
          DataSource = DataSource
        end
        object dxDBPickEdit1: TdxDBPickEdit
          Left = 354
          Top = 142
          Width = 62
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
          TabOrder = 16
          OnEnter = CmbLppEnter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'LPP'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'Seis'
            'Oito')
        end
        object dxDBEdit34: TdxDBEdit
          Left = 354
          Top = 52
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
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'EXTENSO_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit35: TdxDBEdit
          Left = 497
          Top = 52
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
          TabOrder = 7
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'EXTENSO_ALT'
          DataSource = DataSource
        end
        object dxDBEdit36: TdxDBEdit
          Left = 354
          Top = 110
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
          TabOrder = 14
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VENDA_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit37: TdxDBEdit
          Left = 497
          Top = 110
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
          TabOrder = 15
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'VENDA_ALT'
          DataSource = DataSource
        end
        object dxDBEdit38: TdxDBEdit
          Left = 90
          Top = 144
          Width = 175
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.HotTrack = True
          TabOrder = 20
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'PORTA_IMPRESSORA'
          DataSource = DataSource
        end
        object dxDBEdit39: TdxDBEdit
          Left = 90
          Top = 174
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
          TabOrder = 18
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          DataField = 'VALOR_DPL_DST'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit40: TdxDBEdit
          Left = 222
          Top = 174
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
          TabOrder = 19
          OnEnter = dxDBEdit2Enter
          OnExit = dxDBEdit2Exit
          OnKeyDown = dxDBEdit1KeyDown
          CharCase = ecUpperCase
          DataField = 'VALOR_DPL_ALT'
          DataSource = DataSource
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
    Left = 263
    Top = 24
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Bars = <
      item
        AllowClose = False
        AllowCustomizing = False
        AllowQuickCustomizing = False
        AllowReset = False
        Caption = 'Navega'#231#227'o'
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
            Item = dxBarBDBNavFirst
            Visible = True
          end
          item
            Item = dxBarBDBNavPrev
            Visible = True
          end
          item
            Item = dxBarBDBNavNext
            Visible = True
          end
          item
            Item = dxBarBDBNavLast
            Visible = True
          end
          item
            Item = btnIncluir
            Visible = True
          end
          item
            Item = btnExcluir
            Visible = True
          end
          item
            Item = btnLocalizar
            Visible = True
          end
          item
            Item = BtnListagem
            Visible = True
          end
          item
            Item = BtnSalvar
            Visible = True
          end
          item
            Item = BtnCancelar
            Visible = True
          end
          item
            Item = BtnFechar
            Visible = True
          end>
        Name = 'Navega'#231#227'o'
        OneOnRow = True
        Row = 0
        ShowMark = False
        SizeGrip = False
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
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
    Left = 320
    Top = 24
    DockControlHeights = (
      0
      0
      0
      0)
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
  end
  object Actions: TActionList
    Left = 292
    Top = 24
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
      ShortCut = 117
      OnExecute = ActAlterarExecute
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
      OnExecute = ActListagemExecute
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
    DataSet = dmCadastros2.Duplicata
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    Left = 349
    Top = 24
  end
  object IMPRESSORA: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Visuaizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 100
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
    CaptionSetup = ' Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Oito
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    Left = 234
    Top = 24
  end
  object Designer: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar S'#233'rie NF'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptDuplicata
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 122
    Top = 216
  end
  object ppLayoutDuplicata: TppDBPipeline
    DataSource = dmCadastros2.dsLayoutDuplicata
    UserName = 'LayoutDPL'
    Left = 87
    Top = 216
    object ppLayoutDuplicatappField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppLayoutDuplicatappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_ALT'
      FieldName = 'DATA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppLayoutDuplicatappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_DST'
      FieldName = 'DATA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppLayoutDuplicatappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCUMENTO_ALT'
      FieldName = 'DOCUMENTO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppLayoutDuplicatappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCUMENTO_DST'
      FieldName = 'DOCUMENTO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppLayoutDuplicatappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXTENSO_ALT'
      FieldName = 'EXTENSO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppLayoutDuplicatappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXTENSO_DST'
      FieldName = 'EXTENSO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppLayoutDuplicatappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'INSTRUCOES_ALT'
      FieldName = 'INSTRUCOES_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppLayoutDuplicatappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'INSTRUCOES_DST'
      FieldName = 'INSTRUCOES_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppLayoutDuplicatappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LPP'
      FieldName = 'LPP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppLayoutDuplicatappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO_ALT'
      FieldName = 'SACADO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppLayoutDuplicatappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO_DST'
      FieldName = 'SACADO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppLayoutDuplicatappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAMANHOPAGINA'
      FieldName = 'TAMANHOPAGINA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppLayoutDuplicatappField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_ALT'
      FieldName = 'VALOR_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppLayoutDuplicatappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_DST'
      FieldName = 'VALOR_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppLayoutDuplicatappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO_ALT'
      FieldName = 'VENCIMENTO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppLayoutDuplicatappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO_DST'
      FieldName = 'VENCIMENTO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppLayoutDuplicatappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA_DST'
      FieldName = 'VENDA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppLayoutDuplicatappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA_ALT'
      FieldName = 'VENDA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppLayoutDuplicatappField20: TppField
      FieldAlias = 'PORTA_IMPRESSORA'
      FieldName = 'PORTA_IMPRESSORA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppLayoutDuplicatappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_DPL_DST'
      FieldName = 'VALOR_DPL_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppLayoutDuplicatappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_DPL_ALT'
      FieldName = 'VALOR_DPL_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppLayoutDuplicatappField23: TppField
      FieldAlias = 'DPL_GRAFICA'
      FieldName = 'DPL_GRAFICA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 22
    end
    object ppLayoutDuplicatappField24: TppField
      FieldAlias = 'CONFIG_DPL'
      FieldName = 'CONFIG_DPL'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 23
      Searchable = False
      Sortable = False
    end
  end
  object ppDuplicata: TppDBPipeline
    DataSource = dmCadastros2.dsDuplicata
    UserName = 'Duplicata'
    Left = 59
    Top = 216
    object ppDuplicatappField1: TppField
      FieldAlias = 'VALOR_EXTENSO'
      FieldName = 'VALOR_EXTENSO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppDuplicatappField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL'
      FieldName = 'VD_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 1
    end
    object ppDuplicatappField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CODIGO'
      FieldName = 'VD_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppDuplicatappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_NUM_NF'
      FieldName = 'VD_NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppDuplicatappField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DPL_VALOR'
      FieldName = 'DPL_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object ppDuplicatappField6: TppField
      FieldAlias = 'DPL_VENCTO'
      FieldName = 'DPL_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppDuplicatappField7: TppField
      FieldAlias = 'DPL_PARCELA'
      FieldName = 'DPL_PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 6
    end
    object ppDuplicatappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'SAC_CODIGO'
      FieldName = 'SAC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppDuplicatappField9: TppField
      FieldAlias = 'SAC_NOME'
      FieldName = 'SAC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppDuplicatappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'DPL_NUMERO'
      FieldName = 'DPL_NUMERO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppDuplicatappField11: TppField
      FieldAlias = 'SAC_RG_IE'
      FieldName = 'SAC_RG_IE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 10
    end
    object ppDuplicatappField12: TppField
      FieldAlias = 'SAC_ENDERECO'
      FieldName = 'SAC_ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppDuplicatappField13: TppField
      FieldAlias = 'SAC_CEP'
      FieldName = 'SAC_CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 12
    end
    object ppDuplicatappField14: TppField
      FieldAlias = 'SAC_CIDADE'
      FieldName = 'SAC_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppDuplicatappField15: TppField
      FieldAlias = 'SAC_BAIRRO'
      FieldName = 'SAC_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppDuplicatappField16: TppField
      FieldAlias = 'SAC_UF'
      FieldName = 'SAC_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 15
    end
    object ppDuplicatappField17: TppField
      FieldAlias = 'SAC_CPF_CGC'
      FieldName = 'SAC_CPF_CGC'
      FieldLength = 79
      DisplayWidth = 79
      Position = 16
    end
    object ppDuplicatappField18: TppField
      FieldAlias = 'SAC_NUMERO'
      FieldName = 'SAC_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 17
    end
    object ppDuplicatappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_QTDE'
      FieldName = 'PRD_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppDuplicatappField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_UNITARIO'
      FieldName = 'PRD_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppDuplicatappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_TOTAL_UNITARIO'
      FieldName = 'PRD_TOTAL_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppDuplicatappField22: TppField
      FieldAlias = 'PRD_UNIDADE'
      FieldName = 'PRD_UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 21
    end
    object ppDuplicatappField23: TppField
      FieldAlias = 'PRD_NOME'
      FieldName = 'PRD_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppDuplicatappField24: TppField
      FieldAlias = 'PRD_CODIGO'
      FieldName = 'PRD_CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 23
    end
    object ppDuplicatappField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_DESCONTOS'
      FieldName = 'VD_DESCONTOS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppDuplicatappField26: TppField
      FieldAlias = 'PROP_BAIRRO'
      FieldName = 'PROP_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object ppDuplicatappField27: TppField
      FieldAlias = 'PROP_IE'
      FieldName = 'PROP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 26
    end
    object ppDuplicatappField28: TppField
      FieldAlias = 'PROP_NOME_ENDERECO'
      FieldName = 'PROP_NOME_ENDERECO'
      FieldLength = 120
      DisplayWidth = 120
      Position = 27
    end
    object ppDuplicatappField29: TppField
      FieldAlias = 'PROP_CEP'
      FieldName = 'PROP_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 28
    end
    object ppDuplicatappField30: TppField
      FieldAlias = 'PROP_CIDADE'
      FieldName = 'PROP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppDuplicatappField31: TppField
      FieldAlias = 'PROP_UF'
      FieldName = 'PROP_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 30
    end
    object ppDuplicatappField32: TppField
      FieldAlias = 'PROP_NOME'
      FieldName = 'PROP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 31
    end
    object ppDuplicatappField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDD_CODIGO'
      FieldName = 'VDD_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppDuplicatappField34: TppField
      FieldAlias = 'VDD_NOME'
      FieldName = 'VDD_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 33
    end
    object ppDuplicatappField35: TppField
      FieldAlias = 'VDDI_NOME'
      FieldName = 'VDDI_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object ppDuplicatappField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDDI_CODIGO'
      FieldName = 'VDDI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppDuplicatappField37: TppField
      FieldAlias = 'SAC_FONE'
      FieldName = 'SAC_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 36
    end
    object ppDuplicatappField38: TppField
      FieldAlias = 'DPL_EMISSAO'
      FieldName = 'DPL_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 37
    end
  end
  object rptDuplicata: TppReport
    AutoStop = False
    DataPipeline = ppDuplicata
    PrinterSetup.BinName = 'Cont. Feed - With Break'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Tabloid'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 0
    PrinterSetup.mmPaperHeight = 154000
    PrinterSetup.mmPaperWidth = 212000
    PrinterSetup.PaperSize = 119
    Template.DatabaseSettings.DataPipeline = ppLayoutDuplicata
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_DPL'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\Duplicata2.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 31
    Top = 216
    Version = '9.01'
    mmColumnWidth = 212000
    DataPipelineName = 'ppDuplicata'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 123031
      mmPrintPosition = 0
      object ppDBText125: TppDBText
        UserName = 'DBText32'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_TOTAL'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 16140
        mmTop = 11906
        mmWidth = 14817
        BandType = 1
      end
      object ppDBText107: TppDBText
        UserName = 'DBText107'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_CODIGO'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4233
        mmLeft = 43392
        mmTop = 12171
        mmWidth = 7673
        BandType = 1
      end
      object ppDBText108: TppDBText
        UserName = 'DBText108'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_VALOR'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 69850
        mmTop = 12171
        mmWidth = 14817
        BandType = 1
      end
      object ppDBText109: TppDBText
        UserName = 'DBText109'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_PARCELA'
        DataPipeline = ppDuplicata
        DisplayFormat = '!99999;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 102659
        mmTop = 11906
        mmWidth = 6615
        BandType = 1
      end
      object ppDBText110: TppDBText
        UserName = 'DBText110'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_EMISSAO'
        DataPipeline = ppDuplicata
        DisplayFormat = 'dd/mm/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 120121
        mmTop = 12435
        mmWidth = 22225
        BandType = 1
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_NUM_NF'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4233
        mmLeft = 57679
        mmTop = 12171
        mmWidth = 11377
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 164042
        mmTop = 12435
        mmWidth = 18256
        BandType = 1
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VND:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 33602
        mmTop = 12171
        mmWidth = 9525
        BandType = 1
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 51858
        mmTop = 12171
        mmWidth = 6085
        BandType = 1
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_NUMERO'
        DataPipeline = ppDuplicata
        DisplayFormat = '!99999;0; '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 3704
        mmLeft = 95250
        mmTop = 11906
        mmWidth = 6615
        BandType = 1
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DPL_NUMERO'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4233
        mmLeft = 16404
        mmTop = 19050
        mmWidth = 14288
        BandType = 1
      end
      object ppDBText122: TppDBText
        UserName = 'DBText26'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_FONE'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4498
        mmLeft = 51594
        mmTop = 36513
        mmWidth = 90488
        BandType = 1
      end
      object ppDBText123: TppDBText
        UserName = 'DBText28'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_CODIGO'
        DataPipeline = ppDuplicata
        DisplayFormat = '#,0;-#,0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4498
        mmLeft = 38629
        mmTop = 36513
        mmWidth = 8996
        BandType = 1
      end
      object ppDBText111: TppDBText
        UserName = 'DBText111'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_CEP'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 5292
        mmLeft = 146579
        mmTop = 43921
        mmWidth = 19579
        BandType = 1
      end
      object ppDBText112: TppDBText
        UserName = 'DBText112'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_ENDERECO'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4498
        mmLeft = 38365
        mmTop = 44186
        mmWidth = 58473
        BandType = 1
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_BAIRRO'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 5292
        mmLeft = 97896
        mmTop = 44450
        mmWidth = 38894
        BandType = 1
      end
      object ppDBText114: TppDBText
        UserName = 'DBText114'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_UF'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4498
        mmLeft = 133086
        mmTop = 51858
        mmWidth = 14288
        BandType = 1
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_CPF_CGC'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4763
        mmLeft = 38100
        mmTop = 65881
        mmWidth = 44979
        BandType = 1
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MARACAJU - MS FERT FLORA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 58738
        mmWidth = 51329
        BandType = 1
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UF:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 124619
        mmTop = 51858
        mmWidth = 7673
        BandType = 1
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 137319
        mmTop = 43921
        mmWidth = 8731
        BandType = 1
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SAC_CIDADE'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4233
        mmLeft = 38365
        mmTop = 52388
        mmWidth = 52123
        BandType = 1
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PROP_NOME_ENDERECO'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4498
        mmLeft = 102923
        mmTop = 65617
        mmWidth = 56886
        BandType = 1
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 48419
        mmTop = 36513
        mmWidth = 2646
        BandType = 1
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FRASE QUALQUER QUE O CLIENTE QUISER'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 46038
        mmTop = 108215
        mmWidth = 88900
        BandType = 1
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR_EXTENSO'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 7673
        mmLeft = 38365
        mmTop = 74348
        mmWidth = 99748
        BandType = 1
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VDDI_NOME'
        DataPipeline = ppDuplicata
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppDuplicata'
        mmHeight = 4498
        mmLeft = 38365
        mmTop = 84138
        mmWidth = 43392
        BandType = 1
      end
    end
    object ppDetailBand5: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppParameterList5: TppParameterList
    end
  end
end
