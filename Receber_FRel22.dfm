8object fRelReceber2: TfRelReceber2
  Left = 192
  Top = 100
  Width = 448
  Height = 577
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Relatório de Contas à Receber'
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 432
    Height = 541
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    OnResize = pnlClientResize
    object LblTitulo: TcxLabel
Transparent = True
      Left = 6
      Top = 1
      Width = 249
      Height = 19
      Caption = 'Relatório de Contas à Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object b2: TBevel
      Left = 8
      Top = 23
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object Panel2: TPanel
      Left = 2
      Top = 507
      Width = 428
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        428
        32)
      object BtnOk: TcxButton
        Left = 267
        Top = 4
        Width = 77
        Cursor = crHandPoint
        Action = ActPreview
        Anchors = [akRight, akBottom]
        Caption = '&Ok'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          0400000000000001000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00666666666666
          66666666666666666666666666666666666666666666666666666666AC666666
          66666666F86666666666666A22C666666666666F88866666666666A2222C6666
          666666F88888666666666A222222C66666666F888888866666666A22CA222C66
          66666F888F88886666666A2C66A222C666666F8866F8888666666AC6666A222C
          66666F86666F8888666666666666A222C66666666666F8888666666666666A22
          2C66666666666F8888666666666666A222C66666666666F8888666666666666A
          22C666666666666F8886666666666666A2C6666666666666F886666666666666
          6AC66666666666666F8666666666666666666666666666666666}
        NumGlyphs = 2
      end
      object RzBitBtn2: TcxButton
        Left = 346
        Top = 4
        Width = 85
        Cursor = crHandPoint
        Cancel = True
        Action = ActFechar
        Anchors = [akRight, akBottom]
        Caption = '&Fechar  '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HotTrack = True
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
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 26
      Width = 409
      Height = 197
      Caption = 'Geral'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label11: TcxLabel
Transparent = True
        Left = 37
        Top = 120
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Região'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label9: TcxLabel
Transparent = True
        Left = 37
        Top = 15
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cliente'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label7: TcxLabel
Transparent = True
        Left = 9
        Top = 41
        Width = 61
        Height = 13
        Alignment = taRightJustify
        Caption = 'Classificação'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label8: TcxLabel
Transparent = True
        Left = 12
        Top = 67
        Width = 58
        Height = 13
        Alignment = taRightJustify
        Caption = 'L. Cobranca'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label12: TcxLabel
Transparent = True
        Left = 24
        Top = 94
        Width = 46
        Height = 13
        Alignment = taRightJustify
        Caption = 'Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label10: TcxLabel
Transparent = True
        Left = 42
        Top = 145
        Width = 28
        Height = 13
        Alignment = taRightJustify
        Caption = 'Rotas'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label13: TcxLabel
Transparent = True
        Left = 37
        Top = 169
        Width = 33
        Height = 13
        Alignment = taRightJustify
        Caption = 'Cidade'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object cmbRegiao: TdxLookupEdit
        Left = 72
        Top = 116
        Width = 321
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsRegiao
        LookupKeyValue = Null
      end
      object cmbClassificacao: TdxLookupEdit
        Left = 72
        Top = 37
        Width = 321
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsClassificao
        LookupKeyValue = Null
      end
      object cmbCliente: TdxLookupEdit
        Left = 72
        Top = 11
        Width = 321
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO;CODIGO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsClientes
        LookupKeyValue = Null
      end
      object cmbLocalCob: TdxLookupEdit
        Left = 72
        Top = 63
        Width = 321
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsLocalCob
        LookupKeyValue = Null
      end
      object cmbVendedor: TdxLookupEdit
        Left = 72
        Top = 90
        Width = 321
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsVendedor
        LookupKeyValue = Null
      end
      object cmbRotas: TdxLookupEdit
        Left = 72
        Top = 141
        Width = 321
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsRotas
        LookupKeyValue = Null
      end
      object cmbCidade: TdxLookupEdit
        Left = 72
        Top = 166
        Width = 321
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
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCidade
        LookupKeyValue = Null
      end
    end
    object gbData: TGroupBox
      Left = 16
      Top = 225
      Width = 289
      Height = 79
      Caption = 'Data'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object Label4: TcxLabel
Transparent = True
        Left = 141
        Top = 48
        Width = 22
        Height = 13
        Alignment = taRightJustify
        Caption = 'Final'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label5: TcxLabel
Transparent = True
        Left = 10
        Top = 48
        Width = 27
        Height = 13
        Alignment = taRightJustify
        Caption = 'Inicial'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object edAs1: TcxLabel
Transparent = True
        Left = 133
        Top = 41
        Width = 7
        Height = 13
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Alignment = taRightJustify
        Caption = '*'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object edAs3: TcxLabel
Transparent = True
        Tag = 1
        Left = 269
        Top = 38
        Width = 7
        Height = 13
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Alignment = taRightJustify
        Caption = '*'
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Rd1: TRadioButton
        Left = 16
        Top = 19
        Width = 81
        Height = 17
        Caption = 'Vencimento'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnKeyDown = FormKeyDown
      end
      object Rd2: TRadioButton
        Left = 99
        Top = 19
        Width = 89
        Height = 17
        Caption = 'Lançamento'
        TabOrder = 1
        OnKeyDown = FormKeyDown
      end
      object DataInicial: TcxDateEdit
        Left = 40
        Top = 44
        Width = 89
        Height = 24
        CalColors.TitleBackColor = clGray
        CalColors.TitleTextColor = clSilver
        Date = 36526.383306018500000000
        Time = 36526.383306018500000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        FrameHotStyle = fsLowered
        FrameHotTrack = True
        FrameStyle = fsStatus
        FrameVisible = True
      end
      object DataFinal: TcxDateEdit
        Left = 168
        Top = 45
        Width = 97
        Height = 24
        CalColors.TitleBackColor = clGray
        CalColors.TitleTextColor = clSilver
        Date = 0.383306018498843000
        Time = 0.383306018498843000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        FrameHotStyle = fsLowered
        FrameHotTrack = True
        FrameStyle = fsStatus
        FrameVisible = True
      end
      object Rd3: TRadioButton
        Left = 190
        Top = 19
        Width = 57
        Height = 17
        Caption = 'Emissão'
        TabOrder = 2
        OnKeyDown = FormKeyDown
      end
    end
    object GroupBox5: TGroupBox
      Left = 311
      Top = 225
      Width = 114
      Height = 78
      Caption = 'Impressão'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object rd7: TRadioButton
        Left = 8
        Top = 19
        Width = 65
        Height = 17
        Caption = 'Analítico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = FormKeyDown
      end
      object rd8: TRadioButton
        Left = 8
        Top = 49
        Width = 65
        Height = 17
        Caption = 'Sintético'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnKeyDown = FormKeyDown
      end
    end
    object gbSituacao: TGroupBox
      Left = 15
      Top = 306
      Width = 242
      Height = 45
      Caption = 'Situação'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Rd4: TRadioButton
        Left = 8
        Top = 19
        Width = 105
        Height = 17
        Caption = 'Bx. Parcialmente'
        TabOrder = 0
        OnKeyDown = FormKeyDown
      end
      object Rd5: TRadioButton
        Left = 112
        Top = 19
        Width = 65
        Height = 17
        Caption = 'Integral'
        TabOrder = 1
        OnKeyDown = FormKeyDown
      end
      object Rd6: TRadioButton
        Left = 175
        Top = 19
        Width = 57
        Height = 17
        Caption = 'Ambos'
        Checked = True
        TabOrder = 2
        TabStop = True
        OnKeyDown = FormKeyDown
      end
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 355
      Width = 212
      Height = 48
      Caption = 'Documentos'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      object Label2: TcxLabel
Transparent = True
        Left = 6
        Top = 21
        Width = 12
        Height = 13
        Caption = 'Nº'
      end
      object Label3: TcxLabel
Transparent = True
        Left = 88
        Top = 21
        Width = 21
        Height = 13
        Caption = 'Tipo'
      end
      object cmbTipoDocto: TdxLookupEdit
        Left = 110
        Top = 17
        Width = 97
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'SIGLA'
        ListSource = dsTipoDocto
        LookupKeyValue = Null
      end
      object edtNdoc: TEdit
        Left = 20
        Top = 17
        Width = 64
        Height = 21
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
      end
    end
    object GroupBox4: TGroupBox
      Left = 260
      Top = 305
      Width = 166
      Height = 45
      Caption = 'Arq. Morto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 5
      object rd9: TRadioButton
        Left = 8
        Top = 19
        Width = 49
        Height = 17
        Caption = 'Sim'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyDown = FormKeyDown
      end
      object rd10: TRadioButton
        Left = 58
        Top = 19
        Width = 49
        Height = 17
        Caption = 'Não'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnKeyDown = FormKeyDown
      end
      object rd11: TRadioButton
        Left = 103
        Top = 19
        Width = 55
        Height = 17
        Caption = 'Ambos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        TabStop = True
        OnKeyDown = FormKeyDown
      end
    end
    object gbValor: TGroupBox
      Left = 229
      Top = 355
      Width = 196
      Height = 48
      Caption = 'Valores (R$) '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      object Label1: TcxLabel
Transparent = True
        Left = 8
        Top = 23
        Width = 27
        Height = 13
        Caption = 'Inicial'
      end
      object Label6: TcxLabel
Transparent = True
        Left = 99
        Top = 23
        Width = 22
        Height = 13
        Caption = 'Final'
      end
      object edtVlrInicial: TcxCurrencyEdit
        Left = 39
        Top = 19
        Width = 57
        Height = 21
        FrameHotTrack = True
        FrameHotStyle = fsLowered
        FrameStyle = fsStatus
        FrameVisible = True
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        DisplayFormat = '###,##0.00'
      end
      object edtVlrFinal: TcxCurrencyEdit
        Left = 125
        Top = 19
        Width = 65
        Height = 21
        FrameHotTrack = True
        FrameHotStyle = fsLowered
        FrameStyle = fsStatus
        FrameVisible = True
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Value = 100000.000000000000000000
        DisplayFormat = '###,##0.00'
      end
    end
    object GroupBox3: TGroupBox
      Left = 15
      Top = 409
      Width = 410
      Height = 65
      Caption = 'Opções de Quebra'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 8
      object rd13: TRadioButton
        Left = 7
        Top = 19
        Width = 65
        Height = 17
        Caption = 'Cliente'
        TabOrder = 0
        OnKeyDown = FormKeyDown
      end
      object rd14: TRadioButton
        Left = 82
        Top = 19
        Width = 65
        Height = 17
        Caption = 'Emissão'
        TabOrder = 1
        OnKeyDown = FormKeyDown
      end
      object rd15: TRadioButton
        Left = 152
        Top = 19
        Width = 81
        Height = 17
        Caption = 'Vencimento'
        TabOrder = 2
        OnKeyDown = FormKeyDown
      end
      object rd16: TRadioButton
        Left = 238
        Top = 19
        Width = 81
        Height = 17
        Caption = 'Lançamento'
        TabOrder = 3
        OnKeyDown = FormKeyDown
      end
      object rd17: TRadioButton
        Left = 5
        Top = 43
        Width = 73
        Height = 17
        Caption = 'Vendedor '
        TabOrder = 4
        OnKeyDown = FormKeyDown
      end
      object rd18: TRadioButton
        Left = 82
        Top = 43
        Width = 73
        Height = 17
        Caption = 'Região'
        TabOrder = 5
        OnKeyDown = FormKeyDown
      end
      object rd19: TRadioButton
        Left = 324
        Top = 19
        Width = 82
        Height = 17
        Caption = 'Classificação'
        TabOrder = 6
        OnKeyDown = FormKeyDown
      end
      object rd20: TRadioButton
        Left = 293
        Top = 43
        Width = 113
        Height = 17
        Caption = 'Local de Cobrança'
        TabOrder = 7
        OnKeyDown = FormKeyDown
      end
      object rd21: TRadioButton
        Left = 152
        Top = 43
        Width = 73
        Height = 17
        Caption = 'Rota'
        TabOrder = 8
        OnKeyDown = FormKeyDown
      end
      object rd22: TRadioButton
        Left = 221
        Top = 43
        Width = 73
        Height = 17
        Caption = 'Cidade'
        TabOrder = 9
        OnKeyDown = FormKeyDown
      end
    end
    object ckComplementar: TcxCheckBox
      Left = 16
      Top = 483
      Width = 161
      Height = 17
      Caption = 'Exibir Dados Complementares'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      State = cbUnchecked
      TabOrder = 9
      OnKeyDown = FormKeyDown
    end
  end
  object Actions: TActionList
    Left = 257
    Top = 4
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActPreview: TAction
      Tag = 1
      Caption = '&Ok'
      OnExecute = ActPreviewExecute
    end
  end
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelPessoasFJ
    Left = 208
    Top = 20
  end
  object dsClassificao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelClassif
    Left = 208
    Top = 52
  end
  object dsLocalCob: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelLocalCob
    Left = 208
    Top = 84
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelVendedor
    Left = 208
    Top = 116
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelRegiao
    Left = 208
    Top = 148
  end
  object rptRelReceber: TppReport
    AutoStop = False
    DataPipeline = dbRelReceber
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
    AllowPrintToArchive = True
    AllowPrintToFile = True
    DeviceType = 'Screen'
    OutlineSettings.CreateNode = True
    OutlineSettings.CreatePageNodes = True
    OutlineSettings.Enabled = True
    OutlineSettings.Visible = True
    PreviewFormSettings.WindowState = wsMaximized
    PreviewFormSettings.ZoomSetting = zs100Percent
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 279
    Top = 28
    Version = '9.01'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelReceber'
    object ppTitleBand6: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppSubVendedor: TppSubReport
        UserName = 'SubVendedor'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport8: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand8: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel114: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel115: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel116: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel117: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 97102
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine29: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel118: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 84931
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel119: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 72496
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel120: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel121: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117211
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel122: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 147638
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel123: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164307
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel125: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 131498
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel112: TppLabel
              UserName = 'Label112'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2381
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand9: TppDetailBand
            BeforePrint = ppDetailBand9BeforePrint
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 25135
            mmPrintPosition = 0
            object RegionVendedor: TppRegion
              UserName = 'RegionVendedor'
              Caption = 'RegionVendedor'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 9790
              mmLeft = 0
              mmTop = 0
              mmWidth = 198438
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText98: TppDBText
                UserName = 'DBText2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CLIENTE'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2910
                mmLeft = 2646
                mmTop = 1058
                mmWidth = 38629
                BandType = 4
              end
              object ppDBText99: TppDBText
                UserName = 'DBText99'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TIPO_DOCTO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 42069
                mmTop = 1058
                mmWidth = 10319
                BandType = 4
              end
              object ppDBText100: TppDBText
                UserName = 'DBText3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DOCTO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 53181
                mmTop = 1058
                mmWidth = 12436
                BandType = 4
              end
              object ppDBText101: TppDBText
                UserName = 'DBText4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PARCELA'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 66411
                mmTop = 1058
                mmWidth = 5672
                BandType = 4
              end
              object ppDBText102: TppDBText
                UserName = 'DBText5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_LANCTO'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 73025
                mmTop = 1058
                mmWidth = 11377
                BandType = 4
              end
              object ppDBText103: TppDBText
                UserName = 'DBText6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_VENCTO'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 85461
                mmTop = 1058
                mmWidth = 11377
                BandType = 4
              end
              object ppDBText104: TppDBText
                UserName = 'DBText7'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 97631
                mmTop = 1058
                mmWidth = 18255
                BandType = 4
              end
              object ppDBText105: TppDBText
                UserName = 'DBText8'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DATA_ULT_BX'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 117740
                mmTop = 1058
                mmWidth = 13759
                BandType = 4
              end
              object ppDBText106: TppDBText
                UserName = 'DBText103'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 132027
                mmTop = 1058
                mmWidth = 15347
                BandType = 4
              end
              object ppDBText107: TppDBText
                UserName = 'DBText9'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 148167
                mmTop = 1058
                mmWidth = 15611
                BandType = 4
              end
              object ppDBText108: TppDBText
                UserName = 'DBText10'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 164836
                mmTop = 1058
                mmWidth = 14023
                BandType = 4
              end
              object ppDBText109: TppDBText
                UserName = 'DBText11'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3175
                mmLeft = 178859
                mmTop = 1058
                mmWidth = 17198
                BandType = 4
              end
              object ppDBText56: TppDBText
                OnPrint = lb7Print
                UserName = 'DBText56'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'HISTORICO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2836
                mmLeft = 146579
                mmTop = 5292
                mmWidth = 54504
                BandType = 4
              end
              object ppLabel62: TppLabel
                OnPrint = lb7Print
                UserName = 'Label62'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Histórico:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3175
                mmLeft = 131763
                mmTop = 5027
                mmWidth = 14023
                BandType = 4
              end
              object ppDBText84: TppDBText
                OnPrint = lb7Print
                UserName = 'DBText84'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'FONE'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2836
                mmLeft = 113506
                mmTop = 5556
                mmWidth = 17198
                BandType = 4
              end
              object ppLabel81: TppLabel
                OnPrint = lb7Print
                UserName = 'Label81'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Fone:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3175
                mmLeft = 105304
                mmTop = 5027
                mmWidth = 8202
                BandType = 4
              end
              object ppLabel270: TppLabel
                OnPrint = lb7Print
                UserName = 'Label270'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Com(%): '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3323
                mmLeft = 2910
                mmTop = 4763
                mmWidth = 12435
                BandType = 4
              end
              object ppLabel271: TppLabel
                OnPrint = lb7Print
                UserName = 'Label2701'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vlr. Comissão:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3323
                mmLeft = 35983
                mmTop = 4763
                mmWidth = 21696
                BandType = 4
              end
              object ppDBText70: TppDBText
                OnPrint = lb7Print
                UserName = 'DBText70'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PORCENTAGEM'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3323
                mmLeft = 15610
                mmTop = 4763
                mmWidth = 17198
                BandType = 4
              end
              object ppDBText85: TppDBText
                OnPrint = lb7Print
                UserName = 'DBText701'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VLR_COMISSAO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3440
                mmLeft = 57944
                mmTop = 4763
                mmWidth = 17198
                BandType = 4
              end
            end
            object ppSubRecebidas2: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas2'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = RegionVendedor
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12965
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport11: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand3: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel157: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel158: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine37: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel159: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel162: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel163: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand12: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText140: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText141: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText142: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText143: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand11: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine38: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob2: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob2'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubRecebidas2
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 20108
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport19: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand12: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel199: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine53: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel200: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel201: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel202: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel203: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand20: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText172: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText173: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText174: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText175: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand19: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine54: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
          end
          object ppSummaryBand8: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine30: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel127: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 3704
              mmWidth = 17727
              BandType = 7
            end
            object ppDBCalc85: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 82117
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc86: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 120936
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc87: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 145542
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc88: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 160624
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc89: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc74: TppDBCalc
              OnPrint = lb1Print
              UserName = 'DBCalc74'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_COMISSAO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 44494
              mmTop = 4498
              mmWidth = 30649
              BandType = 7
            end
          end
          object ppGroup8: TppGroup
            BreakName = 'NOME_VENDEDOR'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand8: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel128: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vendedor:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4233
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 17399
                BandType = 3
                GroupNo = 0
              end
              object ppLine31: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText111: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NOME_VENDEDOR'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 24606
                mmTop = 3440
                mmWidth = 29168
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand8: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine32: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc91: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 82836
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel130: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3440
                mmLeft = 0
                mmTop = 1588
                mmWidth = 20108
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc92: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 120936
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc93: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 145542
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc94: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 160624
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc95: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc73: TppDBCalc
                OnPrint = lb1Print
                UserName = 'DBCalc73'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VLR_COMISSAO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup8
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 44494
                mmTop = 1323
                mmWidth = 30649
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule9: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubLocalCob: TppSubReport
        UserName = 'ppSubLocalCob'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport6: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand6: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel82: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel83: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel84: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 6615
              BandType = 0
            end
            object ppLabel85: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 98161
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine21: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel86: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 85990
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel87: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 73554
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel88: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel89: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 118269
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel90: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 148696
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel91: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 165365
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel92: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 132557
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel93: TppLabel
              UserName = 'Label112'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand7: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 25665
            mmPrintPosition = 0
            object ppDBText71: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3598
              mmLeft = 35719
              mmTop = 265
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText72: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3683
              mmLeft = 52652
              mmTop = 265
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText73: TppDBText
              UserName = 'DBText5'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2879
              mmLeft = 63432
              mmTop = 265
              mmWidth = 11515
              BandType = 4
            end
            object ppDBText74: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 73554
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText75: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 85990
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText76: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 98161
              mmTop = 265
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText77: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 118269
              mmTop = 265
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText78: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 132557
              mmTop = 265
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText79: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 148696
              mmTop = 265
              mmWidth = 15611
              BandType = 4
            end
            object ppDBText80: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 165365
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText81: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText82: TppDBText
              UserName = 'DBText98'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3440
              mmLeft = 0
              mmTop = 265
              mmWidth = 34925
              BandType = 4
            end
            object ppDBText86: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText86'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 85461
              mmTop = 7938
              mmWidth = 96838
              BandType = 4
            end
            object ppLabel98: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label98'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3175
              mmLeft = 70908
              mmTop = 7408
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText87: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText87'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 115094
              mmTop = 4233
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel99: TppLabel
              OnPrint = lb7Print
              UserName = 'Label99'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 102394
              mmTop = 3704
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText88: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText88'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 79111
              mmTop = 3440
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel100: TppLabel
              OnPrint = lb7Print
              UserName = 'Label100'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3175
              mmLeft = 71173
              mmTop = 3091
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText89: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText89'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 36513
              mmTop = 3704
              mmWidth = 32808
              BandType = 4
            end
            object ppLabel101: TppLabel
              OnPrint = lb7Print
              UserName = 'Label101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3091
              mmLeft = 24342
              mmTop = 3091
              mmWidth = 11906
              BandType = 4
            end
            object ppSubRecebidas3: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas3'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 13758
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport12: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand4: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel164: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel165: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine39: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel166: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel167: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel168: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand13: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText144: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText145: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText146: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText147: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand12: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine40: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob3: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob3'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubRecebidas3
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 19579
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport20: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand13: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel204: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine55: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel205: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel206: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel207: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel208: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand21: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText176: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText177: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText178: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText179: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand20: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine56: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppLabel299: TppLabel
              OnPrint = lb7Print
              UserName = 'Label299'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3091
              mmLeft = 1323
              mmTop = 3091
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText257: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText257'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3091
              mmLeft = 7144
              mmTop = 3440
              mmWidth = 14023
              BandType = 4
            end
            object ppLabel308: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label308'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 1323
              mmTop = 7144
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText266: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText266'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 19050
              mmTop = 7673
              mmWidth = 39952
              BandType = 4
            end
          end
          object ppSummaryBand6: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine22: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel94: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 3969
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc61: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 83894
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc62: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 121994
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc63: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 146601
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc64: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 161682
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc65: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup6: TppGroup
            BreakName = 'LOCALCOBRANCA'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand6: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel95: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Local. Cobrança:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 32427
                BandType = 3
                GroupNo = 0
              end
              object ppLine23: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText83: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'LOCALCOBRANCA'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 39952
                mmTop = 3440
                mmWidth = 29379
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand6: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine24: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc66: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 83894
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel96: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total :'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3683
                mmLeft = 76994
                mmTop = 1323
                mmWidth = 9567
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc67: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 121994
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc68: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 146601
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc69: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 161682
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc70: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup6
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule7: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubClassificacao: TppSubReport
        UserName = 'ppSubClassificacao'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport5: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand5: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel66: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel67: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel68: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 6615
              BandType = 0
            end
            object ppLabel69: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 97896
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine17: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel70: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 85725
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel71: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 73290
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel72: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel73: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 118004
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel74: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 148432
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel75: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 165100
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel76: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 132292
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel77: TppLabel
              UserName = 'Label112'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2381
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand5: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 27517
            mmPrintPosition = 0
            object ppDBText57: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 35719
              mmTop = 265
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText58: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3683
              mmLeft = 52652
              mmTop = 265
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText59: TppDBText
              UserName = 'DBText5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 65881
              mmTop = 265
              mmWidth = 6615
              BandType = 4
            end
            object ppDBText60: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 73290
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText61: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 85725
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText62: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 97896
              mmTop = 265
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText63: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 118004
              mmTop = 265
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText64: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 132292
              mmTop = 265
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText65: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 148432
              mmTop = 265
              mmWidth = 15611
              BandType = 4
            end
            object ppDBText66: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 165100
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText67: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText68: TppDBText
              UserName = 'DBText98'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 0
              mmTop = 265
              mmWidth = 34660
              BandType = 4
            end
            object ppSubRecebidas4: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas4'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 14552
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport13: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand5: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel169: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel170: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine41: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel171: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel172: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel173: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand14: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText148: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText149: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText150: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText151: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand13: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine42: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob4: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob4'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubRecebidas4
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 22490
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport21: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand14: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel209: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine57: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel210: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel211: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel212: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel213: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand22: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText180: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText181: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText182: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText183: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand21: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine58: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppDBText90: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText90'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 132292
              mmTop = 10319
              mmWidth = 65088
              BandType = 4
            end
            object ppLabel102: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label102'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 119327
              mmTop = 9790
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText91: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText91'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 132292
              mmTop = 5292
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel103: TppLabel
              OnPrint = lb7Print
              UserName = 'Label103'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 119592
              mmTop = 4763
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText92: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText92'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 79640
              mmTop = 5556
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel104: TppLabel
              OnPrint = lb7Print
              UserName = 'Label1001'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 70115
              mmTop = 5027
              mmWidth = 7747
              BandType = 4
            end
            object ppDBText93: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText93'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 38629
              mmTop = 5556
              mmWidth = 28840
              BandType = 4
            end
            object ppLabel105: TppLabel
              OnPrint = lb7Print
              UserName = 'Label105'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 26458
              mmTop = 5027
              mmWidth = 11906
              BandType = 4
            end
            object ppLabel300: TppLabel
              OnPrint = lb7Print
              UserName = 'Label300'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 3440
              mmTop = 4763
              mmWidth = 5546
              BandType = 4
            end
            object ppDBText258: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText258'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 9260
              mmTop = 5292
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText267: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText267'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 21167
              mmTop = 9790
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel309: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label309'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 3440
              mmTop = 9260
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText268: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText268'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCALCOBRANCA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 82815
              mmTop = 9790
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel310: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label310'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Cob.: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 70379
              mmTop = 9260
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand5: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine18: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel78: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 3969
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc49: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 83630
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc50: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 121730
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc51: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 146336
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc52: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 161417
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc53: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'CLASSIFICACAO'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel79: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Classificação:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 23622
                BandType = 3
                GroupNo = 0
              end
              object ppLine19: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText69: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CLASSIFICACAO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 30956
                mmTop = 3440
                mmWidth = 26077
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine20: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc54: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 83630
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel80: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 76729
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc55: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 121730
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc56: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 146336
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc57: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 161417
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc58: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup5
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule6: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubLancto: TppSubReport
        UserName = 'SubLancto'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand4: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel49: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel50: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel51: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel52: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 97102
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine13: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel53: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 84931
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel54: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 72496
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel55: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel56: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117211
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel57: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 147638
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel58: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164307
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel59: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 131498
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel60: TppLabel
              UserName = 'Label112'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2381
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand4: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 30163
            mmPrintPosition = 0
            object ppDBText43: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 35719
              mmTop = 265
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText44: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3683
              mmLeft = 52652
              mmTop = 265
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText45: TppDBText
              UserName = 'DBText5'
              BlankWhenZero = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 63002
              mmTop = 265
              mmWidth = 11430
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 72496
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 84931
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText48: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 97102
              mmTop = 265
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText49: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 117211
              mmTop = 265
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText50: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 131498
              mmTop = 265
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText51: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 147638
              mmTop = 265
              mmWidth = 15611
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 164307
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText98'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2381
              mmLeft = 0
              mmTop = 265
              mmWidth = 34925
              BandType = 4
            end
            object ppSubRecebidas5: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas5'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 16669
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport14: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand7: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel174: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel175: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine43: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel176: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel177: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel178: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand15: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText152: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText153: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText154: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText155: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand14: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine44: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob5: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob5'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubRecebidas5
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 24606
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport22: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand15: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel214: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine59: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel215: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel216: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel217: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel218: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand23: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText184: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText185: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText186: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText187: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand22: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine60: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppDBText94: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText94'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 128323
              mmTop = 10583
              mmWidth = 43921
              BandType = 4
            end
            object ppLabel106: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label106'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 115359
              mmTop = 10054
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText95: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText95'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 128852
              mmTop = 5556
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel107: TppLabel
              OnPrint = lb7Print
              UserName = 'Label107'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 115359
              mmTop = 5027
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText96: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText96'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 77258
              mmTop = 5556
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel108: TppLabel
              OnPrint = lb7Print
              UserName = 'Label1002'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69321
              mmTop = 5027
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText110: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText110'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 38629
              mmTop = 5556
              mmWidth = 28840
              BandType = 4
            end
            object ppLabel109: TppLabel
              OnPrint = lb7Print
              UserName = 'Label109'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 26458
              mmTop = 5027
              mmWidth = 11906
              BandType = 4
            end
            object ppLabel301: TppLabel
              OnPrint = lb7Print
              UserName = 'Label301'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 3440
              mmTop = 4763
              mmWidth = 5546
              BandType = 4
            end
            object ppDBText259: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText259'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 9260
              mmTop = 5292
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText269: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText269'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 20902
              mmTop = 10319
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel311: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label311'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 3175
              mmTop = 9790
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText270: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText270'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCALCOBRANCA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 81492
              mmTop = 10319
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel312: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label3101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Cob.: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69321
              mmTop = 9790
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine14: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel61: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 3969
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc37: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 82836
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc38: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 120936
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc39: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 145542
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc40: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 160624
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc41: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'DT_LANCTO'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel63: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Lancto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 18415
                BandType = 3
                GroupNo = 0
              end
              object ppLine15: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText55: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_LANCTO'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 25400
                mmTop = 3440
                mmWidth = 19219
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine16: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc42: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 82836
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel64: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 75936
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc43: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 120936
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc44: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 145542
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc45: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 160624
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc46: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule5: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubVencto: TppSubReport
        UserName = 'SubVencto'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand3: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel33: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3528
              mmLeft = 47890
              mmTop = 1641
              mmWidth = 14605
              BandType = 0
            end
            object ppLabel34: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 64823
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel35: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 78052
              mmTop = 1694
              mmWidth = 7144
              BandType = 0
            end
            object ppLabel36: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 98425
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine9: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel38: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 85990
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel39: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel40: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 118534
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel41: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 148961
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel42: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 165629
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel43: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 132821
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel44: TppLabel
              UserName = 'Label112'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2381
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand3: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 32279
            mmPrintPosition = 0
            object ppDBText29: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 47890
              mmTop = 0
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 64823
              mmTop = 0
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText5'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2381
              mmLeft = 75936
              mmTop = 794
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 85990
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText34: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 98425
              mmTop = 0
              mmWidth = 18256
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 118534
              mmTop = 0
              mmWidth = 13758
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 132821
              mmTop = 0
              mmWidth = 15346
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 148961
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 165629
              mmTop = 0
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText98'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 0
              mmTop = 0
              mmWidth = 46831
              BandType = 4
            end
            object ppSubRecebidas6: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas6'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 14817
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport15: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand8: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel179: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel180: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine45: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel181: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel182: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel183: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand16: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText156: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText157: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText158: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText159: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand15: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine46: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob6: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob6'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ParentWidth = False
              ShiftRelativeTo = ppSubRecebidas6
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 26723
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport23: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand16: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel219: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine61: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel220: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel221: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel222: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel223: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand24: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText188: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText189: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText190: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText191: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand23: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine62: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppDBText112: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText112'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 129911
              mmTop = 10319
              mmWidth = 43921
              BandType = 4
            end
            object ppLabel110: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label110'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 114829
              mmTop = 9790
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText124: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText124'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 127265
              mmTop = 5292
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel113: TppLabel
              OnPrint = lb7Print
              UserName = 'Label113'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 114565
              mmTop = 4763
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText126: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText126'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 79904
              mmTop = 5292
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel126: TppLabel
              OnPrint = lb7Print
              UserName = 'Label1003'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 71967
              mmTop = 4763
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText127: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText127'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 38629
              mmTop = 5292
              mmWidth = 32808
              BandType = 4
            end
            object ppLabel129: TppLabel
              OnPrint = lb7Print
              UserName = 'Label129'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 26458
              mmTop = 4763
              mmWidth = 11906
              BandType = 4
            end
            object ppLabel302: TppLabel
              OnPrint = lb7Print
              UserName = 'Label302'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 3440
              mmTop = 4763
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText260: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText260'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 9260
              mmTop = 5292
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText271: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText271'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 20902
              mmTop = 10054
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel313: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label313'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 3175
              mmTop = 9525
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText272: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText272'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCALCOBRANCA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 84138
              mmTop = 10054
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel314: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label3102'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Cob.: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 71702
              mmTop = 9525
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine10: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel45: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 3969
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc25: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 84159
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc26: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 122259
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc27: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 146865
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc28: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 161946
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc29: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'DT_VENCTO'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel46: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Vencto:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 18584
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText41: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_VENCTO'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 25665
                mmTop = 3440
                mmWidth = 19219
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine12: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc30: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 84159
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel47: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 77258
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc31: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 122259
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc32: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 146865
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc33: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 161946
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc34: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule3: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubEmissao: TppSubReport
        UserName = 'SubEmissao'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand2: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel17: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel18: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel19: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 7144
              BandType = 0
            end
            object ppLabel20: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 98425
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine5: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel21: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 86254
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel22: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 73819
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel23: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel24: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 118534
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel25: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 148961
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel26: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 165629
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel27: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 132821
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel28: TppLabel
              UserName = 'Label112'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2381
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 32015
            mmPrintPosition = 0
            object ppDBText15: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 35719
              mmTop = 265
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText16: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3683
              mmLeft = 52652
              mmTop = 265
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText5'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2879
              mmLeft = 63696
              mmTop = 265
              mmWidth = 11515
              BandType = 4
            end
            object ppDBText18: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 73819
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 86254
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 98425
              mmTop = 265
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 118534
              mmTop = 265
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 132821
              mmTop = 265
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 148961
              mmTop = 265
              mmWidth = 15611
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 165629
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText98'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 0
              mmTop = 265
              mmWidth = 35190
              BandType = 4
            end
            object ppSubRecebidas7: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas7'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 16669
              mmWidth = 197380
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport16: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand9: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel184: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel185: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine47: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel186: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel187: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel188: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand17: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText160: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText161: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText162: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText163: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand16: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine48: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob7: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob7'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubRecebidas7
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 26988
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport24: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand17: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel224: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine63: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel225: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel226: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel227: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel228: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand25: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText192: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText193: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText194: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText195: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand24: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine64: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppDBText128: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText128'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 132292
              mmTop = 10054
              mmWidth = 43921
              BandType = 4
            end
            object ppLabel142: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label142'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 119327
              mmTop = 9525
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText129: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText129'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 132027
              mmTop = 5556
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel145: TppLabel
              OnPrint = lb7Print
              UserName = 'Label145'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 119327
              mmTop = 5027
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText130: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText130'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 77523
              mmTop = 5821
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel147: TppLabel
              OnPrint = lb7Print
              UserName = 'Label1004'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69586
              mmTop = 5292
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText131: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText131'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 37571
              mmTop = 5821
              mmWidth = 32808
              BandType = 4
            end
            object ppLabel148: TppLabel
              OnPrint = lb7Print
              UserName = 'Label148'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 25400
              mmTop = 5292
              mmWidth = 11906
              BandType = 4
            end
            object ppLabel303: TppLabel
              OnPrint = lb7Print
              UserName = 'Label303'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2381
              mmTop = 5027
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText261: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText261'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 8202
              mmTop = 5556
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText273: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText273'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 19844
              mmTop = 10319
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel315: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label315'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2117
              mmTop = 9790
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText274: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText274'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCALCOBRANCA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 82815
              mmTop = 10319
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel316: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label3103'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Cob.: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69321
              mmTop = 9790
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine6: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel29: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 3969
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc13: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 84159
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc14: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 122259
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc15: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 146865
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 161946
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'DT_EMISSAO'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel30: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Emissão:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 21294
                BandType = 3
                GroupNo = 0
              end
              object ppLine7: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText27: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_EMISSAO'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yyyy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 28310
                mmTop = 3440
                mmWidth = 20574
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6879
              mmPrintPosition = 0
              object ppLine8: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc18: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 84159
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel31: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 77258
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc19: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 122259
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc20: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 146865
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc21: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 161946
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule2: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppShape5: TppShape
        UserName = 'Shape3'
        Shape = stRoundRect
        mmHeight = 21696
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 1
      end
      object lblEmpresa: TppLabel
        UserName = 'lblEmpresa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblEmpresa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5842
        mmLeft = 794
        mmTop = 1852
        mmWidth = 26712
        BandType = 1
      end
      object ppTituloRel: TppLabel
        UserName = 'lblCaixa'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relatório de Contas à Receber'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 1058
        mmTop = 9260
        mmWidth = 58335
        BandType = 1
      end
      object lblFiltro: TppLabel
        UserName = 'lblFiltro'
        CharWrap = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FILTRO:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 3440
        mmLeft = 794
        mmTop = 15610
        mmWidth = 192088
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPrintDateTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 170127
        mmTop = 1058
        mmWidth = 25400
        BandType = 1
      end
      object ppSubClientes: TppSubReport
        UserName = 'SubClientes'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand1: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel2: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel3: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 19579
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 35190
              mmTop = 1694
              mmWidth = 6350
              BandType = 0
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 72761
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine1: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 58738
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 44450
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 160602
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel8: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 93398
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 127000
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 143934
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 109274
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel4: TppLabel
              UserName = 'Label4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'D. Rest.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 184944
              mmTop = 1641
              mmWidth = 11906
              BandType = 0
            end
          end
          object ppDetailBand1: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 33338
            mmPrintPosition = 0
            object Region: TppRegion
              UserName = 'Region'
              Caption = 'Region'
              Pen.Style = psClear
              Stretch = True
              mmHeight = 11642
              mmLeft = 0
              mmTop = 0
              mmWidth = 197380
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppDBText3: TppDBText
                UserName = 'DBText2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TIPO_DOCTO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3598
                mmLeft = 529
                mmTop = 794
                mmWidth = 16139
                BandType = 4
              end
              object ppDBText4: TppDBText
                UserName = 'DBText3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DOCTO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 19579
                mmTop = 794
                mmWidth = 12436
                BandType = 4
              end
              object ppDBText5: TppDBText
                UserName = 'DBText4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PARCELA'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                TextAlignment = taCentered
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2879
                mmLeft = 32618
                mmTop = 794
                mmWidth = 11515
                BandType = 4
              end
              object ppDBText6: TppDBText
                UserName = 'DBText5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_LANCTO'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 44450
                mmTop = 794
                mmWidth = 11377
                BandType = 4
              end
              object ppDBText7: TppDBText
                UserName = 'DBText6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_VENCTO'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 58738
                mmTop = 794
                mmWidth = 11377
                BandType = 4
              end
              object ppDBText8: TppDBText
                UserName = 'DBText7'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 72761
                mmTop = 794
                mmWidth = 18255
                BandType = 4
              end
              object ppDBText9: TppDBText
                UserName = 'DBText8'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DATA_ULT_BX'
                DataPipeline = dbRelReceber
                DisplayFormat = 'dd/mm/yy'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 93398
                mmTop = 794
                mmWidth = 13759
                BandType = 4
              end
              object ppDBText10: TppDBText
                UserName = 'DBText102'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 109273
                mmTop = 794
                mmWidth = 15347
                BandType = 4
              end
              object ppDBText11: TppDBText
                UserName = 'DBText9'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 127000
                mmTop = 794
                mmWidth = 15611
                BandType = 4
              end
              object ppDBText12: TppDBText
                UserName = 'DBText10'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 143934
                mmTop = 794
                mmWidth = 14023
                BandType = 4
              end
              object ppDBText13: TppDBText
                UserName = 'DBText11'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 160602
                mmTop = 794
                mmWidth = 17198
                BandType = 4
              end
              object ppDBText14: TppDBText
                UserName = 'DBText14'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESCTO_RES'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = []
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 178330
                mmTop = 794
                mmWidth = 17198
                BandType = 4
              end
              object H1: TppDBText
                UserName = 'H1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'HISTORICO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3704
                mmLeft = 16140
                mmTop = 6085
                mmWidth = 66940
                BandType = 4
              end
              object lb7: TppLabel
                UserName = 'lb7'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Histórico:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3704
                mmLeft = 1588
                mmTop = 5556
                mmWidth = 14023
                BandType = 4
              end
              object ppDBText275: TppDBText
                UserName = 'DBText275'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NOME_VENDEDOR'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2910
                mmLeft = 102394
                mmTop = 6350
                mmWidth = 39952
                BandType = 4
              end
              object ppLabel317: TppLabel
                UserName = 'Label317'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Vendedor: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 84667
                mmTop = 5821
                mmWidth = 17198
                BandType = 4
              end
              object ppDBText276: TppDBText
                UserName = 'DBText276'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'LOCALCOBRANCA'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2910
                mmLeft = 155575
                mmTop = 6350
                mmWidth = 39952
                BandType = 4
              end
              object ppLabel318: TppLabel
                UserName = 'Label3104'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'L. Cob.: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 143140
                mmTop = 5821
                mmWidth = 11377
                BandType = 4
              end
            end
            object ppSubRecebidas: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubVendas
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 21696
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport7: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand1: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel150: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 125677
                    mmTop = 9261
                    mmWidth = 12171
                    BandType = 1
                  end
                  object ppLabel151: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 141288
                    mmTop = 9314
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine25: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12436
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel160: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 87313
                    mmTop = 9261
                    mmWidth = 10319
                    BandType = 1
                  end
                  object ppLabel161: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 5027
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel152: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 111919
                    mmTop = 9261
                    mmWidth = 11642
                    BandType = 1
                  end
                end
                object ppDetailBand8: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText133: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText134: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 125677
                    mmTop = 0
                    mmWidth = 13494
                    BandType = 4
                  end
                  object ppDBText135: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 141288
                    mmTop = 0
                    mmWidth = 59531
                    BandType = 4
                  end
                  object ppDBText136: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106892
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                end
                object ppSummaryBand7: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 3969
                  mmPrintPosition = 0
                  object ppLine26: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubRecebidas
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 27781
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport18: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand11: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel194: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine51: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel195: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel196: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel197: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel198: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand19: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText168: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText169: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText170: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText171: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand18: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine52: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubVendas: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubVendas'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = Region
              TraverseAllData = False
              DataPipelineName = 'ppVendas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 15346
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport25: TppChildReport
                AutoStop = False
                DataPipeline = ppVendas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppVendas'
                object ppTitleBand18: TppTitleBand
                  PrintHeight = phDynamic
                  mmBottomOffset = 0
                  mmHeight = 8467
                  mmPrintPosition = 0
                  object ppLine65: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 15610
                    mmTop = 8202
                    mmWidth = 182034
                    BandType = 1
                  end
                  object ppLabel231: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Produto'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 26723
                    mmTop = 4763
                    mmWidth = 21431
                    BandType = 1
                  end
                  object ppLabel232: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Venda'
                    Color = clGreen
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 15875
                    mmTop = 529
                    mmWidth = 10583
                    BandType = 1
                  end
                  object ppLabel229: TppLabel
                    UserName = 'Label1602'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Qtde'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 113771
                    mmTop = 4763
                    mmWidth = 8996
                    BandType = 1
                  end
                  object ppLabel230: TppLabel
                    UserName = 'Label230'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 128852
                    mmTop = 4763
                    mmWidth = 14552
                    BandType = 1
                  end
                  object ppLabel233: TppLabel
                    UserName = 'Label2301'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Desconto'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 146315
                    mmTop = 4763
                    mmWidth = 14288
                    BandType = 1
                  end
                  object ppLabel239: TppLabel
                    UserName = 'Label239'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Total Item'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 162719
                    mmTop = 4763
                    mmWidth = 22225
                    BandType = 1
                  end
                end
                object ppDetailBand26: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3440
                  mmPrintPosition = 0
                  object ppDBText196: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'PRODUTO'
                    DataPipeline = ppVendas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppVendas'
                    mmHeight = 3302
                    mmLeft = 26458
                    mmTop = 265
                    mmWidth = 77788
                    BandType = 4
                  end
                  object ppDBText199: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'QUANTIDADE'
                    DataPipeline = ppVendas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppVendas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                  object ppDBText198: TppDBText
                    UserName = 'DBText198'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'PRC_UNITARIO'
                    DataPipeline = ppVendas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppVendas'
                    mmHeight = 3302
                    mmLeft = 124354
                    mmTop = 0
                    mmWidth = 19579
                    BandType = 4
                  end
                  object ppDBText197: TppDBText
                    UserName = 'DBText197'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DESCONTO'
                    DataPipeline = ppVendas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppVendas'
                    mmHeight = 3302
                    mmLeft = 146050
                    mmTop = 0
                    mmWidth = 14552
                    BandType = 4
                  end
                  object ppDBText205: TppDBText
                    UserName = 'DBText205'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'TOTAL_ITEM'
                    DataPipeline = ppVendas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppVendas'
                    mmHeight = 3302
                    mmLeft = 162454
                    mmTop = 0
                    mmWidth = 22490
                    BandType = 4
                  end
                end
                object ppSummaryBand25: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 12435
                  mmPrintPosition = 0
                  object ppLine66: TppLine
                    UserName = 'Line66'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1852
                    mmLeft = 15346
                    mmTop = 0
                    mmWidth = 182034
                    BandType = 7
                  end
                end
                object ppGroup7: TppGroup
                  BreakName = 'CODIGO'
                  DataPipeline = ppVendas
                  KeepTogether = True
                  OutlineSettings.CreateNode = True
                  UserName = 'Group7'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'ppVendas'
                  object ppGroupHeaderBand7: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 5556
                    mmPrintPosition = 0
                    object ppLine67: TppLine
                      UserName = 'Line67'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 1058
                      mmLeft = 15346
                      mmTop = 5027
                      mmWidth = 182034
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel234: TppLabel
                      UserName = 'Label1601'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Código:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3387
                      mmLeft = 15610
                      mmTop = 1323
                      mmWidth = 12965
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText200: TppDBText
                      UserName = 'DBText200'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'CODIGO'
                      DataPipeline = ppVendas
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppVendas'
                      mmHeight = 3175
                      mmLeft = 28840
                      mmTop = 1323
                      mmWidth = 13758
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel235: TppLabel
                      UserName = 'Label235'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Data:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3387
                      mmLeft = 70908
                      mmTop = 1323
                      mmWidth = 7070
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText201: TppDBText
                      UserName = 'DBText201'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'DATA'
                      DataPipeline = ppVendas
                      DisplayFormat = 'dd/mm/yy'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppVendas'
                      mmHeight = 3302
                      mmLeft = 78317
                      mmTop = 1323
                      mmWidth = 13494
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText202: TppDBText
                      UserName = 'DBText202'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'TOTAL'
                      DataPipeline = ppVendas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppVendas'
                      mmHeight = 3302
                      mmLeft = 106892
                      mmTop = 1323
                      mmWidth = 17727
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel236: TppLabel
                      UserName = 'Label236'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Total R$:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3387
                      mmLeft = 93927
                      mmTop = 1323
                      mmWidth = 12107
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText203: TppDBText
                      UserName = 'DBText203'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'DESC_ACRES'
                      DataPipeline = ppVendas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppVendas'
                      mmHeight = 3302
                      mmLeft = 138907
                      mmTop = 1323
                      mmWidth = 13494
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel237: TppLabel
                      UserName = 'Label237'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'D/Ac R$:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3387
                      mmLeft = 126736
                      mmTop = 1323
                      mmWidth = 11684
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText204: TppDBText
                      UserName = 'DBText204'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VD_TOTAL'
                      DataPipeline = ppVendas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppVendas'
                      mmHeight = 3302
                      mmLeft = 177800
                      mmTop = 1323
                      mmWidth = 13494
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel238: TppLabel
                      UserName = 'Label238'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Ttl Liquido R$:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3387
                      mmLeft = 156898
                      mmTop = 1323
                      mmWidth = 20638
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText231: TppDBText
                      UserName = 'DBText2001'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'NUM_NF'
                      DataPipeline = ppVendas
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppVendas'
                      mmHeight = 3440
                      mmLeft = 53711
                      mmTop = 1323
                      mmWidth = 15875
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel269: TppLabel
                      UserName = 'Label269'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Nº NF.:'
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3323
                      mmLeft = 44186
                      mmTop = 1323
                      mmWidth = 9790
                      BandType = 3
                      GroupNo = 0
                    end
                  end
                  object ppGroupFooterBand7: TppGroupFooterBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                end
              end
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 10319
            mmPrintPosition = 0
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 3969
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc7: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 58494
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 98711
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc9: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 124905
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc10: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 140251
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc11: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 160094
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc12: TppDBCalc
              UserName = 'DBCalc12'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESCTO_RES'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 170160
              mmTop = 4763
              mmWidth = 27220
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'CLIENTE'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel1: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cliente:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3683
                mmLeft = 6879
                mmTop = 3439
                mmWidth = 12912
                BandType = 3
                GroupNo = 0
              end
              object ppLine2: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText1: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CLIENTE'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 20902
                mmTop = 3440
                mmWidth = 13589
                BandType = 3
                GroupNo = 0
              end
              object lb1: TppLabel
                OnPrint = lb1Print
                UserName = 'lb1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'NF:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 121444
                mmTop = 3704
                mmWidth = 4763
                BandType = 3
                GroupNo = 0
              end
              object lb2: TppDBText
                OnPrint = lb1Print
                UserName = 'lb2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NUM_NF'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2910
                mmLeft = 127000
                mmTop = 4233
                mmWidth = 11906
                BandType = 3
                GroupNo = 0
              end
              object lb3: TppLabel
                OnPrint = lb1Print
                UserName = 'lb3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Fone:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 171186
                mmTop = 3704
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object lb4: TppDBText
                OnPrint = lb1Print
                UserName = 'lb4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'FONE'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2910
                mmLeft = 179123
                mmTop = 4233
                mmWidth = 16669
                BandType = 3
                GroupNo = 0
              end
              object ppLabel304: TppLabel
                OnPrint = lb1Print
                UserName = 'Label304'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'L. Trab.:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 141023
                mmTop = 3704
                mmWidth = 11906
                BandType = 3
                GroupNo = 0
              end
              object ppDBText262: TppDBText
                OnPrint = lb1Print
                UserName = 'DBText262'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'LOCAL_TRABALHO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 2910
                mmLeft = 153194
                mmTop = 4233
                mmWidth = 18521
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine3: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 58494
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel15: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 40746
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 98711
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc3: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 124905
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 140251
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc5: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 160094
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc6'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESCTO_RES'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 169630
                mmTop = 1323
                mmWidth = 27220
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule1: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubRegiao: TppSubReport
        UserName = 'SubRegiao'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport9: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand9: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel131: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel132: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel133: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel134: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 97102
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine33: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel135: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 84931
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel136: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 72496
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel137: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel138: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117211
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel139: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 147638
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel140: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164307
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel141: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 131498
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel111: TppLabel
              UserName = 'Label111'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 265
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand10: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 25400
            mmPrintPosition = 0
            object ppDBText113: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 35983
              mmTop = 265
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText114: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3683
              mmLeft = 52652
              mmTop = 265
              mmWidth = 12700
              BandType = 4
            end
            object ppDBText115: TppDBText
              UserName = 'DBText5'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2879
              mmLeft = 62960
              mmTop = 265
              mmWidth = 11515
              BandType = 4
            end
            object ppDBText116: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 72496
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText117: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 84931
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText118: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 97102
              mmTop = 265
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText119: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 117211
              mmTop = 265
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText120: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 131498
              mmTop = 265
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText121: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 147638
              mmTop = 265
              mmWidth = 15611
              BandType = 4
            end
            object ppDBText122: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 164307
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText123: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText97: TppDBText
              UserName = 'DBText97'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 0
              mmTop = 265
              mmWidth = 35454
              BandType = 4
            end
            object ppSubRecebidas1: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas1'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12965
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport10: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand2: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel149: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel153: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine27: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel154: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel155: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel156: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand11: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText132: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText137: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText138: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText139: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand10: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine28: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubCob1: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob1'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 18785
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport17: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand10: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel189: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine49: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel191: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel192: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel190: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel193: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand18: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText164: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText165: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText166: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText167: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand17: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine50: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppDBText2: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText901'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 127265
              mmTop = 9790
              mmWidth = 68792
              BandType = 4
            end
            object ppLabel14: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 112184
              mmTop = 9260
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText28: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 125148
              mmTop = 5027
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel32: TppLabel
              OnPrint = lb7Print
              UserName = 'Label14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 112448
              mmTop = 4498
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText33: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 75936
              mmTop = 5556
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel37: TppLabel
              OnPrint = lb7Print
              UserName = 'Label17'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 67998
              mmTop = 5027
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText42: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText14'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 35454
              mmTop = 5292
              mmWidth = 32808
              BandType = 4
            end
            object ppLabel48: TppLabel
              OnPrint = lb7Print
              UserName = 'Label18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 23283
              mmTop = 4763
              mmWidth = 11906
              BandType = 4
            end
            object ppLabel305: TppLabel
              OnPrint = lb7Print
              UserName = 'Label3001'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 265
              mmTop = 5292
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText263: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText263'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 6085
              mmTop = 5292
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText277: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText277'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 17992
              mmTop = 9525
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel319: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label319'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 265
              mmTop = 8996
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText278: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText278'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCALCOBRANCA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 80433
              mmTop = 9260
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel320: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label3105'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Cob.: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 67998
              mmTop = 8731
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand9: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine34: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel143: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 39158
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc97: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 82836
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc98: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 120936
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc99: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 145542
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc100: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 160624
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc101: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup9: TppGroup
            BreakName = 'REGIAO'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand9: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel144: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Região:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3439
                mmWidth = 12912
                BandType = 3
                GroupNo = 0
              end
              object ppLine35: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText125: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'REGIAO'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 20902
                mmTop = 3704
                mmWidth = 12488
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand9: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine36: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc103: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 82836
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel146: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 75936
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc104: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 120936
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc105: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 145542
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc106: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 160624
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc107: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup9
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule10: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubRota: TppSubReport
        UserName = 'SubRota'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport26: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand7: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel240: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel241: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel242: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel243: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 97102
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine68: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel244: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 84931
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel245: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 72496
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel246: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel247: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117211
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel248: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 147638
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel249: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164307
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel250: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 131498
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel251: TppLabel
              UserName = 'Label111'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 265
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand27: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 23019
            mmPrintPosition = 0
            object ppDBText206: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3598
              mmLeft = 35719
              mmTop = 265
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText207: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3683
              mmLeft = 52652
              mmTop = 265
              mmWidth = 12700
              BandType = 4
            end
            object ppDBText208: TppDBText
              UserName = 'DBText5'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3429
              mmLeft = 63002
              mmTop = 265
              mmWidth = 11430
              BandType = 4
            end
            object ppDBText209: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 72496
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText210: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 84931
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText211: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 97102
              mmTop = 265
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText212: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 117211
              mmTop = 265
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText213: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 131498
              mmTop = 265
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText214: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 147638
              mmTop = 265
              mmWidth = 15611
              BandType = 4
            end
            object ppDBText215: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 164307
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText216: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText217: TppDBText
              UserName = 'DBText97'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 0
              mmTop = 265
              mmWidth = 35190
              BandType = 4
            end
            object ppSubReport2: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas1'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12700
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport27: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand19: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel256: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel257: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine69: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel258: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel259: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel260: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand28: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText222: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText223: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText224: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText225: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand26: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine70: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubReport3: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob1'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 17992
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport28: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand20: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel261: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine71: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel262: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel263: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel264: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel265: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand29: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText226: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText227: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText228: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText229: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand27: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine72: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppDBText218: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText902'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 127000
              mmTop = 9525
              mmWidth = 66146
              BandType = 4
            end
            object ppLabel252: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label252'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 112184
              mmTop = 8996
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText219: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText219'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 124884
              mmTop = 5556
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel253: TppLabel
              OnPrint = lb7Print
              UserName = 'Label253'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 112184
              mmTop = 5027
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText220: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText220'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 77523
              mmTop = 5556
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel254: TppLabel
              OnPrint = lb7Print
              UserName = 'Label254'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69586
              mmTop = 5027
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText221: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText221'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 35190
              mmTop = 5556
              mmWidth = 32808
              BandType = 4
            end
            object ppLabel255: TppLabel
              OnPrint = lb7Print
              UserName = 'Label255'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 23019
              mmTop = 5027
              mmWidth = 11906
              BandType = 4
            end
            object ppLabel306: TppLabel
              OnPrint = lb7Print
              UserName = 'Label3002'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 5027
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText264: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText264'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 5821
              mmTop = 5556
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText279: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText279'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 17727
              mmTop = 9260
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel321: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label321'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 8731
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText280: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText280'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCALCOBRANCA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 81756
              mmTop = 9525
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel322: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label3106'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Cob.: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 69321
              mmTop = 8996
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand28: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine73: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel266: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 39158
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc23: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 82836
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc24: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 120936
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc35: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 145542
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc36: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 160624
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc47: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup10: TppGroup
            BreakName = 'ROTA'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand10: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel267: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Rota:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3439
                mmWidth = 9017
                BandType = 3
                GroupNo = 0
              end
              object ppLine74: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText230: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ROTA'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3683
                mmLeft = 16933
                mmTop = 3704
                mmWidth = 8975
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand10: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine75: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc48: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 82836
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel268: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 75936
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc59: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 120936
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc60: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 145542
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc71: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 160624
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc72: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule8: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
      object ppSubCidades: TppSubReport
        UserName = 'SubCidades'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelReceber'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        object ppChildReport29: TppChildReport
          AutoStop = False
          DataPipeline = dbRelReceber
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
          Left = 216
          Top = 312
          Version = '9.01'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelReceber'
          object ppHeaderBand10: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel65: TppLabel
              UserName = 'Label2'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tipo Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 35719
              mmTop = 1641
              mmWidth = 16140
              BandType = 0
            end
            object ppLabel97: TppLabel
              UserName = 'Label3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nº Docto'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 52652
              mmTop = 1694
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel272: TppLabel
              UserName = 'Label5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65881
              mmTop = 1694
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel273: TppLabel
              UserName = 'Label7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 97102
              mmTop = 1694
              mmWidth = 18256
              BandType = 0
            end
            object ppLine76: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4816
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel274: TppLabel
              UserName = 'Label6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 84931
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel275: TppLabel
              UserName = 'Label12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 72496
              mmTop = 1694
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel276: TppLabel
              UserName = 'Label13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1641
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel277: TppLabel
              UserName = 'Label8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117211
              mmTop = 1694
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel278: TppLabel
              UserName = 'Label9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Juros'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 147638
              mmTop = 1641
              mmWidth = 15610
              BandType = 0
            end
            object ppLabel279: TppLabel
              UserName = 'Label10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Multa'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164307
              mmTop = 1641
              mmWidth = 14023
              BandType = 0
            end
            object ppLabel280: TppLabel
              UserName = 'Label11'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 131498
              mmTop = 1641
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel281: TppLabel
              UserName = 'Label111'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 265
              mmTop = 1641
              mmWidth = 10848
              BandType = 0
            end
          end
          object ppDetailBand30: TppDetailBand
            BeforePrint = ImprimeHistorico
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 26723
            mmPrintPosition = 0
            object ppDBText232: TppDBText
              UserName = 'DBText3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3598
              mmLeft = 35719
              mmTop = 265
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText233: TppDBText
              UserName = 'DBText4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3683
              mmLeft = 52652
              mmTop = 265
              mmWidth = 12700
              BandType = 4
            end
            object ppDBText234: TppDBText
              UserName = 'DBText5'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3514
              mmLeft = 63002
              mmTop = 265
              mmWidth = 11430
              BandType = 4
            end
            object ppDBText235: TppDBText
              UserName = 'DBText6'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 72496
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText236: TppDBText
              UserName = 'DBText7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 84931
              mmTop = 265
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText237: TppDBText
              UserName = 'DBText8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 97102
              mmTop = 265
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText238: TppDBText
              UserName = 'DBText9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_ULT_BX'
              DataPipeline = dbRelReceber
              DisplayFormat = 'dd/mm/yy'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 117211
              mmTop = 265
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText239: TppDBText
              UserName = 'DBText10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 131498
              mmTop = 265
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText240: TppDBText
              UserName = 'DBText101'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 147638
              mmTop = 265
              mmWidth = 15611
              BandType = 4
            end
            object ppDBText241: TppDBText
              UserName = 'DBText12'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 164307
              mmTop = 265
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText242: TppDBText
              UserName = 'DBText13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 265
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText243: TppDBText
              UserName = 'DBText97'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3175
              mmLeft = 0
              mmTop = 265
              mmWidth = 35190
              BandType = 4
            end
            object ppSubReport4: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubRecebidas1'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppRecebidas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 14023
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport30: TppChildReport
                AutoStop = False
                DataPipeline = ppRecebidas
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppRecebidas'
                object ppTitleBand21: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel286: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 106098
                    mmTop = 8996
                    mmWidth = 12107
                    BandType = 1
                  end
                  object ppLabel287: TppLabel
                    UserName = 'Label151'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 148432
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                  object ppLine77: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel288: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Usuário'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 8001
                    BandType = 1
                  end
                  object ppLabel289: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 9102
                    BandType = 1
                  end
                  object ppLabel290: TppLabel
                    UserName = 'Label1501'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 139700
                    mmTop = 8996
                    mmWidth = 7112
                    BandType = 1
                  end
                end
                object ppDetailBand31: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText248: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText249: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText250: TppDBText
                    UserName = 'DBText135'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppRecebidas
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText251: TppDBText
                    UserName = 'DBText136'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppRecebidas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppRecebidas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand29: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine78: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppSubReport5: TppSubReport
              OnPrint = ppSubRecebidas1Print
              UserName = 'SubCob1'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppCobranca'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 19315
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              object ppChildReport31: TppChildReport
                AutoStop = False
                DataPipeline = ppCobranca
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
                Left = 216
                Top = 256
                Version = '9.01'
                mmColumnWidth = 0
                DataPipelineName = 'ppCobranca'
                object ppTitleBand22: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel291: TppLabel
                    UserName = 'Label150'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hora'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 106363
                    mmTop = 8996
                    mmWidth = 6350
                    BandType = 1
                  end
                  object ppLine79: TppLine
                    UserName = 'Line25'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 265
                    mmLeft = 85196
                    mmTop = 12435
                    mmWidth = 112448
                    BandType = 1
                  end
                  object ppLabel292: TppLabel
                    UserName = 'Label160'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Data'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 87313
                    mmTop = 8996
                    mmWidth = 6096
                    BandType = 1
                  end
                  object ppLabel293: TppLabel
                    UserName = 'Label161'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobranças'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3302
                    mmLeft = 85196
                    mmTop = 4763
                    mmWidth = 14605
                    BandType = 1
                  end
                  object ppLabel294: TppLabel
                    UserName = 'Label1502'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Cobrador'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 123031
                    mmTop = 8996
                    mmWidth = 15610
                    BandType = 1
                  end
                  object ppLabel295: TppLabel
                    UserName = 'Label193'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Histórico'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3387
                    mmLeft = 152929
                    mmTop = 8996
                    mmWidth = 12277
                    BandType = 1
                  end
                end
                object ppDetailBand32: TppDetailBand
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText252: TppDBText
                    UserName = 'DBText133'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DATA_COBRANCA'
                    DataPipeline = ppCobranca
                    DisplayFormat = 'dd/mm/yyyy'
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 87313
                    mmTop = 265
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText253: TppDBText
                    UserName = 'DBText134'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HR_COBRANCA'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 3175
                    mmLeft = 106363
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText254: TppDBText
                    UserName = 'DBText166'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'NOME_COBRADOR'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 123031
                    mmTop = 0
                    mmWidth = 27252
                    BandType = 4
                  end
                  object ppDBText255: TppDBText
                    UserName = 'DBText167'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO'
                    DataPipeline = ppCobranca
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clNavy
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppCobranca'
                    mmHeight = 2910
                    mmLeft = 152929
                    mmTop = 0
                    mmWidth = 43656
                    BandType = 4
                  end
                end
                object ppSummaryBand30: TppSummaryBand
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine80: TppLine
                    UserName = 'Line26'
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Weight = 0.750000000000000000
                    mmHeight = 1588
                    mmLeft = 85196
                    mmTop = 265
                    mmWidth = 112448
                    BandType = 7
                  end
                end
              end
            end
            object ppDBText244: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText903'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 127265
              mmTop = 10319
              mmWidth = 67733
              BandType = 4
            end
            object ppLabel282: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label282'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Histórico:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 112448
              mmTop = 10054
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText245: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText245'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 124884
              mmTop = 5821
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel283: TppLabel
              OnPrint = lb7Print
              UserName = 'Label283'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 112184
              mmTop = 5292
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText246: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText246'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 74083
              mmTop = 6350
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel284: TppLabel
              OnPrint = lb7Print
              UserName = 'Label284'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 66146
              mmTop = 5821
              mmWidth = 7673
              BandType = 4
            end
            object ppDBText247: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText247'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCAL_TRABALHO'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 35190
              mmTop = 6085
              mmWidth = 32808
              BandType = 4
            end
            object ppLabel285: TppLabel
              OnPrint = lb7Print
              UserName = 'Label285'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Trab.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 23019
              mmTop = 5556
              mmWidth = 11906
              BandType = 4
            end
            object ppLabel307: TppLabel
              OnPrint = lb7Print
              UserName = 'Label3003'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'NF.:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 5292
              mmWidth = 5556
              BandType = 4
            end
            object ppDBText265: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText265'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NUM_NF'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 5821
              mmTop = 5821
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText281: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText281'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NOME_VENDEDOR'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 17727
              mmTop = 10054
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel323: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label323'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendedor: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 9525
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText282: TppDBText
              OnPrint = ppLabel308Print
              UserName = 'DBText282'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LOCALCOBRANCA'
              DataPipeline = dbRelReceber
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 2910
              mmLeft = 78581
              mmTop = 10054
              mmWidth = 39952
              BandType = 4
            end
            object ppLabel324: TppLabel
              OnPrint = ppLabel308Print
              UserName = 'Label3107'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'L. Cob.: '
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 66146
              mmTop = 9525
              mmWidth = 11377
              BandType = 4
            end
          end
          object ppSummaryBand31: TppSummaryBand
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine81: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 529
              mmTop = 3440
              mmWidth = 196850
              BandType = 7
            end
            object ppLabel296: TppLabel
              UserName = 'Label16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 39158
              mmTop = 4233
              mmWidth = 17695
              BandType = 7
            end
            object ppDBCalc75: TppDBCalc
              UserName = 'DBCalc7'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 82836
              mmTop = 4498
              mmWidth = 32512
              BandType = 7
            end
            object ppDBCalc76: TppDBCalc
              UserName = 'DBCalc8'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 120936
              mmTop = 4763
              mmWidth = 25866
              BandType = 7
            end
            object ppDBCalc77: TppDBCalc
              UserName = 'DBCalc9'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 145542
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
            object ppDBCalc78: TppDBCalc
              UserName = 'DBCalc10'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MULTA'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 160624
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
            object ppDBCalc79: TppDBCalc
              UserName = 'DBCalc11'
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelReceber
              DisplayFormat = '#,0.00;-#,0.00'
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelReceber'
              mmHeight = 3387
              mmLeft = 179674
              mmTop = 4763
              mmWidth = 17822
              BandType = 7
            end
          end
          object ppGroup11: TppGroup
            BreakName = 'CIDADE_NOME'
            DataPipeline = dbRelReceber
            OutlineSettings.CreateNode = True
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelReceber'
            object ppGroupHeaderBand11: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel297: TppLabel
                UserName = 'Label1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cidade:'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3881
                mmLeft = 6879
                mmTop = 3439
                mmWidth = 12912
                BandType = 3
                GroupNo = 0
              end
              object ppLine82: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 794
                mmLeft = 6879
                mmTop = 7673
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText256: TppDBText
                UserName = 'DBText1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CIDADE_NOME'
                DataPipeline = dbRelReceber
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3429
                mmLeft = 20902
                mmTop = 3704
                mmWidth = 62696
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand11: TppGroupFooterBand
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine83: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7408
                mmTop = 529
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc80: TppDBCalc
                UserName = 'DBCalc1'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 82836
                mmTop = 1323
                mmWidth = 32512
                BandType = 5
                GroupNo = 0
              end
              object ppLabel298: TppLabel
                UserName = 'Label15'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total: '
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3439
                mmLeft = 75936
                mmTop = 1323
                mmWidth = 20193
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc81: TppDBCalc
                UserName = 'DBCalc2'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 120936
                mmTop = 1323
                mmWidth = 25866
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc82: TppDBCalc
                UserName = 'DBCalc3'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 145542
                mmTop = 1323
                mmWidth = 17780
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc83: TppDBCalc
                UserName = 'DBCalc4'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'MULTA'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 160624
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc84: TppDBCalc
                UserName = 'DBCalc5'
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelReceber
                DisplayFormat = '#,0.00;-#,0.00'
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup10
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelReceber'
                mmHeight = 3387
                mmLeft = 179674
                mmTop = 1323
                mmWidth = 17822
                BandType = 5
                GroupNo = 0
              end
            end
          end
          object raCodeModule11: TraCodeModule
            ProgramStream = {00}
          end
        end
      end
    end
    object ppDetailBand6: TppDetailBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape12'
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNoDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 180182
        mmTop = 1852
        mmWidth = 14552
        BandType = 8
      end
      object ppLabel124: TppLabel
        UserName = 'Label116'
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 
          'Softbr Informática - Inteligência Aplicada a Gestão Empresarial ' +
          '- (0XX67)3423-9791'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3969
        mmLeft = 1323
        mmTop = 1588
        mmWidth = 127794
        BandType = 8
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dbRelReceber: TppDBPipeline
    DataSource = dsRelReceber
    UserName = 'dbRelReceber'
    Left = 317
    Top = 28
    object dbRelReceberppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLIENTE'
      FieldName = 'COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbRelReceberppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_RECEBER'
      FieldName = 'COD_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbRelReceberppField3: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object dbRelReceberppField4: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 3
    end
    object dbRelReceberppField5: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object dbRelReceberppField6: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 5
    end
    object dbRelReceberppField7: TppField
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 6
    end
    object dbRelReceberppField8: TppField
      FieldAlias = 'DT_EMISSAO'
      FieldName = 'DT_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 7
    end
    object dbRelReceberppField9: TppField
      FieldAlias = 'DT_VENCTO'
      FieldName = 'DT_VENCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 8
    end
    object dbRelReceberppField10: TppField
      FieldAlias = 'DT_LANCTO'
      FieldName = 'DT_LANCTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 9
    end
    object dbRelReceberppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_NOMINAL'
      FieldName = 'VALOR_NOMINAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object dbRelReceberppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'BX_PARCIAL'
      FieldName = 'BX_PARCIAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object dbRelReceberppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object dbRelReceberppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CLASSIFICACAO'
      FieldName = 'COD_CLASSIFICACAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object dbRelReceberppField15: TppField
      FieldAlias = 'CLASSIFICACAO'
      FieldName = 'CLASSIFICACAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object dbRelReceberppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_LOCALCOBRANCA'
      FieldName = 'COD_LOCALCOBRANCA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object dbRelReceberppField17: TppField
      FieldAlias = 'LOCALCOBRANCA'
      FieldName = 'LOCALCOBRANCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object dbRelReceberppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDEDOR'
      FieldName = 'COD_VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object dbRelReceberppField19: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 18
    end
    object dbRelReceberppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_REGIAO'
      FieldName = 'COD_REGIAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object dbRelReceberppField21: TppField
      FieldAlias = 'REGIAO'
      FieldName = 'REGIAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 20
    end
    object dbRelReceberppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_ROTA'
      FieldName = 'COD_ROTA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 21
    end
    object dbRelReceberppField23: TppField
      FieldAlias = 'ROTA'
      FieldName = 'ROTA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object dbRelReceberppField24: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object dbRelReceberppField25: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 24
    end
    object dbRelReceberppField26: TppField
      FieldAlias = 'LOCAL_TRABALHO'
      FieldName = 'LOCAL_TRABALHO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 25
    end
    object dbRelReceberppField27: TppField
      FieldAlias = 'DATA_ULT_BX'
      FieldName = 'DATA_ULT_BX'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 26
    end
    object dbRelReceberppField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 27
    end
    object dbRelReceberppField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'MULTA'
      FieldName = 'MULTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 28
    end
    object dbRelReceberppField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCTO_RES'
      FieldName = 'DESCTO_RES'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 29
    end
    object dbRelReceberppField31: TppField
      FieldAlias = 'ARQ_MORTO'
      FieldName = 'ARQ_MORTO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 30
    end
    object dbRelReceberppField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDA'
      FieldName = 'VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 31
    end
    object dbRelReceberppField33: TppField
      FieldAlias = 'NOME_CLIENTE'
      FieldName = 'NOME_CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 32
    end
    object dbRelReceberppField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_COMISSAO'
      FieldName = 'VLR_COMISSAO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 33
    end
    object dbRelReceberppField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCENTAGEM'
      FieldName = 'PORCENTAGEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 34
    end
    object dbRelReceberppField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object dbRelReceberppField37: TppField
      FieldAlias = 'CIDADE_NOME'
      FieldName = 'CIDADE_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object dbRelReceberppField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 37
    end
  end
  object dsRelReceber: TDataSource
    DataSet = DMRelatorios.qryRelReceber
    Left = 348
    Top = 28
  end
  object dsTipoDocto: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelTipoDocto2
    Left = 240
    Top = 232
  end
  object ppRecebidas: TppDBPipeline
    DataSource = dsRecebidas
    UserName = 'ppRecebidas'
    Left = 317
    Top = 68
    object ppRecebidasppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField3: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField4: TppField
      FieldAlias = 'CODIGO_CR'
      FieldName = 'CODIGO_CR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField5: TppField
      FieldAlias = 'ANO_CR'
      FieldName = 'ANO_CR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField6: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField7: TppField
      FieldAlias = 'DT_BAIXA'
      FieldName = 'DT_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField8: TppField
      FieldAlias = 'HISTORICO_BX'
      FieldName = 'HISTORICO_BX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField9: TppField
      FieldAlias = 'VLR_BAIXA'
      FieldName = 'VLR_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField10: TppField
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField11: TppField
      FieldAlias = 'DESCONTOS'
      FieldName = 'DESCONTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField12: TppField
      FieldAlias = 'PLANILHA'
      FieldName = 'PLANILHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField13: TppField
      FieldAlias = 'TAXA_JUROS'
      FieldName = 'TAXA_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField14: TppField
      FieldAlias = 'TIPO_JUROS'
      FieldName = 'TIPO_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField15: TppField
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField16: TppField
      FieldAlias = 'DT_EMISSAO'
      FieldName = 'DT_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField17: TppField
      FieldAlias = 'DT_VENCTO'
      FieldName = 'DT_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField18: TppField
      FieldAlias = 'DT_LANCTO'
      FieldName = 'DT_LANCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField19: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField20: TppField
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField21: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField22: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField23: TppField
      FieldAlias = 'VLR_PARCIAL'
      FieldName = 'VLR_PARCIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField24: TppField
      FieldAlias = 'JUROS_REC'
      FieldName = 'JUROS_REC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField25: TppField
      FieldAlias = 'DESCONTOS_REC'
      FieldName = 'DESCONTOS_REC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField26: TppField
      FieldAlias = 'BOLETO'
      FieldName = 'BOLETO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField27: TppField
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField28: TppField
      FieldAlias = 'CODIGO_VN'
      FieldName = 'CODIGO_VN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField29: TppField
      FieldAlias = 'ANO_VN'
      FieldName = 'ANO_VN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField30: TppField
      FieldAlias = 'AVISO'
      FieldName = 'AVISO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField31: TppField
      FieldAlias = 'DT_AVISO'
      FieldName = 'DT_AVISO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField32: TppField
      FieldAlias = 'FATURA'
      FieldName = 'FATURA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField33: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField34: TppField
      FieldAlias = 'NUMBOLETO'
      FieldName = 'NUMBOLETO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField35: TppField
      FieldAlias = 'NUMDUPLICATA'
      FieldName = 'NUMDUPLICATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField36: TppField
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField37: TppField
      FieldAlias = 'TURNO'
      FieldName = 'TURNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField38: TppField
      FieldAlias = 'COBRADOR'
      FieldName = 'COBRADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField39: TppField
      FieldAlias = 'LOCAL_COBRANCA'
      FieldName = 'LOCAL_COBRANCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField40: TppField
      FieldAlias = 'CODIGO_TRC'
      FieldName = 'CODIGO_TRC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField41: TppField
      FieldAlias = 'VLR_ORIG_ALT'
      FieldName = 'VLR_ORIG_ALT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField42: TppField
      FieldAlias = 'BAIXA_BLT'
      FieldName = 'BAIXA_BLT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField43: TppField
      FieldAlias = 'BLT_NOSSO_NUM'
      FieldName = 'BLT_NOSSO_NUM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField44: TppField
      FieldAlias = 'BLT_BANCO'
      FieldName = 'BLT_BANCO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppRecebidasppField45: TppField
      FieldAlias = 'BLT_REM_GERADA'
      FieldName = 'BLT_REM_GERADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
  end
  object dsRecebidas: TDataSource
    DataSet = DMRelatorios.qryRelRecebidas
    Left = 348
    Top = 68
  end
  object dsCobranca: TDataSource
    DataSet = DMRelatorios.qryRelCobRec
    Left = 348
    Top = 104
  end
  object ppCobranca: TppDBPipeline
    DataSource = dsCobranca
    UserName = 'ppCobranca'
    Left = 317
    Top = 104
    object ppCobrancappField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField2: TppField
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField3: TppField
      FieldAlias = 'DATA_COBRANCA'
      FieldName = 'DATA_COBRANCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField4: TppField
      FieldAlias = 'RECEBER'
      FieldName = 'RECEBER'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField5: TppField
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField6: TppField
      FieldAlias = 'MOTIVO'
      FieldName = 'MOTIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField7: TppField
      FieldAlias = 'COBRAR_EM'
      FieldName = 'COBRAR_EM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField8: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField9: TppField
      FieldAlias = 'PAGO_EM'
      FieldName = 'PAGO_EM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField10: TppField
      FieldAlias = 'NOME_MOTIVO'
      FieldName = 'NOME_MOTIVO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField11: TppField
      FieldAlias = 'COBRADOR'
      FieldName = 'COBRADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField12: TppField
      FieldAlias = 'NOME_COBRADOR'
      FieldName = 'NOME_COBRADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField13: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField14: TppField
      FieldAlias = 'SELECIONADO'
      FieldName = 'SELECIONADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField15: TppField
      FieldAlias = 'INDICE'
      FieldName = 'INDICE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField16: TppField
      FieldAlias = 'DT_INSERT'
      FieldName = 'DT_INSERT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField17: TppField
      FieldAlias = 'HR_COBRAR_EM'
      FieldName = 'HR_COBRAR_EM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppCobrancappField18: TppField
      FieldAlias = 'HR_COBRANCA'
      FieldName = 'HR_COBRANCA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
  end
  object dsVendas: TDataSource
    DataSet = DMRelatorios.qryRelVDRec
    Left = 348
    Top = 136
  end
  object ppVendas: TppDBPipeline
    DataSource = dsVendas
    UserName = 'ppVendas'
    Left = 317
    Top = 136
    object ppVendasppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppVendasppField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppVendasppField3: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppVendasppField4: TppField
      FieldAlias = 'DESC_ACRES'
      FieldName = 'DESC_ACRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppVendasppField5: TppField
      FieldAlias = 'VD_TOTAL'
      FieldName = 'VD_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppVendasppField6: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppVendasppField7: TppField
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppVendasppField8: TppField
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppVendasppField9: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppVendasppField10: TppField
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppVendasppField11: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppVendasppField12: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppVendasppField13: TppField
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object dsRotas: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelRota
    Left = 208
    Top = 180
  end
  object ExtraOptions: TExtraOptions
    About = 'TExtraDevices 2.92'
    HTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    HTML.BackLink = '&lt&lt'
    HTML.ForwardLink = '&gt&gt'
    HTML.ShowLinks = True
    HTML.UseTextFileName = False
    HTML.ZoomableImages = False
    HTML.Visible = True
    HTML.PixelFormat = pf8bit
    HTML.SingleFileOutput = False
    XHTML.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    XHTML.BackLink = '&lt&lt'
    XHTML.ForwardLink = '&gt&gt'
    XHTML.ShowLinks = True
    XHTML.UseTextFileName = False
    XHTML.ZoomableImages = False
    XHTML.Visible = True
    XHTML.PixelFormat = pf8bit
    XHTML.SingleFileOutput = False
    RTF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    RTF.Visible = True
    RTF.RichTextAsImage = False
    RTF.UseTextBox = True
    RTF.PixelFormat = pf8bit
    RTF.PixelsPerInch = 96
    Lotus.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Lotus.Visible = True
    Lotus.ColSpacing = 16934
    Quattro.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Quattro.Visible = True
    Quattro.ColSpacing = 16934
    Excel.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Excel.Visible = True
    Excel.ColSpacing = 16934
    Excel.RowSizing = False
    Excel.AutoConvertToNumber = True
    Graphic.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    Graphic.PixelFormat = pf8bit
    Graphic.UseTextFileName = False
    Graphic.Visible = True
    Graphic.PixelsPerInch = 96
    Graphic.GrayScale = False
    PDF.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    PDF.FastCompression = False
    PDF.CompressImages = True
    PDF.ScaleImages = True
    PDF.Visible = True
    PDF.RichTextAsImage = False
    PDF.RichEditPixelFormat = pf1bit
    PDF.PixelFormat = pf24bit
    PDF.PixelsPerInch = 96
    PDF.Permissions = [ppPrint, ppModify, ppCopy, ppModifyAnnot]
    PDF.ViewerPreferences = []
    PDF.AutoEmbedFonts = True
    PDF.ImageFormat = riBitmap
    DotMatrix.ItemsToExport = [reText, reImage, reLine, reShape, reRTF, reBarCode, reCheckBox]
    DotMatrix.Visible = True
    DotMatrix.CharsPerInch = cs10CPI
    DotMatrix.LinesPerInch = ls6LPI
    DotMatrix.Port = 'LPT1'
    DotMatrix.ContinousPaper = False
    DotMatrix.PrinterType = ptEpson
    Left = 248
    Top = 32
  end
  object stgfRelReceber2: TcxPropertiesStore
    Components = <
      item
        Component = ckComplementar
        Properties.Strings = (
          'About'
          'Action'
          'Alignment'
          'AlignmentVertical'
          'AllowGrayed'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Cursor'
          'CustomGlyphs'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HighlightColor'
          'Hint'
          'Left'
          'LightTextStyle'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'State'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'TextStyle'
          'Top'
          'Transparent'
          'TransparentColor'
          'UseCustomGlyphs'
          'Visible'
          'Width'
          'WinMaskColor')
      end
      item
        Component = DataFinal
        Properties.Strings = (
          'About'
          'Anchors'
          'BiDiMode'
          'CalAlignment'
          'CalColors'
          'Checked'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateFormat'
          'DateMode'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DropColumns'
          'DropRows'
          'Enabled'
          'FirstDayOfWeek'
          'FlatButtons'
          'Font'
          'Format'
          'FrameColor'
          'FrameController'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Kind'
          'Left'
          'MaxDate'
          'MinDate'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'ParseInput'
          'PopupMenu'
          'ShowCheckbox'
          'ShowHint'
          'ShowToday'
          'ShowTodayCircle'
          'ShowWeekNumbers'
          'TabOrder'
          'TabStop'
          'Tag'
          'Time'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = DataInicial
        Properties.Strings = (
          'About'
          'Anchors'
          'BiDiMode'
          'CalAlignment'
          'CalColors'
          'Checked'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateFormat'
          'DateMode'
          'DragCursor'
          'DragKind'
          'DragMode'
          'DropColumns'
          'DropRows'
          'Enabled'
          'FirstDayOfWeek'
          'FlatButtons'
          'Font'
          'Format'
          'FrameColor'
          'FrameController'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Kind'
          'Left'
          'MaxDate'
          'MinDate'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'ParseInput'
          'PopupMenu'
          'ShowCheckbox'
          'ShowHint'
          'ShowToday'
          'ShowTodayCircle'
          'ShowWeekNumbers'
          'TabOrder'
          'TabStop'
          'Tag'
          'Time'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edAs1
        Properties.Strings = (
          'Align'
          'Alignment'
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Caption'
          'Color'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Font'
          'Height'
          'Hint'
          'Layout'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowAccelChar'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = edtVlrFinal
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtVlrInicial
        Properties.Strings = (
          'About'
          'Align'
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'CharCase'
          'CheckRange'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DisplayFormat'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'FrameSides'
          'FrameStyle'
          'FrameVisible'
          'Height'
          'HelpContext'
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'IntegersOnly'
          'Left'
          'Max'
          'MaxLength'
          'Min'
          'Name'
          'OEMConvert'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupMenu'
          'ReadOnly'
          'ShowHint'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = Rd1
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd10
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd11
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd13
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd14
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd15
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd16
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd17
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd18
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd19
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = Rd2
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd20
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd21
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd22
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width'
          'WordWrap')
      end
      item
        Component = Rd3
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = Rd4
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = Rd5
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = Rd6
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd7
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd8
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = rd9
        Properties.Strings = (
          'Action'
          'Alignment'
          'Anchors'
          'BiDiMode'
          'Caption'
          'Checked'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'Height'
          'HelpContext'
          'Hint'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end>
    StorageName = 'stgfRelReceber2'
    Left = 144
    Top = 215
  end
  object dsCidade: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelCidade
    Left = 296
    Top = 188
  end
end
