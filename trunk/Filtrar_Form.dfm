object FrmFiltrar: TFrmFiltrar
  Left = 184
  Top = 123
  BorderStyle = bsDialog
  Caption = ' Filtrar'
  ClientHeight = 377
  ClientWidth = 429
  Color = clWhite
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
  object Panel1: TPanel
    Left = 0
    Top = 339
    Width = 429
    Height = 38
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object btnAplicar: TcxButton
      Left = 7
      Top = 6
      Width = 83
      Height = 26
      Cursor = crHandPoint
      Caption = '&Aplicar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnAplicarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object btnSalvar: TcxButton
      Left = 173
      Top = 6
      Width = 83
      Height = 26
      Cursor = crHandPoint
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Visible = False
      Glyph.Data = {
        36030000424D3603000000000000360000002800000010000000100000000100
        18000000000000030000C30E0000C30E00000000000000000000BFBFBFBFBFBF
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
    object btnCarregar: TcxButton
      Left = 256
      Top = 6
      Width = 83
      Height = 26
      Cursor = crHandPoint
      Caption = '&Carregar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      Visible = False
      Glyph.Data = {
        DA020000424DDA020000000000003600000028000000110000000D0000000100
        180000000000A4020000C30E0000C30E00000000000000000000BFBFBF000000
        000000000000000000000000000000000000000000000000000000000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000000000007F7F007F7F007F7F
        007F7F007F7F007F7F007F7F007F7F007F7F000000BFBFBFBFBFBFBFBFBFBFBF
        BF00BFBFBF00000000FFFF000000007F7F007F7F007F7F007F7F007F7F007F7F
        007F7F007F7F007F7F000000BFBFBFBFBFBFBFBFBF00BFBFBF000000FFFFFF00
        FFFF000000007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F
        000000BFBFBFBFBFBF00BFBFBF00000000FFFFFFFFFF00FFFF000000007F7F00
        7F7F007F7F007F7F007F7F007F7F007F7F007F7F007F7F000000BFBFBF00BFBF
        BF000000FFFFFF00FFFFFFFFFF00FFFF00000000000000000000000000000000
        000000000000000000000000000000000000BFBFBF00000000FFFFFFFFFF00FF
        FFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBF00BFBFBF000000FFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFF
        FF00FFFFFFFFFF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBF000000
        00FFFFFFFFFF00FFFF000000000000000000000000000000000000000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBF00BFBFBFBFBFBF000000000000000000BFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000000000000000BFBF
        BF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBF000000000000BFBFBF00BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBF000000
        BFBFBF000000BFBFBF00BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBF000000000000000000BFBFBFBFBFBFBFBFBFBFBFBF00}
    end
    object btnLimpar: TcxButton
      Left = 90
      Top = 6
      Width = 83
      Height = 26
      Cursor = crHandPoint
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnLimparClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtnFechar: TcxButton
      Left = 339
      Top = 6
      Width = 83
      Height = 26
      Cursor = crHandPoint
      Caption = '&Fechar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = BtnFecharClick
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
  end
  object PNLClient: TPanel
    Left = 0
    Top = 0
    Width = 429
    Height = 339
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label1: TcxLabel
      Left = 8
      Top = 7
      Caption = '&Campos'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 147
      Top = 7
      Caption = '&Op'#231#245'es'
      ParentFont = False
      Transparent = True
    end
    object lbCampos: TListBox
      Left = 7
      Top = 24
      Width = 133
      Height = 223
      Cursor = crHandPoint
      ExtendedSelect = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 13
      Items.Strings = (
        'CAMPO 01'
        'CAMPO 02'
        'CAMPO 03'
        'CAMPO 04'
        'CAMPO 05')
      ParentFont = False
      TabOrder = 0
      OnClick = lbCamposClick
      OnKeyPress = RzCheckBox1KeyPress
    end
    object Panel3: TPanel
      Left = 146
      Top = 24
      Width = 275
      Height = 197
      BevelOuter = bvLowered
      Caption = '`'
      Color = 16053492
      TabOrder = 1
      object nbOpcoes: TNotebook
        Left = 2
        Top = 2
        Width = 271
        Height = 193
        PageIndex = 1
        TabOrder = 0
        OnPageChanged = nbOpcoesPageChanged
        object TPage
          Left = 0
          Top = 0
          Caption = 'opInicial'
          object Shape1: TShape
            Left = 25
            Top = 20
            Width = 1
            Height = 16
            Pen.Color = 8404992
          end
          object Label5: TcxLabel
            Left = 31
            Top = 22
            Caption = 'Selecione um dos campos ao lado.'
            ParentFont = False
            Transparent = True
          end
          object Label3: TcxLabel
            Left = 2
            Top = -2
            Caption = #203
            ParentFont = False
            Transparent = True
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'opStrings'
          object Label4: TcxLabel
            Left = 9
            Top = 6
            Caption = 'Valor'
            ParentFont = False
            Transparent = True
          end
          object EdValor: TcxTextEdit
            Left = 8
            Top = 23
            Cursor = crHandPoint
            ParentFont = False
            TabOrder = 0
            OnKeyDown = EdValorKeyDown
            Width = 252
          end
          object RzCheckBox2: TcxCheckBox
            Left = 17
            Top = 163
            Cursor = crHandPoint
            Caption = 'registros que n'#227'o contenham esta informa'#231#227'o.'
            ParentFont = False
            State = cbsGrayed
            TabOrder = 1
            OnKeyPress = RzCheckBox1KeyPress
            Width = 244
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'opForeign'
          object Label7: TcxLabel
            Left = 10
            Top = 33
            Caption = 'Selecione o(a)'
            Transparent = True
          end
          object rbRefEq: TRadioButton
            Left = 8
            Top = 8
            Width = 57
            Height = 17
            Caption = 'Igual a'
            Checked = True
            TabOrder = 0
            TabStop = True
          end
          object rbRefDif: TRadioButton
            Left = 72
            Top = 8
            Width = 84
            Height = 17
            Caption = 'Diferente de'
            TabOrder = 1
          end
          object cmbReferencia: TdxLookupEdit
            Left = 8
            Top = 49
            Width = 254
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -12
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsSingle
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            ListFieldName = 'NOME'
            KeyFieldName = 'CHAVE'
            ListSource = dsReferencia
            LookupKeyValue = Null
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'opNumber'
          object Label6: TcxLabel
            Left = 9
            Top = 49
            Caption = 'Valor'
            ParentFont = False
            Transparent = True
          end
          object Label8: TcxLabel
            Left = 9
            Top = 6
            Caption = 'Crit'#233'rio'
            ParentFont = False
            Transparent = True
          end
          object Label9: TcxLabel
            Left = 9
            Top = 143
            Caption = 'Valor'
            Enabled = False
            ParentFont = False
            Transparent = True
          end
          object Label10: TcxLabel
            Left = 9
            Top = 100
            Caption = 'Crit'#233'rio'
            Enabled = False
            ParentFont = False
            Transparent = True
          end
          object edValorNum: TdxCurrencyEdit
            Left = 7
            Top = 65
            Width = 122
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
            Alignment = taRightJustify
            DisplayFormat = ',0;,0'
            StoredValues = 1
          end
          object cmbCritNum: TdxPickEdit
            Left = 7
            Top = 22
            Width = 73
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
            DropDownListStyle = True
            Items.Strings = (
              '='
              '>'
              '>='
              '<>'
              '<'
              '<=')
          end
          object edValorNum1: TdxCurrencyEdit
            Left = 7
            Top = 159
            Width = 122
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
            Alignment = taRightJustify
            DisplayFormat = ',0;,0'
            StoredValues = 1
          end
          object cmbCritNum1: TdxPickEdit
            Left = 7
            Top = 116
            Width = 73
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
            TabOrder = 3
            DropDownListStyle = True
            Items.Strings = (
              '='
              '>'
              '>='
              '<>'
              '<'
              '<=')
          end
          object cbNumE: TdxCheckEdit
            Left = 140
            Top = 68
            Width = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 4
            Caption = 'E'
            OnChange = cbNumEChange
          end
          object cbNumOU: TdxCheckEdit
            Left = 180
            Top = 68
            Width = 41
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 5
            Caption = 'OU'
            OnChange = cbNumOUChange
          end
        end
        object TPage
          Left = 0
          Top = 0
          Caption = 'opDate'
          object Label11: TcxLabel
            Left = 9
            Top = 49
            Caption = 'Data'
            ParentFont = False
            Transparent = True
          end
          object Label12: TcxLabel
            Left = 9
            Top = 6
            Caption = 'Crit'#233'rio'
            ParentFont = False
            Transparent = True
          end
          object Label13: TcxLabel
            Left = 9
            Top = 143
            Caption = 'Data'
            Enabled = False
            ParentFont = False
            Transparent = True
          end
          object Label14: TcxLabel
            Left = 9
            Top = 100
            Caption = 'Crit'#233'rio'
            Enabled = False
            ParentFont = False
            Transparent = True
          end
          object cmbCritDate: TdxPickEdit
            Left = 7
            Top = 22
            Width = 73
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
            DropDownListStyle = True
            Items.Strings = (
              '='
              '>'
              '>='
              '<>'
              '<'
              '<=')
          end
          object cmbCritDate1: TdxPickEdit
            Left = 7
            Top = 116
            Width = 73
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
            DropDownListStyle = True
            Items.Strings = (
              '='
              '>'
              '>='
              '<>'
              '<'
              '<=')
          end
          object cbDateE: TdxCheckEdit
            Left = 140
            Top = 68
            Width = 33
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 2
            Caption = 'E'
            OnChange = cbDateEChange
          end
          object cbDateOU: TdxCheckEdit
            Left = 180
            Top = 68
            Width = 41
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clNavy
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentFont = False
            Style.BorderColor = clBtnShadow
            Style.BorderStyle = xbsNone
            Style.ButtonStyle = btsSimple
            TabOrder = 3
            Caption = 'OU'
            OnChange = cbDateOUChange
          end
          object edDate: TdxDateEdit
            Left = 7
            Top = 65
            Width = 114
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
            Date = -700000.000000000000000000
          end
          object edDate1: TdxDateEdit
            Left = 7
            Top = 160
            Width = 114
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
            TabOrder = 5
            Date = -700000.000000000000000000
          end
        end
      end
    end
    object Panel4: TPanel
      Left = 7
      Top = 252
      Width = 414
      Height = 80
      BevelOuter = bvLowered
      Color = clWhite
      TabOrder = 6
      object lbFiltro: TListBox
        Left = 1
        Top = 1
        Width = 412
        Height = 78
        Align = alClient
        BorderStyle = bsNone
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 16
        ParentFont = False
        TabOrder = 0
        OnClick = lbFiltroClick
        OnDblClick = lbFiltroDblClick
      end
    end
    object rbE: TcxRadioButton
      Left = 145
      Top = 227
      Width = 28
      Height = 19
      Cursor = crHandPoint
      Caption = 'E'
      Checked = True
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      TabStop = True
      OnKeyDown = EdValorKeyDown
    end
    object rbOU: TcxRadioButton
      Left = 180
      Top = 227
      Width = 37
      Height = 19
      Cursor = crHandPoint
      Caption = 'OU'
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      OnKeyDown = EdValorKeyDown
    end
    object BtnAdicionar: TcxButton
      Left = 240
      Top = 225
      Width = 90
      Height = 24
      Cursor = crHandPoint
      Caption = '&Adicionar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      OnClick = btnAdicionarClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        3333333333333333333333330000333333333333333333333333F33333333333
        00003333344333333333333333388F3333333333000033334224333333333333
        338338F3333333330000333422224333333333333833338F3333333300003342
        222224333333333383333338F3333333000034222A22224333333338F338F333
        8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
        33333338F83338F338F33333000033A33333A222433333338333338F338F3333
        0000333333333A222433333333333338F338F33300003333333333A222433333
        333333338F338F33000033333333333A222433333333333338F338F300003333
        33333333A222433333333333338F338F00003333333333333A22433333333333
        3338F38F000033333333333333A223333333333333338F830000333333333333
        333A333333333333333338330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
    object BtnRemover: TcxButton
      Left = 331
      Top = 225
      Width = 90
      Height = 24
      Cursor = crHandPoint
      Caption = '&Limpar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = btnRemoverClick
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object dsReferencia: TDataSource
    AutoEdit = False
    DataSet = Referencia
    Left = 30
    Top = 190
  end
  object Referencia: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'SELECT CAST(CODIGO AS VARCHAR(8)) CHAVE,'
      '               NOME NOME'
      'FROM GLO_ATIVIDADES'
      'ORDER BY NOME')
    Left = 91
    Top = 190
    object ReferenciaCHAVE: TIBStringField
      FieldName = 'CHAVE'
      Required = True
      Size = 8
    end
    object ReferenciaNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_ATIVIDADES"."NOME"'
      Required = True
      Size = 50
    end
  end
end
