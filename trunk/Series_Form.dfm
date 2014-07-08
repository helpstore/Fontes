object FrmSeries: TFrmSeries
  Left = 276
  Top = 125
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' S'#233'ries '
  ClientHeight = 496
  ClientWidth = 861
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
    Width = 861
    Height = 496
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
      Top = 172
      Width = 857
      Height = 2
      Align = alBottom
      Shape = bsTopLine
    end
    object LblRegistros: TLabel
      Left = 525
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
      Top = 464
      Width = 857
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 857
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 857
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object RzPanel1: TPanel
      Left = 2
      Top = 45
      Width = 857
      Height = 81
      Align = alTop
      TabOrder = 1
      object Label156: TLabel
        Left = 378
        Top = 41
        Width = 59
        Height = 13
        Alignment = taRightJustify
        Caption = 'Largura Col.'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label135: TLabel
        Left = 380
        Top = 12
        Width = 73
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' de Produtos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label157: TLabel
        Left = 248
        Top = 40
        Width = 53
        Height = 13
        Alignment = taRightJustify
        Caption = 'N'#186' Colunas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label131: TLabel
        Left = 248
        Top = 12
        Width = 56
        Height = 13
        Alignment = taRightJustify
        Caption = 'Pulo Imp N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TLabel
        Left = 516
        Top = 40
        Width = 20
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tipo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label137: TLabel
        Left = 112
        Top = 40
        Width = 50
        Height = 13
        Alignment = taRightJustify
        Caption = 'Local Dpl.:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel
        Left = 112
        Top = 12
        Width = 44
        Height = 13
        Alignment = taRightJustify
        Caption = #218'ltimo N'#186
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label136: TLabel
        Left = 515
        Top = 12
        Width = 45
        Height = 13
        Alignment = taRightJustify
        Caption = 'Tmn. P'#225'g'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label1: TLabel
        Left = 36
        Top = -12
        Width = 24
        Height = 13
        Alignment = taRightJustify
        Caption = 'S'#233'rie'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label130: TLabel
        Left = 4
        Top = 40
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
      object Label202: TLabel
        Left = 620
        Top = 14
        Width = 54
        Height = 13
        Alignment = taRightJustify
        Caption = 'Documento'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object BtnTipo: TSpeedButton
        Left = 800
        Top = 10
        Width = 23
        Height = 22
        Cursor = crHandPoint
        Flat = True
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
        OnClick = BtnTipoClick
      end
      object dxDBCheckEdit6: TdxDBCheckEdit
        Left = 653
        Top = 33
        Width = 174
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
        Caption = 'Duplica N'#250'mero da Nota Fiscal?'
        DataField = 'NOTA_DUPLICA_NUMERO'
        DataSource = DataSource
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'N'
        StoredValues = 1
      end
      object dxDBEdit149: TdxDBEdit
        Left = 456
        Top = 36
        Width = 38
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        CharCase = ecUpperCase
        DataField = 'CLI_DUPLLARGURA_COLUNA'
        DataSource = DataSource
      end
      object dxDBEdit129: TdxDBEdit
        Left = 456
        Top = 8
        Width = 38
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        CharCase = ecUpperCase
        DataField = 'PRODUTOSNOTA'
        DataSource = DataSource
      end
      object dxDBEdit150: TdxDBEdit
        Left = 320
        Top = 36
        Width = 38
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        CharCase = ecUpperCase
        DataField = 'CLI_DUPLNUM_COLUNA'
        DataSource = DataSource
      end
      object dxDBEdit128: TdxDBEdit
        Left = 308
        Top = 8
        Width = 50
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        CharCase = ecUpperCase
        DataField = 'IMPRESSORA_PULO'
        DataSource = DataSource
      end
      object dxDBPickEdit2: TdxDBPickEdit
        Left = 168
        Top = 36
        Width = 53
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        DataField = 'LOCALDUPLICATAS'
        DataSource = DataSource
        PopupBorder = pbFlat
        Items.Strings = (
          'C'
          'R')
      end
      object CmbTipo: TdxDBPickEdit
        Left = 568
        Top = 36
        Width = 39
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        DataField = 'TIPO'
        DataSource = DataSource
        PopupBorder = pbFlat
        Items.Strings = (
          'P'
          'S'
          'O'
          'C')
      end
      object dxDBEdit130: TdxDBEdit
        Left = 568
        Top = 8
        Width = 41
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        CharCase = ecUpperCase
        DataField = 'NUMERODELINHASDANOTA'
        DataSource = DataSource
      end
      object EdInicial: TdxDBEdit
        Left = 168
        Top = 8
        Width = 53
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        CharCase = ecUpperCase
        DataField = 'ULTIMO_NUMERO'
        DataSource = DataSource
      end
      object dxDBPickEdit1: TdxDBPickEdit
        Left = 36
        Top = 36
        Width = 50
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
        TabOrder = 9
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        DataField = 'IMPRESSORA_LPP'
        DataSource = DataSource
        PopupBorder = pbFlat
        Items.Strings = (
          'seis'
          'oito')
      end
      object dxDBEdit1: TdxDBEdit
        Left = 36
        Top = 8
        Width = 50
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
        OnEnter = dxDBEdit1Enter
        OnExit = dxDBEdit1Exit
        OnKeyDown = dxDBEdit1KeyDown
        DataField = 'SERIE'
        DataSource = DataSource
        ReadOnly = False
        StoredValues = 64
      end
      object cmbTipoDocto: TdxDBLookupEdit
        Left = 680
        Top = 9
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
        Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
        Style.HotTrack = True
        Style.Shadow = False
        TabOrder = 11
        OnKeyDown = dxDBEdit1KeyDown
        DataField = 'TIPO_DOCTO'
        DataSource = DataSource
        ReadOnly = False
        ClearKey = 46
        ListFieldName = 'NOME'
        Revertable = True
        KeyFieldName = 'SIGLA'
        ListSource = DsTipoDocto
        LookupKeyValue = Null
        StoredValues = 64
      end
      object dxDBCheckEdit4: TdxDBCheckEdit
        Left = 779
        Top = 50
        Width = 48
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.ButtonStyle = btsSimple
        TabOrder = 12
        Alignment = taRightJustify
        Caption = 'NFe'
        DataField = 'NFE_IMPRESSAO'
        DataSource = DataSource
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'N'
        StoredValues = 1
      end
    end
    object RzPanel2: TPanel
      Left = 2
      Top = 2
      Width = 857
      Height = 43
      Align = alTop
      BorderWidth = 3
      Color = clWhite
      TabOrder = 2
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
        Width = 219
        Height = 23
        Caption = 'S'#233'ries de Notas Fiscais'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object PageControl1: TPageControl
      Left = 2
      Top = 174
      Width = 857
      Height = 290
      ActivePage = tbsGrafico
      Align = alBottom
      TabOrder = 3
      object tbsGrafico: TTabSheet
        Caption = 'Modo Gr'#225'fico'
        object GroupBox1: TGroupBox
          Left = 12
          Top = 4
          Width = 245
          Height = 97
          Caption = 'Configura'#231#245'es - Pedidos'
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
            DataField = 'NF_GRAFICA'
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
          Left = 508
          Top = 4
          Width = 245
          Height = 97
          Caption = 'Configura'#231#245'es - CT13'
          TabOrder = 1
          object BitBtn1: TBitBtn
            Left = 8
            Top = 52
            Width = 109
            Height = 25
            Caption = '&Configurar'
            TabOrder = 0
            OnClick = BitBtn1Click
            Kind = bkRetry
          end
        end
        object GroupBox3: TGroupBox
          Left = 12
          Top = 112
          Width = 245
          Height = 97
          Caption = 'Configura'#231#245'es - NF Servi'#231'o'
          TabOrder = 2
          object BitBtn2: TBitBtn
            Left = 8
            Top = 52
            Width = 109
            Height = 25
            Caption = '&Configurar'
            TabOrder = 0
            OnClick = BitBtn2Click
            Kind = bkRetry
          end
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
            TabOrder = 1
            Alignment = taRightJustify
            Caption = 'Definir impress'#227'o gr'#225'fica como padr'#227'o'
            DataField = 'NFSERV_GRAFICA'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
        end
        object GroupBox4: TGroupBox
          Left = 260
          Top = 112
          Width = 245
          Height = 97
          Caption = 'Configura'#231#245'es - Nota Fiscal'
          TabOrder = 3
          object BitBtn3: TBitBtn
            Left = 8
            Top = 52
            Width = 109
            Height = 25
            Caption = '&Configurar'
            TabOrder = 0
            OnClick = BitBtn3Click
            Kind = bkRetry
          end
          object dxDBCheckEdit3: TdxDBCheckEdit
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
            TabOrder = 1
            Alignment = taRightJustify
            Caption = 'Definir impress'#227'o gr'#225'fica como padr'#227'o'
            DataField = 'NF_GRAFICA2'
            DataSource = DataSource
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            StoredValues = 1
          end
        end
        object GroupBox5: TGroupBox
          Left = 260
          Top = 4
          Width = 245
          Height = 97
          Caption = ' [ Configura'#231#245'es - Or'#231'amento ] '
          TabOrder = 4
          object BitBtn4: TBitBtn
            Left = 8
            Top = 52
            Width = 109
            Height = 25
            Caption = '&Configurar'
            TabOrder = 0
            OnClick = BitBtn4Click
            Kind = bkRetry
          end
        end
        object GroupBox6: TGroupBox
          Left = 508
          Top = 112
          Width = 245
          Height = 97
          Caption = ' [ Configura'#231#245'es - Requisi'#231#227'o ] '
          TabOrder = 5
          object BitBtn5: TBitBtn
            Left = 8
            Top = 52
            Width = 109
            Height = 25
            Caption = '&Configurar'
            TabOrder = 0
            OnClick = BitBtn5Click
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
          Width = 838
          Height = 262
          HorzScrollBar.Smooth = True
          VertScrollBar.Style = ssFlat
          Align = alClient
          TabOrder = 0
          object Label3: TLabel
            Left = 41
            Top = 16
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label4: TLabel
            Left = 180
            Top = 16
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label5: TLabel
            Left = 270
            Top = 16
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Recibo Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label6: TLabel
            Left = 409
            Top = 16
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Recibo Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label7: TLabel
            Left = 19
            Top = 45
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ent/Sai Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label8: TLabel
            Left = 158
            Top = 45
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ent/Sai Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label10: TLabel
            Left = 273
            Top = 45
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Natureza Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label11: TLabel
            Left = 412
            Top = 45
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Natureza Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label12: TLabel
            Left = 30
            Top = 72
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cfop Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label13: TLabel
            Left = 169
            Top = 72
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cfop Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label14: TLabel
            Left = 265
            Top = 72
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Subst. Trib Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label15: TLabel
            Left = 404
            Top = 72
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Subst. Trib Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label16: TLabel
            Left = 9
            Top = 100
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cnd Pgto Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label17: TLabel
            Left = 148
            Top = 100
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cnd Pgto Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label18: TLabel
            Left = 290
            Top = 100
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label19: TLabel
            Left = 429
            Top = 100
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label20: TLabel
            Left = 14
            Top = 128
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cgc/Cpf Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label21: TLabel
            Left = 153
            Top = 128
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cgc/Cpf Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label22: TLabel
            Left = 295
            Top = 128
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'End. Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label23: TLabel
            Left = 434
            Top = 128
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'End. Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label24: TLabel
            Left = 25
            Top = 156
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label25: TLabel
            Left = 164
            Top = 156
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Bairro Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label26: TLabel
            Left = 298
            Top = 156
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cep Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label27: TLabel
            Left = 437
            Top = 156
            Width = 35
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cep Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label28: TLabel
            Left = 20
            Top = 184
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label29: TLabel
            Left = 159
            Top = 184
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label30: TLabel
            Left = 293
            Top = 184
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label31: TLabel
            Left = 432
            Top = 184
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fone Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label32: TLabel
            Left = 35
            Top = 218
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fax Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label33: TLabel
            Left = 43
            Top = 247
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'IE Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label34: TLabel
            Left = 5
            Top = 274
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt Ent/Sai Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label35: TLabel
            Left = 35
            Top = 302
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ped Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label36: TLabel
            Left = 9
            Top = 330
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Duplicata Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label37: TLabel
            Left = 15
            Top = 358
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Venc Vlr Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label38: TLabel
            Left = 9
            Top = 661
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cod Prod Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label39: TLabel
            Left = 154
            Top = 358
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'Venc Vlr Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label40: TLabel
            Left = 148
            Top = 661
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cod Prod Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label41: TLabel
            Left = 148
            Top = 330
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Duplicata Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label42: TLabel
            Left = 174
            Top = 302
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ped Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label43: TLabel
            Left = 144
            Top = 274
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt Ent/Sai Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label44: TLabel
            Left = 182
            Top = 247
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'IE Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label45: TLabel
            Left = 174
            Top = 218
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'Fax Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label46: TLabel
            Left = 306
            Top = 218
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Uf Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label47: TLabel
            Left = 265
            Top = 247
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt Emiss'#227'o Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label48: TLabel
            Left = 257
            Top = 274
            Width = 79
            Height = 13
            Alignment = taRightJustify
            Caption = 'Hora Ent/Sai Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label49: TLabel
            Left = 270
            Top = 302
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Insc. Mun Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label50: TLabel
            Left = 276
            Top = 330
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Venc Dpl Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label52: TLabel
            Left = 290
            Top = 661
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label53: TLabel
            Left = 445
            Top = 218
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Uf Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label54: TLabel
            Left = 404
            Top = 247
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt Emiss'#227'o Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label55: TLabel
            Left = 396
            Top = 274
            Width = 76
            Height = 13
            Alignment = taRightJustify
            Caption = 'Hora Ent/Sai Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label56: TLabel
            Left = 409
            Top = 302
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Insc. Mun Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label57: TLabel
            Left = 415
            Top = 330
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Venc Dpl Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label59: TLabel
            Left = 429
            Top = 661
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label51: TLabel
            Left = 42
            Top = 688
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cf Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label58: TLabel
            Left = 181
            Top = 688
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cf Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label60: TLabel
            Left = 280
            Top = 688
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sit. Trib Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label61: TLabel
            Left = 419
            Top = 688
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Sit. Trib Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label62: TLabel
            Left = 14
            Top = 716
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Unidade Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label63: TLabel
            Left = 153
            Top = 716
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Unidade Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label64: TLabel
            Left = 287
            Top = 716
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qntde Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label65: TLabel
            Left = 426
            Top = 716
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qntde Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label66: TLabel
            Left = 432
            Top = 743
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label67: TLabel
            Left = 293
            Top = 743
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label68: TLabel
            Left = 170
            Top = 743
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Unit  Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label69: TLabel
            Left = 34
            Top = 743
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Unit Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label70: TLabel
            Left = 31
            Top = 771
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Icms Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label71: TLabel
            Left = 170
            Top = 771
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Icms Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label72: TLabel
            Left = 305
            Top = 771
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ipi Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label73: TLabel
            Left = 444
            Top = 771
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ipi Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label74: TLabel
            Left = 14
            Top = 798
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Ipi Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label75: TLabel
            Left = 153
            Top = 798
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Ipi Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label76: TLabel
            Left = 5
            Top = 917
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base Icms Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label77: TLabel
            Left = 16
            Top = 944
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Icms Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label78: TLabel
            Left = -23
            Top = 972
            Width = 95
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base Calc Subst Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label79: TLabel
            Left = 6
            Top = 999
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Icm Subst Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label80: TLabel
            Left = 29
            Top = 1027
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label81: TLabel
            Left = 3
            Top = 1054
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Nota Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label82: TLabel
            Left = 142
            Top = 1054
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Nota Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label83: TLabel
            Left = 168
            Top = 1027
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Total Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label84: TLabel
            Left = 142
            Top = 999
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Icm Subst  Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label85: TLabel
            Left = 116
            Top = 972
            Width = 92
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base Calc Subst Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label86: TLabel
            Left = 155
            Top = 944
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Icms Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label87: TLabel
            Left = 144
            Top = 917
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Base Icms Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label88: TLabel
            Left = 276
            Top = 917
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Frete Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label89: TLabel
            Left = 283
            Top = 944
            Width = 53
            Height = 13
            Alignment = taRightJustify
            Caption = 'Seguro Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label90: TLabel
            Left = 271
            Top = 972
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Despesas Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label91: TLabel
            Left = 305
            Top = 999
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ipi Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label92: TLabel
            Left = 303
            Top = 1027
            Width = 33
            Height = 13
            Alignment = taRightJustify
            Caption = 'Iss Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label93: TLabel
            Left = 442
            Top = 1027
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Iss Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label94: TLabel
            Left = 444
            Top = 999
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ipi Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label95: TLabel
            Left = 410
            Top = 972
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Despesas Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label96: TLabel
            Left = 422
            Top = 944
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Seguro Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label97: TLabel
            Left = 415
            Top = 917
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vlr Frete Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label98: TLabel
            Left = 10
            Top = 1169
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Transpot Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label99: TLabel
            Left = 149
            Top = 1169
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Transpot Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label100: TLabel
            Left = 299
            Top = 1169
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'End Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label101: TLabel
            Left = 438
            Top = 1169
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'End Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label102: TLabel
            Left = 23
            Top = 1195
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qntde Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label103: TLabel
            Left = 162
            Top = 1195
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qntde Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label104: TLabel
            Left = 281
            Top = 1195
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Esp'#233'cie Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label105: TLabel
            Left = 420
            Top = 1195
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Esp'#233'cie Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label106: TLabel
            Left = 24
            Top = 1222
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Marca Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label107: TLabel
            Left = 160
            Top = 1222
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Marca  Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label108: TLabel
            Left = 259
            Top = 1222
            Width = 77
            Height = 13
            Alignment = taRightJustify
            Caption = 'Frete Conta Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label109: TLabel
            Left = 398
            Top = 1222
            Width = 74
            Height = 13
            Alignment = taRightJustify
            Caption = 'Frete Conta Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label110: TLabel
            Left = 20
            Top = 1249
            Width = 52
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label111: TLabel
            Left = 159
            Top = 1249
            Width = 49
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cidade Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label112: TLabel
            Left = 305
            Top = 1249
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label113: TLabel
            Left = 444
            Top = 1249
            Width = 28
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label114: TLabel
            Left = 428
            Top = 1277
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Uf Vei Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label115: TLabel
            Left = 289
            Top = 1277
            Width = 47
            Height = 13
            Alignment = taRightJustify
            Caption = 'Uf Vei Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label116: TLabel
            Left = 167
            Top = 1277
            Width = 41
            Height = 13
            Alignment = taRightJustify
            Caption = 'Placa Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label117: TLabel
            Left = 28
            Top = 1275
            Width = 44
            Height = 13
            Alignment = taRightJustify
            Caption = 'Placa Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label118: TLabel
            Left = 42
            Top = 1304
            Width = 30
            Height = 13
            Alignment = taRightJustify
            Caption = 'Uf Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label119: TLabel
            Left = 181
            Top = 1304
            Width = 27
            Height = 13
            Alignment = taRightJustify
            Caption = 'Uf Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label120: TLabel
            Left = 278
            Top = 1305
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cgc/Cpf Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label121: TLabel
            Left = 417
            Top = 1305
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cgc/Cpf Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label122: TLabel
            Left = 43
            Top = 1331
            Width = 29
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ie Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label123: TLabel
            Left = 14
            Top = 1360
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso Liq Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label124: TLabel
            Left = 182
            Top = 1333
            Width = 26
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ie Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label125: TLabel
            Left = 153
            Top = 1360
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso Liq Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label126: TLabel
            Left = 277
            Top = 1333
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso Brt Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label127: TLabel
            Left = 298
            Top = 1361
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Obs Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label128: TLabel
            Left = 416
            Top = 1333
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Peso Brt Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label129: TLabel
            Left = 437
            Top = 1361
            Width = 35
            Height = 13
            Alignment = taRightJustify
            Caption = 'Obs Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label132: TLabel
            Left = 9
            Top = 1141
            Width = 95
            Height = 14
            Caption = 'Transportadora'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label133: TLabel
            Left = 9
            Top = 895
            Width = 74
            Height = 14
            Caption = 'Fechamento'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label134: TLabel
            Left = 9
            Top = 638
            Width = 57
            Height = 14
            Caption = 'Produtos'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label138: TLabel
            Left = 269
            Top = 799
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Prod Desc Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label139: TLabel
            Left = 408
            Top = 799
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Prod Desc Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label140: TLabel
            Left = 8
            Top = 384
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Mes Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label141: TLabel
            Left = 147
            Top = 384
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Mes Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label142: TLabel
            Left = 276
            Top = 356
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Dia Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label143: TLabel
            Left = 415
            Top = 356
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Dia Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label144: TLabel
            Left = 272
            Top = 382
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Ano Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label145: TLabel
            Left = 411
            Top = 382
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Data Ano Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label146: TLabel
            Left = 34
            Top = 410
            Width = 38
            Height = 13
            Alignment = taRightJustify
            Caption = 'Obs Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label147: TLabel
            Left = 173
            Top = 410
            Width = 35
            Height = 13
            Alignment = taRightJustify
            Caption = 'Obs Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label148: TLabel
            Left = 271
            Top = 408
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vendedor Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label149: TLabel
            Left = 410
            Top = 408
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Vendedor Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label150: TLabel
            Left = 38
            Top = 436
            Width = 34
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ecf Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label151: TLabel
            Left = 177
            Top = 436
            Width = 31
            Height = 13
            Alignment = taRightJustify
            Caption = 'Ecf Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label152: TLabel
            Left = 272
            Top = 1052
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label153: TLabel
            Left = 411
            Top = 1052
            Width = 61
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label154: TLabel
            Left = 7
            Top = 1387
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Inf Compl Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label155: TLabel
            Left = 146
            Top = 1387
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Inf Compl Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label158: TLabel
            Left = 278
            Top = 1387
            Width = 58
            Height = 13
            Alignment = taRightJustify
            Caption = 'Msg Nat Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label159: TLabel
            Left = 417
            Top = 1387
            Width = 55
            Height = 13
            Alignment = taRightJustify
            Caption = 'Msg Nat Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label160: TLabel
            Left = 1
            Top = 1412
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Rodap'#233' Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label161: TLabel
            Left = 140
            Top = 1412
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'N'#186' Rodap'#233' Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label162: TLabel
            Left = 289
            Top = 1410
            Width = 51
            Height = 13
            Alignment = taRightJustify
            Caption = 'Porta Imp.'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label163: TLabel
            Left = -1
            Top = 1081
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto 2 Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label164: TLabel
            Left = 138
            Top = 1081
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Desconto Alt 2'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label165: TLabel
            Left = -1
            Top = 824
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qntde Unid Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label166: TLabel
            Left = 138
            Top = 824
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Qntde Unid Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label167: TLabel
            Left = 273
            Top = 825
            Width = 63
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tipo Unid Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label168: TLabel
            Left = 412
            Top = 825
            Width = 60
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tipo Unid Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label169: TLabel
            Left = 293
            Top = 1080
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'IRRF Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label170: TLabel
            Left = 432
            Top = 1080
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'IRRF Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label171: TLabel
            Left = 30
            Top = 1109
            Width = 42
            Height = 13
            Alignment = taRightJustify
            Caption = 'INSS Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label172: TLabel
            Left = 169
            Top = 1109
            Width = 39
            Height = 13
            Alignment = taRightJustify
            Caption = 'INSS Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label173: TLabel
            Left = 301
            Top = 1108
            Width = 35
            Height = 13
            Alignment = taRightJustify
            Caption = 'PIS Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label174: TLabel
            Left = 440
            Top = 1108
            Width = 32
            Height = 13
            Alignment = taRightJustify
            Caption = 'PIS Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label175: TLabel
            Left = 22
            Top = 758
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tam Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label176: TLabel
            Left = 4
            Top = 564
            Width = 47
            Height = 14
            Caption = 'Rodap'#233
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
          end
          object Label177: TLabel
            Left = 5
            Top = 591
            Width = 67
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt Ent/Sai Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label178: TLabel
            Left = 144
            Top = 591
            Width = 64
            Height = 13
            Alignment = taRightJustify
            Caption = 'Dt Ent/Sai Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label179: TLabel
            Left = 290
            Top = 591
            Width = 46
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label180: TLabel
            Left = 429
            Top = 591
            Width = 43
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label181: TLabel
            Left = 3
            Top = 619
            Width = 69
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Nota Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label182: TLabel
            Left = 142
            Top = 619
            Width = 66
            Height = 13
            Alignment = taRightJustify
            Caption = 'Valor Nota Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label183: TLabel
            Left = 263
            Top = 436
            Width = 73
            Height = 13
            Alignment = taRightJustify
            Caption = 'Emp. Nome Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label184: TLabel
            Left = 402
            Top = 436
            Width = 70
            Height = 13
            Alignment = taRightJustify
            Caption = 'Emp. Nome Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label185: TLabel
            Left = 13
            Top = 462
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Emp. UF Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label186: TLabel
            Left = 152
            Top = 462
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Emp. UF Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label187: TLabel
            Left = 418
            Top = 875
            Width = 50
            Height = 13
            Alignment = taRightJustify
            Caption = 'Tam Nome'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label188: TLabel
            Left = 24
            Top = 850
            Width = 48
            Height = 13
            Alignment = taRightJustify
            Caption = 'Marca Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label189: TLabel
            Left = 163
            Top = 850
            Width = 45
            Height = 13
            Alignment = taRightJustify
            Caption = 'Marca Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label190: TLabel
            Left = 296
            Top = 851
            Width = 40
            Height = 13
            Alignment = taRightJustify
            Caption = 'Lote Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label191: TLabel
            Left = 435
            Top = 851
            Width = 37
            Height = 13
            Alignment = taRightJustify
            Caption = 'Lote Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label192: TLabel
            Left = 277
            Top = 461
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cid Prop Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label193: TLabel
            Left = 416
            Top = 461
            Width = 56
            Height = 13
            Alignment = taRightJustify
            Caption = 'Cid Prop Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label194: TLabel
            Left = 15
            Top = 486
            Width = 57
            Height = 13
            Alignment = taRightJustify
            Caption = 'UF Prop Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label195: TLabel
            Left = 154
            Top = 486
            Width = 54
            Height = 13
            Alignment = taRightJustify
            Caption = 'UF Prop Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label196: TLabel
            Left = 7
            Top = 877
            Width = 65
            Height = 13
            Alignment = taRightJustify
            Caption = 'Lote Valid Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label197: TLabel
            Left = 146
            Top = 877
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'Lote Valid Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label198: TLabel
            Left = 274
            Top = 485
            Width = 62
            Height = 13
            Alignment = taRightJustify
            Caption = 'End Prop Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label199: TLabel
            Left = 413
            Top = 485
            Width = 59
            Height = 13
            Alignment = taRightJustify
            Caption = 'End Prop Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label200: TLabel
            Left = 1
            Top = 511
            Width = 71
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Prop Dst'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object Label201: TLabel
            Left = 140
            Top = 511
            Width = 68
            Height = 13
            Alignment = taRightJustify
            Caption = 'Nome Prop Alt'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
          end
          object dxDBEdit2: TdxDBEdit
            Left = 79
            Top = 11
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_NUM_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit3: TdxDBEdit
            Left = 211
            Top = 11
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_NUM_ALT'
            DataSource = DataSource
          end
          object dxDBEdit4: TdxDBEdit
            Left = 343
            Top = 11
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_NUMRECIBO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit5: TdxDBEdit
            Left = 475
            Top = 11
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_NUMRECIBO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit6: TdxDBEdit
            Left = 79
            Top = 40
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_ENT_SAI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit7: TdxDBEdit
            Left = 211
            Top = 40
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_ENT_SAI_ALT'
            DataSource = DataSource
          end
          object dxDBEdit8: TdxDBEdit
            Left = 343
            Top = 40
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_NATUREZA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit9: TdxDBEdit
            Left = 475
            Top = 40
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_NATUREZA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit10: TdxDBEdit
            Left = 79
            Top = 67
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_CFOP_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit11: TdxDBEdit
            Left = 211
            Top = 67
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_CFOP_ALT'
            DataSource = DataSource
          end
          object dxDBEdit12: TdxDBEdit
            Left = 343
            Top = 67
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_SUBS_TRIB_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit13: TdxDBEdit
            Left = 475
            Top = 67
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_SUBS_TRIB_ALT'
            DataSource = DataSource
          end
          object dxDBEdit14: TdxDBEdit
            Left = 79
            Top = 95
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_CNDPG_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit15: TdxDBEdit
            Left = 211
            Top = 95
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_CNDPG_ALT'
            DataSource = DataSource
          end
          object dxDBEdit16: TdxDBEdit
            Left = 343
            Top = 95
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_NOME_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit17: TdxDBEdit
            Left = 475
            Top = 95
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_NOME_ALT'
            DataSource = DataSource
          end
          object dxDBEdit18: TdxDBEdit
            Left = 79
            Top = 123
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_CGCCPF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit19: TdxDBEdit
            Left = 211
            Top = 123
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_CGCCPF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit20: TdxDBEdit
            Left = 343
            Top = 123
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_END_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit21: TdxDBEdit
            Left = 475
            Top = 123
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_END_ALT'
            DataSource = DataSource
          end
          object dxDBEdit22: TdxDBEdit
            Left = 79
            Top = 151
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_BAIRRO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit23: TdxDBEdit
            Left = 211
            Top = 151
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_BAIRRO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit24: TdxDBEdit
            Left = 343
            Top = 151
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_CEP_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit25: TdxDBEdit
            Left = 475
            Top = 151
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_CEP_ALT'
            DataSource = DataSource
          end
          object dxDBEdit26: TdxDBEdit
            Left = 79
            Top = 179
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_CID_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit27: TdxDBEdit
            Left = 211
            Top = 179
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_CID_ALT'
            DataSource = DataSource
          end
          object dxDBEdit28: TdxDBEdit
            Left = 343
            Top = 179
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_FONE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit29: TdxDBEdit
            Left = 475
            Top = 179
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_FONE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit30: TdxDBEdit
            Left = 79
            Top = 213
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_FAX_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit31: TdxDBEdit
            Left = 79
            Top = 242
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_INSCEST_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit32: TdxDBEdit
            Left = 79
            Top = 269
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_DATENTSAI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit33: TdxDBEdit
            Left = 79
            Top = 297
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_PEDNUM_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit34: TdxDBEdit
            Left = 79
            Top = 325
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_DUPLNUM_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit35: TdxDBEdit
            Left = 79
            Top = 353
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
            TabOrder = 48
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_DUPLVALOR_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit36: TdxDBEdit
            Left = 79
            Top = 656
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
            TabOrder = 80
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_COD_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit37: TdxDBEdit
            Left = 211
            Top = 656
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
            TabOrder = 81
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_COD_ALT'
            DataSource = DataSource
          end
          object dxDBEdit38: TdxDBEdit
            Left = 211
            Top = 353
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
            TabOrder = 49
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_DUPLVALOR_ALT'
            DataSource = DataSource
          end
          object dxDBEdit39: TdxDBEdit
            Left = 211
            Top = 325
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_DUPLNUM_ALT'
            DataSource = DataSource
          end
          object dxDBEdit40: TdxDBEdit
            Left = 211
            Top = 297
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_PEDNUM_ALT'
            DataSource = DataSource
          end
          object dxDBEdit41: TdxDBEdit
            Left = 211
            Top = 269
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_DATENTSAI_ALT'
            DataSource = DataSource
          end
          object dxDBEdit42: TdxDBEdit
            Left = 211
            Top = 242
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_INSCEST_ALT'
            DataSource = DataSource
          end
          object dxDBEdit43: TdxDBEdit
            Left = 211
            Top = 213
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_FAX_ALT'
            DataSource = DataSource
          end
          object dxDBEdit44: TdxDBEdit
            Left = 343
            Top = 213
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_UF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit45: TdxDBEdit
            Left = 343
            Top = 242
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_DATEMIS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit46: TdxDBEdit
            Left = 343
            Top = 269
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_HORASAI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit47: TdxDBEdit
            Left = 343
            Top = 297
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_INSCMUN_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit48: TdxDBEdit
            Left = 343
            Top = 325
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_DUPLVENC_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit50: TdxDBEdit
            Left = 343
            Top = 656
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
            TabOrder = 82
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_PROD_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit51: TdxDBEdit
            Left = 475
            Top = 213
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_UF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit52: TdxDBEdit
            Left = 475
            Top = 242
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_DATEMIS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit53: TdxDBEdit
            Left = 475
            Top = 269
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_HORASAI_ALT'
            DataSource = DataSource
          end
          object dxDBEdit54: TdxDBEdit
            Left = 475
            Top = 297
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
            TabOrder = 43
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_INSCMUN_ALT'
            DataSource = DataSource
          end
          object dxDBEdit55: TdxDBEdit
            Left = 475
            Top = 325
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_DUPLVENC_ALT'
            DataSource = DataSource
          end
          object dxDBEdit57: TdxDBEdit
            Left = 475
            Top = 656
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
            TabOrder = 83
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_PROD_ALT'
            DataSource = DataSource
          end
          object dxDBEdit49: TdxDBEdit
            Left = 79
            Top = 683
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
            TabOrder = 84
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_CF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit56: TdxDBEdit
            Left = 211
            Top = 683
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
            TabOrder = 85
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_CF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit58: TdxDBEdit
            Left = 343
            Top = 683
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
            TabOrder = 86
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_SITTRIB_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit59: TdxDBEdit
            Left = 475
            Top = 683
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
            TabOrder = 87
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_SITTRIB_ALT'
            DataSource = DataSource
          end
          object dxDBEdit60: TdxDBEdit
            Left = 79
            Top = 710
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
            TabOrder = 88
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_UNIDADE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit61: TdxDBEdit
            Left = 211
            Top = 710
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
            TabOrder = 89
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_UNIDADE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit62: TdxDBEdit
            Left = 343
            Top = 710
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
            TabOrder = 90
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_QUANT_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit63: TdxDBEdit
            Left = 475
            Top = 710
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
            TabOrder = 91
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_QUANT_ALT'
            DataSource = DataSource
          end
          object dxDBEdit64: TdxDBEdit
            Left = 475
            Top = 737
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
            TabOrder = 95
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_VALORTOT_ALT'
            DataSource = DataSource
          end
          object dxDBEdit65: TdxDBEdit
            Left = 343
            Top = 737
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
            TabOrder = 94
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_VALORTOT_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit66: TdxDBEdit
            Left = 211
            Top = 737
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
            TabOrder = 93
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_VALORUNIT_ALT'
            DataSource = DataSource
          end
          object dxDBEdit67: TdxDBEdit
            Left = 79
            Top = 737
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
            TabOrder = 92
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_VALORUNIT_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit68: TdxDBEdit
            Left = 79
            Top = 764
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
            TabOrder = 96
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_ICMS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit69: TdxDBEdit
            Left = 211
            Top = 764
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
            TabOrder = 97
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_ICMS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit70: TdxDBEdit
            Left = 343
            Top = 764
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
            TabOrder = 98
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_IPI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit71: TdxDBEdit
            Left = 475
            Top = 764
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
            TabOrder = 99
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_IPI_ALT'
            DataSource = DataSource
          end
          object dxDBEdit72: TdxDBEdit
            Left = 79
            Top = 791
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
            TabOrder = 100
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_VALORIPI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit73: TdxDBEdit
            Left = 211
            Top = 791
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
            TabOrder = 101
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_VALORIPI_ALT'
            DataSource = DataSource
          end
          object dxDBEdit74: TdxDBEdit
            Left = 79
            Top = 912
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
            TabOrder = 115
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_BASEICMS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit75: TdxDBEdit
            Left = 79
            Top = 939
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
            TabOrder = 119
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_VALORICMS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit76: TdxDBEdit
            Left = 79
            Top = 966
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
            TabOrder = 123
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_BASECALCICMS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit77: TdxDBEdit
            Left = 79
            Top = 993
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
            TabOrder = 127
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_VALORICMSSUB_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit78: TdxDBEdit
            Left = 79
            Top = 1020
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
            TabOrder = 131
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_VALORTOTAL_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit79: TdxDBEdit
            Left = 79
            Top = 1047
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
            TabOrder = 135
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_VALORNOTA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit80: TdxDBEdit
            Left = 211
            Top = 1047
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
            TabOrder = 136
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_VALORNOTA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit81: TdxDBEdit
            Left = 211
            Top = 1020
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
            TabOrder = 132
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_VALORTOTAL_ALT'
            DataSource = DataSource
          end
          object dxDBEdit82: TdxDBEdit
            Left = 211
            Top = 993
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
            TabOrder = 128
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_VALORICMSSUB_ALT'
            DataSource = DataSource
          end
          object dxDBEdit83: TdxDBEdit
            Left = 211
            Top = 966
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
            TabOrder = 124
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_BASECALCICMS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit84: TdxDBEdit
            Left = 211
            Top = 939
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
            TabOrder = 120
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_VALORICMS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit85: TdxDBEdit
            Left = 211
            Top = 912
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
            TabOrder = 116
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_BASEICMS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit86: TdxDBEdit
            Left = 343
            Top = 912
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
            TabOrder = 117
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_VALORFRETE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit87: TdxDBEdit
            Left = 343
            Top = 939
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
            TabOrder = 121
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_VALORSEGURO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit88: TdxDBEdit
            Left = 343
            Top = 966
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
            TabOrder = 125
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_DESPESAS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit89: TdxDBEdit
            Left = 343
            Top = 993
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
            TabOrder = 129
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_IPI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit90: TdxDBEdit
            Left = 343
            Top = 1020
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
            TabOrder = 133
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_ISS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit91: TdxDBEdit
            Left = 475
            Top = 1020
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
            TabOrder = 134
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_ISS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit92: TdxDBEdit
            Left = 475
            Top = 993
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
            TabOrder = 130
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_IPI_ALT'
            DataSource = DataSource
          end
          object dxDBEdit93: TdxDBEdit
            Left = 475
            Top = 966
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
            TabOrder = 126
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_DESPESAS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit94: TdxDBEdit
            Left = 475
            Top = 939
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
            TabOrder = 122
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_VALORSEGURO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit95: TdxDBEdit
            Left = 475
            Top = 912
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
            TabOrder = 118
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_VALORFRETE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit96: TdxDBEdit
            Left = 79
            Top = 1164
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
            TabOrder = 147
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_NOME_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit97: TdxDBEdit
            Left = 211
            Top = 1164
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
            TabOrder = 148
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_NOME_ALT'
            DataSource = DataSource
          end
          object dxDBEdit98: TdxDBEdit
            Left = 343
            Top = 1164
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
            TabOrder = 149
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_END_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit99: TdxDBEdit
            Left = 475
            Top = 1164
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
            TabOrder = 150
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_END_ALT'
            DataSource = DataSource
          end
          object dxDBEdit100: TdxDBEdit
            Left = 79
            Top = 1190
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
            TabOrder = 151
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_QUANTIDADE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit101: TdxDBEdit
            Left = 211
            Top = 1190
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
            TabOrder = 152
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_QUANTIDADE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit102: TdxDBEdit
            Left = 343
            Top = 1190
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
            TabOrder = 153
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_ESPECIE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit103: TdxDBEdit
            Left = 475
            Top = 1190
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
            TabOrder = 154
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_ESPECIE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit104: TdxDBEdit
            Left = 79
            Top = 1216
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
            TabOrder = 155
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_MARCA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit105: TdxDBEdit
            Left = 211
            Top = 1216
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
            TabOrder = 156
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_MARCA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit106: TdxDBEdit
            Left = 343
            Top = 1216
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
            TabOrder = 157
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_FRETECONTA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit107: TdxDBEdit
            Left = 475
            Top = 1216
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
            TabOrder = 158
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_FRETECONTA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit108: TdxDBEdit
            Left = 79
            Top = 1243
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
            TabOrder = 159
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_CID_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit109: TdxDBEdit
            Left = 211
            Top = 1243
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
            TabOrder = 160
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_CID_ALT'
            DataSource = DataSource
          end
          object dxDBEdit110: TdxDBEdit
            Left = 343
            Top = 1243
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
            TabOrder = 161
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_NUMERO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit111: TdxDBEdit
            Left = 475
            Top = 1243
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
            TabOrder = 162
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_NUMERO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit112: TdxDBEdit
            Left = 475
            Top = 1270
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
            TabOrder = 166
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_UFVEIALT'
            DataSource = DataSource
          end
          object dxDBEdit113: TdxDBEdit
            Left = 343
            Top = 1270
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
            TabOrder = 165
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_UFVEI_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit114: TdxDBEdit
            Left = 211
            Top = 1270
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
            TabOrder = 164
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_PLACA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit115: TdxDBEdit
            Left = 79
            Top = 1270
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
            TabOrder = 163
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_PLACA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit116: TdxDBEdit
            Left = 79
            Top = 1297
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
            TabOrder = 167
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_UF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit117: TdxDBEdit
            Left = 211
            Top = 1297
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
            TabOrder = 168
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_UF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit118: TdxDBEdit
            Left = 343
            Top = 1298
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
            TabOrder = 169
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_CGCCPF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit119: TdxDBEdit
            Left = 475
            Top = 1298
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
            TabOrder = 170
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_CGCCPF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit120: TdxDBEdit
            Left = 79
            Top = 1326
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
            TabOrder = 171
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_INSCEST_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit121: TdxDBEdit
            Left = 79
            Top = 1353
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
            TabOrder = 175
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_PESOLIQ_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit122: TdxDBEdit
            Left = 211
            Top = 1326
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
            TabOrder = 172
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_INSCEST_ALT'
            DataSource = DataSource
          end
          object dxDBEdit123: TdxDBEdit
            Left = 211
            Top = 1353
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
            TabOrder = 176
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_PESOLIQ_ALT'
            DataSource = DataSource
          end
          object dxDBEdit124: TdxDBEdit
            Left = 343
            Top = 1326
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
            TabOrder = 173
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_PESBRT_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit125: TdxDBEdit
            Left = 343
            Top = 1354
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
            TabOrder = 177
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'TRANS_OBS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit126: TdxDBEdit
            Left = 475
            Top = 1326
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
            TabOrder = 174
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_PESOBRT_ALT'
            DataSource = DataSource
          end
          object dxDBEdit127: TdxDBEdit
            Left = 475
            Top = 1354
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
            TabOrder = 178
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'TRANS_OBS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit131: TdxDBEdit
            Left = 343
            Top = 792
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
            TabOrder = 102
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_DESC_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit132: TdxDBEdit
            Left = 475
            Top = 792
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
            TabOrder = 103
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_DESC_ALT'
            DataSource = DataSource
          end
          object dxDBEdit133: TdxDBEdit
            Left = 211
            Top = 379
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'DATA_MES_ALT'
            DataSource = DataSource
          end
          object dxDBEdit134: TdxDBEdit
            Left = 343
            Top = 351
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DATA_DIA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit135: TdxDBEdit
            Left = 475
            Top = 351
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'DATA_DIA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit136: TdxDBEdit
            Left = 343
            Top = 377
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DATA_ANO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit137: TdxDBEdit
            Left = 475
            Top = 377
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'DATA_ANO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit138: TdxDBEdit
            Left = 79
            Top = 379
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'DATA_MES_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit139: TdxDBEdit
            Left = 79
            Top = 405
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'OBS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit140: TdxDBEdit
            Left = 211
            Top = 405
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'OBS_ALT'
            DataSource = DataSource
          end
          object dxDBEdit141: TdxDBEdit
            Left = 343
            Top = 403
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_VENDEDOR_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit142: TdxDBEdit
            Left = 475
            Top = 403
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_VENDEDOR_ALT'
            DataSource = DataSource
          end
          object dxDBEdit143: TdxDBEdit
            Left = 79
            Top = 430
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_ECF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit144: TdxDBEdit
            Left = 211
            Top = 430
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
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_ECF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit145: TdxDBEdit
            Left = 343
            Top = 1046
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
            TabOrder = 137
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_DESCONTO_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit146: TdxDBEdit
            Left = 475
            Top = 1046
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
            TabOrder = 138
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_DESCONTO_ALT'
            DataSource = DataSource
          end
          object dxDBEdit147: TdxDBEdit
            Left = 79
            Top = 1380
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
            TabOrder = 179
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_INDCOMPL_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit148: TdxDBEdit
            Left = 211
            Top = 1380
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
            TabOrder = 180
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_INFCOMPL_ALT'
            DataSource = DataSource
          end
          object dxDBEdit151: TdxDBEdit
            Left = 343
            Top = 1380
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
            TabOrder = 181
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_MSGNAT_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit152: TdxDBEdit
            Left = 475
            Top = 1380
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
            TabOrder = 182
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_MSGNAT_ALT'
            DataSource = DataSource
          end
          object dxDBEdit153: TdxDBEdit
            Left = 79
            Top = 1407
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
            TabOrder = 183
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_NUMRDP_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit154: TdxDBEdit
            Left = 211
            Top = 1407
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
            TabOrder = 184
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_NUMRDP_ALT'
            DataSource = DataSource
          end
          object dxDBEdit155: TdxDBEdit
            Left = 343
            Top = 1405
            Width = 174
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.HotTrack = True
            TabOrder = 185
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PORTA_IMPRESSAO'
            DataSource = DataSource
          end
          object dxDBEdit156: TdxDBEdit
            Left = 79
            Top = 1074
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
            TabOrder = 139
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_DESCONTO_DST2'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit157: TdxDBEdit
            Left = 211
            Top = 1074
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
            TabOrder = 140
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_DESCONTO_ALT2'
            DataSource = DataSource
          end
          object dxDBEdit158: TdxDBEdit
            Left = 79
            Top = 817
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
            TabOrder = 104
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_QNTD_UNID_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit159: TdxDBEdit
            Left = 211
            Top = 817
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
            TabOrder = 105
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_QNTD_UNID_ALT'
            DataSource = DataSource
          end
          object dxDBEdit160: TdxDBEdit
            Left = 343
            Top = 818
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
            TabOrder = 106
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_TIPO_UNID_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit161: TdxDBEdit
            Left = 475
            Top = 818
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
            TabOrder = 107
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_TIPO_UNID_ALT'
            DataSource = DataSource
          end
          object dxDBEdit162: TdxDBEdit
            Left = 343
            Top = 1073
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
            TabOrder = 141
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_IRRF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit163: TdxDBEdit
            Left = 475
            Top = 1073
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
            TabOrder = 142
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_IRRF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit164: TdxDBEdit
            Left = 79
            Top = 1102
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
            TabOrder = 143
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taRightJustify
            DataField = 'NOTA_INSS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 65
          end
          object dxDBEdit165: TdxDBEdit
            Left = 211
            Top = 1102
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
            TabOrder = 144
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taRightJustify
            CharCase = ecUpperCase
            DataField = 'NOTA_INSS_ALT'
            DataSource = DataSource
            StoredValues = 1
          end
          object dxDBEdit166: TdxDBEdit
            Left = 343
            Top = 1101
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
            TabOrder = 145
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taRightJustify
            DataField = 'NOTA_PIS_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 65
          end
          object dxDBEdit167: TdxDBEdit
            Left = 475
            Top = 1101
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
            TabOrder = 146
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            Alignment = taRightJustify
            CharCase = ecUpperCase
            DataField = 'NOTA_PIS_ALT'
            DataSource = DataSource
            StoredValues = 1
          end
          object dxDBEdit168: TdxDBEdit
            Left = 475
            Top = 870
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
            TabOrder = 114
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_TAM_NOME'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit169: TdxDBEdit
            Left = 79
            Top = 586
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
            TabOrder = 74
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_DATENTSAI_RODAPE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit170: TdxDBEdit
            Left = 211
            Top = 586
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
            TabOrder = 75
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_DATENTSAI_RODAPE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit171: TdxDBEdit
            Left = 343
            Top = 586
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
            TabOrder = 76
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_NOME_RODAPE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit172: TdxDBEdit
            Left = 475
            Top = 586
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
            TabOrder = 77
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_NOME_RODAPE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit173: TdxDBEdit
            Left = 79
            Top = 614
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
            TabOrder = 78
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'FEC_VALORNOTA_RODAPE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit174: TdxDBEdit
            Left = 211
            Top = 614
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
            TabOrder = 79
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'FEC_VALORNOTA_RODAPE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit175: TdxDBEdit
            Left = 343
            Top = 430
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
            TabOrder = 62
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_EMPRESA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit176: TdxDBEdit
            Left = 475
            Top = 430
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
            TabOrder = 63
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_EMPRESA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit177: TdxDBEdit
            Left = 79
            Top = 456
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
            TabOrder = 64
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'NOTA_EMPRESA_UF_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit178: TdxDBEdit
            Left = 211
            Top = 456
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
            TabOrder = 65
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'NOTA_EMPRESA_UF_ALT'
            DataSource = DataSource
          end
          object dxDBEdit179: TdxDBEdit
            Left = 79
            Top = 843
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
            TabOrder = 108
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_MARCA_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit180: TdxDBEdit
            Left = 211
            Top = 843
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
            TabOrder = 109
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_MARCA_ALT'
            DataSource = DataSource
          end
          object dxDBEdit181: TdxDBEdit
            Left = 343
            Top = 844
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
            TabOrder = 110
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_LOTE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit182: TdxDBEdit
            Left = 475
            Top = 844
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
            TabOrder = 111
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_LOTE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit183: TdxDBEdit
            Left = 343
            Top = 455
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
            TabOrder = 66
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_CID_PROP_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit184: TdxDBEdit
            Left = 475
            Top = 455
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
            TabOrder = 67
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_CID_PROP_ALT'
            DataSource = DataSource
          end
          object dxDBEdit185: TdxDBEdit
            Left = 79
            Top = 480
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
            TabOrder = 68
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_UF_PROP_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit186: TdxDBEdit
            Left = 211
            Top = 480
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
            TabOrder = 69
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_UF_PROP_ALT'
            DataSource = DataSource
          end
          object dxDBEdit187: TdxDBEdit
            Left = 79
            Top = 870
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
            TabOrder = 112
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'PROD_LOTE_VALIDADE_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit188: TdxDBEdit
            Left = 211
            Top = 870
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
            TabOrder = 113
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'PROD_LOTE_VALIDADE_ALT'
            DataSource = DataSource
          end
          object dxDBEdit189: TdxDBEdit
            Left = 343
            Top = 479
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
            TabOrder = 70
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_END_PROP_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit190: TdxDBEdit
            Left = 475
            Top = 479
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
            TabOrder = 71
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_END_PROP_ALT'
            DataSource = DataSource
          end
          object dxDBEdit191: TdxDBEdit
            Left = 79
            Top = 505
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
            TabOrder = 72
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            DataField = 'CLI_NOME_PROP_DST'
            DataSource = DataSource
            ReadOnly = False
            StoredValues = 64
          end
          object dxDBEdit192: TdxDBEdit
            Left = 211
            Top = 505
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
            TabOrder = 73
            OnEnter = dxDBEdit1Enter
            OnExit = dxDBEdit1Exit
            OnKeyDown = dxDBEdit1KeyDown
            CharCase = ecUpperCase
            DataField = 'CLI_NOME_PROP_ALT'
            DataSource = DataSource
          end
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
    Left = 229
    Top = 7
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
    Left = 318
    Top = 8
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
      FloatLeft = 280
      FloatTop = 417
      FloatClientWidth = 66
      FloatClientHeight = 132
      ItemLinks = <
        item
          Visible = True
          ItemName = 'dxBarDBNavFirst1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavPrev1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavNext1'
        end
        item
          Visible = True
          ItemName = 'dxBarDBNavLast1'
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
    object dxBarDBNavFirst1: TdxBarDBNavButton
      Caption = 'First'
      Category = 1
      Enabled = False
      Hint = 'First'
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
      BarDBNavigator = BarDBNavigator
      NavButton = dxbnFirst
    end
    object dxBarDBNavPrev1: TdxBarDBNavButton
      Caption = 'Prior'
      Category = 1
      Enabled = False
      Hint = 'Prior'
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
      BarDBNavigator = BarDBNavigator
      NavButton = dxbnPrior
    end
    object dxBarDBNavNext1: TdxBarDBNavButton
      Caption = 'Next'
      Category = 1
      Enabled = False
      Hint = 'Next'
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
      BarDBNavigator = BarDBNavigator
      NavButton = dxbnNext
    end
    object dxBarDBNavLast1: TdxBarDBNavButton
      Caption = 'Last'
      Category = 1
      Enabled = False
      Hint = 'Last'
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
      BarDBNavigator = BarDBNavigator
      NavButton = dxbnLast
    end
  end
  object Actions: TActionList
    Left = 259
    Top = 8
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
  end
  object DataSource: TDataSource
    DataSet = DMCadastros.Serie
    OnStateChange = DataSourceStateChange
    OnDataChange = DataSourceDataChange
    Left = 288
    Top = 8
  end
  object rptSerieNF: TppReport
    AutoStop = False
    DataPipeline = ppSerieNF
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297000
    PrinterSetup.mmPaperWidth = 210000
    PrinterSetup.PaperSize = 9
    Template.DatabaseSettings.DataPipeline = ppLayout
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_SERIE_NF'
    Template.FileName = 'D:\Updates\Manager\SerieNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 199
    Top = 152
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppSerieNF'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 40746
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
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
        mmHeight = 3969
        mmLeft = 180182
        mmTop = 1058
        mmWidth = 17463
        BandType = 0
      end
      object Cliente: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRO_BAIRRO'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 11113
        mmWidth = 81756
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 16140
        mmWidth = 82021
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 21167
        mmWidth = 82021
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91546
        mmTop = 26194
        mmWidth = 82021
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LOCALIZACAO_1'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91281
        mmTop = 31221
        mmWidth = 82021
        BandType = 0
      end
    end
    object ppDetailBand1: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 20108
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CTR_NOME_CONTRATO'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 0
        mmWidth = 65881
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OFC_PLACA'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TROCO'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 94721
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CPF_CGC'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 143669
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ITEM'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3440
        mmLeft = 183621
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 179652
        mmTop = 0
        mmWidth = 17198
        BandType = 8
      end
    end
    object ppParameterList6: TppParameterList
    end
  end
  object ppSerieNF: TppDBPipeline
    DataSource = dsPedidos
    UserName = 'SerieNF'
    Left = 140
    Top = 152
    object ppSerieNFppField1: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppSerieNFppField2: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppSerieNFppField3: TppField
      FieldAlias = 'ENDERECO_CLI'
      FieldName = 'ENDERECO_CLI'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppSerieNFppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppSerieNFppField5: TppField
      FieldAlias = 'DT_VENDA'
      FieldName = 'DT_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppSerieNFppField6: TppField
      FieldAlias = 'DATA_CAIXA'
      FieldName = 'DATA_CAIXA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppSerieNFppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppSerieNFppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ITEM'
      FieldName = 'DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppSerieNFppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppSerieNFppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_BRUTO'
      FieldName = 'TOTAL_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppSerieNFppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_CUPOM'
      FieldName = 'NUM_CUPOM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppSerieNFppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppSerieNFppField13: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppSerieNFppField14: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppSerieNFppField15: TppField
      FieldAlias = 'FORMA_PAGTO'
      FieldName = 'FORMA_PAGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppSerieNFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppSerieNFppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppSerieNFppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppSerieNFppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppSerieNFppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppSerieNFppField21: TppField
      FieldAlias = 'PARCELAMENTO'
      FieldName = 'PARCELAMENTO'
      FieldLength = 500
      DisplayWidth = 500
      Position = 20
    end
    object ppSerieNFppField22: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object ppSerieNFppField23: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppSerieNFppField24: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppSerieNFppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_ITEM_DESCTO'
      FieldName = 'PCT_ITEM_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppSerieNFppField26: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 25
    end
    object ppSerieNFppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppSerieNFppField28: TppField
      FieldAlias = 'CGC_CPF_CLI'
      FieldName = 'CGC_CPF_CLI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppSerieNFppField29: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 28
    end
    object ppSerieNFppField30: TppField
      FieldAlias = 'NOME_TIPO_DOCTO'
      FieldName = 'NOME_TIPO_DOCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppSerieNFppField31: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object ppSerieNFppField32: TppField
      FieldAlias = 'HORA'
      FieldName = 'HORA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 31
    end
    object ppSerieNFppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_DESCTO_VENDA'
      FieldName = 'PCT_DESCTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppSerieNFppField34: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 33
    end
    object ppSerieNFppField35: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppSerieNFppField36: TppField
      FieldAlias = 'CEP_EMP'
      FieldName = 'CEP_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppSerieNFppField37: TppField
      FieldAlias = 'BAIRRO_EMP'
      FieldName = 'BAIRRO_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppSerieNFppField38: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object ppSerieNFppField39: TppField
      FieldAlias = 'FONE_CLIENTE'
      FieldName = 'FONE_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppSerieNFppField40: TppField
      FieldAlias = 'ENDERECO_EMP'
      FieldName = 'ENDERECO_EMP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 39
    end
    object ppSerieNFppField41: TppField
      FieldAlias = 'FANTASIA_CLI'
      FieldName = 'FANTASIA_CLI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object ppSerieNFppField42: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 41
    end
    object ppSerieNFppField43: TppField
      FieldAlias = 'CNPJ_EMP'
      FieldName = 'CNPJ_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 42
    end
    object ppSerieNFppField44: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 43
    end
    object ppSerieNFppField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONT_ITENS'
      FieldName = 'CONT_ITENS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 44
    end
    object ppSerieNFppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 45
    end
    object ppSerieNFppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 46
    end
    object ppSerieNFppField48: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 47
    end
    object ppSerieNFppField49: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 48
    end
    object ppSerieNFppField50: TppField
      FieldAlias = 'MRC_NOME'
      FieldName = 'MRC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 49
    end
    object ppSerieNFppField51: TppField
      FieldAlias = 'PRO_NOME'
      FieldName = 'PRO_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object ppSerieNFppField52: TppField
      FieldAlias = 'PRO_PROPRIETARIO'
      FieldName = 'PRO_PROPRIETARIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 51
    end
    object ppSerieNFppField53: TppField
      FieldAlias = 'PRO_IE'
      FieldName = 'PRO_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 52
    end
    object ppSerieNFppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_PROPRIEDADE'
      FieldName = 'PRO_PROPRIEDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppSerieNFppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_ENDERECO'
      FieldName = 'PRO_ENDERECO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 54
    end
    object ppSerieNFppField56: TppField
      FieldAlias = 'PRO_COMPLEMENTO'
      FieldName = 'PRO_COMPLEMENTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 55
    end
    object ppSerieNFppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_CIDADE'
      FieldName = 'PRO_CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppSerieNFppField58: TppField
      FieldAlias = 'PRO_UF'
      FieldName = 'PRO_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 57
    end
    object ppSerieNFppField59: TppField
      FieldAlias = 'PRO_CEP'
      FieldName = 'PRO_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 58
    end
    object ppSerieNFppField60: TppField
      FieldAlias = 'PRO_AREA_TOTAL'
      FieldName = 'PRO_AREA_TOTAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 59
    end
    object ppSerieNFppField61: TppField
      FieldAlias = 'PRO_ATIVA'
      FieldName = 'PRO_ATIVA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 60
    end
    object ppSerieNFppField62: TppField
      FieldAlias = 'PRO_NUMERO'
      FieldName = 'PRO_NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 61
    end
    object ppSerieNFppField63: TppField
      FieldAlias = 'PRO_CPF'
      FieldName = 'PRO_CPF'
      FieldLength = 20
      DisplayWidth = 20
      Position = 62
    end
    object ppSerieNFppField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRO_TECNICO'
      FieldName = 'PRO_TECNICO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
    object ppSerieNFppField65: TppField
      FieldAlias = 'PSA_CELULAR'
      FieldName = 'PSA_CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 64
    end
    object ppSerieNFppField66: TppField
      FieldAlias = 'PSA_FAX'
      FieldName = 'PSA_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 65
    end
    object ppSerieNFppField67: TppField
      FieldAlias = 'VDI_GRADE'
      FieldName = 'VDI_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 66
    end
    object ppSerieNFppField68: TppField
      FieldAlias = 'VDI_NUMERO'
      FieldName = 'VDI_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 67
    end
    object ppSerieNFppField69: TppField
      FieldAlias = 'GRD_GRADE'
      FieldName = 'GRD_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 68
    end
    object ppSerieNFppField70: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_MATERIAL'
      FieldName = 'GRD_MATERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 69
    end
    object ppSerieNFppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_COR'
      FieldName = 'GRD_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 70
    end
    object ppSerieNFppField72: TppField
      FieldAlias = 'GRD_NOME_MATERIAL'
      FieldName = 'GRD_NOME_MATERIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 71
    end
    object ppSerieNFppField73: TppField
      FieldAlias = 'GRD_NOME_COR'
      FieldName = 'GRD_NOME_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 72
    end
    object ppSerieNFppField74: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_PERFIL'
      FieldName = 'GRD_PERFIL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 73
    end
    object ppSerieNFppField75: TppField
      FieldAlias = 'GRD_NOME_PERFIL'
      FieldName = 'GRD_NOME_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 74
    end
    object ppSerieNFppField76: TppField
      FieldAlias = 'GRD_NUMERO'
      FieldName = 'GRD_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 75
    end
    object ppSerieNFppField77: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_ORDEM'
      FieldName = 'GRD_ORDEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 76
    end
    object ppSerieNFppField78: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 77
    end
    object ppSerieNFppField79: TppField
      FieldAlias = 'PC_PARCELAMENTO'
      FieldName = 'PC_PARCELAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 78
    end
    object ppSerieNFppField80: TppField
      FieldAlias = 'PRO_RUA_NOME'
      FieldName = 'PRO_RUA_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 79
    end
    object ppSerieNFppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'TROCO'
      FieldName = 'TROCO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 80
    end
    object ppSerieNFppField82: TppField
      FieldAlias = 'TRP_NOME'
      FieldName = 'TRP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 81
    end
    object ppSerieNFppField83: TppField
      FieldAlias = 'TRP_CNPJ'
      FieldName = 'TRP_CNPJ'
      FieldLength = 15
      DisplayWidth = 15
      Position = 82
    end
    object ppSerieNFppField84: TppField
      FieldAlias = 'TRP_PLACA'
      FieldName = 'TRP_PLACA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 83
    end
    object ppSerieNFppField85: TppField
      FieldAlias = 'TRP_ENDERECO'
      FieldName = 'TRP_ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 84
    end
    object ppSerieNFppField86: TppField
      FieldAlias = 'TRP_CIDADE'
      FieldName = 'TRP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 85
    end
    object ppSerieNFppField87: TppField
      FieldAlias = 'TRP_UF'
      FieldName = 'TRP_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 86
    end
    object ppSerieNFppField88: TppField
      FieldAlias = 'TRP_UF_VEICULO'
      FieldName = 'TRP_UF_VEICULO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 87
    end
    object ppSerieNFppField89: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_FRETE'
      FieldName = 'TRP_FRETE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 88
    end
    object ppSerieNFppField90: TppField
      FieldAlias = 'TRP_IE'
      FieldName = 'TRP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 89
    end
    object ppSerieNFppField91: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_LIQ'
      FieldName = 'TRP_PESO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 90
    end
    object ppSerieNFppField92: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_BRUTO'
      FieldName = 'TRP_PESO_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 91
    end
    object ppSerieNFppField93: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_QTDE'
      FieldName = 'TRP_PESO_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 92
    end
    object ppSerieNFppField94: TppField
      FieldAlias = 'TRP_ESPECIE'
      FieldName = 'TRP_ESPECIE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 93
    end
    object ppSerieNFppField95: TppField
      FieldAlias = 'TRP_MARCA'
      FieldName = 'TRP_MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 94
    end
    object ppSerieNFppField96: TppField
      FieldAlias = 'TRP_NUMERO'
      FieldName = 'TRP_NUMERO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 95
    end
    object ppSerieNFppField97: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_FRETE'
      FieldName = 'VD_VLR_FRETE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 96
    end
    object ppSerieNFppField98: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC'
      FieldName = 'VD_BASE_CALC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 97
    end
    object ppSerieNFppField99: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC_SUB'
      FieldName = 'VD_BASE_CALC_SUB'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 98
    end
    object ppSerieNFppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM_SUB'
      FieldName = 'VD_VLR_ICM_SUB'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 99
    end
    object ppSerieNFppField101: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM'
      FieldName = 'VD_VLR_ICM'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 100
    end
    object ppSerieNFppField102: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_PROD'
      FieldName = 'VD_TOTAL_PROD'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 101
    end
    object ppSerieNFppField103: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_SEGURO'
      FieldName = 'VD_VLR_SEGURO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 102
    end
    object ppSerieNFppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_OUTRAS_DESP'
      FieldName = 'VD_VLR_OUTRAS_DESP'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 103
    end
    object ppSerieNFppField105: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_IPI'
      FieldName = 'VD_VLR_IPI'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 104
    end
    object ppSerieNFppField106: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_NF'
      FieldName = 'VD_TOTAL_NF'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 105
    end
    object ppSerieNFppField107: TppField
      FieldAlias = 'S_VD_TOTAL_NF'
      FieldName = 'S_VD_TOTAL_NF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 106
    end
    object ppSerieNFppField108: TppField
      FieldAlias = 'S_VD_VLR_IPI'
      FieldName = 'S_VD_VLR_IPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 107
    end
    object ppSerieNFppField109: TppField
      FieldAlias = 'S_VD_VLR_OUTRAS_DESP'
      FieldName = 'S_VD_VLR_OUTRAS_DESP'
      FieldLength = 30
      DisplayWidth = 30
      Position = 108
    end
    object ppSerieNFppField110: TppField
      FieldAlias = 'S_VD_VLR_SEGURO'
      FieldName = 'S_VD_VLR_SEGURO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 109
    end
    object ppSerieNFppField111: TppField
      FieldAlias = 'S_VD_VLR_FRETE'
      FieldName = 'S_VD_VLR_FRETE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 110
    end
    object ppSerieNFppField112: TppField
      FieldAlias = 'S_VD_TOTAL_PROD'
      FieldName = 'S_VD_TOTAL_PROD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 111
    end
    object ppSerieNFppField113: TppField
      FieldAlias = 'S_VD_VLR_ICM'
      FieldName = 'S_VD_VLR_ICM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 112
    end
    object ppSerieNFppField114: TppField
      FieldAlias = 'S_VD_VLR_ICM_SUB'
      FieldName = 'S_VD_VLR_ICM_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 113
    end
    object ppSerieNFppField115: TppField
      FieldAlias = 'S_VD_BASE_CALC'
      FieldName = 'S_VD_BASE_CALC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 114
    end
    object ppSerieNFppField116: TppField
      FieldAlias = 'S_VD_BASE_CALC_SUB'
      FieldName = 'S_VD_BASE_CALC_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 115
    end
    object ppSerieNFppField117: TppField
      FieldAlias = 'S_TOTAL_BRUTO'
      FieldName = 'S_TOTAL_BRUTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 116
    end
    object ppSerieNFppField118: TppField
      FieldAlias = 'S_DESC_ACRESC'
      FieldName = 'S_DESC_ACRESC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 117
    end
    object ppSerieNFppField119: TppField
      FieldAlias = 'S_TOTAL'
      FieldName = 'S_TOTAL'
      FieldLength = 30
      DisplayWidth = 30
      Position = 118
    end
    object ppSerieNFppField120: TppField
      FieldAlias = 'S_MSG_PROX_FOLHA'
      FieldName = 'S_MSG_PROX_FOLHA'
      FieldLength = 100
      DisplayWidth = 100
      Position = 119
    end
    object ppSerieNFppField121: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CFOP'
      FieldName = 'VD_CFOP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 120
    end
    object ppSerieNFppField122: TppField
      FieldAlias = 'VD_CFOP_DESC'
      FieldName = 'VD_CFOP_DESC'
      FieldLength = 50
      DisplayWidth = 50
      Position = 121
    end
    object ppSerieNFppField123: TppField
      FieldAlias = 'PROD_COMPLEMENTO'
      FieldName = 'PROD_COMPLEMENTO'
      FieldLength = 120
      DisplayWidth = 120
      Position = 122
    end
    object ppSerieNFppField124: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_ITEN'
      FieldName = 'PESO_ITEN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 123
    end
    object ppSerieNFppField125: TppField
      FieldAlias = 'VD_DATA_BASE'
      FieldName = 'VD_DATA_BASE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 124
    end
    object ppSerieNFppField126: TppField
      FieldAlias = 'SERV_COMPLEMENTO'
      FieldName = 'SERV_COMPLEMENTO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 125
      Searchable = False
      Sortable = False
    end
    object ppSerieNFppField127: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_DESC_ITEM'
      FieldName = 'TOTAL_DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 126
    end
    object ppSerieNFppField128: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 127
    end
    object ppSerieNFppField129: TppField
      FieldAlias = 'VD_DESC_CARREGAMENTO'
      FieldName = 'VD_DESC_CARREGAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 128
    end
    object ppSerieNFppField130: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_INDICE'
      FieldName = 'COD_INDICE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 129
    end
    object ppSerieNFppField131: TppField
      FieldAlias = 'PRO_BAIRRO'
      FieldName = 'PRO_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 130
    end
    object ppSerieNFppField132: TppField
      FieldAlias = 'LOCALIZACAO_1'
      FieldName = 'LOCALIZACAO_1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 131
    end
    object ppSerieNFppField133: TppField
      FieldAlias = 'LOCALIZACAO_2'
      FieldName = 'LOCALIZACAO_2'
      FieldLength = 30
      DisplayWidth = 30
      Position = 132
    end
    object ppSerieNFppField134: TppField
      FieldAlias = 'LOCALIZACAO_3'
      FieldName = 'LOCALIZACAO_3'
      FieldLength = 30
      DisplayWidth = 30
      Position = 133
    end
    object ppSerieNFppField135: TppField
      FieldAlias = 'OFC_PLACA'
      FieldName = 'OFC_PLACA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 134
    end
    object ppSerieNFppField136: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTR_COD_CONTRATO'
      FieldName = 'CTR_COD_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 135
    end
    object ppSerieNFppField137: TppField
      FieldAlias = 'CTR_NOME_CONTRATO'
      FieldName = 'CTR_NOME_CONTRATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 136
    end
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
    Report = rptSerieNF
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 230
    Top = 152
  end
  object ppLayout: TppDBPipeline
    DataSource = DMCadastros.dsEdtSerieNF
    UserName = 'SerieNF1'
    Left = 169
    Top = 152
  end
  object ppLayoutCT: TppDBPipeline
    DataSource = DMCadastros.dsEdtCT13
    UserName = 'LayoutCT'
    Left = 585
    Top = 184
  end
  object rptCT13: TppReport
    AutoStop = False
    DataPipeline = ppCT13
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 184600
    PrinterSetup.mmPaperWidth = 220800
    PrinterSetup.PaperSize = 256
    Template.DatabaseSettings.DataPipeline = ppLayoutCT
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_CT13'
    Template.FileName = 'D:\Updates\Manager\CT13(Pampa).rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 555
    Top = 184
    Version = '12.03'
    mmColumnWidth = 297000
    DataPipelineName = 'ppCT13'
    object ppDetailBand2: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 112977
      mmPrintPosition = 0
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSC_ESTADUAL'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 6350
        mmWidth = 56621
        BandType = 4
      end
      object ppDBText10: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_PROPRIEDADE'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 114300
        mmTop = 6350
        mmWidth = 78052
        BandType = 4
      end
      object ppDBText12: TppDBText
        UserName = 'DBText12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PECUARISTA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 14817
        mmWidth = 188384
        BandType = 4
      end
      object ppDBText13: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_PROPRIEDADE'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 23283
        mmWidth = 188384
        BandType = 4
      end
      object ppDBText14: TppDBText
        UserName = 'DBText14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_PECUARISTA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 42333
        mmTop = 29633
        mmWidth = 150548
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMAIL'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 38100
        mmWidth = 70644
        BandType = 4
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CELULAR'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 38100
        mmWidth = 82286
        BandType = 4
      end
      object ppDBText20: TppDBText
        UserName = 'DBText20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_PECUARISTA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 50800
        mmWidth = 99484
        BandType = 4
      end
      object ppDBText21: TppDBText
        UserName = 'DBText21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UF'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 107950
        mmTop = 50800
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText22: TppDBText
        UserName = 'DBText22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 139700
        mmTop = 50800
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText23: TppDBText
        UserName = 'DBText23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAX'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 175684
        mmTop = 50800
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText24: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_DOSES'
        DataPipeline = ppCT13
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 61383
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText25: TppDBText
        UserName = 'DBText25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'LABORATORIO'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 69850
        mmWidth = 56886
        BandType = 4
      end
      object ppDBText26: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PARTIDA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 69850
        mmWidth = 28840
        BandType = 4
      end
      object ppDBText27: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_FABRICACAO'
        DataPipeline = ppCT13
        DisplayFormat = 'dd/mm/yy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 155575
        mmTop = 69850
        mmWidth = 35190
        BandType = 4
      end
      object ppDBText28: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_NF'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 4233
        mmTop = 95250
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText29: TppDBText
        UserName = 'DBText29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_COMPRA'
        DataPipeline = ppCT13
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCT13'
        mmHeight = 3969
        mmLeft = 110067
        mmTop = 95250
        mmWidth = 17198
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME DA REVENDA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 4233
        mmTop = 82550
        mmWidth = 34290
        BandType = 4
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MUNIC'#205'PIO UF - REVENDA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 110067
        mmTop = 84667
        mmWidth = 44281
        BandType = 4
      end
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppCT13: TppDBPipeline
    DataSource = DmVendas2.dsQryCT13
    UserName = 'ppCT13'
    Left = 524
    Top = 184
    object ppCT13ppField1: TppField
      FieldAlias = 'INSC_ESTADUAL'
      FieldName = 'INSC_ESTADUAL'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object ppCT13ppField2: TppField
      FieldAlias = 'CNPJ_PROPRIEDADE'
      FieldName = 'CNPJ_PROPRIEDADE'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
    object ppCT13ppField3: TppField
      FieldAlias = 'PECUARISTA'
      FieldName = 'PECUARISTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppCT13ppField4: TppField
      FieldAlias = 'PROPRIEDADE'
      FieldName = 'PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object ppCT13ppField5: TppField
      FieldAlias = 'CIDADE_PROPRIEDADE'
      FieldName = 'CIDADE_PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppCT13ppField6: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppCT13ppField7: TppField
      FieldAlias = 'CELULAR'
      FieldName = 'CELULAR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 6
    end
    object ppCT13ppField8: TppField
      FieldAlias = 'CIDADE_PECUARISTA'
      FieldName = 'CIDADE_PECUARISTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppCT13ppField9: TppField
      FieldAlias = 'UF'
      FieldName = 'UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 8
    end
    object ppCT13ppField10: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppCT13ppField11: TppField
      FieldAlias = 'EMAIL'
      FieldName = 'EMAIL'
      FieldLength = 80
      DisplayWidth = 80
      Position = 10
    end
    object ppCT13ppField12: TppField
      FieldAlias = 'FAX'
      FieldName = 'FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 11
    end
    object ppCT13ppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_DOSES'
      FieldName = 'NUM_DOSES'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppCT13ppField14: TppField
      FieldAlias = 'PARTIDA'
      FieldName = 'PARTIDA'
      FieldLength = 10
      DisplayWidth = 10
      Position = 13
    end
    object ppCT13ppField15: TppField
      FieldAlias = 'LABORATORIO'
      FieldName = 'LABORATORIO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppCT13ppField16: TppField
      FieldAlias = 'DATA_FABRICACAO'
      FieldName = 'DATA_FABRICACAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 15
    end
    object ppCT13ppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppCT13ppField18: TppField
      FieldAlias = 'DATA_COMPRA'
      FieldName = 'DATA_COMPRA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 17
    end
    object ppCT13ppField19: TppField
      FieldAlias = 'ENDERECO_PROPRIEDADE'
      FieldName = 'ENDERECO_PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object ppCT13ppField20: TppField
      FieldAlias = 'ENDERECO_PECUARISTA'
      FieldName = 'ENDERECO_PECUARISTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 19
    end
    object ppCT13ppField21: TppField
      FieldAlias = 'DOSES_EXTENSO'
      FieldName = 'DOSES_EXTENSO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
  end
  object DesignerCT13: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar CT13'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptCT13
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 616
    Top = 184
  end
  object LayoutSERV: TppDBPipeline
    DataSource = DMCadastros.dsEdtServicoNF
    UserName = 'LayoutSERV'
    Left = 191
    Top = 312
  end
  object DesignerSERV: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar NF de Servi'#231'o'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptServico
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 224
    Top = 312
  end
  object rptServico: TppReport
    AutoStop = False
    DataPipeline = ppServico
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 184600
    PrinterSetup.mmPaperWidth = 220800
    PrinterSetup.PaperSize = 256
    Template.DatabaseSettings.DataPipeline = LayoutSERV
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_NF_SERV'
    Template.FileName = 'D:\Sistemas\HelpStore\fontes\rptServicoNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 157
    Top = 312
    Version = '12.03'
    mmColumnWidth = 297000
    DataPipelineName = 'ppServico'
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 53711
      mmPrintPosition = 0
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
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
        mmHeight = 4022
        mmLeft = 2117
        mmTop = 2117
        mmWidth = 17526
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PRESTA'#199#195'O DE SERVI'#199'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 65617
        mmTop = 2117
        mmWidth = 44186
        BandType = 0
      end
      object ppDBText30: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLIENTE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 10583
        mmWidth = 56621
        BandType = 0
      end
      object ppDBText31: TppDBText
        UserName = 'DBText10'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 19050
        mmWidth = 70115
        BandType = 0
      end
      object ppDBText42: TppDBText
        UserName = 'DBText27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 103717
        mmTop = 19050
        mmWidth = 42333
        BandType = 0
      end
      object ppDBText45: TppDBText
        UserName = 'DBText45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 158750
        mmTop = 19050
        mmWidth = 22490
        BandType = 0
      end
      object ppDBText46: TppDBText
        UserName = 'DBText46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UF'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 198967
        mmTop = 19050
        mmWidth = 6879
        BandType = 0
      end
      object ppDBText39: TppDBText
        UserName = 'DBText24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CPF_CGC'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 101600
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RG_IE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 46567
        mmTop = 31750
        mmWidth = 17727
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ISENTO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 78317
        mmTop = 31750
        mmWidth = 13229
        BandType = 0
      end
      object ppDBText48: TppDBText
        UserName = 'DBText48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 2117
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText49: TppDBText
        UserName = 'DBText49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'INSC_MUNIC'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 156634
        mmTop = 31750
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText50: TppDBText
        UserName = 'DBText50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_FATURA1'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText51: TppDBText
        UserName = 'DBText501'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VENCTO1'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 29633
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText52: TppDBText
        UserName = 'DBText52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLR1'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 61383
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText53: TppDBText
        UserName = 'DBText502'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_FATURA2'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 103717
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText54: TppDBText
        UserName = 'DBText54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VENCTO2'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 133350
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FAT_VLR2'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 165100
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
    end
    object ppDetailBand3: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBText41: TppDBText
        UserName = 'DBText26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 31750
        mmTop = 794
        mmWidth = 120650
        BandType = 4
      end
      object ppDBText43: TppDBText
        UserName = 'DBText28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 794
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText33: TppDBText
        UserName = 'DBText31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_TOTAL_UNIT'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 170921
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBText34: TppDBText
        UserName = 'DBText32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_UNITARIO'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 190500
        mmTop = 265
        mmWidth = 17198
        BandType = 4
      end
      object ppDBMemo1: TppDBMemo
        UserName = 'DBMemo1'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'PESSOA_FJ'
        DataPipeline = ppServico
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 8731
        mmLeft = 31750
        mmTop = 5821
        mmWidth = 120650
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppSummaryBand1: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 102659
      mmPrintPosition = 0
      object RegionPIS: TppRegion
        UserName = 'RegionPIS'
        Caption = 'RegionPIS'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 10160
        mmLeft = 76200
        mmTop = 7938
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText35: TppDBText
          UserName = 'DBText33'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_PIS'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 107421
          mmTop = 11642
          mmWidth = 51594
          BandType = 7
        end
        object ppLabel5: TppLabel
          UserName = 'Label5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = '('
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 160602
          mmTop = 11377
          mmWidth = 1323
          BandType = 7
        end
        object ppDBText36: TppDBText
          UserName = 'DBText34'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'PIS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 161925
          mmTop = 11642
          mmWidth = 10583
          BandType = 7
        end
        object ppLabel6: TppLabel
          UserName = 'Label6'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ')'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 172509
          mmTop = 11377
          mmWidth = 1588
          BandType = 7
        end
        object ppDBText37: TppDBText
          UserName = 'DBText35'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VLR_PIS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 178594
          mmTop = 11642
          mmWidth = 20902
          BandType = 7
        end
      end
      object RegionIRRS: TppRegion
        UserName = 'RegionIRRS'
        Caption = 'RegionIRRF'
        Pen.Style = psClear
        ShiftRelativeTo = RegionPIS
        Stretch = True
        mmHeight = 10054
        mmLeft = 76200
        mmTop = 18521
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText44: TppDBText
          UserName = 'DBText36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_IRRF'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 106892
          mmTop = 21431
          mmWidth = 51594
          BandType = 7
        end
        object ppLabel7: TppLabel
          UserName = 'Label7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = '('
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 160073
          mmTop = 21167
          mmWidth = 1323
          BandType = 7
        end
        object ppDBText40: TppDBText
          UserName = 'DBText37'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'IRRF'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 161396
          mmTop = 21431
          mmWidth = 10583
          BandType = 7
        end
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ')'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 171980
          mmTop = 21167
          mmWidth = 1588
          BandType = 7
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VLR_IRRF'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 178065
          mmTop = 21431
          mmWidth = 20902
          BandType = 7
        end
      end
      object RegionINSS: TppRegion
        UserName = 'RegionINSS'
        Caption = 'RegionINSS'
        Pen.Style = psClear
        ShiftRelativeTo = RegionIRRS
        Stretch = True
        mmHeight = 10054
        mmLeft = 76200
        mmTop = 29104
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText58: TppDBText
          UserName = 'DBText56'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VLR_INSS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 177800
          mmTop = 32544
          mmWidth = 20902
          BandType = 7
        end
        object ppLabel10: TppLabel
          UserName = 'Label10'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = ')'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 171186
          mmTop = 32279
          mmWidth = 1588
          BandType = 7
        end
        object ppDBText57: TppDBText
          UserName = 'DBText44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'INSS'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taCentered
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 160602
          mmTop = 32544
          mmWidth = 10583
          BandType = 7
        end
        object ppLabel9: TppLabel
          UserName = 'Label9'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = '('
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4763
          mmLeft = 159279
          mmTop = 32279
          mmWidth = 1323
          BandType = 7
        end
        object ppDBText56: TppDBText
          UserName = 'DBText40'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_INSS'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 106098
          mmTop = 32544
          mmWidth = 51594
          BandType = 7
        end
      end
      object RegionDescto: TppRegion
        UserName = 'RegionDescto'
        Caption = 'RegionDescto'
        Pen.Style = psClear
        ShiftRelativeTo = RegionINSS
        mmHeight = 10054
        mmLeft = 76200
        mmTop = 39688
        mmWidth = 127265
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppDBText59: TppDBText
          UserName = 'DBText401'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TEXTO_DESCONTO'
          DataPipeline = ppServico
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 106627
          mmTop = 43127
          mmWidth = 51594
          BandType = 7
        end
        object ppDBText60: TppDBText
          UserName = 'DBText59'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'DESC_ACRESC'
          DataPipeline = ppServico
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 11
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppServico'
          mmHeight = 3969
          mmLeft = 178330
          mmTop = 43127
          mmWidth = 20902
          BandType = 7
        end
      end
      object ppDBText61: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BASE_CALC_ISS'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppDBText62: TppDBText
        UserName = 'DBText60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_ISS_SUB'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 61383
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppDBText63: TppDBText
        UserName = 'DBText601'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_ISS'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 97367
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppDBText64: TppDBText
        UserName = 'DBText62'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_NF'
        DataPipeline = ppServico
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 11
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 177800
        mmTop = 75672
        mmWidth = 20902
        BandType = 7
      end
      object ppLabel11: TppLabel
        UserName = 'Label11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'O PR'#211'PRIO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4022
        mmLeft = 6350
        mmTop = 84138
        mmWidth = 19939
        BandType = 7
      end
      object ppDBText65: TppDBText
        UserName = 'DBText65'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FRETE_EMITENTE'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 6350
        mmTop = 92604
        mmWidth = 5027
        BandType = 7
      end
      object ppDBText66: TppDBText
        UserName = 'DBText66'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FRETE_DESTINATARIO'
        DataPipeline = ppServico
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppServico'
        mmHeight = 3969
        mmLeft = 19050
        mmTop = 92604
        mmWidth = 5027
        BandType = 7
      end
      object ppLabel16: TppLabel
        UserName = 'Label16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0.000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 152400
        mmTop = 92604
        mmWidth = 8731
        BandType = 7
      end
      object ppLabel17: TppLabel
        UserName = 'Label17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '0,000'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 188384
        mmTop = 92604
        mmWidth = 8731
        BandType = 7
      end
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppServico: TppDBPipeline
    DataSource = DmVendas2.dsqryServico
    UserName = 'Servico'
    Left = 124
    Top = 312
  end
  object ppGrafNF: TppDBPipeline
    DataSource = DmVendas2.dsQryGrafNF
    UserName = 'GrafNF'
    Left = 388
    Top = 328
    object ppGrafNFppField1: TppField
      FieldAlias = 'CLI_NOME'
      FieldName = 'CLI_NOME'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppGrafNFppField2: TppField
      FieldAlias = 'CLI_PROPRIEDADE'
      FieldName = 'CLI_PROPRIEDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppGrafNFppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppGrafNFppField4: TppField
      FieldAlias = 'CLI_IE_SUB'
      FieldName = 'CLI_IE_SUB'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object ppGrafNFppField5: TppField
      FieldAlias = 'CLI_IE'
      FieldName = 'CLI_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object ppGrafNFppField6: TppField
      FieldAlias = 'CLI_CNPJ'
      FieldName = 'CLI_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 5
    end
    object ppGrafNFppField7: TppField
      FieldAlias = 'CLI_BAIRRO'
      FieldName = 'CLI_BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object ppGrafNFppField8: TppField
      FieldAlias = 'CLI_CEP'
      FieldName = 'CLI_CEP'
      FieldLength = 10
      DisplayWidth = 10
      Position = 7
    end
    object ppGrafNFppField9: TppField
      FieldAlias = 'CLI_CIDADE'
      FieldName = 'CLI_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppGrafNFppField10: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 9
    end
    object ppGrafNFppField11: TppField
      FieldAlias = 'CLI_UF'
      FieldName = 'CLI_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 10
    end
    object ppGrafNFppField12: TppField
      FieldAlias = 'VD_NATUREZA'
      FieldName = 'VD_NATUREZA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object ppGrafNFppField13: TppField
      FieldAlias = 'VD_MSG_ECF'
      FieldName = 'VD_MSG_ECF'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppGrafNFppField14: TppField
      FieldAlias = 'VD_OBS'
      FieldName = 'VD_OBS'
      FieldLength = 200
      DisplayWidth = 200
      Position = 13
    end
    object ppGrafNFppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CFOP'
      FieldName = 'VD_CFOP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppGrafNFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_CODIGO'
      FieldName = 'VD_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppGrafNFppField17: TppField
      FieldAlias = 'VD_DT_EMISSAO'
      FieldName = 'VD_DT_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 16
    end
    object ppGrafNFppField18: TppField
      FieldAlias = 'VD_DT_SAIDA'
      FieldName = 'VD_DT_SAIDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 17
    end
    object ppGrafNFppField19: TppField
      FieldAlias = 'VD_HORA_SAIDA'
      FieldName = 'VD_HORA_SAIDA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 18
    end
    object ppGrafNFppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_PROD'
      FieldName = 'VD_TOTAL_PROD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppGrafNFppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_LIQUIDO'
      FieldName = 'VD_TOTAL_LIQUIDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object ppGrafNFppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_ICMS_DEBITADO'
      FieldName = 'VD_ICMS_DEBITADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object ppGrafNFppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_NF'
      FieldName = 'VD_TOTAL_NF'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object ppGrafNFppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_DESCONTO'
      FieldName = 'VD_DESCONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object ppGrafNFppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_FRETE'
      FieldName = 'VD_VLR_FRETE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppGrafNFppField26: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_SEGURO'
      FieldName = 'VD_VLR_SEGURO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 25
    end
    object ppGrafNFppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_OUTRAS_DESP'
      FieldName = 'VD_VLR_OUTRAS_DESP'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 26
    end
    object ppGrafNFppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC'
      FieldName = 'VD_BASE_CALC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object ppGrafNFppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM'
      FieldName = 'VD_VLR_ICM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object ppGrafNFppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_BASE_CALC_SUB'
      FieldName = 'VD_BASE_CALC_SUB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object ppGrafNFppField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_ICM_SUB'
      FieldName = 'VD_VLR_ICM_SUB'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 30
    end
    object ppGrafNFppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VLR_IPI'
      FieldName = 'VD_VLR_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 31
    end
    object ppGrafNFppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_IPI'
      FieldName = 'PRD_IPI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppGrafNFppField34: TppField
      FieldAlias = 'PRD_CODIGO'
      FieldName = 'PRD_CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 33
    end
    object ppGrafNFppField35: TppField
      FieldAlias = 'PRD_NOME'
      FieldName = 'PRD_NOME'
      FieldLength = 400
      DisplayWidth = 400
      Position = 34
    end
    object ppGrafNFppField36: TppField
      FieldAlias = 'PRD_UNIDADE'
      FieldName = 'PRD_UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 35
    end
    object ppGrafNFppField37: TppField
      FieldAlias = 'PRD_SIT_TRIB'
      FieldName = 'PRD_SIT_TRIB'
      FieldLength = 6
      DisplayWidth = 6
      Position = 36
    end
    object ppGrafNFppField38: TppField
      FieldAlias = 'PRD_CL_FIS'
      FieldName = 'PRD_CL_FIS'
      FieldLength = 2
      DisplayWidth = 2
      Position = 37
    end
    object ppGrafNFppField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_QTDE'
      FieldName = 'PRD_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 38
    end
    object ppGrafNFppField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_VLR_UNIT'
      FieldName = 'PRD_VLR_UNIT'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 39
    end
    object ppGrafNFppField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_VLR_TTL_ITEM'
      FieldName = 'PRD_VLR_TTL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 40
    end
    object ppGrafNFppField42: TppField
      FieldAlias = 'PRD_ALIQ_ICM'
      FieldName = 'PRD_ALIQ_ICM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 41
    end
    object ppGrafNFppField43: TppField
      FieldAlias = 'PRD_COMPLEMENTO'
      FieldName = 'PRD_COMPLEMENTO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 42
    end
    object ppGrafNFppField44: TppField
      FieldAlias = 'PRD_REDUCAO'
      FieldName = 'PRD_REDUCAO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 43
    end
    object ppGrafNFppField45: TppField
      FieldAlias = 'VDI_COMPLEMENTO'
      FieldName = 'VDI_COMPLEMENTO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 44
    end
    object ppGrafNFppField46: TppField
      FieldAlias = 'TRP_NOME'
      FieldName = 'TRP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 45
    end
    object ppGrafNFppField47: TppField
      FieldAlias = 'TRP_CNPJ'
      FieldName = 'TRP_CNPJ'
      FieldLength = 15
      DisplayWidth = 15
      Position = 46
    end
    object ppGrafNFppField48: TppField
      FieldAlias = 'TRP_PLACA'
      FieldName = 'TRP_PLACA'
      FieldLength = 8
      DisplayWidth = 8
      Position = 47
    end
    object ppGrafNFppField49: TppField
      FieldAlias = 'TRP_ENDERECO'
      FieldName = 'TRP_ENDERECO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 48
    end
    object ppGrafNFppField50: TppField
      FieldAlias = 'TRP_CIDADE'
      FieldName = 'TRP_CIDADE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 49
    end
    object ppGrafNFppField51: TppField
      FieldAlias = 'TRP_UF'
      FieldName = 'TRP_UF'
      FieldLength = 2
      DisplayWidth = 2
      Position = 50
    end
    object ppGrafNFppField52: TppField
      FieldAlias = 'TRP_UF_VEICULO'
      FieldName = 'TRP_UF_VEICULO'
      FieldLength = 2
      DisplayWidth = 2
      Position = 51
    end
    object ppGrafNFppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_FRETE'
      FieldName = 'TRP_FRETE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppGrafNFppField54: TppField
      FieldAlias = 'TRP_IE'
      FieldName = 'TRP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 53
    end
    object ppGrafNFppField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_LIQ'
      FieldName = 'TRP_PESO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 54
    end
    object ppGrafNFppField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_BRUTO'
      FieldName = 'TRP_PESO_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 55
    end
    object ppGrafNFppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'TRP_PESO_QTDE'
      FieldName = 'TRP_PESO_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 56
    end
    object ppGrafNFppField58: TppField
      FieldAlias = 'TRP_ESPECIE'
      FieldName = 'TRP_ESPECIE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 57
    end
    object ppGrafNFppField59: TppField
      FieldAlias = 'TRP_MARCA'
      FieldName = 'TRP_MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 58
    end
    object ppGrafNFppField60: TppField
      FieldAlias = 'TRP_NUMERO'
      FieldName = 'TRP_NUMERO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 59
    end
    object ppGrafNFppField61: TppField
      FieldAlias = 'PRD_OBSERVACAO'
      FieldName = 'PRD_OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 60
    end
    object ppGrafNFppField62: TppField
      FieldAlias = 'GPR_OBS'
      FieldName = 'GPR_OBS'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 61
      Searchable = False
      Sortable = False
    end
    object ppGrafNFppField63: TppField
      FieldAlias = 'PC_PARCELAMENTO'
      FieldName = 'PC_PARCELAMENTO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 62
    end
    object ppGrafNFppField64: TppField
      FieldAlias = 'PRD_PRODUTO_LOTE'
      FieldName = 'PRD_PRODUTO_LOTE'
      FieldLength = 250
      DisplayWidth = 250
      Position = 63
    end
    object ppGrafNFppField65: TppField
      FieldAlias = 'VD_ENTRADA'
      FieldName = 'VD_ENTRADA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 64
    end
    object ppGrafNFppField66: TppField
      FieldAlias = 'VD_SAIDA'
      FieldName = 'VD_SAIDA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 65
    end
    object ppGrafNFppField67: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 66
    end
    object ppGrafNFppField68: TppField
      Alignment = taRightJustify
      FieldAlias = 'ALT_DETALHE'
      FieldName = 'ALT_DETALHE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 67
    end
    object ppGrafNFppField69: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ICM_TTL_PROD'
      FieldName = 'DESC_ICM_TTL_PROD'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 68
    end
    object ppGrafNFppField70: TppField
      FieldAlias = 'DESC_ICM_LBL_TTL_PROD'
      FieldName = 'DESC_ICM_LBL_TTL_PROD'
      FieldLength = 50
      DisplayWidth = 50
      Position = 69
    end
    object ppGrafNFppField71: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ICM_TTL_DESCTO'
      FieldName = 'DESC_ICM_TTL_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 70
    end
    object ppGrafNFppField72: TppField
      FieldAlias = 'DESC_ICM_LBL_TTL_DESCTO'
      FieldName = 'DESC_ICM_LBL_TTL_DESCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 71
    end
    object ppGrafNFppField73: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ICM_TTL_LIQ'
      FieldName = 'DESC_ICM_TTL_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 72
    end
    object ppGrafNFppField74: TppField
      FieldAlias = 'DESC_ICM_LBL_TTL_LIQ'
      FieldName = 'DESC_ICM_LBL_TTL_LIQ'
      FieldLength = 50
      DisplayWidth = 50
      Position = 73
    end
    object ppGrafNFppField75: TppField
      FieldAlias = 'DESC_ICM_MSG_1'
      FieldName = 'DESC_ICM_MSG_1'
      FieldLength = 200
      DisplayWidth = 200
      Position = 74
    end
    object ppGrafNFppField76: TppField
      FieldAlias = 'DESC_ICM_MSG_2'
      FieldName = 'DESC_ICM_MSG_2'
      FieldLength = 200
      DisplayWidth = 200
      Position = 75
    end
    object ppGrafNFppField77: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 76
    end
    object ppGrafNFppField78: TppField
      FieldAlias = 'VEND_NOME'
      FieldName = 'VEND_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 77
    end
    object ppGrafNFppField79: TppField
      Alignment = taRightJustify
      FieldAlias = 'VEND_COD'
      FieldName = 'VEND_COD'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 78
    end
    object ppGrafNFppField80: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRD_PORC_DESC'
      FieldName = 'PRD_PORC_DESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 79
    end
    object ppGrafNFppField81: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 80
    end
    object ppGrafNFppField82: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 81
    end
    object ppGrafNFppField83: TppField
      FieldAlias = 'COD_ORIGINADOR'
      FieldName = 'COD_ORIGINADOR'
      FieldLength = 70
      DisplayWidth = 70
      Position = 82
    end
    object ppGrafNFppField84: TppField
      FieldAlias = 'DT_IMP_NF'
      FieldName = 'DT_IMP_NF'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 83
    end
    object ppGrafNFppField85: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_CFOP'
      FieldName = 'VDI_CFOP'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 84
    end
    object ppGrafNFppField86: TppField
      FieldAlias = 'S_VD_TOTAL_NF'
      FieldName = 'S_VD_TOTAL_NF'
      FieldLength = 30
      DisplayWidth = 30
      Position = 85
    end
    object ppGrafNFppField87: TppField
      FieldAlias = 'S_VD_VLR_IPI'
      FieldName = 'S_VD_VLR_IPI'
      FieldLength = 30
      DisplayWidth = 30
      Position = 86
    end
    object ppGrafNFppField88: TppField
      FieldAlias = 'S_VD_VLR_OUTRAS_DESP'
      FieldName = 'S_VD_VLR_OUTRAS_DESP'
      FieldLength = 30
      DisplayWidth = 30
      Position = 87
    end
    object ppGrafNFppField89: TppField
      FieldAlias = 'S_VD_VLR_SEGURO'
      FieldName = 'S_VD_VLR_SEGURO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 88
    end
    object ppGrafNFppField90: TppField
      FieldAlias = 'S_VD_VLR_FRETE'
      FieldName = 'S_VD_VLR_FRETE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 89
    end
    object ppGrafNFppField91: TppField
      FieldAlias = 'S_VD_TOTAL_PROD'
      FieldName = 'S_VD_TOTAL_PROD'
      FieldLength = 30
      DisplayWidth = 30
      Position = 90
    end
    object ppGrafNFppField92: TppField
      FieldAlias = 'S_VD_VLR_ICM'
      FieldName = 'S_VD_VLR_ICM'
      FieldLength = 30
      DisplayWidth = 30
      Position = 91
    end
    object ppGrafNFppField93: TppField
      FieldAlias = 'S_VD_VLR_ICM_SUB'
      FieldName = 'S_VD_VLR_ICM_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 92
    end
    object ppGrafNFppField94: TppField
      FieldAlias = 'S_VD_BASE_CALC'
      FieldName = 'S_VD_BASE_CALC'
      FieldLength = 30
      DisplayWidth = 30
      Position = 93
    end
    object ppGrafNFppField95: TppField
      FieldAlias = 'S_VD_BASE_CALC_SUB'
      FieldName = 'S_VD_BASE_CALC_SUB'
      FieldLength = 30
      DisplayWidth = 30
      Position = 94
    end
    object ppGrafNFppField96: TppField
      FieldAlias = 'CLI_ENDERECO'
      FieldName = 'CLI_ENDERECO'
      FieldLength = 130
      DisplayWidth = 130
      Position = 95
    end
    object ppGrafNFppField97: TppField
      FieldAlias = 'PRD_DEFENSIVO'
      FieldName = 'PRD_DEFENSIVO'
      FieldLength = 300
      DisplayWidth = 300
      Position = 96
    end
    object ppGrafNFppField98: TppField
      FieldAlias = 'PRD_CONCAT'
      FieldName = 'PRD_CONCAT'
      FieldLength = 800
      DisplayWidth = 800
      Position = 97
    end
    object ppGrafNFppField99: TppField
      FieldAlias = 'PARCELA_1_NUMERO'
      FieldName = 'PARCELA_1_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 98
    end
    object ppGrafNFppField100: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_1_VALOR'
      FieldName = 'PARCELA_1_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 99
    end
    object ppGrafNFppField101: TppField
      FieldAlias = 'PARCELA_1_VENCTO'
      FieldName = 'PARCELA_1_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 100
    end
    object ppGrafNFppField102: TppField
      FieldAlias = 'PARCELA_1_EXTENSO'
      FieldName = 'PARCELA_1_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 101
    end
    object ppGrafNFppField103: TppField
      FieldAlias = 'PARCELA_2_NUMERO'
      FieldName = 'PARCELA_2_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 102
    end
    object ppGrafNFppField104: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_2_VALOR'
      FieldName = 'PARCELA_2_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 103
    end
    object ppGrafNFppField105: TppField
      FieldAlias = 'PARCELA_2_VENCTO'
      FieldName = 'PARCELA_2_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 104
    end
    object ppGrafNFppField106: TppField
      FieldAlias = 'PARCELA_2_EXTENSO'
      FieldName = 'PARCELA_2_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 105
    end
    object ppGrafNFppField107: TppField
      FieldAlias = 'PARCELA_3_NUMERO'
      FieldName = 'PARCELA_3_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 106
    end
    object ppGrafNFppField108: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_3_VALOR'
      FieldName = 'PARCELA_3_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 107
    end
    object ppGrafNFppField109: TppField
      FieldAlias = 'PARCELA_3_VENCTO'
      FieldName = 'PARCELA_3_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 108
    end
    object ppGrafNFppField110: TppField
      FieldAlias = 'PARCELA_3_EXTENSO'
      FieldName = 'PARCELA_3_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 109
    end
    object ppGrafNFppField111: TppField
      FieldAlias = 'PARCELA_4_NUMERO'
      FieldName = 'PARCELA_4_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 110
    end
    object ppGrafNFppField112: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_4_VALOR'
      FieldName = 'PARCELA_4_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 111
    end
    object ppGrafNFppField113: TppField
      FieldAlias = 'PARCELA_4_VENCTO'
      FieldName = 'PARCELA_4_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 112
    end
    object ppGrafNFppField114: TppField
      FieldAlias = 'PARCELA_4_EXTENSO'
      FieldName = 'PARCELA_4_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 113
    end
    object ppGrafNFppField115: TppField
      FieldAlias = 'PARCELA_5_NUMERO'
      FieldName = 'PARCELA_5_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 114
    end
    object ppGrafNFppField116: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_5_VALOR'
      FieldName = 'PARCELA_5_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 115
    end
    object ppGrafNFppField117: TppField
      FieldAlias = 'PARCELA_5_VENCTO'
      FieldName = 'PARCELA_5_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 116
    end
    object ppGrafNFppField118: TppField
      FieldAlias = 'PARCELA_5_EXTENSO'
      FieldName = 'PARCELA_5_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 117
    end
    object ppGrafNFppField119: TppField
      FieldAlias = 'PARCELA_6_NUMERO'
      FieldName = 'PARCELA_6_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 118
    end
    object ppGrafNFppField120: TppField
      Alignment = taRightJustify
      FieldAlias = 'PARCELA_6_VALOR'
      FieldName = 'PARCELA_6_VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 119
    end
    object ppGrafNFppField121: TppField
      FieldAlias = 'PARCELA_6_VENCTO'
      FieldName = 'PARCELA_6_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 120
    end
    object ppGrafNFppField122: TppField
      FieldAlias = 'PARCELA_6_EXTENSO'
      FieldName = 'PARCELA_6_EXTENSO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 121
    end
    object ppGrafNFppField123: TppField
      FieldAlias = 'VD_MSG_FISCAL'
      FieldName = 'VD_MSG_FISCAL'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 122
      Searchable = False
      Sortable = False
    end
    object ppGrafNFppField124: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_VOLUME'
      FieldName = 'VD_VOLUME'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 123
    end
    object ppGrafNFppField125: TppField
      FieldAlias = 'S_VD_VOLUME'
      FieldName = 'S_VD_VOLUME'
      FieldLength = 30
      DisplayWidth = 30
      Position = 124
    end
    object ppGrafNFppField126: TppField
      FieldAlias = 'VD_MSG_COMPLEMENTAR'
      FieldName = 'VD_MSG_COMPLEMENTAR'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 125
      Searchable = False
      Sortable = False
    end
    object ppGrafNFppField127: TppField
      Alignment = taRightJustify
      FieldAlias = 'LINHA'
      FieldName = 'LINHA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 126
    end
    object ppGrafNFppField128: TppField
      FieldAlias = 'VND_CODIGOS'
      FieldName = 'VND_CODIGOS'
      FieldLength = 130
      DisplayWidth = 130
      Position = 127
    end
  end
  object rptGrafNF: TppReport
    AutoStop = False
    DataPipeline = ppGrafNF
    PrinterSetup.BinName = 'Default'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 0
    PrinterSetup.mmMarginLeft = 0
    PrinterSetup.mmMarginRight = 0
    PrinterSetup.mmMarginTop = 2000
    PrinterSetup.mmPaperHeight = 280000
    PrinterSetup.mmPaperWidth = 215000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutGrafNF
    Template.DatabaseSettings.NameField = 'INDICE'
    Template.DatabaseSettings.TemplateField = 'CONFIG_NF_GRAF'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\NF Grafica.TXT'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 419
    Top = 328
    Version = '12.03'
    mmColumnWidth = 213000
    DataPipelineName = 'ppGrafNF'
    object ppHeaderBand3: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 83608
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'NomeNatureza'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_NATUREZA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 8996
        mmTop = 28046
        mmWidth = 64558
        BandType = 0
      end
      object ppDBText32: TppDBText
        UserName = 'RazaoSocial'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_NOME'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 8996
        mmTop = 39688
        mmWidth = 117740
        BandType = 0
      end
      object ppDBText67: TppDBText
        UserName = 'DBText13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_ENDERECO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 8996
        mmTop = 48683
        mmWidth = 92604
        BandType = 0
      end
      object ppDBText81: TppDBText
        UserName = 'CodCFOP'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_CFOP'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 76729
        mmTop = 28046
        mmWidth = 9525
        BandType = 0
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_BAIRRO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 104775
        mmTop = 48683
        mmWidth = 41540
        BandType = 0
      end
      object ppDBText82: TppDBText
        UserName = 'DBText82'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CEP'
        DataPipeline = ppGrafNF
        DisplayFormat = '00000\-9999;0; '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 146844
        mmTop = 48683
        mmWidth = 22754
        BandType = 0
      end
      object ppDBText68: TppDBText
        UserName = 'DBText68'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CIDADE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 8996
        mmTop = 57150
        mmWidth = 69586
        BandType = 0
      end
      object ppDBText69: TppDBText
        UserName = 'DBText69'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_FONE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 81756
        mmTop = 57150
        mmWidth = 38629
        BandType = 0
      end
      object ppDBText70: TppDBText
        UserName = 'DBText70'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_IE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 129117
        mmTop = 57150
        mmWidth = 40481
        BandType = 0
      end
      object ppDBMemo4: TppDBMemo
        UserName = 'DBMemo4'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = True
        DataField = 'PC_PARCELAMENTO'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 11113
        mmLeft = 35454
        mmTop = 67469
        mmWidth = 169334
        BandType = 0
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText72: TppDBText
        UserName = 'DBText701'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_IE_SUB'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 86784
        mmTop = 28046
        mmWidth = 42598
        BandType = 0
      end
      object ppDBText73: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_CNPJ'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 129911
        mmTop = 39688
        mmWidth = 39688
        BandType = 0
      end
      object ppDBText74: TppDBText
        UserName = 'DBText702'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CLI_UF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3969
        mmLeft = 120915
        mmTop = 57150
        mmWidth = 7673
        BandType = 0
      end
      object ppVariable1: TppVariable
        UserName = 'Variable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        BlankWhenZero = False
        CalcOrder = 0
        DataType = dtTime
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        mmHeight = 3969
        mmLeft = 173038
        mmTop = 57150
        mmWidth = 34131
        BandType = 0
      end
      object ppDBText85: TppDBText
        UserName = 'DBText85'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_SAIDA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4995
        mmLeft = 131498
        mmTop = 3704
        mmWidth = 4233
        BandType = 0
      end
      object ppDBText75: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_ENTRADA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4995
        mmLeft = 151077
        mmTop = 3704
        mmWidth = 4233
        BandType = 0
      end
      object ppDBText76: TppDBText
        UserName = 'DBText1101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_NF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 194469
        mmTop = 529
        mmWidth = 13229
        BandType = 0
      end
      object ppLabel110: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Venda:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = [fsItalic]
        Transparent = True
        mmHeight = 3725
        mmLeft = 9790
        mmTop = 67204
        mmWidth = 11684
        BandType = 0
      end
      object ppDBText77: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_CODIGO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 21696
        mmTop = 67204
        mmWidth = 14023
        BandType = 0
      end
      object ppLabel111: TppLabel
        UserName = 'Label111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '. '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 37306
        mmTop = 80168
        mmWidth = 3969
        BandType = 0
      end
      object ppLabel112: TppLabel
        UserName = 'Label112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '<--Nao retire este ponto, ncessario para configuracao'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        Visible = False
        mmHeight = 3440
        mmLeft = 42598
        mmTop = 80168
        mmWidth = 103188
        BandType = 0
      end
      object ppSystemVariable11: TppSystemVariable
        UserName = 'SystemVariable11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 177007
        mmTop = 39423
        mmWidth = 19579
        BandType = 0
      end
      object ppSystemVariable12: TppSystemVariable
        UserName = 'SystemVariable12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3440
        mmLeft = 177271
        mmTop = 48683
        mmWidth = 19579
        BandType = 0
      end
    end
    object ppDetailBand4: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4233
      mmPrintPosition = 0
      object ppDBText79: TppDBText
        UserName = 'DBText72'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_SIT_TRIB'
        DataPipeline = ppGrafNF
        DisplayFormat = '999999999'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 127529
        mmTop = 0
        mmWidth = 6350
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText73'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_UNIDADE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 134938
        mmTop = 0
        mmWidth = 5292
        BandType = 4
      end
      object ppDBText86: TppDBText
        UserName = 'DBText76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO_LIQ'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 154252
        mmTop = 0
        mmWidth = 20108
        BandType = 4
      end
      object ppDBText87: TppDBText
        UserName = 'DBText77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_VLR_TTL_ITEM'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 175684
        mmTop = 0
        mmWidth = 23019
        BandType = 4
      end
      object ppDBText88: TppDBText
        UserName = 'DBText78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_ALIQ_ICM'
        DataPipeline = ppGrafNF
        DisplayFormat = '99'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 200819
        mmTop = 0
        mmWidth = 6879
        BandType = 4
      end
      object ppDBMemo3: TppDBMemo
        UserName = 'DBMemo3'
        ForceJustifyLastLine = True
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = True
        DataField = 'PRD_NOME'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Stretch = True
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3704
        mmLeft = 7144
        mmTop = 0
        mmWidth = 52917
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText89: TppDBText
        UserName = 'DBText74'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRD_QTDE'
        DataPipeline = ppGrafNF
        DisplayFormat = '#0.0;(#0.0)'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3175
        mmLeft = 140229
        mmTop = 265
        mmWidth = 11642
        BandType = 4
      end
    end
    object ppFooterBand2: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 133086
      mmPrintPosition = 0
      object ppDBText90: TppDBText
        UserName = 'DBText79'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_BASE_CALC'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 22225
        mmWidth = 37042
        BandType = 8
      end
      object ppDBText91: TppDBText
        UserName = 'DBText80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_ICM'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 41804
        mmTop = 22225
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText92: TppDBText
        UserName = 'DBText801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_ICM_SUB'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 121709
        mmTop = 22225
        mmWidth = 38629
        BandType = 8
      end
      object ppDBText93: TppDBText
        UserName = 'DBText87'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_BASE_CALC_SUB'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 81756
        mmTop = 22225
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText94: TppDBText
        UserName = 'DBText88'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_TOTAL_PROD'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 22225
        mmWidth = 40746
        BandType = 8
      end
      object ppDBText95: TppDBText
        UserName = 'DBText89'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_FRETE'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 30427
        mmWidth = 37042
        BandType = 8
      end
      object ppDBText96: TppDBText
        UserName = 'DBText802'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_SEGURO'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 41804
        mmTop = 30427
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText97: TppDBText
        UserName = 'DBText91'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_IPI'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 121709
        mmTop = 30427
        mmWidth = 38365
        BandType = 8
      end
      object ppDBText98: TppDBText
        UserName = 'DBText92'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_VLR_OUTRAS_DESP'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 81756
        mmTop = 30427
        mmWidth = 38100
        BandType = 8
      end
      object ppDBText99: TppDBText
        UserName = 'DBText93'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VD_TOTAL_NF'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 161925
        mmTop = 30427
        mmWidth = 40746
        BandType = 8
      end
      object ppDBText100: TppDBText
        UserName = 'RazaoSocial1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_NOME'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 7673
        mmTop = 43127
        mmWidth = 103981
        BandType = 8
      end
      object ppDBText101: TppDBText
        UserName = 'DBText95'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_FRETE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 125413
        mmTop = 43127
        mmWidth = 3969
        BandType = 8
      end
      object ppDBText102: TppDBText
        UserName = 'DBText96'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PLACA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 134673
        mmTop = 43127
        mmWidth = 22490
        BandType = 8
      end
      object ppDBText103: TppDBText
        UserName = 'DBText97'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_UF_VEICULO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 43127
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText104: TppDBText
        UserName = 'DBText98'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_CNPJ'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 166952
        mmTop = 43127
        mmWidth = 34396
        BandType = 8
      end
      object ppDBText105: TppDBText
        UserName = 'DBText99'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_ENDERECO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 51065
        mmWidth = 103981
        BandType = 8
      end
      object ppDBText106: TppDBText
        UserName = 'DBText100'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_CIDADE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 108744
        mmTop = 51065
        mmWidth = 48419
        BandType = 8
      end
      object ppDBText156: TppDBText
        UserName = 'DBText101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_UF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 159015
        mmTop = 51065
        mmWidth = 7408
        BandType = 8
      end
      object ppDBText157: TppDBText
        UserName = 'DBText102'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_IE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 166952
        mmTop = 51065
        mmWidth = 34396
        BandType = 8
      end
      object ppDBText158: TppDBText
        UserName = 'DBText103'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_ESPECIE'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 33867
        mmTop = 60061
        mmWidth = 35719
        BandType = 8
      end
      object ppDBText159: TppDBText
        UserName = 'DBText104'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PESO_LIQ'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 173832
        mmTop = 60061
        mmWidth = 27252
        BandType = 8
      end
      object ppDBText160: TppDBText
        UserName = 'DBText105'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PESO_BRUTO'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 141817
        mmTop = 60061
        mmWidth = 30163
        BandType = 8
      end
      object ppDBText161: TppDBText
        UserName = 'DBText106'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_PESO_QTDE'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 2910
        mmTop = 60061
        mmWidth = 29104
        BandType = 8
      end
      object ppDBMemo2: TppDBMemo
        UserName = 'DBMemo2'
        SaveOrder = 0
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'VD_OBS'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 23019
        mmLeft = 6879
        mmTop = 82550
        mmWidth = 85990
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText162: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NUM_NF'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 182034
        mmTop = 110067
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText163: TppDBText
        UserName = 'DBText114'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_LBL_TTL_PROD'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3048
        mmLeft = 7408
        mmTop = 7408
        mmWidth = 32279
        BandType = 8
      end
      object ppDBText164: TppDBText
        UserName = 'DBText115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_LBL_TTL_DESCTO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3048
        mmLeft = 7408
        mmTop = 11377
        mmWidth = 32279
        BandType = 8
      end
      object ppDBText165: TppDBText
        UserName = 'DBText116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_LBL_TTL_LIQ'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3048
        mmLeft = 7408
        mmTop = 15346
        mmWidth = 32279
        BandType = 8
      end
      object ppDBText166: TppDBText
        UserName = 'DBText117'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_TTL_LIQ'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3048
        mmLeft = 41010
        mmTop = 15346
        mmWidth = 37571
        BandType = 8
      end
      object ppDBText167: TppDBText
        UserName = 'DBText118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_TTL_DESCTO'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3048
        mmLeft = 41010
        mmTop = 11377
        mmWidth = 37571
        BandType = 8
      end
      object ppDBText168: TppDBText
        UserName = 'DBText119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ICM_TTL_PROD'
        DataPipeline = ppGrafNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3048
        mmLeft = 41010
        mmTop = 7408
        mmWidth = 37571
        BandType = 8
      end
      object ppDBMemo7: TppDBMemo
        UserName = 'DBMemo7'
        SaveOrder = 1
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'DESC_ICM_MSG_1'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 7938
        mmLeft = 6879
        mmTop = 71967
        mmWidth = 85990
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBText169: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_MARCA'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 71438
        mmTop = 60061
        mmWidth = 35454
        BandType = 8
      end
      object ppDBText170: TppDBText
        UserName = 'DBText120'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TRP_NUMERO'
        DataPipeline = ppGrafNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 4233
        mmLeft = 108744
        mmTop = 60061
        mmWidth = 31221
        BandType = 8
      end
      object ppMemo1: TppMemo
        UserName = 'Memo1'
        SaveOrder = 2
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Memo1'
        CharWrap = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = []
        Lines.Strings = (
          
            'ATEN'#199#195'O:"'#201' obrigat'#243'rio a devolu'#231#227'o da embalagem vazia" Local de ' +
            'entrega: Central de Reciclagem de Produtos Agrot'#243'xicos: Rod. BR ' +
            '267 Maracaju / Rio Brilhante Km 10.')
        Transparent = True
        mmHeight = 12965
        mmLeft = 85725
        mmTop = 7408
        mmWidth = 110067
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo8: TppDBMemo
        UserName = 'DBMemo8'
        SaveOrder = 3
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'COD_ORIGINADOR'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 3704
        mmLeft = 8467
        mmTop = 2117
        mmWidth = 106098
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo5: TppDBMemo
        UserName = 'DBMemo5'
        SaveOrder = 4
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'VD_MSG_FISCAL'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 23019
        mmLeft = 107421
        mmTop = 81492
        mmWidth = 85990
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
      object ppDBMemo6: TppDBMemo
        UserName = 'DBMemo6'
        SaveOrder = 5
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        CharWrap = False
        DataField = 'VND_CODIGOS'
        DataPipeline = ppGrafNF
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Name = 'Courier New'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppGrafNF'
        mmHeight = 7938
        mmLeft = 6615
        mmTop = 109009
        mmWidth = 102129
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeading = 0
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppLayoutGrafNF: TppDBPipeline
    DataSource = DataSource
    UserName = 'LayoutCT1'
    Left = 449
    Top = 328
  end
  object DesignerGrafNF: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar NF Gr'#225'fica'
    DataSettings.DatabaseName = 'DefaultDD'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = True
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptGrafNF
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 480
    Top = 320
  end
  object ppSerieOrcaNF: TppDBPipeline
    DataSource = DmVendas2.dsSeries_ORC_NF
    UserName = 'SerieOrcaNF'
    Left = 298
    Top = 183
    object ppSerieOrcaNFppField1: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppSerieOrcaNFppField2: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppSerieOrcaNFppField3: TppField
      FieldAlias = 'ENDERECO_CLI'
      FieldName = 'ENDERECO_CLI'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppSerieOrcaNFppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppSerieOrcaNFppField5: TppField
      FieldAlias = 'DT_VENDA'
      FieldName = 'DT_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppSerieOrcaNFppField6: TppField
      FieldAlias = 'DATA_CAIXA'
      FieldName = 'DATA_CAIXA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppSerieOrcaNFppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppSerieOrcaNFppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ITEM'
      FieldName = 'DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppSerieOrcaNFppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppSerieOrcaNFppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_BRUTO'
      FieldName = 'TOTAL_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppSerieOrcaNFppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_CUPOM'
      FieldName = 'NUM_CUPOM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppSerieOrcaNFppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppSerieOrcaNFppField13: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppSerieOrcaNFppField14: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppSerieOrcaNFppField15: TppField
      FieldAlias = 'FORMA_PAGTO'
      FieldName = 'FORMA_PAGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppSerieOrcaNFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppSerieOrcaNFppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppSerieOrcaNFppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppSerieOrcaNFppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppSerieOrcaNFppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppSerieOrcaNFppField21: TppField
      FieldAlias = 'PARCELAMENTO'
      FieldName = 'PARCELAMENTO'
      FieldLength = 500
      DisplayWidth = 500
      Position = 20
    end
    object ppSerieOrcaNFppField22: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object ppSerieOrcaNFppField23: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppSerieOrcaNFppField24: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppSerieOrcaNFppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_ITEM_DESCTO'
      FieldName = 'PCT_ITEM_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppSerieOrcaNFppField26: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 25
    end
    object ppSerieOrcaNFppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppSerieOrcaNFppField28: TppField
      FieldAlias = 'CGC_CPF_CLI'
      FieldName = 'CGC_CPF_CLI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppSerieOrcaNFppField29: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 28
    end
    object ppSerieOrcaNFppField30: TppField
      FieldAlias = 'NOME_TIPO_DOCTO'
      FieldName = 'NOME_TIPO_DOCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppSerieOrcaNFppField31: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object ppSerieOrcaNFppField32: TppField
      FieldAlias = 'HORA'
      FieldName = 'HORA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 31
    end
    object ppSerieOrcaNFppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_DESCTO_VENDA'
      FieldName = 'PCT_DESCTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppSerieOrcaNFppField34: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 33
    end
    object ppSerieOrcaNFppField35: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppSerieOrcaNFppField36: TppField
      FieldAlias = 'CEP_EMP'
      FieldName = 'CEP_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppSerieOrcaNFppField37: TppField
      FieldAlias = 'BAIRRO_EMP'
      FieldName = 'BAIRRO_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppSerieOrcaNFppField38: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object ppSerieOrcaNFppField39: TppField
      FieldAlias = 'FONE_CLIENTE'
      FieldName = 'FONE_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppSerieOrcaNFppField40: TppField
      FieldAlias = 'ENDERECO_EMP'
      FieldName = 'ENDERECO_EMP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 39
    end
    object ppSerieOrcaNFppField41: TppField
      FieldAlias = 'FANTASIA_CLI'
      FieldName = 'FANTASIA_CLI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object ppSerieOrcaNFppField42: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 41
    end
    object ppSerieOrcaNFppField43: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 42
    end
    object ppSerieOrcaNFppField44: TppField
      FieldAlias = 'CNPJ_EMP'
      FieldName = 'CNPJ_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 43
    end
    object ppSerieOrcaNFppField45: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 44
    end
    object ppSerieOrcaNFppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONT_ITENS'
      FieldName = 'CONT_ITENS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 45
    end
    object ppSerieOrcaNFppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 46
    end
    object ppSerieOrcaNFppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 47
    end
    object ppSerieOrcaNFppField49: TppField
      FieldAlias = 'DATA_VALIDADE'
      FieldName = 'DATA_VALIDADE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 48
    end
    object ppSerieOrcaNFppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppSerieOrcaNFppField51: TppField
      FieldAlias = 'MRC_NOME'
      FieldName = 'MRC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object ppSerieOrcaNFppField52: TppField
      FieldAlias = 'GRD_GRADE'
      FieldName = 'GRD_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 51
    end
    object ppSerieOrcaNFppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_MATERIAL'
      FieldName = 'GRD_MATERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppSerieOrcaNFppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_COR'
      FieldName = 'GRD_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppSerieOrcaNFppField55: TppField
      FieldAlias = 'GRD_NOME_MATERIAL'
      FieldName = 'GRD_NOME_MATERIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 54
    end
    object ppSerieOrcaNFppField56: TppField
      FieldAlias = 'GRD_NOME_COR'
      FieldName = 'GRD_NOME_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 55
    end
    object ppSerieOrcaNFppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_PERFIL'
      FieldName = 'GRD_PERFIL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppSerieOrcaNFppField58: TppField
      FieldAlias = 'GRD_NOME_PERFIL'
      FieldName = 'GRD_NOME_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 57
    end
    object ppSerieOrcaNFppField59: TppField
      FieldAlias = 'GRD_NUMERO'
      FieldName = 'GRD_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 58
    end
    object ppSerieOrcaNFppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_ORDEM'
      FieldName = 'GRD_ORDEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
    object ppSerieOrcaNFppField61: TppField
      FieldAlias = 'LOCALIZACAO_1'
      FieldName = 'LOCALIZACAO_1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 60
    end
    object ppSerieOrcaNFppField62: TppField
      FieldAlias = 'LOCALIZACAO_2'
      FieldName = 'LOCALIZACAO_2'
      FieldLength = 30
      DisplayWidth = 30
      Position = 61
    end
    object ppSerieOrcaNFppField63: TppField
      FieldAlias = 'LOCALIZACAO_3'
      FieldName = 'LOCALIZACAO_3'
      FieldLength = 30
      DisplayWidth = 30
      Position = 62
    end
  end
  object ppLayoutOrca: TppDBPipeline
    DataSource = DMCadastros.dsSerieOrcNF
    UserName = 'LayoutOrca'
    Left = 330
    Top = 183
    object ppLayoutOrcappField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 0
    end
    object ppLayoutOrcappField2: TppField
      FieldAlias = 'CONFIG_SERIE_ORC_NF'
      FieldName = 'CONFIG_SERIE_ORC_NF'
      FieldLength = 8
      DataType = dtMemo
      DisplayWidth = 10
      Position = 1
      Searchable = False
      Sortable = False
    end
  end
  object rptSerieOrcaNF: TppReport
    AutoStop = False
    DataPipeline = ppSerieOrcaNF
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Cont. Feed - No Break'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutOrca
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_SERIE_ORC_NF'
    Template.FileName = 'C:\Users\Fabiano\Desktop\Orcamento.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 362
    Top = 183
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppSerieOrcaNF'
    object ppHeaderBand4: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 12965
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MRC_CODIGO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 24077
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText107: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLI'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 31485
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText108: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 35190
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '000000#'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 5027
        mmLeft = 173832
        mmTop = 7673
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel13: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 24077
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'END'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 31485
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel15: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BAIRRO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 35190
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6526
        mmLeft = 174150
        mmTop = 1323
        mmWidth = 20320
        BandType = 0
      end
      object ppDBText110: TppDBText
        UserName = 'DBText111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 8467
        mmLeft = 3969
        mmTop = 794
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText111: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 12965
        mmWidth = 78052
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 26458
        mmTop = 16669
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel22: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 170127
        mmTop = 12965
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 17198
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel24: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 17198
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 95779
        mmTop = 12965
        mmWidth = 20902
        BandType = 0
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 118534
        mmTop = 12965
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel25: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 16669
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_CPF_CLI'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 27781
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel26: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 27781
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText117: TppDBText
        UserName = 'Cliente2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLI'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 24077
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RG_IE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 27781
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText121: TppDBText
        UserName = 'DBText121'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE_CLIENTE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 38894
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel27: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME FANTASIA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 24077
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'IE/RG'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 27781
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 38894
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText124: TppDBText
        UserName = 'DBText124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_CAIXA'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 35190
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 35190
        mmWidth = 6350
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 21960
        mmWidth = 208000
        BandType = 0
      end
      object ppLabel34: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'DIGO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 44979
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel35: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 25135
        mmTop = 44979
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel36: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UN.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 44979
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel37: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 151078
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UNIT.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 173302
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel39: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 192750
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 48948
        mmWidth = 208000
        BandType = 0
      end
      object ppLabel44: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 24077
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel50: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 24077
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel51: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel52: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel53: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 35190
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 35190
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel55: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 38894
        mmWidth = 2117
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44186
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText112: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 31485
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel18: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CIDADE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 31485
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel19: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44450
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText114: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 26194
        mmTop = 9260
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 147638
        mmTop = 12965
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 141817
        mmTop = 12965
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'INSCR.EST:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 101600
        mmTop = 9260
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '28.100.347-5'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 126471
        mmTop = 9260
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel48: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel49: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEL:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 64029
        mmTop = 16669
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel56: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67) 8409-4900'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 73290
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAX:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 109538
        mmTop = 16669
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67) 3422-5706'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 122238
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
      end
    end
    object ppDetailBand5: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText120: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_PRODUTO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 3175
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText122: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRD_GRADE'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '#,0.0;-#,0.0'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 146844
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText123: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO_LIQ'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 168540
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ITEM'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 183357
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText126: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRD_NUMERO'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '!99999;0; '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText127: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 23019
        mmTop = 0
        mmWidth = 111125
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '+/-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 166423
        mmTop = 5027
        mmWidth = 6350
        BandType = 8
      end
      object ppDBText128: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ACRESC'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 4763
        mmWidth = 25400
        BandType = 8
      end
      object ppDBText129: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 8996
        mmWidth = 25400
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 191030
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 194734
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 198173
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppDBText130: TppDBText
        UserName = 'DBText123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_BRUTO'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 529
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 162190
        mmTop = 794
        mmWidth = 10583
        BandType = 8
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBSERVACAO'
        DataPipeline = ppSerieOrcaNF
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 9790
        mmLeft = 27517
        mmTop = 19579
        mmWidth = 147373
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 19050
        mmWidth = 23283
        BandType = 8
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13758
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 4498
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 794
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 8202
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL LIQUIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 145257
        mmTop = 8731
        mmWidth = 27517
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENDEDOR:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 7938
        mmTop = 15346
        mmWidth = 19050
        BandType = 8
      end
      object ppDBRichText2: TppDBRichText
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = ppSerieOrcaNF
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 15610
        mmWidth = 51065
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ASSINATURA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 75142
        mmTop = 1058
        mmWidth = 21167
        BandType = 8
      end
      object ppDBRichText3: TppDBRichText
        UserName = 'DBRichText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PARCELAMENTO'
        DataPipeline = ppSerieOrcaNF
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 7938
        mmLeft = 2646
        mmTop = 5556
        mmWidth = 71438
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCIMENTO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 23283
        BandType = 8
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object Designer_Orca: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar S'#233'rie Or'#231'amento'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptSerieOrcaNF
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 394
    Top = 184
  end
  object rptSerieRequisicao: TppReport
    AutoStop = False
    DataPipeline = ppSerieRequisicao
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Cont. Feed - No Break'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutRequisicao
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_REQUISICAO'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\SerieNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
    DeviceType = 'Screen'
    EmailSettings.ReportFormat = 'PDF'
    LanguageID = 'Default'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PDFSettings.EmbedFontOptions = [efUseSubset]
    PDFSettings.EncryptSettings.AllowCopy = True
    PDFSettings.EncryptSettings.AllowInteract = True
    PDFSettings.EncryptSettings.AllowModify = True
    PDFSettings.EncryptSettings.AllowPrint = True
    PDFSettings.EncryptSettings.Enabled = False
    PDFSettings.FontEncoding = feAnsi
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 530
    Top = 295
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppSerieRequisicao'
    object ppHeaderBand5: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppSystemVariable7: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 12965
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MRC_CODIGO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 24077
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText132: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLI'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 31485
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText133: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 35190
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText134: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '000000#'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 5027
        mmLeft = 173832
        mmTop = 7673
        mmWidth = 20902
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CLIENTE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 24077
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel63: TppLabel
        UserName = 'Label14'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'END'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 31485
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel64: TppLabel
        UserName = 'Label15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'BAIRRO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 35190
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel65: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6526
        mmLeft = 174150
        mmTop = 1323
        mmWidth = 20320
        BandType = 0
      end
      object ppDBText135: TppDBText
        UserName = 'DBText111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 8467
        mmLeft = 3969
        mmTop = 794
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText136: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 12965
        mmWidth = 78052
        BandType = 0
      end
      object ppDBText137: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 26458
        mmTop = 16669
        mmWidth = 30427
        BandType = 0
      end
      object ppLabel66: TppLabel
        UserName = 'Label22'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DATA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 170127
        mmTop = 12965
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable8: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 17198
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel67: TppLabel
        UserName = 'Label24'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'HORA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 17198
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText138: TppDBText
        UserName = 'DBText115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 95779
        mmTop = 12965
        mmWidth = 20902
        BandType = 0
      end
      object ppDBText139: TppDBText
        UserName = 'DBText116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 118534
        mmTop = 12965
        mmWidth = 22225
        BandType = 0
      end
      object ppLabel68: TppLabel
        UserName = 'Label25'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 16669
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText140: TppDBText
        UserName = 'DBText118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_CPF_CLI'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 27781
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ/CPF'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 27781
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText141: TppDBText
        UserName = 'Cliente2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLI'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 24077
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText142: TppDBText
        UserName = 'DBText119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RG_IE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 27781
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText143: TppDBText
        UserName = 'DBText121'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE_CLIENTE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 38894
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'NOME FANTASIA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 24077
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'IE/RG'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 27781
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel72: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FONE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 38894
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText144: TppDBText
        UserName = 'DBText124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_CAIXA'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 35190
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 35190
        mmWidth = 6350
        BandType = 0
      end
      object ppLine8: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 0
      end
      object ppLine9: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 21960
        mmWidth = 208000
        BandType = 0
      end
      object ppLabel74: TppLabel
        UserName = 'Label34'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#211'DIGO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 44979
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel75: TppLabel
        UserName = 'Label35'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'DESCRI'#199#195'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 25135
        mmTop = 44979
        mmWidth = 19050
        BandType = 0
      end
      object ppLabel76: TppLabel
        UserName = 'Label36'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UN.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 44979
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel77: TppLabel
        UserName = 'Label37'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'QTDE.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 151078
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel78: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UNIT.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 173302
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel79: TppLabel
        UserName = 'Label39'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 192750
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLine10: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 48948
        mmWidth = 208000
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel81: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 24077
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel82: TppLabel
        UserName = 'Label50'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 24077
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel83: TppLabel
        UserName = 'Label51'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel84: TppLabel
        UserName = 'Label52'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel85: TppLabel
        UserName = 'Label53'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 35190
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel86: TppLabel
        UserName = 'Label54'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 35190
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel87: TppLabel
        UserName = 'Label55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 38894
        mmWidth = 2117
        BandType = 0
      end
      object ppLine11: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44186
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText145: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 31485
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CIDADE'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3704
        mmLeft = 105834
        mmTop = 31485
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel89: TppLabel
        UserName = 'Label19'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLine12: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44450
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText146: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_EMP'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4586
        mmLeft = 26194
        mmTop = 9260
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel90: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 147638
        mmTop = 12965
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel91: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 141817
        mmTop = 12965
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel92: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'INSCR.EST:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 101600
        mmTop = 9260
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel93: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '28.100.347-5'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 126471
        mmTop = 9260
        mmWidth = 25400
        BandType = 0
      end
      object ppLabel94: TppLabel
        UserName = 'Label48'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CNPJ:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel95: TppLabel
        UserName = 'Label49'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEL:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 64029
        mmTop = 16669
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel96: TppLabel
        UserName = 'Label56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67) 8409-4900'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 73290
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel97: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAX:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 109538
        mmTop = 16669
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel98: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67) 3422-5706'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 122238
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      Background1.Brush.Style = bsClear
      Background1.Gradient.EndColor = clWhite
      Background1.Gradient.StartColor = clWhite
      Background1.Gradient.Style = gsNone
      Background2.Brush.Style = bsClear
      Background2.Gradient.EndColor = clWhite
      Background2.Gradient.StartColor = clWhite
      Background2.Gradient.Style = gsNone
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText147: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_PRODUTO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 3175
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText148: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '#,0.0;-#,0.0'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 146844
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText149: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO_LIQ'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 168540
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText150: TppDBText
        UserName = 'DBText71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ITEM'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 183357
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText151: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = '!99999;0; '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText152: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppSerieRequisicao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 23019
        mmTop = 0
        mmWidth = 111125
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel99: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '+/-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 166423
        mmTop = 5027
        mmWidth = 6350
        BandType = 8
      end
      object ppDBText153: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ACRESC'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 4763
        mmWidth = 25400
        BandType = 8
      end
      object ppDBText154: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 8996
        mmWidth = 25400
        BandType = 8
      end
      object ppSystemVariable9: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 191030
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLabel100: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 194734
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppSystemVariable10: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 198173
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppDBText155: TppDBText
        UserName = 'DBText123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_BRUTO'
        DataPipeline = ppSerieRequisicao
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 529
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel101: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 162190
        mmTop = 794
        mmWidth = 10583
        BandType = 8
      end
      object ppDBRichText4: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBSERVACAO'
        DataPipeline = ppSerieRequisicao
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 9790
        mmLeft = 27517
        mmTop = 19579
        mmWidth = 147373
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel102: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 19050
        mmWidth = 23283
        BandType = 8
      end
      object ppLine13: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13758
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel103: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 4498
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel104: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 794
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel105: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 8202
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel106: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL LIQUIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 145257
        mmTop = 8731
        mmWidth = 27517
        BandType = 8
      end
      object ppLine14: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel107: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENDEDOR:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 7938
        mmTop = 15346
        mmWidth = 19050
        BandType = 8
      end
      object ppDBRichText5: TppDBRichText
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = ppSerieRequisicao
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 15610
        mmWidth = 51065
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel108: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ASSINATURA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 75142
        mmTop = 1058
        mmWidth = 21167
        BandType = 8
      end
      object ppDBRichText6: TppDBRichText
        UserName = 'DBRichText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PARCELAMENTO'
        DataPipeline = ppSerieRequisicao
        DataPipelineName = 'ppSerieRequisicao'
        mmHeight = 7938
        mmLeft = 2646
        mmTop = 5556
        mmWidth = 71438
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel109: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCIMENTO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 23283
        BandType = 8
      end
    end
    object ppParameterList5: TppParameterList
    end
  end
  object Designer_Requisicao: TppDesigner
    AllowDataSettingsChange = True
    Caption = 'Configurar S'#233'rie Requisi'#231#227'o'
    DataSettings.SessionType = 'BDESession'
    DataSettings.AllowEditSQL = False
    DataSettings.DatabaseType = dtInterBase
    DataSettings.GuidCollationType = gcString
    DataSettings.IsCaseSensitive = True
    DataSettings.SQLType = sqSQL2
    DataSettings.UseDataDictionary = True
    Position = poScreenCenter
    Report = rptSerieRequisicao
    IniStorageType = 'IniFile'
    IniStorageName = '($WINSYS)\RBuilder.ini'
    WindowHeight = 400
    WindowLeft = 100
    WindowTop = 50
    WindowWidth = 600
    WindowState = wsMaximized
    Left = 562
    Top = 295
  end
  object ppLayoutRequisicao: TppDBPipeline
    DataSource = DmOrdemCarga.dsLayoutRequisicao
    UserName = 'LayoutRequisicao'
    Left = 594
    Top = 295
  end
  object ppSerieRequisicao: TppDBPipeline
    DataSource = DmOrdemCarga.dsSeries_Requisicao
    UserName = 'SerieRequisicao'
    Left = 626
    Top = 295
  end
  object dsPedidos: TDataSource
    DataSet = DmVendas2.qrySeriesNF
    Left = 263
    Top = 151
  end
  object ppSubIndice: TppDBPipeline
    DataSource = DMCadastros.dsIndice
    UserName = 'SubIndice'
    Left = 201
    Top = 184
  end
  object DsTipoDocto: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Tipo_Documento
    Left = 680
    Top = 3
  end
end
