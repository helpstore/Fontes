object FrmAct_Renegociacao: TFrmAct_Renegociacao
  Left = 256
  Top = 120
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = 'Renegocia'#231#227'o de T'#237'tulos'
  ClientHeight = 346
  ClientWidth = 659
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl: TcxPageControl
    Left = 0
    Top = 29
    Width = 659
    Height = 281
    ActivePage = tbsParcelas
    Align = alClient
    TabOrder = 0
    ClientRectBottom = 281
    ClientRectRight = 659
    ClientRectTop = 24
    object tbsParcelar: TcxTabSheet
      Caption = 'tbsParcelar'
      object pnlClient: TPanel
        Left = 0
        Top = 0
        Width = 659
        Height = 257
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Panel2: TPanel
          Left = 0
          Top = 0
          Width = 659
          Height = 257
          Align = alClient
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Label3: TcxLabel
            Left = 150
            Top = 7
            Caption = 'Data Inicial'
            ParentFont = False
            Transparent = True
          end
          object Label8: TcxLabel
            Left = 329
            Top = 51
            Caption = 'Tipo. Docto'
            ParentFont = False
            Transparent = True
          end
          object Label6: TcxLabel
            Left = 457
            Top = 50
            Caption = 'N. Doc.'
            ParentFont = False
            Transparent = True
          end
          object Label2: TcxLabel
            Left = 10
            Top = 51
            Caption = 'Hist'#243'rico'
            ParentFont = False
            Transparent = True
          end
          object Label7: TcxLabel
            Left = 10
            Top = 92
            Caption = 'Centro Custo'
            ParentFont = False
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 70
            Top = 7
            Caption = 'Intervalo (Dias)'
            ParentFont = False
            Transparent = True
          end
          object Label30: TcxLabel
            Left = 10
            Top = 7
            Caption = 'N'#186' Parcelas'
            ParentFont = False
            Transparent = True
          end
          object Label1: TcxLabel
            Left = 242
            Top = 7
            Caption = 'Pessoa'
            ParentFont = False
            Transparent = True
          end
          object Label26: TcxLabel
            Left = 13
            Top = 232
            Caption = 'Total '#224' Renegociar: '
            ParentFont = False
            Transparent = True
          end
          object lblTotal: TcxLabel
            Left = 136
            Top = 232
            Caption = '............'
            ParentFont = False
            Transparent = True
          end
          object EdData: TdxDateEdit
            Left = 149
            Top = 22
            Width = 89
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            Date = -700000.000000000000000000
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object CmbPessoa: TdxLookupEdit
            Left = 242
            Top = 22
            Width = 314
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            ClearKey = 46
            ListFieldName = 'NOME_RAZAO'
            KeyFieldName = 'CODIGO'
            ListSource = dsPessoas
            LookupKeyValue = Null
          end
          object CmbTipo: TdxLookupEdit
            Left = 329
            Top = 65
            Width = 124
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            ListFieldName = 'NOME'
            KeyFieldName = 'SIGLA'
            ListSource = DsTipoDocto
            LookupKeyValue = Null
          end
          object EdDocumento: TdxEdit
            Left = 456
            Top = 64
            Width = 100
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 6
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            CharCase = ecUpperCase
          end
          object EdHistorico: TdxEdit
            Left = 10
            Top = 65
            Width = 316
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            CharCase = ecUpperCase
          end
          object CmbCentro_Custo: TdxLookupEdit
            Left = 10
            Top = 106
            Width = 239
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 7
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            ClearKey = 46
            ListFieldName = 'NOME'
            KeyFieldName = 'CODIGO'
            ListSource = dsCCusto
            LookupKeyValue = Null
          end
          object edtParcela: TdxSpinEdit
            Left = 10
            Top = 22
            Width = 57
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            MaxValue = 999.000000000000000000
            MinValue = 1.000000000000000000
            Value = 1.000000000000000000
            StoredValues = 48
          end
          object Intervalo: TdxSpinEdit
            Left = 70
            Top = 22
            Width = 75
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            MaxValue = 999.000000000000000000
            Value = 30.000000000000000000
            StoredValues = 16
          end
          object ckConfigFin: TCheckBox
            Left = 257
            Top = 114
            Width = 232
            Height = 17
            Caption = 'Definir configura'#231#227'o financeira do(s) t'#237'tulo(s)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 8404992
            Font.Height = -11
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            TabOrder = 8
            OnExit = ckConfigFinExit
            OnKeyDown = FormKeyDown
          end
        end
      end
    end
    object tbsConfigTitulo: TcxTabSheet
      Caption = 'tbsConfigTitulo'
      object Panel5: TPanel
        Left = 0
        Top = 0
        Width = 659
        Height = 257
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object GroupBox1: TGroupBox
          Left = 8
          Top = 3
          Width = 305
          Height = 114
          Caption = ' Corre'#231#227'o Monet'#225'ria '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 0
          object btnMoeda: TcxButton
            Left = 273
            Top = 31
            Width = 23
            Height = 24
            Cursor = crHandPoint
            TabOrder = 4
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
          object Label11: TcxLabel
            Left = 11
            Top = 17
            Caption = 'Indexador'
            ParentFont = False
            Transparent = True
          end
          object Label12: TcxLabel
            Left = 11
            Top = 61
            Caption = 'Dt. Inicial'
            ParentFont = False
            Transparent = True
          end
          object Label13: TcxLabel
            Left = 115
            Top = 61
            Caption = 'Dt. Final'
            ParentFont = False
            Transparent = True
          end
          object Label14: TcxLabel
            Left = 219
            Top = 61
            Caption = 'Cota'#231#227'o'
            ParentFont = False
            Transparent = True
          end
          object cmbMoeda: TdxDBLookupEdit
            Left = 11
            Top = 32
            Width = 262
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
            TabOrder = 0
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'COD_INDEXADOR'
            DataSource = dsConfigTitulo
            ReadOnly = False
            ClearKey = 46
            ListFieldName = 'NOME'
            Revertable = True
            KeyFieldName = 'CODIGO'
            ListSource = dsMoeda
            LookupKeyValue = Null
            StoredValues = 64
          end
          object dxDBDateEdit1: TdxDBDateEdit
            Left = 11
            Top = 75
            Width = 101
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'DATAINICIOVARIACAO'
            DataSource = dsConfigTitulo
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object dxDBDateEdit2: TdxDBDateEdit
            Left = 115
            Top = 75
            Width = 101
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
            TabOrder = 2
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'DATAFIMVARIACAO'
            DataSource = dsConfigTitulo
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object edtCotacao: TdxDBCalcEdit
            Left = 219
            Top = 74
            Width = 78
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = '_COTACAO'
            DataSource = dsConfigTitulo
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
        end
        object GroupBox3: TGroupBox
          Left = 315
          Top = 119
          Width = 337
          Height = 114
          Caption = 'Juro Pr'#233'-Fixado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 4
          object Label18: TcxLabel
            Left = 165
            Top = 17
            Caption = 'Dt. Inicial'
            ParentFont = False
            Transparent = True
          end
          object Label20: TcxLabel
            Left = 268
            Top = 17
            Caption = 'Car'#234'ncia'
            ParentFont = False
            Transparent = True
          end
          object Label23: TcxLabel
            Left = 8
            Top = 61
            Caption = 'Pct. (%)'
            ParentFont = False
            Transparent = True
          end
          object Label24: TcxLabel
            Left = 68
            Top = 60
            Caption = 'Vig'#234'ncia'
            ParentFont = False
            Transparent = True
          end
          object dxDBDateEdit3: TdxDBDateEdit
            Left = 165
            Top = 32
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'DATAINICIOJUROS'
            DataSource = dsConfigTitulo
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object edtJurosCarencia: TdxDBSpinEdit
            Left = 269
            Top = 32
            Width = 60
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'CARENCIAJUROS'
            DataSource = dsConfigTitulo
            MaxValue = 9999.000000000000000000
            StoredValues = 16
          end
          object rdTipoJuros: TDBRadioGroup
            Left = 8
            Top = 16
            Width = 153
            Height = 40
            Caption = 'Tipo Juros'
            Columns = 2
            DataField = 'JUROSIMPLES'
            DataSource = dsConfigTitulo
            Items.Strings = (
              'Simples'
              'Composto')
            TabOrder = 0
            Values.Strings = (
              '0'
              '1')
          end
          object dxDBCalcEdit3: TdxDBCalcEdit
            Left = 8
            Top = 75
            Width = 58
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
            TabOrder = 3
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'TAXAJUROS'
            DataSource = dsConfigTitulo
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
          object edtJurosVigencia: TdxDBSpinEdit
            Left = 69
            Top = 75
            Width = 60
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
            TabOrder = 4
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'VIGENCIA'
            DataSource = dsConfigTitulo
            MaxValue = 9999.000000000000000000
            StoredValues = 16
          end
        end
        object GroupBox4: TGroupBox
          Left = 8
          Top = 119
          Width = 305
          Height = 114
          Caption = 'Juro P'#243's-Fixado'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 3
          object SpeedButton1: TcxButton
            Left = 273
            Top = 31
            Width = 23
            Height = 24
            Cursor = crHandPoint
            TabOrder = 3
            OnClick = SpeedButton1Click
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
          object Label17: TcxLabel
            Left = 11
            Top = 17
            Caption = 'Indexador'
            ParentFont = False
            Transparent = True
          end
          object Label19: TcxLabel
            Left = 11
            Top = 61
            Caption = 'Dt. Inicial'
            ParentFont = False
            Transparent = True
          end
          object Label22: TcxLabel
            Left = 116
            Top = 61
            Caption = 'Spreed (%)'
            ParentFont = False
            Transparent = True
          end
          object dxDBLookupEdit1: TdxDBLookupEdit
            Left = 11
            Top = 32
            Width = 262
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
            TabOrder = 0
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'COD_JURO_POS_FIXADO'
            DataSource = dsConfigTitulo
            ReadOnly = False
            ClearKey = 46
            ListFieldName = 'NOME'
            Revertable = True
            KeyFieldName = 'CODIGO'
            ListSource = dsMoeda2
            LookupKeyValue = Null
            StoredValues = 64
          end
          object dxDBDateEdit4: TdxDBDateEdit
            Left = 11
            Top = 75
            Width = 101
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'DATAINICIOJUROS'
            DataSource = dsConfigTitulo
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object dxDBCalcEdit2: TdxDBCalcEdit
            Left = 116
            Top = 74
            Width = 78
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
            TabOrder = 2
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'TAXARISCO'
            DataSource = dsConfigTitulo
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
        end
        object GroupBox2: TGroupBox
          Left = 316
          Top = 3
          Width = 80
          Height = 114
          Caption = ' Multa '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 1
          object Label16: TcxLabel
            Left = 8
            Top = 61
            Caption = 'Car'#234'ncia'
            ParentFont = False
            Transparent = True
          end
          object Label15: TcxLabel
            Left = 8
            Top = 18
            Caption = 'Pct. (%)'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit1: TdxDBCalcEdit
            Left = 8
            Top = 32
            Width = 57
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'TAXAMULTA'
            DataSource = dsConfigTitulo
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
          object edtMultaCarencia: TdxDBSpinEdit
            Left = 8
            Top = 75
            Width = 60
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
            TabOrder = 1
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            Alignment = taRightJustify
            DataField = 'CARENCIAMULTA'
            DataSource = dsConfigTitulo
            MaxValue = 9999.000000000000000000
            StoredValues = 17
          end
        end
        object GroupBox5: TGroupBox
          Left = 398
          Top = 3
          Width = 253
          Height = 114
          Caption = ' Descontos '
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          TabOrder = 2
          object Label21: TcxLabel
            Left = 8
            Top = 18
            Caption = 'Pontualidade (%)'
            ParentFont = False
            Transparent = True
          end
          object Label25: TcxLabel
            Left = 8
            Top = 61
            Caption = 'Antecipa'#231#227'o (%)'
            ParentFont = False
            Transparent = True
          end
          object dxDBCalcEdit4: TdxDBCalcEdit
            Left = 8
            Top = 32
            Width = 85
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'PERCDESCONTOPONTUALIDADE'
            DataSource = dsConfigTitulo
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
          object dxDBCalcEdit5: TdxDBCalcEdit
            Left = 8
            Top = 75
            Width = 85
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'PERCDESCONTOANTECIPADO'
            DataSource = dsConfigTitulo
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
          object rdDesconto: TDBRadioGroup
            Left = 102
            Top = 15
            Width = 134
            Height = 85
            Caption = 'Tipo D. Antecipado'
            DataField = 'TIPODESCONTO'
            DataSource = dsConfigTitulo
            Items.Strings = (
              'Simples - Racional'
              'Simples - Comercial'
              'Composto - Racional')
            TabOrder = 2
            Values.Strings = (
              '0'
              '1'
              '2')
          end
        end
      end
    end
    object tbsParcelas: TcxTabSheet
      Caption = 'tbsParcelas'
      object Panel7: TPanel
        Left = 0
        Top = 0
        Width = 659
        Height = 257
        Align = alClient
        BevelOuter = bvNone
        ParentColor = True
        TabOrder = 0
        object Panel1: TPanel
          Left = 0
          Top = 0
          Width = 659
          Height = 101
          Align = alTop
          BevelOuter = bvNone
          ParentColor = True
          TabOrder = 0
          object Label28: TcxLabel
            Left = 483
            Top = 6
            Caption = 'Vencimento'
            ParentFont = False
            Transparent = True
          end
          object Label33: TcxLabel
            Left = 322
            Top = 5
            Caption = 'Duplicata'
            ParentFont = False
            Transparent = True
          end
          object Label31: TcxLabel
            Left = 381
            Top = 5
            Caption = 'Valor'
            ParentFont = False
            Transparent = True
          end
          object Label4: TcxLabel
            Left = 12
            Top = 49
            Caption = 'Hist'#243'rico'
            ParentFont = False
            Transparent = True
          end
          object Label5: TcxLabel
            Left = 10
            Top = 5
            Caption = 'Pessoa'
            ParentFont = False
            Transparent = True
          end
          object Label10: TcxLabel
            Left = 322
            Top = 49
            Caption = 'Centro Custo'
            ParentFont = False
            Transparent = True
          end
          object edtDataBase: TdxDBDateEdit
            Left = 483
            Top = 20
            Width = 87
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
            TabOrder = 3
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'DT_VENCTO'
            DataSource = dsParcelas
            DateValidation = True
            UseEditMask = True
            StoredValues = 4
          end
          object dxDBEdit7: TdxDBEdit
            Left = 10
            Top = 63
            Width = 310
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'HISTORICO'
            DataSource = dsParcelas
          end
          object edtDuplicata: TdxDBEdit
            Left = 322
            Top = 20
            Width = 55
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'DUPLICATA'
            DataSource = dsParcelas
          end
          object edtValor: TdxDBCalcEdit
            Left = 379
            Top = 20
            Width = 101
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'VALOR'
            DataSource = dsParcelas
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
          object dbCmbPessoa: TdxDBLookupEdit
            Left = 10
            Top = 20
            Width = 310
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
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'COD_PESSOA'
            DataSource = dsParcelas
            ClearKey = 46
            ListFieldName = 'NOME_RAZAO'
            KeyFieldName = 'CODIGO'
            ListSource = dsPessoas2
            LookupKeyValue = Null
          end
          object cmbCCusto: TdxDBLookupEdit
            Left = 322
            Top = 63
            Width = 247
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -13
            Font.Name = 'MS Sans Serif'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            OnEnter = edtParcelaEnter
            OnExit = edtParcelaExit
            OnKeyDown = FormKeyDown
            DataField = 'COD_CCUSTO'
            DataSource = dsParcelas
            ClearKey = 46
            ListFieldName = 'NOME'
            KeyFieldName = 'CODIGO'
            ListSource = dsCCusto2
            LookupKeyValue = Null
          end
        end
        object GridFaturamento: TdxDBGrid
          Left = 0
          Top = 101
          Width = 659
          Height = 156
          Bands = <
            item
            end>
          DefaultLayout = True
          HeaderPanelRowCount = 1
          KeyField = 'PARCELA'
          ShowSummaryFooter = True
          SummaryGroups = <>
          SummarySeparator = ', '
          Align = alClient
          TabOrder = 1
          DataSource = dsParcelas
          Filter.Criteria = {00000000}
          LookAndFeel = lfFlat
          OptionsBehavior = [edgoAutoSort, edgoDragScroll, edgoEnterShowEditor, edgoImmediateEditor, edgoTabThrough, edgoVertThrough]
          OptionsCustomize = [edgoColumnMoving, edgoColumnSizing]
          OptionsDB = [edgoCanNavigation, edgoLoadAllRecords, edgoUseBookmarks]
          object GridFaturamentoPARCELA: TdxDBGridMaskColumn
            Width = 42
            BandIndex = 0
            RowIndex = 0
            FieldName = 'PARCELA'
          end
          object GridFaturamentoDT_VENCTO: TdxDBGridDateColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DT_VENCTO'
          end
          object GridFaturamentoVALOR: TdxDBGridMaskColumn
            BandIndex = 0
            RowIndex = 0
            FieldName = 'VALOR'
            SummaryFooterType = cstSum
            SummaryField = 'VALOR'
          end
          object GridFaturamentoDUPLICATA: TdxDBGridMaskColumn
            Width = 52
            BandIndex = 0
            RowIndex = 0
            FieldName = 'DUPLICATA'
          end
          object GridFaturamentoCOD_PESSOA: TdxDBGridMaskColumn
            Width = 66
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_PESSOA'
          end
          object GridFaturamentoPessoa: TdxDBGridMaskColumn
            Width = 186
            BandIndex = 0
            RowIndex = 0
            FieldName = 'Pessoa'
          end
          object GridFaturamentoCOD_CCUSTO: TdxDBGridMaskColumn
            Width = 75
            BandIndex = 0
            RowIndex = 0
            FieldName = 'COD_CCUSTO'
          end
          object GridFaturamentoCentroCusto: TdxDBGridMaskColumn
            Width = 237
            BandIndex = 0
            RowIndex = 0
            FieldName = 'CentroCusto'
          end
          object GridFaturamentoHISTORICO: TdxDBGridMaskColumn
            Width = 233
            BandIndex = 0
            RowIndex = 0
            FieldName = 'HISTORICO'
          end
          object GridFaturamentoRecId: TdxDBGridColumn
            Visible = False
            Width = 31
            BandIndex = 0
            RowIndex = 0
            FieldName = 'RecId'
          end
        end
      end
    end
  end
  object Panel3: TPanel
    Left = 0
    Top = 0
    Width = 659
    Height = 29
    Align = alTop
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 1
    object b2: TBevel
      Left = 8
      Top = 22
      Width = 150
      Height = 1
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 7
      Top = 5
      Caption = 'Renegocia'#231#227'o de T'#237'tulos'
      ParentFont = False
      Transparent = True
    end
  end
  object Panel4: TPanel
    Left = 0
    Top = 310
    Width = 659
    Height = 36
    Align = alBottom
    BevelOuter = bvNone
    ParentColor = True
    TabOrder = 2
    DesignSize = (
      659
      36)
    object RzButton17: TcxButton
      Left = 564
      Top = 3
      Width = 85
      Height = 25
      Anchors = [akRight, akBottom]
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      TabStop = False
      OnClick = RzButton17Click
    end
    object btnProximo: TcxButton
      Left = 120
      Top = 3
      Width = 105
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = 'pr'#243'ximo >>'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      OnClick = btnProximoClick
    end
    object btnAnterior: TcxButton
      Left = 8
      Top = 3
      Width = 105
      Height = 25
      Anchors = [akLeft, akBottom]
      Caption = '<< anterior'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = False
      OnClick = btnAnteriorClick
    end
  end
  object Actions: TActionList
    Left = 408
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
    object ActCancelar: TAction
      Caption = 'ActCancelar'
      OnExecute = ActCancelarExecute
    end
    object ActEditar: TAction
      Caption = 'ActEditar'
      ShortCut = 117
      OnExecute = ActEditarExecute
    end
  end
  object dsPessoas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Pessoas_FJ
    Left = 504
    Top = 216
  end
  object stgFrmAcertoBaixa: TcxPropertiesStore
    Components = <>
    StorageName = 'stgFrmAcertoBaixa'
    Left = 376
  end
  object mtbRenegociao: TdxMemData
    Indexes = <>
    SortOptions = []
    Left = 480
    Top = 8
    object mtbRenegociaoCOD_PESSOA: TIntegerField
      DisplayLabel = 'C'#243'd. Pessoa'
      FieldName = 'COD_PESSOA'
      OnValidate = mtbRenegociaoCOD_PESSOAValidate
    end
    object mtbRenegociaoDUPLICATA: TStringField
      DisplayLabel = 'Duplicata'
      FieldName = 'DUPLICATA'
      Size = 10
    end
    object mtbRenegociaoDT_VENCTO: TDateField
      DisplayLabel = 'Dt. Vencto'
      FieldName = 'DT_VENCTO'
    end
    object mtbRenegociaoHISTORICO: TStringField
      DisplayLabel = 'Hist'#243'rico'
      FieldName = 'HISTORICO'
      Size = 100
    end
    object mtbRenegociaoVALOR: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
    end
    object mtbRenegociaoCOD_CCUSTO: TIntegerField
      DisplayLabel = 'C'#243'd. C. Custo'
      FieldName = 'COD_CCUSTO'
      OnValidate = mtbRenegociaoCOD_CCUSTOValidate
    end
    object mtbRenegociaoPARCELA: TStringField
      DisplayLabel = 'Parcela'
      FieldName = 'PARCELA'
      Size = 6
    end
    object mtbRenegociaoPessoa: TStringField
      FieldName = 'Pessoa'
      Size = 50
    end
    object mtbRenegociaoCentroCusto: TStringField
      FieldName = 'CentroCusto'
      Size = 50
    end
  end
  object dsParcelas: TDataSource
    AutoEdit = False
    DataSet = mtbRenegociao
    Left = 448
    Top = 8
  end
  object mtbConfigTitulo: TdxMemData
    Indexes = <>
    SortOptions = []
    OnNewRecord = mtbConfigTituloNewRecord
    Left = 574
    Top = 8
    object mtbConfigTituloCOD_INDEXADOR: TIntegerField
      FieldName = 'COD_INDEXADOR'
    end
    object mtbConfigTituloDATAINICIOVARIACAO: TDateField
      FieldName = 'DATAINICIOVARIACAO'
    end
    object mtbConfigTituloDATAFIMVARIACAO: TDateField
      FieldName = 'DATAFIMVARIACAO'
    end
    object mtbConfigTituloQUANTIDADEINDEXADOR: TFloatField
      FieldName = 'QUANTIDADEINDEXADOR'
      DisplayFormat = '###,##0.00'
    end
    object mtbConfigTitulo_COTACAO: TFloatField
      FieldName = '_COTACAO'
    end
    object mtbConfigTituloTAXAMULTA: TFloatField
      FieldName = 'TAXAMULTA'
      DisplayFormat = '###,##0.00'
    end
    object mtbConfigTituloPERCDESCONTOANTECIPADO: TFloatField
      FieldName = 'PERCDESCONTOANTECIPADO'
      DisplayFormat = '###,##0.00'
    end
    object mtbConfigTituloPERCDESCONTOPONTUALIDADE: TFloatField
      FieldName = 'PERCDESCONTOPONTUALIDADE'
      DisplayFormat = '###,##0.00'
    end
    object mtbConfigTituloTIPODESCONTO: TStringField
      FieldName = 'TIPODESCONTO'
      Size = 1
    end
    object mtbConfigTituloCOD_JURO_POS_FIXADO: TIntegerField
      FieldName = 'COD_JURO_POS_FIXADO'
    end
    object mtbConfigTituloTAXARISCO: TFloatField
      FieldName = 'TAXARISCO'
    end
    object mtbConfigTituloJUROSIMPLES: TStringField
      FieldName = 'JUROSIMPLES'
      Size = 1
    end
    object mtbConfigTituloDATAINICIOJUROS: TDateField
      FieldName = 'DATAINICIOJUROS'
    end
    object mtbConfigTituloCARENCIAJUROS: TIntegerField
      FieldName = 'CARENCIAJUROS'
    end
    object mtbConfigTituloTAXAJUROS: TFloatField
      FieldName = 'TAXAJUROS'
      DisplayFormat = '###,##0.00'
    end
    object mtbConfigTituloVIGENCIA: TIntegerField
      FieldName = 'VIGENCIA'
    end
    object mtbConfigTituloCARENCIAMULTA: TIntegerField
      FieldName = 'CARENCIAMULTA'
    end
  end
  object dsConfigTitulo: TDataSource
    AutoEdit = False
    DataSet = mtbConfigTitulo
    Left = 544
    Top = 8
  end
  object dsMoeda: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.Moeda
    Left = 472
    Top = 216
  end
  object dsMoeda2: TDataSource
    AutoEdit = False
    DataSet = dmFinanceiro2.Moeda2
    Left = 440
    Top = 216
  end
  object dsCCusto: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelCentroCusto
    Left = 568
    Top = 216
  end
  object dsCCusto2: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Centro_Custo
    Left = 600
    Top = 216
  end
  object dsPessoas2: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelPessoas
    Left = 536
    Top = 216
  end
  object DsTipoDocto: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Tipo_Documento
    Left = 410
    Top = 217
  end
end
