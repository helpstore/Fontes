object FrmConfigurarNotaPromissoria: TFrmConfigurarNotaPromissoria
  Left = 198
  Top = 126
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Configurar Nota Promiss'#243'ria'
  ClientHeight = 600
  ClientWidth = 857
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
    Width = 857
    Height = 600
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
      Top = 566
      Width = 853
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 568
      Width = 853
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 853
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 853
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 47
      Width = 853
      Height = 488
      ActivePage = tbsGrafico
      Align = alClient
      MultiLine = True
      Style = tsFlatButtons
      TabOrder = 1
      object tbsGrafico: TTabSheet
        Caption = 'Modo Gr'#225'fico'
        object GroupBox1: TGroupBox
          Left = 4
          Top = 4
          Width = 245
          Height = 97
          Caption = 'Configura'#231#245'es - Nota Promiss'#243'ria'
          TabOrder = 0
          object dxDBCheckEdit2: TdxDBCheckEdit
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
            DataField = 'PR_GRAF'
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
        object GroupBox2: TGroupBox
          Left = 4
          Top = 108
          Width = 245
          Height = 97
          Caption = 'Configura'#231#245'es - C'#243'pia de Cheque'
          TabOrder = 1
          object BitBtn1: TBitBtn
            Left = 8
            Top = 44
            Width = 109
            Height = 25
            Caption = '&Configurar'
            TabOrder = 0
            OnClick = BitBtn1Click
            Kind = bkRetry
          end
        end
      end
      object tbsTexto: TTabSheet
        Caption = 'Modo Texto'
        ImageIndex = 1
        object ScrollBox1: TScrollBox
          Left = 0
          Top = 0
          Width = 845
          Height = 457
          VertScrollBar.Style = ssFlat
          VertScrollBar.Tracking = True
          Align = alClient
          BorderStyle = bsNone
          TabOrder = 0
          object Label69: TLabel
            Left = 41
            Top = 11
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
          object Label68: TLabel
            Left = 143
            Top = 10
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
          object Label58: TLabel
            Left = 300
            Top = 8
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
          object Label59: TLabel
            Left = 450
            Top = 8
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
          object Label71: TLabel
            Left = 434
            Top = 37
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
          object Label70: TLabel
            Left = 284
            Top = 37
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
          object Label60: TLabel
            Left = 144
            Top = 37
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
          object Label61: TLabel
            Left = 5
            Top = 37
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
          object Label86: TLabel
            Left = 23
            Top = 63
            Width = 103
            Height = 16
            Alignment = taRightJustify
            Caption = 'Controle Cliente'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label98: TLabel
            Left = 140
            Top = 62
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tamanho Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 272
            Top = 63
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
          object Label62: TLabel
            Left = 422
            Top = 63
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
          object Label73: TLabel
            Left = 434
            Top = 87
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
          object Label72: TLabel
            Left = 295
            Top = 87
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
          object Label75: TLabel
            Left = 163
            Top = 86
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label74: TLabel
            Left = 24
            Top = 86
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 35
            Top = 111
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 172
            Top = 111
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 270
            Top = 111
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
          object Label57: TLabel
            Left = 409
            Top = 111
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
          object Label95: TLabel
            Left = 431
            Top = 136
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label94: TLabel
            Left = 292
            Top = 136
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label67: TLabel
            Left = 163
            Top = 136
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
          object Label66: TLabel
            Left = 24
            Top = 136
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
          object Label99: TLabel
            Left = 36
            Top = 160
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
          object Label100: TLabel
            Left = 175
            Top = 160
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
          object Label101: TLabel
            Left = 282
            Top = 160
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Ass Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label102: TLabel
            Left = 421
            Top = 160
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Ass Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label79: TLabel
            Left = 434
            Top = 198
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
          object Label78: TLabel
            Left = 295
            Top = 198
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
          object Label77: TLabel
            Left = 163
            Top = 197
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label76: TLabel
            Left = 24
            Top = 203
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label87: TLabel
            Left = 51
            Top = 177
            Width = 75
            Height = 16
            Alignment = taRightJustify
            Caption = 'Promiss'#243'ria'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label84: TLabel
            Left = 35
            Top = 221
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label82: TLabel
            Left = 172
            Top = 221
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label81: TLabel
            Left = 270
            Top = 221
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
          object Label80: TLabel
            Left = 409
            Top = 221
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
          object Label89: TLabel
            Left = 412
            Top = 245
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vencto Ext Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label88: TLabel
            Left = 273
            Top = 245
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vencto Ext Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label83: TLabel
            Left = 163
            Top = 245
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
          object Label85: TLabel
            Left = 24
            Top = 245
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
          object Label105: TLabel
            Left = 3
            Top = 268
            Width = 75
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vendedor C Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label106: TLabel
            Left = 142
            Top = 268
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vendedor C Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label107: TLabel
            Left = 273
            Top = 268
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vendedor1 Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label108: TLabel
            Left = 412
            Top = 268
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vendedor2 Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label92: TLabel
            Left = 317
            Top = 292
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label91: TLabel
            Left = 157
            Top = 292
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Empresa Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label90: TLabel
            Left = 18
            Top = 292
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Empresa Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label96: TLabel
            Left = 26
            Top = 316
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label97: TLabel
            Left = 165
            Top = 316
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'digo Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label93: TLabel
            Left = 318
            Top = 316
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'Porta'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label109: TLabel
            Left = 12
            Top = 338
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Mensagem NP'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label110: TLabel
            Left = 8
            Top = 364
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Mensagem Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label111: TLabel
            Left = 147
            Top = 364
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Mensagem Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label1: TLabel
            Left = 568
            Top = 7
            Width = 54
            Height = 16
            Caption = 'Canhoto'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label2: TLabel
            Left = 710
            Top = 37
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label3: TLabel
            Left = 560
            Top = 37
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Parcela Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 571
            Top = 61
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 721
            Top = 61
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 536
            Top = 85
            Width = 78
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'd. Cliente Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 686
            Top = 85
            Width = 75
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'd. Cliente Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 689
            Top = 109
            Width = 72
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'd. Venda Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label9: TLabel
            Left = 539
            Top = 109
            Width = 75
            Height = 13
            Alignment = taRightJustify
            Caption = 'C'#243'd. Venda Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 540
            Top = 133
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
          object Label11: TLabel
            Left = 690
            Top = 133
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
          object dxDBPickEdit1: TdxDBPickEdit
            Left = 65
            Top = 6
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
            TabOrder = 0
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
          object dxDBEdit64: TdxDBEdit
            Left = 216
            Top = 6
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
            DataField = 'TAMANHOPAGINA'
            DataSource = DataSource
          end
          object dxDBEdit54: TdxDBEdit
            Left = 349
            Top = 6
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
          object dxDBEdit55: TdxDBEdit
            Left = 492
            Top = 6
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
          object dxDBEdit66: TdxDBEdit
            Left = 492
            Top = 32
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
            CharCase = ecUpperCase
            DataField = 'EXTENSO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit65: TdxDBEdit
            Left = 349
            Top = 32
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
            DataField = 'EXTENSO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit56: TdxDBEdit
            Left = 217
            Top = 32
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
            CharCase = ecUpperCase
            DataField = 'DOCUMENTO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit57: TdxDBEdit
            Left = 85
            Top = 32
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
            DataField = 'DOCUMENTO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit91: TdxDBEdit
            Left = 217
            Top = 57
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
            CharCase = ecUpperCase
            DataField = 'TAMANHO_NOME'
            DataSource = DataSource
          end
          object dxDBEdit59: TdxDBEdit
            Left = 349
            Top = 57
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
            DataField = 'INSTRUCOES_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit58: TdxDBEdit
            Left = 492
            Top = 57
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
            CharCase = ecUpperCase
            DataField = 'INSTRUCOES_ALT'
            DataSource = DataSource
          end
          object dxDBEdit68: TdxDBEdit
            Left = 492
            Top = 82
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
            DataField = 'VENDA1_ALT'
            DataSource = DataSource
          end
          object dxDBEdit67: TdxDBEdit
            Left = 349
            Top = 82
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
            DataField = 'VENDA1_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit70: TdxDBEdit
            Left = 217
            Top = 82
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
            DataField = 'PARCELA1_ALT'
            DataSource = DataSource
          end
          object dxDBEdit69: TdxDBEdit
            Left = 85
            Top = 82
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
            DataField = 'PARCELA1_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit61: TdxDBEdit
            Left = 85
            Top = 106
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
            DataField = 'VALOR1_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit60: TdxDBEdit
            Left = 217
            Top = 106
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
            TabOrder = 16
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'VALOR1_ALT'
            DataSource = DataSource
          end
          object dxDBEdit52: TdxDBEdit
            Left = 349
            Top = 106
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
            DataField = 'VENCIMENTO1_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit53: TdxDBEdit
            Left = 492
            Top = 106
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
            CharCase = ecUpperCase
            DataField = 'VENCIMENTO1_ALT'
            DataSource = DataSource
          end
          object dxDBEdit88: TdxDBEdit
            Left = 492
            Top = 131
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
            DataField = 'CODIGO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit87: TdxDBEdit
            Left = 349
            Top = 131
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
            TabOrder = 20
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CODIGO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit63: TdxDBEdit
            Left = 217
            Top = 131
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
            TabOrder = 21
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'SACADO1_ALT'
            DataSource = DataSource
          end
          object dxDBEdit62: TdxDBEdit
            Left = 85
            Top = 131
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
            TabOrder = 22
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'SACADO1_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit92: TdxDBEdit
            Left = 85
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
            TabOrder = 23
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DATA2_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit93: TdxDBEdit
            Left = 217
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
            TabOrder = 24
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'DATA2_ALT'
            DataSource = DataSource
          end
          object dxDBEdit94: TdxDBEdit
            Left = 349
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
            TabOrder = 25
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DATA3_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit95: TdxDBEdit
            Left = 492
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
            TabOrder = 26
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'DATA3_ALT'
            DataSource = DataSource
          end
          object dxDBEdit74: TdxDBEdit
            Left = 492
            Top = 192
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
            TabOrder = 27
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'VENDA2_ALT'
            DataSource = DataSource
          end
          object dxDBEdit73: TdxDBEdit
            Left = 349
            Top = 192
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
            TabOrder = 28
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VENDA2_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit72: TdxDBEdit
            Left = 217
            Top = 192
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
            TabOrder = 29
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PARCELA2_ALT'
            DataSource = DataSource
          end
          object dxDBEdit71: TdxDBEdit
            Left = 85
            Top = 192
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
            TabOrder = 30
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PARCELA2_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit80: TdxDBEdit
            Left = 85
            Top = 216
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
            TabOrder = 31
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VALOR2_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit77: TdxDBEdit
            Left = 217
            Top = 216
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
            TabOrder = 32
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'VALOR2_ALT'
            DataSource = DataSource
          end
          object dxDBEdit76: TdxDBEdit
            Left = 349
            Top = 216
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
            TabOrder = 33
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VENCIMENTO2_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit75: TdxDBEdit
            Left = 492
            Top = 216
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
            TabOrder = 34
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'VENCIMENTO2_ALT'
            DataSource = DataSource
          end
          object dxDBEdit82: TdxDBEdit
            Left = 492
            Top = 240
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
            TabOrder = 35
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'VECTO_EXT_ALT'
            DataSource = DataSource
          end
          object dxDBEdit81: TdxDBEdit
            Left = 349
            Top = 240
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
            TabOrder = 36
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VECTO_EXT_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit78: TdxDBEdit
            Left = 217
            Top = 240
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
            TabOrder = 37
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'SACADO2_ALT'
            DataSource = DataSource
          end
          object dxDBEdit79: TdxDBEdit
            Left = 85
            Top = 240
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
            TabOrder = 38
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'SACADO2_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit96: TdxDBEdit
            Left = 85
            Top = 263
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
            TabOrder = 39
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VENDEDOR_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit97: TdxDBEdit
            Left = 217
            Top = 263
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
            TabOrder = 40
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'VENDEDOR_ALT'
            DataSource = DataSource
          end
          object dxDBEdit98: TdxDBEdit
            Left = 349
            Top = 263
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
            TabOrder = 41
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'VENDEDOR1_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit99: TdxDBEdit
            Left = 492
            Top = 263
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
            TabOrder = 42
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'VENDEDOR1_ALT'
            DataSource = DataSource
          end
          object dxDBEdit85: TdxDBEdit
            Left = 349
            Top = 287
            Width = 185
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.HotTrack = True
            TabOrder = 43
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'EMPRESA'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit84: TdxDBEdit
            Left = 217
            Top = 287
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
            TabOrder = 44
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'EMPRESA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit83: TdxDBEdit
            Left = 85
            Top = 287
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
            TabOrder = 45
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'EMPRESA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit89: TdxDBEdit
            Left = 85
            Top = 311
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
            TabOrder = 46
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CODIGO2_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit90: TdxDBEdit
            Left = 217
            Top = 311
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
            TabOrder = 47
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CODIGO2_ALT'
            DataSource = DataSource
          end
          object dxDBEdit86: TdxDBEdit
            Left = 349
            Top = 311
            Width = 185
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.HotTrack = True
            TabOrder = 48
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PORTA'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit100: TdxDBEdit
            Left = 85
            Top = 335
            Width = 449
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.HotTrack = True
            TabOrder = 49
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'MENSAGEM_NP'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit102: TdxDBEdit
            Left = 217
            Top = 359
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
            TabOrder = 50
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'MENSAGEM_ALT'
            DataSource = DataSource
          end
          object dxDBEdit101: TdxDBEdit
            Left = 85
            Top = 359
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
            TabOrder = 61
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'MENSAGEM_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit1: TdxDBEdit
            Left = 764
            Top = 32
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
            TabOrder = 52
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CAN_PARC_ALT'
            DataSource = DataSource
          end
          object dxDBEdit2: TdxDBEdit
            Left = 621
            Top = 32
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
            TabOrder = 51
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CAN_PARC_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit3: TdxDBEdit
            Left = 621
            Top = 56
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
            TabOrder = 53
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CAN_VALOR_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit4: TdxDBEdit
            Left = 764
            Top = 56
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
            TabOrder = 54
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CAN_VALOR_ALT'
            DataSource = DataSource
          end
          object dxDBEdit5: TdxDBEdit
            Left = 621
            Top = 80
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
            TabOrder = 55
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CAN_COD_CLI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit6: TdxDBEdit
            Left = 764
            Top = 80
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
            TabOrder = 56
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CAN_COD_CLI_ALT'
            DataSource = DataSource
          end
          object dxDBEdit7: TdxDBEdit
            Left = 764
            Top = 104
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
            TabOrder = 58
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CAN_COD_VENDA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit8: TdxDBEdit
            Left = 621
            Top = 104
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
            TabOrder = 57
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CAN_COD_VENDA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit9: TdxDBEdit
            Left = 621
            Top = 128
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
            TabOrder = 59
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CAN_VENCTO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit10: TdxDBEdit
            Left = 764
            Top = 128
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
            TabOrder = 60
            OnEnter = dxDBEdit2Enter
            OnExit = dxDBEdit2Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CAN_VENCTO_ALT'
            DataSource = DataSource
          end
        end
      end
    end
    object Panel3: TPanel
      Left = 2
      Top = 535
      Width = 853
      Height = 31
      Align = alBottom
      ParentColor = True
      TabOrder = 2
      object Label104: TLabel
        Left = 13
        Top = 10
        Width = 136
        Height = 13
        Alignment = taRightJustify
        Caption = 'Utiliza Descri'#231#227'o no Canhoto'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label103: TLabel
        Left = 183
        Top = 10
        Width = 94
        Height = 13
        Alignment = taRightJustify
        Caption = 'Imprime Totalizador'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object dxDBCheckEdit4: TdxDBCheckEdit
        Left = 150
        Top = 5
        Width = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        TabOrder = 0
        OnKeyDown = dxDBEdit1KeyDown
        DataField = 'DESCRICAO_CANHOTO'
        DataSource = DataSource
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'N'
      end
      object dxDBCheckEdit3: TdxDBCheckEdit
        Left = 276
        Top = 5
        Width = 19
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        OnKeyDown = dxDBEdit1KeyDown
        DataField = 'IMPRIME_TOTALIZADOR'
        DataSource = DataSource
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'N'
      end
    end
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 853
      Height = 45
      Align = alTop
      BevelOuter = bvNone
      Color = clWhite
      TabOrder = 3
      object LblTitulo: TLabel
        Left = 6
        Top = 1
        Width = 272
        Height = 23
        Caption = 'Configurar Nota Promiss'#243'ria'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object b2: TBevel
        Left = 8
        Top = 28
        Width = 184
        Height = 2
        Shape = bsTopLine
      end
      object LblRegistros: TLabel
        Left = 533
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
    end
  end
  object BarDBNavigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 373
    Top = 31
  end
  object BarManager: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
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
    Left = 445
    Top = 32
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
    Left = 409
    Top = 32
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
    DataSet = DMCadastros.NotaPromissoria
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    Left = 341
    Top = 32
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
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = ' Configurar Impress'#227'o'
    UsaGerenciadorImpr = False
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
    Left = 306
    Top = 32
  end
  object ppLayout: TppDBPipeline
    DataSource = dsLayout
    UserName = 'SerieNF1'
    Left = 385
    Top = 144
    object ppLayoutppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppLayoutppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_ALT'
      FieldName = 'DATA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppLayoutppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA_DST'
      FieldName = 'DATA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppLayoutppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCUMENTO_ALT'
      FieldName = 'DOCUMENTO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppLayoutppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'DOCUMENTO_DST'
      FieldName = 'DOCUMENTO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppLayoutppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXTENSO_ALT'
      FieldName = 'EXTENSO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppLayoutppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'EXTENSO_DST'
      FieldName = 'EXTENSO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppLayoutppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'INSTRUCOES_ALT'
      FieldName = 'INSTRUCOES_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppLayoutppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'INSTRUCOES_DST'
      FieldName = 'INSTRUCOES_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppLayoutppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LPP'
      FieldName = 'LPP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppLayoutppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA1_ALT'
      FieldName = 'PARCELA1_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppLayoutppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA1_DST'
      FieldName = 'PARCELA1_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppLayoutppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA2_ALT'
      FieldName = 'PARCELA2_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppLayoutppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA2_DST'
      FieldName = 'PARCELA2_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppLayoutppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO1_ALT'
      FieldName = 'SACADO1_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppLayoutppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO1_DST'
      FieldName = 'SACADO1_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppLayoutppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO2_ALT'
      FieldName = 'SACADO2_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppLayoutppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'SACADO2_DST'
      FieldName = 'SACADO2_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object ppLayoutppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAMANHOPAGINA'
      FieldName = 'TAMANHOPAGINA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppLayoutppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR1_ALT'
      FieldName = 'VALOR1_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object ppLayoutppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR1_DST'
      FieldName = 'VALOR1_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppLayoutppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR2_ALT'
      FieldName = 'VALOR2_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object ppLayoutppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR2_DST'
      FieldName = 'VALOR2_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object ppLayoutppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO1_ALT'
      FieldName = 'VENCIMENTO1_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object ppLayoutppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO1_DST'
      FieldName = 'VENCIMENTO1_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object ppLayoutppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO2_ALT'
      FieldName = 'VENCIMENTO2_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 25
    end
    object ppLayoutppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENCIMENTO2_DST'
      FieldName = 'VENCIMENTO2_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppLayoutppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA1_ALT'
      FieldName = 'VENDA1_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppLayoutppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA1_DST'
      FieldName = 'VENDA1_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppLayoutppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA2_ALT'
      FieldName = 'VENDA2_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 29
    end
    object ppLayoutppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA2_DST'
      FieldName = 'VENDA2_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 30
    end
    object ppLayoutppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'VECTO_EXT_DST'
      FieldName = 'VECTO_EXT_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object ppLayoutppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'VECTO_EXT_ALT'
      FieldName = 'VECTO_EXT_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 32
    end
    object ppLayoutppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRESA_DST'
      FieldName = 'EMPRESA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 33
    end
    object ppLayoutppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'EMPRESA_ALT'
      FieldName = 'EMPRESA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 34
    end
    object ppLayoutppField36: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 35
    end
    object ppLayoutppField37: TppField
      FieldAlias = 'PORTA'
      FieldName = 'PORTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppLayoutppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_DST'
      FieldName = 'CODIGO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
    object ppLayoutppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_ALT'
      FieldName = 'CODIGO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 38
    end
    object ppLayoutppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO2_DST'
      FieldName = 'CODIGO2_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 39
    end
    object ppLayoutppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO2_ALT'
      FieldName = 'CODIGO2_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 40
    end
    object ppLayoutppField42: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA2_DST'
      FieldName = 'DATA2_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 41
    end
    object ppLayoutppField43: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA2_ALT'
      FieldName = 'DATA2_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 42
    end
    object ppLayoutppField44: TppField
      Alignment = taRightJustify
      FieldAlias = 'TAMANHO_NOME'
      FieldName = 'TAMANHO_NOME'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 43
    end
    object ppLayoutppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA3_DST'
      FieldName = 'DATA3_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object ppLayoutppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'DATA3_ALT'
      FieldName = 'DATA3_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 45
    end
    object ppLayoutppField47: TppField
      FieldAlias = 'IMPRIME_TOTALIZADOR'
      FieldName = 'IMPRIME_TOTALIZADOR'
      FieldLength = 1
      DisplayWidth = 1
      Position = 46
    end
    object ppLayoutppField48: TppField
      FieldAlias = 'DESCRICAO_CANHOTO'
      FieldName = 'DESCRICAO_CANHOTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 47
    end
    object ppLayoutppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_DST'
      FieldName = 'VENDEDOR_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object ppLayoutppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR_ALT'
      FieldName = 'VENDEDOR_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppLayoutppField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR1_DST'
      FieldName = 'VENDEDOR1_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object ppLayoutppField52: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR1_ALT'
      FieldName = 'VENDEDOR1_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 51
    end
    object ppLayoutppField53: TppField
      FieldAlias = 'MENSAGEM_NP'
      FieldName = 'MENSAGEM_NP'
      FieldLength = 200
      DisplayWidth = 200
      Position = 52
    end
    object ppLayoutppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'MENSAGEM_DST'
      FieldName = 'MENSAGEM_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppLayoutppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'MENSAGEM_ALT'
      FieldName = 'MENSAGEM_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object ppLayoutppField56: TppField
      FieldAlias = 'PR_GRAF'
      FieldName = 'PR_GRAF'
      FieldLength = 1
      DisplayWidth = 1
      Position = 55
    end
    object ppLayoutppField57: TppField
      FieldAlias = 'PR_GRAF_LEIAUTE'
      FieldName = 'PR_GRAF_LEIAUTE'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 56
      Searchable = False
      Sortable = False
    end
    object ppLayoutppField58: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_PARC_DST'
      FieldName = 'CAN_PARC_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 57
    end
    object ppLayoutppField59: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_PARC_ALT'
      FieldName = 'CAN_PARC_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 58
    end
    object ppLayoutppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_VALOR_DST'
      FieldName = 'CAN_VALOR_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
    object ppLayoutppField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_VALOR_ALT'
      FieldName = 'CAN_VALOR_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object ppLayoutppField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_COD_CLI_DST'
      FieldName = 'CAN_COD_CLI_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object ppLayoutppField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_COD_CLI_ALT'
      FieldName = 'CAN_COD_CLI_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object ppLayoutppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_COD_VENDA_DST'
      FieldName = 'CAN_COD_VENDA_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppLayoutppField65: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_COD_VENDA_ALT'
      FieldName = 'CAN_COD_VENDA_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 64
    end
    object ppLayoutppField66: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_VENCTO_DST'
      FieldName = 'CAN_VENCTO_DST'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 65
    end
    object ppLayoutppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'CAN_VENCTO_ALT'
      FieldName = 'CAN_VENCTO_ALT'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
  end
  object Designer: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar Promiss'#243'rias'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptPromissoria
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 418
    Top = 144
  end
  object rptPromissoria: TppReport
    AutoStop = False
    DataPipeline = ppPromissoria
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayout
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'PR_GRAF_LEIAUTE'
    Template.FileName = 'D:\Sistemas\HelpStore\fontes\rptPromissoria.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 297
    Top = 160
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'ppPromissoria'
    object ppDetailBand1: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 79904
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_NOME'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 3175
        mmTop = 21167
        mmWidth = 46831
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Parcela'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 27781
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PC_PARCELA'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 7938
        mmTop = 32544
        mmWidth = 8731
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vencimento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 3175
        mmTop = 49213
        mmWidth = 19844
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PC_VENCTO'
        DataPipeline = ppPromissoria
        DisplayFormat = 'mm/dd/yyyy'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 2910
        mmTop = 54240
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Valor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 52917
        mmTop = 49213
        mmWidth = 9260
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PC_VALOR'
        DataPipeline = ppPromissoria
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 44979
        mmTop = 53975
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_NOME'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 71438
        mmTop = 53975
        mmWidth = 65881
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_ENDERECO'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3704
        mmLeft = 71438
        mmTop = 59002
        mmWidth = 65881
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_CIDADE'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3704
        mmLeft = 71702
        mmTop = 64294
        mmWidth = 65881
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CPF/CNPJ:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 71702
        mmTop = 69321
        mmWidth = 15081
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_CNPJ'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 87313
        mmTop = 69056
        mmWidth = 15346
        BandType = 4
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'RG/IE:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 105834
        mmTop = 69586
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'pc_valor_extenso'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 71967
        mmTop = 38100
        mmWidth = 96838
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_CODIGO'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 2117
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PC_PARCELA'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 75936
        mmTop = 5821
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PC_VALOR'
        DataPipeline = ppPromissoria
        DisplayFormat = '#,0.00;-#,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 94456
        mmTop = 5556
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PC_DIA'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 120386
        mmTop = 5292
        mmWidth = 8731
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'pc_mes_extenso'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 131498
        mmTop = 5292
        mmWidth = 36248
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PC_ANO'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 170392
        mmTop = 5556
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'pc_vencto_extenso'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 72231
        mmTop = 20108
        mmWidth = 117475
        BandType = 4
      end
      object ppDBText17: TppDBText
        UserName = 'DBText101'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_CODIGO'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 33602
        mmTop = 2117
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_RG_IE'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3704
        mmLeft = 115094
        mmTop = 69586
        mmWidth = 19050
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_COD_VENDEDOR'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 140759
        mmTop = 53975
        mmWidth = 15346
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PSA_FONE'
        DataPipeline = ppPromissoria
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppPromissoria'
        mmHeight = 3969
        mmLeft = 140759
        mmTop = 60061
        mmWidth = 15346
        BandType = 4
      end
    end
  end
  object ppPromissoria: TppDBPipeline
    DataSource = dsPromissoria
    UserName = 'Promissoria'
    Left = 348
    Top = 144
    object ppPromissoriappField1: TppField
      FieldAlias = 'pc_valor_extenso'
      FieldName = 'pc_valor_extenso'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppPromissoriappField2: TppField
      FieldAlias = 'pc_vencto_extenso'
      FieldName = 'pc_vencto_extenso'
      FieldLength = 100
      DisplayWidth = 100
      Position = 1
    end
    object ppPromissoriappField3: TppField
      FieldAlias = 'pc_mes_extenso'
      FieldName = 'pc_mes_extenso'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppPromissoriappField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PSA_CODIGO'
      FieldName = 'PSA_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppPromissoriappField5: TppField
      FieldAlias = 'VD_DATA'
      FieldName = 'VD_DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppPromissoriappField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CODIGO'
      FieldName = 'VD_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 5
    end
    object ppPromissoriappField7: TppField
      FieldAlias = 'PC_PARCELA'
      FieldName = 'PC_PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 6
    end
    object ppPromissoriappField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PC_VALOR'
      FieldName = 'PC_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppPromissoriappField9: TppField
      FieldAlias = 'PC_VENCTO'
      FieldName = 'PC_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 8
    end
    object ppPromissoriappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PC_DIA'
      FieldName = 'PC_DIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object ppPromissoriappField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PC_MES'
      FieldName = 'PC_MES'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppPromissoriappField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'PC_ANO'
      FieldName = 'PC_ANO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppPromissoriappField13: TppField
      FieldAlias = 'PSA_NOME'
      FieldName = 'PSA_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppPromissoriappField14: TppField
      FieldAlias = 'PSA_ENDERECO'
      FieldName = 'PSA_ENDERECO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 13
    end
    object ppPromissoriappField15: TppField
      FieldAlias = 'PSA_BAIRRO'
      FieldName = 'PSA_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppPromissoriappField16: TppField
      FieldAlias = 'PSA_CIDADE'
      FieldName = 'PSA_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppPromissoriappField17: TppField
      FieldAlias = 'PSA_CNPJ'
      FieldName = 'PSA_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 16
    end
    object ppPromissoriappField18: TppField
      FieldAlias = 'PSA_RG_IE'
      FieldName = 'PSA_RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 17
    end
    object ppPromissoriappField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_COD_VENDEDOR'
      FieldName = 'VD_COD_VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 18
    end
    object ppPromissoriappField20: TppField
      FieldAlias = 'PSA_FONE'
      FieldName = 'PSA_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 19
    end
    object ppPromissoriappField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_NF'
      FieldName = 'VD_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object ppPromissoriappField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CF'
      FieldName = 'VD_CF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
  end
  object dsLayout: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.NotaPromissoria
    Left = 384
    Top = 177
  end
  object dsPromissoria: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.qryPromissorias
    Left = 349
    Top = 177
  end
  object rptCopiaCheque: TppReport
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'ARCH A'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 140493
    PrinterSetup.mmPaperWidth = 215372
    PrinterSetup.PaperSize = 160
    Template.DatabaseSettings.DataPipeline = ppLayoutCopiaCheque
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_COPIA_CHEQUE'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\copiacheque.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
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
    Left = 318
    Top = 242
    Version = '9.01'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 9790
      mmPrintPosition = 0
      object ppEmpresa: TppLabel
        UserName = 'Empresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Empresa'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 0
        mmTop = 2646
        mmWidth = 14817
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtDateTime
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 156634
        mmTop = 2646
        mmWidth = 40217
        BandType = 1
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = ppCopiaCheque
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppCopiaCheque'
        mmHeight = 4586
        mmLeft = 52917
        mmTop = 2646
        mmWidth = 17198
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 28840
      mmPrintPosition = 0
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 0
        mmWidth = 196850
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 6615
        mmWidth = 196850
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'PIA  DE  CHEQUE'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = []
        Transparent = True
        mmHeight = 6392
        mmLeft = 66675
        mmTop = 529
        mmWidth = 57573
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO        :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 0
        mmTop = 9525
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DOCUMENTO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 0
        mmTop = 24342
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'HIST'#211'RICO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 25400
        mmTop = 24342
        mmWidth = 19050
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 28310
        mmWidth = 195263
        BandType = 0
      end
      object ppDBText21: TppDBText
        UserName = 'DBText6'
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRE_DATE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = [fsBold]
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 29898
        mmTop = 19050
        mmWidth = 18627
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PR'#201' - DATADO :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 0
        mmTop = 19050
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel11: TppLabel
        UserName = 'Label10'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOMINAL'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 80433
        mmTop = 20108
        mmWidth = 14817
        BandType = 0
      end
      object myDBCheckBox1: TmyDBCheckBox
        UserName = 'DBCheckBox1'
        BooleanFalse = 'N'
        BooleanTrue = 'S'
        DataField = 'NOMINAL'
        ShiftWithParent = False
        Transparent = True
        mmHeight = 5821
        mmLeft = 75406
        mmTop = 19050
        mmWidth = 5556
        BandType = 0
      end
      object ppBANCO: TppLabel
        UserName = 'BANCO'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BANCO'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 29898
        mmTop = 9525
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel12: TppLabel
        UserName = 'Label11'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CHEQUE       :'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 0
        mmTop = 14288
        mmWidth = 29633
        BandType = 0
      end
      object ppDBText22: TppDBText
        UserName = 'DBText1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CHEQUE'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 29898
        mmTop = 14288
        mmWidth = 17198
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FORNECEDOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 93927
        mmTop = 24342
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR'
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 184680
        mmTop = 24342
        mmWidth = 10583
        BandType = 0
      end
    end
    object ppDetailBand2: TppDetailBand
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText23: TppDBText
        UserName = 'DBText2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DOCTO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 0
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'HISTORICO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 25400
        mmTop = 0
        mmWidth = 66675
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText8'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        mmHeight = 4233
        mmLeft = 93927
        mmTop = 0
        mmWidth = 67204
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VALOR'
        DisplayFormat = 'R$ #,0.00;-R$ #,0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 163248
        mmTop = 0
        mmWidth = 32015
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 43392
      mmPrintPosition = 0
      object ppVALOR_EXTENSO: TppLabel
        UserName = 'VALOR_EXTENSO'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR_EXTENSO'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 0
        mmTop = 6615
        mmWidth = 27517
        BandType = 8
      end
      object ppVALOR: TppLabel
        UserName = 'VALOR_EXTENSO1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VALOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 0
        mmTop = 1323
        mmWidth = 10583
        BandType = 8
      end
      object ppLabel15: TppLabel
        UserName = 'Label6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VISTO DO PAGADOR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 27252
        mmTop = 29898
        mmWidth = 33867
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 3175
        mmLeft = 107950
        mmTop = 29104
        mmWidth = 87313
        BandType = 8
      end
      object ppLabel16: TppLabel
        UserName = 'Label7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DECLARAMOS QUE RECEBEMOS O VALOR ACIMA'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3535
        mmLeft = 112977
        mmTop = 29898
        mmWidth = 80433
        BandType = 8
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 0
        mmTop = 29104
        mmWidth = 87313
        BandType = 8
      end
      object ppMUNICIPIO: TppLabel
        UserName = 'MUNICIPIO'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Dourados ( MS )   01  De  Agosto  de 2007'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3535
        mmLeft = 108479
        mmTop = 11642
        mmWidth = 86784
        BandType = 8
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 529
        mmLeft = 0
        mmTop = 0
        mmWidth = 195263
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppLayoutCopiaCheque: TppDBPipeline
    DataSource = dsLayoutCopiaCheque
    UserName = 'LayoutCopiaCheque'
    Left = 382
    Top = 242
  end
  object DesignerCopiaCheque: TppDesigner
    Caption = 'ReportBuilder'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtParadox
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqBDELocal
    Position = poScreenCenter
    Report = rptCopiaCheque
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 414
    Top = 242
  end
  object dsLayoutCopiaCheque: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.EdtCopiaCheque
    Left = 382
    Top = 274
  end
  object ppCopiaCheque: TppDBPipeline
    DataSource = DMListagens.dsPagasChequePlanilha
    UserName = 'CopiaCheque'
    Left = 350
    Top = 242
    object ppCopiaChequeppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppCopiaChequeppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object ppCopiaChequeppField3: TppField
      FieldAlias = 'BANCO'
      FieldName = 'BANCO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppCopiaChequeppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object ppCopiaChequeppField5: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 4
    end
    object ppCopiaChequeppField6: TppField
      FieldAlias = 'IMPRESSO'
      FieldName = 'IMPRESSO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 5
    end
    object ppCopiaChequeppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppCopiaChequeppField8: TppField
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 1
      DisplayWidth = 1
      Position = 7
    end
    object ppCopiaChequeppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PLANILHA'
      FieldName = 'PLANILHA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object ppCopiaChequeppField10: TppField
      FieldAlias = 'CONTABILIDADE'
      FieldName = 'CONTABILIDADE'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object ppCopiaChequeppField11: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object ppCopiaChequeppField12: TppField
      FieldAlias = 'NOMINAL'
      FieldName = 'NOMINAL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 11
    end
    object ppCopiaChequeppField13: TppField
      FieldAlias = 'PRE_DATE'
      FieldName = 'PRE_DATE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 12
    end
    object ppCopiaChequeppField14: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object ppCopiaChequeppField15: TppField
      FieldAlias = 'HISTORICO1'
      FieldName = 'HISTORICO1'
      FieldLength = 100
      DisplayWidth = 100
      Position = 14
    end
    object ppCopiaChequeppField16: TppField
      FieldAlias = 'NOME1'
      FieldName = 'NOME1'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
    object ppCopiaChequeppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_BAIXA'
      FieldName = 'VLR_BAIXA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppCopiaChequeppField18: TppField
      FieldAlias = 'tmp_EMPRESA'
      FieldName = 'tmp_EMPRESA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 17
    end
    object ppCopiaChequeppField19: TppField
      FieldAlias = 'tmp_VALOR'
      FieldName = 'tmp_VALOR'
      FieldLength = 15
      DisplayWidth = 15
      Position = 18
    end
    object ppCopiaChequeppField20: TppField
      FieldAlias = 'tmpMUNICIPIO'
      FieldName = 'tmpMUNICIPIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppCopiaChequeppField21: TppField
      FieldAlias = 'tmp_VLR_EXTENSO'
      FieldName = 'tmp_VLR_EXTENSO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 20
    end
    object ppCopiaChequeppField22: TppField
      FieldAlias = 'tmp_BANCO'
      FieldName = 'tmp_BANCO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
  end
end
