object FrmSintegra: TFrmSintegra
  Left = 20
  Top = 95
  Width = 756
  Height = 530
  Caption = 'Sintegra 32 '
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Memo1: TMemo
    Left = 0
    Top = 203
    Width = 748
    Height = 300
    Align = alClient
    ReadOnly = True
    ScrollBars = ssVertical
    TabOrder = 0
    WordWrap = False
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 748
    Height = 203
    Align = alTop
    TabOrder = 1
    object PC: TPageControl
      Left = 5
      Top = 4
      Width = 738
      Height = 196
      ActivePage = TabSheet1
      TabOrder = 0
      object TabSheet1: TTabSheet
        Caption = 'Empresa'
        object Label8: TcxLabel
          Left = 22
          Top = 9
          Caption = 'Empresa'
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 18
          Top = 41
          Caption = 'Endere'#231'o'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 39
          Top = 73
          Caption = 'Fone'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 212
          Top = 73
          Caption = 'Fax'
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 385
          Top = 73
          Caption = 'Cnpj'
          ParentFont = False
          Transparent = True
        end
        object Label5: TcxLabel
          Left = 53
          Top = 105
          Caption = 'IE'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 602
          Top = 7
          Caption = 'Data Inicial'
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 602
          Top = 55
          Caption = 'Data Final'
          ParentFont = False
          Transparent = True
        end
        object EdEmpresa: TdxEdit
          Left = 72
          Top = 5
          Width = 473
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
          TabOrder = 2
        end
        object EDENDERECO: TdxEdit
          Left = 72
          Top = 37
          Width = 473
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
          TabOrder = 3
        end
        object EDFONE: TdxEdit
          Left = 72
          Top = 69
          Width = 129
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
          TabOrder = 4
        end
        object EDFAX: TdxEdit
          Left = 239
          Top = 69
          Width = 129
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
          TabOrder = 5
        end
        object EDCNPJ: TdxEdit
          Left = 416
          Top = 69
          Width = 129
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
          TabOrder = 6
        end
        object EDIE: TdxEdit
          Left = 72
          Top = 101
          Width = 129
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
          TabOrder = 7
        end
        object edDtInicial: TdxDateEdit
          Left = 600
          Top = 24
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
          Date = -700000.000000000000000000
          UseEditMask = True
          StoredValues = 4
        end
        object edDtFinal: TdxDateEdit
          Left = 600
          Top = 72
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
          Date = -700000.000000000000000000
          UseEditMask = True
          StoredValues = 4
        end
        object Panel2: TPanel
          Left = 0
          Top = 128
          Width = 730
          Height = 40
          Align = alBottom
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 8
          object LblStatus: TcxLabel
            Left = 205
            Top = 13
            Caption = 'Status'
            ParentFont = False
            Transparent = True
            Visible = False
          end
          object RzBitBtn1: TcxButton
            Left = 9
            Top = 7
            Width = 91
            Height = 25
            Cursor = crHandPoint
            Caption = '&Imprimir'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            OnClick = RzBitBtn1Click
            Glyph.Data = {
              EE030000424DEE03000000000000360000002800000012000000110000000100
              180000000000B8030000C30E0000C30E00000000000000000000BFBFBF000000
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
          object RzBitBtn2: TcxButton
            Left = 100
            Top = 7
            Width = 91
            Height = 25
            Cursor = crHandPoint
            Cancel = True
            Caption = '&Fechar'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
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
          object ProgressBar1: TProgressBar
            Left = 205
            Top = 12
            Width = 508
            Height = 16
            TabOrder = 2
            Visible = False
          end
        end
      end
      object TabSheet2: TTabSheet
        Caption = 'Sintegra'
        ImageIndex = 1
        object LblTabela: TcxLabel
          Left = 16
          Top = 112
          Caption = 'Tabela'
          Transparent = True
        end
        object BtnSalvar: TcxButton
          Left = 526
          Top = 16
          Width = 195
          Height = 25
          Caption = ' Salvar Registros para Arquivo'
          TabOrder = 0
          OnClick = BtnSalvarClick
        end
        object BtnSair: TcxButton
          Left = 526
          Top = 80
          Width = 195
          Height = 25
          Caption = 'Sair'
          TabOrder = 1
          OnClick = BtnSairClick
        end
        object ANDA: TProgressBar
          Left = 16
          Top = 128
          Width = 697
          Height = 16
          TabOrder = 2
        end
        object Reg10: TCheckBox
          Left = 19
          Top = 19
          Width = 62
          Height = 17
          Caption = 'Reg. 10'
          Enabled = False
          TabOrder = 3
        end
        object Reg11: TCheckBox
          Left = 19
          Top = 51
          Width = 62
          Height = 17
          Caption = 'Reg. 11'
          Enabled = False
          TabOrder = 4
        end
        object reg50: TCheckBox
          Left = 19
          Top = 83
          Width = 62
          Height = 17
          Caption = 'Reg. 50'
          Enabled = False
          TabOrder = 5
        end
        object reg51: TCheckBox
          Left = 98
          Top = 19
          Width = 62
          Height = 17
          Caption = 'Reg. 51'
          Enabled = False
          TabOrder = 6
        end
        object reg53: TCheckBox
          Left = 98
          Top = 51
          Width = 62
          Height = 17
          Caption = 'Reg. 53'
          Enabled = False
          TabOrder = 7
        end
        object reg54: TCheckBox
          Left = 98
          Top = 83
          Width = 62
          Height = 17
          Caption = 'Reg. 54'
          Enabled = False
          TabOrder = 8
        end
        object reg55: TCheckBox
          Left = 178
          Top = 19
          Width = 62
          Height = 17
          Caption = 'Reg. 55'
          Enabled = False
          TabOrder = 9
        end
        object reg60m: TCheckBox
          Left = 178
          Top = 51
          Width = 65
          Height = 17
          Caption = 'Reg. 60m'
          Enabled = False
          TabOrder = 10
        end
        object reg60a: TCheckBox
          Left = 178
          Top = 83
          Width = 64
          Height = 17
          Caption = 'Reg. 60a'
          Enabled = False
          TabOrder = 11
        end
        object reg60d: TCheckBox
          Left = 258
          Top = 19
          Width = 62
          Height = 17
          Caption = 'Reg. 60d'
          Enabled = False
          TabOrder = 12
        end
        object reg60i: TCheckBox
          Left = 258
          Top = 51
          Width = 62
          Height = 17
          Caption = 'Reg. 60i'
          Enabled = False
          TabOrder = 13
        end
        object reg60r: TCheckBox
          Left = 258
          Top = 83
          Width = 62
          Height = 17
          Caption = 'Reg. 60r'
          Enabled = False
          TabOrder = 14
        end
        object reg61: TCheckBox
          Left = 338
          Top = 19
          Width = 62
          Height = 17
          Caption = 'Reg. 61'
          Enabled = False
          TabOrder = 15
        end
        object reg70: TCheckBox
          Left = 338
          Top = 51
          Width = 62
          Height = 17
          Caption = 'Reg. 70'
          Enabled = False
          TabOrder = 16
        end
        object reg71: TCheckBox
          Left = 338
          Top = 83
          Width = 62
          Height = 17
          Caption = 'Reg. 71'
          Enabled = False
          TabOrder = 17
        end
        object reg74: TCheckBox
          Left = 418
          Top = 19
          Width = 62
          Height = 17
          Caption = 'Reg. 74'
          Enabled = False
          TabOrder = 18
        end
        object reg75: TCheckBox
          Left = 418
          Top = 51
          Width = 62
          Height = 17
          Caption = 'Reg. 75'
          Enabled = False
          TabOrder = 19
        end
        object reg90: TCheckBox
          Left = 418
          Top = 83
          Width = 62
          Height = 17
          Caption = 'Reg. 90'
          Enabled = False
          TabOrder = 20
        end
      end
      object TabSheet3: TTabSheet
        Caption = 'Visualiza'#231#227'o dos Dados'
        ImageIndex = 2
        object DBGrid1: TDBGrid
          Left = 0
          Top = 1
          Width = 721
          Height = 144
          DataSource = DATASOURCE
          ReadOnly = True
          TabOrder = 0
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'MS Sans Serif'
          TitleFont.Style = []
        end
      end
    end
  end
  object DATASOURCE: TDataSource
    AutoEdit = False
    Left = 144
    Top = 200
  end
end
