object FrmProdutos: TFrmProdutos
  Left = 30
  Top = 72
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = ' Produtos '
  ClientHeight = 445
  ClientWidth = 622
  Color = 15396334
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 622
    Height = 445
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
      Top = 411
      Width = 618
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
      Caption = 'Produtos'
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 413
      Width = 618
      Height = 30
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object dxBarDockControl1: TdxBarDockControl
        Left = 0
        Top = 2
        Width = 618
        Height = 26
        Align = dalTop
        BarManager = BarManager
      end
      object Panel1: TPanel
        Left = 0
        Top = 0
        Width = 618
        Height = 2
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 1
      end
    end
    object pc: TcxPageControl
      Left = 8
      Top = 43
      Width = 605
      Height = 366
      Cursor = crHandPoint
      ActivePage = Pg1
      HotTrack = True
      TabOrder = 1
      ClientRectBottom = 361
      ClientRectLeft = 2
      ClientRectRight = 600
      ClientRectTop = 24
      object Pg1: TcxTabSheet
        Caption = '  Cadastro  '
        OnEnter = Pg1Enter
        object Shape6: TShape
          Left = 51
          Top = 284
          Width = 409
          Height = 55
          Brush.Color = clBtnFace
          Pen.Color = clBtnShadow
        end
        object Shape7: TShape
          Left = 47
          Top = 274
          Width = 90
          Height = 17
          Brush.Color = clBtnShadow
          Pen.Color = clBtnShadow
        end
        object Shape1: TShape
          Left = 0
          Top = 0
          Width = 598
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object DBCoolText3: TDBText
          Left = 61
          Top = 314
          Width = 68
          Height = 21
          Alignment = taRightJustify
          DataField = 'QTD_UM'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBCoolText4: TDBText
          Left = 280
          Top = 314
          Width = 113
          Height = 21
          Alignment = taRightJustify
          DataField = 'QTD_UNIT'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBCoolText5: TDBText
          Left = 134
          Top = 320
          Width = 147
          Height = 17
          DataField = 'NOME'
          DataSource = dsUnidade
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object DBCoolText1: TDBText
          Left = 282
          Top = 290
          Width = 111
          Height = 21
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'Estoque_Fisico'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label10: TcxLabel
          Left = 13
          Top = 171
          Caption = 'Trib. Interestadual'
          ParentFont = False
          Transparent = True
        end
        object Label9: TcxLabel
          Left = 37
          Top = 146
          Caption = 'Trib. Estadual'
          ParentFont = False
          Transparent = True
        end
        object Label7: TcxLabel
          Left = 64
          Top = 121
          Caption = 'Unidade'
          ParentFont = False
          Transparent = True
        end
        object Label6: TcxLabel
          Left = 61
          Top = 96
          Caption = 'Redu'#231#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label8: TcxLabel
          Left = 74
          Top = 71
          Caption = 'Marca'
          ParentFont = False
          Transparent = True
        end
        object Label2: TcxLabel
          Left = 76
          Top = 46
          Caption = 'Nome'
          ParentFont = False
          Transparent = True
        end
        object Label1: TcxLabel
          Left = 70
          Top = 21
          Caption = 'C'#243'digo'
          ParentFont = False
          Transparent = True
        end
        object Label3: TcxLabel
          Left = 234
          Top = 21
          Caption = 'Secund'
          ParentFont = False
          Transparent = True
        end
        object btnMarca: TcxButton
          Left = 400
          Top = 67
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 27
          OnClick = btnMarcaClick
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
        object BtnReducao: TcxButton
          Left = 400
          Top = 92
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 28
          OnClick = BtnReducaoClick
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
        object BtnUnidade: TcxButton
          Left = 308
          Top = 117
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 29
          OnClick = BtnUnidadeClick
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
        object Label30: TcxLabel
          Left = 42
          Top = 221
          Caption = 'Al'#237'quota ECF'
          ParentFont = False
          Transparent = True
        end
        object Label31: TcxLabel
          Left = 69
          Top = 196
          Caption = 'Origem'
          ParentFont = False
          Transparent = True
        end
        object RxLabel1: TcxLabel
          Left = 51
          Top = 275
          Caption = 'Estoque Atual'
          ParentFont = False
          Transparent = True
        end
        object CoolLabel1: TcxLabel
          Left = 399
          Top = 320
          Caption = 'Unidades'
          ParentFont = False
          Transparent = True
        end
        object Label13: TcxLabel
          Left = 274
          Top = 221
          Caption = #218'lt. Fornecedor'
          ParentFont = False
          Transparent = True
        end
        object CoolLabel2: TcxLabel
          Left = 399
          Top = 296
          Caption = 'F'#237'sico'
          ParentFont = False
          Transparent = True
        end
        object cmbCTIE: TdxDBPickEdit
          Left = 108
          Top = 166
          Width = 290
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
          OnEnter = CmbCTEEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taLeftJustify
          DataField = 'CTIE'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            '1 - Tributada Integralmente'
            '2 - Tributada com Redu'#231#227'o na Base de C'#225'lculo'
            '3 - Isento de ICMS'
            '4 - ICMS n'#227'o incid'#234'ncia'
            '5 - Diferido'
            '6 - Substitui'#231#227'o Tribut'#225'ria'
            '7 - ISS')
          StoredValues = 1
        end
        object CmbCTE: TdxDBPickEdit
          Left = 108
          Top = 141
          Width = 290
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
          TabOrder = 8
          OnEnter = CmbCTEEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taLeftJustify
          DataField = 'CTE'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            '1 - Tributada Integralmente'
            '2 - Tributada com Redu'#231#227'o na Base de C'#225'lculo'
            '3 - Isento de ICMS'
            '4 - ICMS n'#227'o incid'#234'ncia'
            '5 - Diferido'
            '6 - Substitui'#231#227'o Tribut'#225'ria'
            '7 - ISS')
          StoredValues = 1
        end
        object cmbUnidade: TdxDBLookupEdit
          Left = 108
          Top = 116
          Width = 197
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
          TabOrder = 6
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'UNIDADE'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'SIGLA'
          ListSource = dsUnidade
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbReducao: TdxDBLookupEdit
          Left = 108
          Top = 91
          Width = 290
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
          TabOrder = 5
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'REDUCAO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'MENSAGEM_NF'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsReducao
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbMarca: TdxDBLookupEdit
          Left = 108
          Top = 66
          Width = 290
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
          TabOrder = 4
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'MARCA'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsMarcas
          LookupKeyValue = Null
          StoredValues = 64
        end
        object EdNome: TdxDBEdit
          Left = 108
          Top = 41
          Width = 290
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'NOME'
          DataSource = DataSource
        end
        object edECF: TdxDBPickEdit
          Left = 108
          Top = 216
          Width = 41
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
          TabOrder = 11
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'ALIQUOTA_ECF'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            'T1'
            'T2'
            'T3'
            'T4'
            'T5'
            'T6'
            'T7'
            'T8'
            'FF'
            'II'
            'NN')
        end
        object cmbOrigem: TdxDBPickEdit
          Left = 108
          Top = 191
          Width = 290
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
          TabOrder = 10
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'ORIGEM'
          DataSource = DataSource
          PopupBorder = pbFlat
          Items.Strings = (
            '0 - Nacional'
            '1 - Importada ( Adquirida no Mercado Interno )'
            '2 - Importada Diretamente')
        end
        object cbEtiqueta: TdxDBCheckEdit
          Left = 22
          Top = 243
          Width = 104
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Emite Etiqueta ?'
          DataField = 'ETIQUETA_ENT'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object cbComplemento: TdxDBCheckEdit
          Left = 141
          Top = 243
          Width = 169
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Digita Complemento na N.F. ?'
          DataField = 'COMPLEMENTO_NF'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit2: TdxDBCheckEdit
          Left = 409
          Top = 16
          Width = 60
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 2
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Ativo ?'
          DataField = 'ATIVO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit3: TdxDBCheckEdit
          Left = 331
          Top = 263
          Width = 70
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          OnKeyPress = dxDBCheckEdit3KeyPress
          Alignment = taRightJustify
          Caption = 'Pes'#225'vel?'
          DataField = 'PROD_PESAVEL'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit1: TdxDBEdit
          Left = 352
          Top = 216
          Width = 46
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
          TabOrder = 16
          OnKeyDown = EdCodigoKeyDown
          DataField = 'ULTIMO_FORNECEDOR'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object CmbSubUnidade: TdxDBLookupEdit
          Left = 336
          Top = 116
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
          Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
          Style.HotTrack = True
          Style.Shadow = False
          TabOrder = 7
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'SUBUNIDADE'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'UNIDADES'
          CanDeleteText = True
          Revertable = True
          KeyFieldName = 'UNIDADES'
          ListSource = DsSubUnidades
          LookupKeyValue = Null
          StoredValues = 64
        end
        object EdCodigo: TdxDBEdit
          Left = 108
          Top = 17
          Width = 120
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'CODIGO'
          DataSource = DataSource
        end
        object dxDBEdit3: TdxDBEdit
          Left = 278
          Top = 17
          Width = 120
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'CODIGO_2'
          DataSource = DataSource
        end
        object dxDBEdit2: TdxDBEdit
          Left = 401
          Top = 41
          Width = 65
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
          TabOrder = 17
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'CODIGO_INTERNO'
          DataSource = DataSource
        end
        object Panel2: TPanel
          Left = 460
          Top = 1
          Width = 138
          Height = 336
          Align = alRight
          Alignment = taRightJustify
          BevelInner = bvRaised
          BevelOuter = bvLowered
          TabOrder = 18
          object BtnLote: TcxButton
            Left = 7
            Top = 7
            Width = 126
            Height = 26
            Cursor = crHandPoint
            Action = ActLote
            Caption = 'Lotes (F12)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 0
            Glyph.Data = {
              96010000424D9601000000000000760000002800000018000000180000000100
              0400000000002001000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
              3333333333333333333330000333333333333333333328888033333383333333
              3332222288033338888333333332222228033303833833333332262228033000
              0338333333322A62220333033038333333332222283333333038333333333222
              2333333330333333333333333333333330333333883333333333333333333338
              8883333333333888888833880888333333333888888838805088833333380000
              00883309150883388888C44440883099915033333078CC4440883DD999153000
              0003C6C4408833DF998333333033CE6C4088333DD83333333333CCCCC0333333
              D333333333333333333333333333333333333333333333333333333333333333
              3333333333333333333333333333333333333333333333333333}
          end
          object BtnAgrupador: TcxButton
            Left = 7
            Top = 37
            Width = 126
            Height = 26
            Cursor = crHandPoint
            Action = ActAgrupar
            Caption = 'Agrupador (F7)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 1
            Glyph.Data = {
              F6000000424DF600000000000000760000002800000010000000100000000100
              04000000000080000000120B0000120B00001000000000000000000000000000
              8000008000000080800080000000800080008080000080808000C0C0C0000000
              FF00C0C0C00000FFFF00FF000000C0C0C000FFFF0000FFFFFF00DADADADADADA
              DADA00000DADADADADAD0FFF0ADADADADADA0FFF0D0DADADADAD00000AD0D0DA
              DADAADADADAD00ADADADDA0ADAD000DADADAAD0DADADAD00000000000ADADA05
              5550AD0DADADAD055550DA0ADADADA000000ADADADA000ADADAD00000ADA00DA
              DADA0FFF0DA0A0ADADAD0FFF0A0ADADADADA00000DADADADADAD}
          end
          object SpeedButton1: TcxButton
            Left = 7
            Top = 67
            Width = 126
            Height = 26
            Cursor = crHandPoint
            Action = ActComissao
            Caption = 'Comiss'#245'es (F8)'
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            TabOrder = 2
            Glyph.Data = {
              4E010000424D4E01000000000000760000002800000012000000120000000100
              040000000000D800000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
              DDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDD000000DDDD
              00DDDDD00DDDDD000000DDDD070000070DDDDD000000DDD0707777700DDDDD00
              0000DD077777777770DDDD000000DD07777777777F0DDD000000D07777777777
              700DDD000000D0777777777777700D000000D0777777777777770D000000D077
              00777770F7770D000000DD07FF00077F7700DD000000DDD007FFF77770DDDD00
              0000DDDDD00000700DDDDD000000DDDDDDDDDD00DDDDDD000000DDDDDDDDDDD0
              DDDDDD000000DDDDDDDDDDDDDDDDDD000000}
          end
        end
        object dxDBCheckEdit5: TdxDBCheckEdit
          Left = 317
          Top = 244
          Width = 85
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Possui Lote'
          DataField = 'POSSUI_LOTE'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
      end
      object Pg2: TcxTabSheet
        Caption = '  Estoque  '
        OnEnter = Pg2Enter
        object Shape2: TShape
          Left = 0
          Top = 0
          Width = 598
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Shape9: TShape
          Left = 264
          Top = 339
          Width = 333
          Height = 1
          Pen.Color = clBtnShadow
        end
        object DBCoolText7: TDBText
          Left = 486
          Top = 316
          Width = 111
          Height = 21
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'NOME'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label4: TcxLabel
          Left = 73
          Top = 21
          Caption = 'Grupo'
          ParentFont = False
          Transparent = True
        end
        object btnGrupo: TcxButton
          Left = 402
          Top = 17
          Width = 23
          Height = 22
          Cursor = crHandPoint
          TabOrder = 22
          OnClick = btnGrupoClick
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
        object Label5: TcxLabel
          Left = 51
          Top = 46
          Caption = 'Sub-Grupo'
          ParentFont = False
          Transparent = True
        end
        object Label11: TcxLabel
          Left = 45
          Top = 275
          Caption = 'Quantidade'
          ParentFont = False
          Transparent = True
        end
        object Label12: TcxLabel
          Left = 237
          Top = 275
          Caption = 'Quantidade 2'
          ParentFont = False
          Transparent = True
        end
        object Label14: TcxLabel
          Left = 39
          Top = 71
          Caption = 'Localiza'#231#227'o 1'
          ParentFont = False
          Transparent = True
        end
        object Label15: TcxLabel
          Left = 39
          Top = 96
          Caption = 'Localiza'#231#227'o 2'
          ParentFont = False
          Transparent = True
        end
        object Label16: TcxLabel
          Left = 40
          Top = 146
          Caption = 'Estoque Min.'
          ParentFont = False
          Transparent = True
        end
        object Label17: TcxLabel
          Left = 237
          Top = 146
          Caption = 'Estoque Max.'
          ParentFont = False
          Transparent = True
        end
        object Label20: TcxLabel
          Left = 33
          Top = 171
          Caption = #218'ltima Compra'
          ParentFont = False
          Transparent = True
        end
        object Label21: TcxLabel
          Left = 209
          Top = 171
          Caption = 'Qtd. '#218'ltima Compra'
          ParentFont = False
          Transparent = True
        end
        object Label22: TcxLabel
          Left = 40
          Top = 196
          Caption = #218'ltima Venda'
          ParentFont = False
          Transparent = True
        end
        object Label32: TcxLabel
          Left = 243
          Top = 196
          Caption = 'Peso L'#237'quido'
          ParentFont = False
          Transparent = True
        end
        object Label37: TcxLabel
          Left = 39
          Top = 120
          Caption = 'Localiza'#231#227'o 3'
          ParentFont = False
          Transparent = True
        end
        object Label38: TcxLabel
          Left = 32
          Top = 221
          Caption = 'Volume L'#237'quido'
          ParentFont = False
          Transparent = True
        end
        object Label18: TcxLabel
          Left = 47
          Top = 245
          Caption = 'Fornecedor'
          ParentFont = False
          Transparent = True
        end
        object Label35: TcxLabel
          Left = 403
          Top = 146
          Caption = 'Qntde Exposta'
          ParentFont = False
          Transparent = True
        end
        object Label36: TcxLabel
          Left = 226
          Top = 220
          Caption = #218'lt. Atu. Pre'#231'os'
          ParentFont = False
          Transparent = True
        end
        object Label39: TcxLabel
          Left = 416
          Top = 170
          Caption = 'Qtde Pedida'
          ParentFont = False
          Transparent = True
        end
        object Label40: TcxLabel
          Left = 408
          Top = 194
          Caption = 'Prev. Entrega'
          ParentFont = False
          Transparent = True
        end
        object cmbGrupo: TdxDBLookupEdit
          Left = 108
          Top = 16
          Width = 290
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'GRUPO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = dsGrupos
          LookupKeyValue = Null
          StoredValues = 64
        end
        object cmbSubgrupo: TdxDBLookupEdit
          Left = 108
          Top = 41
          Width = 290
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
          TabOrder = 1
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'SUBGRUPO'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME'
          Revertable = True
          KeyFieldName = 'SUBGRUPO'
          ListSource = dsSubGrupos
          LookupKeyValue = Null
          StoredValues = 64
        end
        object EdQtdade1: TdxDBEdit
          Left = 108
          Top = 270
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
          Style.HotTrack = True
          TabOrder = 15
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_1'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object EdQtdade2: TdxDBEdit
          Left = 308
          Top = 270
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
          Style.HotTrack = True
          TabOrder = 16
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_2'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edLocalizacao1: TdxDBEdit
          Left = 108
          Top = 66
          Width = 290
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'LOCALIZACAO_1'
          DataSource = DataSource
        end
        object edLocalizacao2: TdxDBEdit
          Left = 108
          Top = 91
          Width = 290
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          CharCase = ecUpperCase
          DataField = 'LOCALIZACAO_2'
          DataSource = DataSource
        end
        object edEstoqueMin: TdxDBEdit
          Left = 108
          Top = 141
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
          Style.HotTrack = True
          TabOrder = 5
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_1'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edEstoqueMax: TdxDBEdit
          Left = 308
          Top = 141
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
          Style.HotTrack = True
          TabOrder = 6
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QTDADE_1'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edUltCompra: TdxDBEdit
          Left = 108
          Top = 166
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
          Style.HotTrack = True
          TabOrder = 8
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'DT_ULT_COMPRA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edQtdUltCompra: TdxDBEdit
          Left = 308
          Top = 166
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
          Style.HotTrack = True
          TabOrder = 9
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QT_ULT_COMPRA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edUltVenda: TdxDBEdit
          Left = 108
          Top = 191
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
          Style.HotTrack = True
          TabOrder = 10
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'DT_ULT_VENDA'
          DataSource = DataSource
          ReadOnly = True
          StoredValues = 64
        end
        object edPesoLiq: TdxDBEdit
          Left = 308
          Top = 191
          Width = 90
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PESO_LIQ'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object edLocalizacao3: TdxDBEdit
          Left = 108
          Top = 116
          Width = 290
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'LOCALIZACAO_3'
          DataSource = DataSource
        end
        object EdVolume: TdxDBEdit
          Left = 108
          Top = 216
          Width = 90
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'VOLUME'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBCheckEdit1: TdxDBCheckEdit
          Left = 128
          Top = 299
          Width = 153
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 18
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          OnKeyPress = dxDBCheckEdit1KeyPress
          Alignment = taRightJustify
          Caption = 'Aceita Estoque Negativo'
          DataField = 'NEG_QTDADE_2'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object CmbFornecedor: TdxDBLookupEdit
          Left = 108
          Top = 240
          Width = 290
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
          TabOrder = 14
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'FORNECEDOR'
          DataSource = DataSource
          ReadOnly = False
          ClearKey = 46
          ListFieldName = 'NOME_RAZAO'
          Revertable = True
          KeyFieldName = 'CODIGO'
          ListSource = DsFornecedor
          LookupKeyValue = Null
          StoredValues = 64
        end
        object dxDBEdit4: TdxDBEdit
          Left = 308
          Top = 215
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
          Style.HotTrack = True
          TabOrder = 13
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'DT_ULT_ATU_PRECO'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBCheckEdit4: TdxDBCheckEdit
          Left = 13
          Top = 299
          Width = 113
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 17
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'Vende Fracionado   '
          DataField = 'VENDE_FRACIONADO'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBEdit5: TdxDBEdit
          Left = 480
          Top = 141
          Width = 90
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QNTDE_EXPOSTA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit6: TdxDBEdit
          Left = 480
          Top = 165
          Width = 90
          Color = clMenu
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
          TabOrder = 19
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QNTDE_PEDIDA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
        object dxDBEdit7: TdxDBEdit
          Left = 480
          Top = 189
          Width = 90
          Color = clMenu
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
          TabOrder = 20
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PREVISAO_ENTREGA'
          DataSource = DataSource
          ReadOnly = False
          StoredValues = 64
        end
      end
      object Pg3: TcxTabSheet
        Caption = '  Custos  '
        OnEnter = Pg3Enter
        object Shape3: TShape
          Left = 0
          Top = 0
          Width = 598
          Height = 1
          Align = alTop
          Pen.Color = clBtnShadow
        end
        object Shape10: TShape
          Left = 264
          Top = 339
          Width = 333
          Height = 1
          Pen.Color = clBtnShadow
        end
        object DBCoolText8: TDBText
          Left = 486
          Top = 317
          Width = 111
          Height = 21
          Alignment = taRightJustify
          AutoSize = True
          DataField = 'NOME'
          DataSource = DataSource
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -17
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          Transparent = True
        end
        object Label29: TcxLabel
          Left = 4
          Top = 98
          Caption = 'Prc. de Venda M'#233'dio'
          ParentFont = False
          Transparent = True
        end
        object Label27: TcxLabel
          Left = 27
          Top = 72
          Caption = 'Pre'#231'o de Venda'
          ParentFont = False
          Transparent = True
        end
        object Label25: TcxLabel
          Left = 32
          Top = 46
          Caption = 'Custo Anterior'
          ParentFont = False
          Transparent = True
        end
        object Label23: TcxLabel
          Left = 20
          Top = 21
          Caption = 'Margem de Lucro'
          ParentFont = False
          Transparent = True
        end
        object Label28: TcxLabel
          Left = 241
          Top = 72
          Caption = 'Pre'#231'o de Venda Anterior'
          ParentFont = False
          Transparent = True
        end
        object Label26: TcxLabel
          Left = 299
          Top = 46
          Caption = 'Custo M'#233'dio'
          ParentFont = False
          Transparent = True
        end
        object Label24: TcxLabel
          Left = 264
          Top = 21
          Caption = 'Pre'#231'o de Reposi'#231#227'o'
          ParentFont = False
          Transparent = True
        end
        object Label33: TcxLabel
          Left = 241
          Top = 98
          Caption = 'Frete'
          ParentFont = False
          Transparent = True
        end
        object Label34: TcxLabel
          Left = 385
          Top = 98
          Caption = 'IPI'
          ParentFont = False
          Transparent = True
        end
        object Label19: TcxLabel
          Left = 49
          Top = 125
          Caption = 'Custo Lista'
          ParentFont = False
          Transparent = True
        end
        object Label41: TcxLabel
          Left = 315
          Top = 123
          Caption = 'Qtde M'#225'x. Venda'
          ParentFont = False
          Transparent = True
        end
        object Label42: TcxLabel
          Left = 29
          Top = 151
          Caption = 'Com. Venda Vlr'
          ParentFont = False
          Transparent = True
        end
        object Label43: TcxLabel
          Left = 287
          Top = 148
          Caption = 'Com. Venda %'
          ParentFont = False
          Transparent = True
        end
        object Label44: TcxLabel
          Left = 36
          Top = 177
          Caption = 'Particp. Lucro'
          ParentFont = False
          Transparent = True
        end
        object edPrcVendaMed: TdxDBCalcEdit
          Left = 108
          Top = 93
          Width = 121
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_VENDA_MED'
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
        object edPrcVenda: TdxDBCalcEdit
          Left = 108
          Top = 67
          Width = 121
          Color = clBtnFace
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_VENDA'
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
        object edCustoAnt: TdxDBCalcEdit
          Left = 108
          Top = 41
          Width = 121
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_CUSTO_ANT'
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
        object EdMargem: TdxDBCalcEdit
          Left = 108
          Top = 16
          Width = 121
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'MARGEM_BRUTA'
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
        object edPrcVendaAnt: TdxDBCalcEdit
          Left = 364
          Top = 67
          Width = 121
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_VENDA_ANT'
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
        object edCustoMed: TdxDBCalcEdit
          Left = 364
          Top = 41
          Width = 121
          Color = clMenu
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_CUSTO_MED'
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
        object edPrcReposicao: TdxDBCalcEdit
          Left = 364
          Top = 16
          Width = 121
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PRC_REPOS'
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
        object edFrete: TdxDBCalcEdit
          Left = 273
          Top = 93
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
          TabOrder = 7
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PERC_FRETE'
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
        object edIPI: TdxDBCalcEdit
          Left = 405
          Top = 93
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
          TabOrder = 8
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'IPI'
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
        object dxDBCalcEdit1: TdxDBCalcEdit
          Left = 108
          Top = 120
          Width = 121
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'CUSTO_AQUISICAO'
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
        object dxDBCheckEdit6: TdxDBCheckEdit
          Left = 354
          Top = 172
          Width = 62
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 14
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          Alignment = taRightJustify
          Caption = 'PIS'
          DataField = 'PIS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCheckEdit7: TdxDBCheckEdit
          Left = 426
          Top = 172
          Width = 62
          Font.Charset = DEFAULT_CHARSET
          Font.Color = 8404992
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          TabOrder = 15
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          OnKeyPress = dxDBCheckEdit7KeyPress
          Alignment = taRightJustify
          Caption = 'COFINS'
          DataField = 'COFINS'
          DataSource = DataSource
          ValueChecked = 'S'
          ValueUnchecked = 'N'
          StoredValues = 1
        end
        object dxDBCalcEdit2: TdxDBCalcEdit
          Left = 405
          Top = 118
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
          TabOrder = 10
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'QNTDE_MAXIMA_VENDA'
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
        object dxDBCalcEdit3: TdxDBCalcEdit
          Left = 108
          Top = 146
          Width = 121
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
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'COM_VENDA_VLR'
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
        object dxDBCalcEdit4: TdxDBCalcEdit
          Left = 365
          Top = 143
          Width = 121
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 12
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'COM_VENDA_PCT'
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
        object dxDBCalcEdit5: TdxDBCalcEdit
          Left = 108
          Top = 172
          Width = 121
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderColor = clBtnShadow
          Style.BorderStyle = xbsSingle
          Style.ButtonStyle = btsSimple
          TabOrder = 13
          OnEnter = EdCodigoEnter
          OnExit = EdCodigoExit
          OnKeyDown = EdCodigoKeyDown
          DataField = 'PARTICIP_LUCRO'
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
      end
    end
  end
  object Navigator: TdxBarDBNavigator
    BarManager = BarManager
    CategoryName = 'DB Navigator'
    ConfirmDelete = False
    DataSource = DataSource
    DBCheckLinks = <>
    VisibleButtons = [dxbnFirst, dxbnPrior, dxbnNext, dxbnLast]
    Left = 469
    Top = 7
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
    Left = 581
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
          ItemName = 'OpFiltrar'
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
          ItemName = 'dxBarButton1'
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
    object OpFiltrar: TdxBarButton
      Action = ActFiltrar
      Category = 0
      Glyph.Data = {
        76030000424D7603000000000000360000002800000011000000100000000100
        1800000000004003000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBF000000000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF0000
        00000000000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF
        000000000000BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBF000000FFFFFF000000000000000000BFBFBF
        000000000000000000FFFFFF000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBF000000000000000000000000000000000000000000FFFFFF000000000000
        000000000000BFBFBF00BFBFBF7F00007F00007F0000000000000000FFFFFF00
        0000000000BFBFBF000000FFFFFF000000000000000000000000BFBFBF00BFBF
        BF7F0000FFFFFFFFFFFFFFFFFF000000000000000000000000BFBFBF00000000
        0000000000000000000000BFBFBFBFBFBF00BFBFBF7F0000FFFFFF7F7F7F7F7F
        7F000000FFFFFF000000000000000000000000FFFFFF000000000000000000BF
        BFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF0000000000000000
        00000000000000000000000000000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000
        FFFFFF7F7F7F7F7F7FFFFFFF000000FFFFFF0000007F7F7F7F7F7F000000FFFF
        FF000000BFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFFFFFFFFFFFFFFFFFF
        000000000000000000FFFFFFFFFFFF000000000000000000BFBFBFBFBFBFBFBF
        BF00BFBFBF7F0000FFFFFF7F7F7F7F7F7FFFFFFF7F7F7F7F7F7FFFFFFF7F7F7F
        7F7F7FFFFFFF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F0000FFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF7F0000BFBFBF
        BFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00007F00007F00007F
        00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBF
        BF7F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BFBFBF7F00007F0000BF
        BFBF7F0000BFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF7F00007F00007F00007F00
        007F00007F00007F00007F00007F00007F00007F00007F0000BFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00}
    end
    object dxBarButton1: TdxBarButton
      Caption = 'F4 - Cad. Aux  - F3 Localizar - F6 Altera - F9 Filtrar'
      Category = 0
      Hint = 'F4 - Cad. Aux  - F3 Localizar - F6 Altera - F9 Filtrar'
      Visible = ivAlways
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
    Left = 529
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
      ShortCut = 117
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
      Caption = 'A'
      ShortCut = 115
      OnExecute = ActLookupExecute
    end
    object ActNextPage: TAction
      Caption = 'ActNextPage'
      ShortCut = 16418
      OnExecute = ActNextPageExecute
    end
    object ActPreviousPage: TAction
      Caption = 'ActPreviousPage'
      ShortCut = 16417
      OnExecute = ActPreviousPageExecute
    end
    object ActNext: TAction
      Caption = 'ActNext'
      ShortCut = 16421
      OnExecute = ActNextExecute
    end
    object ActLast: TAction
      Caption = 'ActLast'
      ShortCut = 16422
      OnExecute = ActLastExecute
    end
    object ActFirst: TAction
      Caption = 'ActFirst'
      ShortCut = 16424
      OnExecute = ActFirstExecute
    end
    object ActPrior: TAction
      Caption = 'ActPrior'
      ShortCut = 16421
      OnExecute = ActPriorExecute
    end
    object ActFiltrar: TAction
      Caption = 'Filtrar'
      Hint = 'Filtrar registros [F6]'
      ShortCut = 120
      OnExecute = ActFiltrarExecute
    end
    object ActLote: TAction
      Caption = 'Lotes'
      ShortCut = 123
      OnExecute = ActLoteExecute
    end
    object ActAgrupar: TAction
      Caption = 'Cadastrar Agrupador'
      Enabled = False
      ShortCut = 118
      OnExecute = ActAgruparExecute
    end
    object ActComissao: TAction
      Caption = 'Comiss'#227'o'
      ShortCut = 119
      OnExecute = ActComissaoExecute
    end
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Produtos
    OnStateChange = DataSourceStateChange
    Left = 549
    Top = 289
  end
  object dsMarcas: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Marcas
    Left = 549
    Top = 345
  end
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Grupos
    Left = 413
    Top = 9
  end
  object dsSubGrupos: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Subgrupos
    Left = 221
    Top = 9
  end
  object dsReducao: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Reducoes
    Left = 354
    Top = 9
  end
  object dsUnidade: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Unidades
    Left = 290
    Top = 9
  end
  object DsSubUnidades: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SubUnidades
    Left = 149
    Top = 9
  end
  object DsFornecedor: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelFornecedor
    Left = 66
    Top = 9
  end
end
