object frmFiltraManBoleto: TfrmFiltraManBoleto
  Left = 383
  Top = 118
  Width = 447
  Height = 479
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Manuten'#231#227'o de Boletos'
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
    Width = 439
    Height = 452
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
    object b2: TBevel
      Left = 8
      Top = 28
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 6
      Caption = 'Manuten'#231#227'o de Boletos'
      ParentFont = False
      Transparent = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 418
      Width = 435
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      object BtnOk: TcxButton
        Left = 259
        Top = 4
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActPreview
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
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
        Left = 339
        Top = 4
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Action = ActFechar
        Cancel = True
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
    end
    object GroupBox2: TGroupBox
      Left = 16
      Top = 37
      Width = 409
      Height = 166
      Caption = 'Geral'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label11: TcxLabel
        Left = 37
        Top = 130
        Caption = 'Regi'#227'o'
        ParentFont = False
        Transparent = True
      end
      object Label9: TcxLabel
        Left = 37
        Top = 24
        Caption = 'Cliente'
        ParentFont = False
        Transparent = True
      end
      object Label7: TcxLabel
        Left = 9
        Top = 51
        Caption = 'Classifica'#231#227'o'
        ParentFont = False
        Transparent = True
      end
      object Label8: TcxLabel
        Left = 12
        Top = 78
        Caption = 'L. Cobranca'
        ParentFont = False
        Transparent = True
      end
      object Label12: TcxLabel
        Left = 24
        Top = 104
        Caption = 'Vendedor'
        ParentFont = False
        Transparent = True
      end
      object cmbRegiao: TdxLookupEdit
        Left = 72
        Top = 126
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
        Top = 47
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
        Top = 20
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
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsClientes
        LookupKeyValue = Null
      end
      object cmbLocalCob: TdxLookupEdit
        Left = 72
        Top = 74
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
        Top = 100
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
    end
    object gbSituacao: TGroupBox
      Left = 15
      Top = 292
      Width = 258
      Height = 45
      Caption = 'Situa'#231#227'o'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
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
    object GroupBox4: TGroupBox
      Left = 336
      Top = 206
      Width = 89
      Height = 78
      Caption = 'Arq. Morto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object rd9: TRadioButton
        Left = 10
        Top = 17
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
        Left = 10
        Top = 37
        Width = 49
        Height = 17
        Caption = 'N'#227'o'
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
        Left = 10
        Top = 57
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
      Left = 216
      Top = 343
      Width = 208
      Height = 55
      Caption = 'Valores (R$) '
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      object Label1: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
        Transparent = True
      end
      object Label6: TcxLabel
        Left = 107
        Top = 23
        Caption = 'Final'
        Transparent = True
      end
      object edtVlrInicial: TcxCurrencyEdit
        Left = 39
        Top = 19
        Width = 61
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
        Left = 133
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
    object gpAgendamentos: TGroupBox
      Left = 15
      Top = 343
      Width = 194
      Height = 55
      Caption = 'N'#186' Impress'#245'es'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 5
      object Label2: TcxLabel
        Left = 8
        Top = 23
        Caption = 'Inicial'
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 104
        Top = 23
        Caption = 'Final'
        Transparent = True
      end
      object rdAgend1: TcxSpinEdit
        Left = 41
        Top = 19
        Width = 56
        Height = 21
        FlatButtons = True
        FrameHotTrack = True
        FrameHotStyle = fsLowered
        FrameStyle = fsStatus
        FrameVisible = True
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
      end
      object rdAgend2: TcxSpinEdit
        Left = 131
        Top = 19
        Width = 54
        Height = 21
        Value = 20.000000000000000000
        FlatButtons = True
        FrameHotTrack = True
        FrameHotStyle = fsLowered
        FrameStyle = fsStatus
        FrameVisible = True
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
      end
    end
    object GroupBox1: TGroupBox
      Left = 280
      Top = 292
      Width = 144
      Height = 45
      Caption = 'Acesso Direto'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 4
      object Label13: TcxLabel
        Left = 6
        Top = 20
        Caption = 'C'#243'd. Receber'
        Transparent = True
      end
      object RzNumericEdit1: TcxCurrencyEdit
        Left = 78
        Top = 16
        Width = 59
        Height = 21
        FrameHotTrack = True
        FrameHotStyle = fsLowered
        FrameStyle = fsStatus
        FrameVisible = True
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        DisplayFormat = '0'
      end
    end
    object gbData: TGroupBox
      Left = 16
      Top = 207
      Width = 313
      Height = 79
      Caption = 'Data'
      Color = clCaptionText
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      object Label4: TcxLabel
        Left = 148
        Top = 48
        Caption = 'Final'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 10
        Top = 48
        Caption = 'Inicial'
        ParentFont = False
        Transparent = True
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
        Caption = 'Lan'#231'amento'
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
        Left = 175
        Top = 44
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
        Caption = 'Emiss'#227'o'
        TabOrder = 2
        OnKeyDown = FormKeyDown
      end
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
      Caption = '&Ok'
      OnExecute = ActPreviewExecute
    end
  end
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelPessoasFJ
    Left = 264
    Top = 20
  end
  object dsClassificao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelClassif
    Left = 264
    Top = 52
  end
  object dsLocalCob: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelLocalCob
    Left = 264
    Top = 84
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelVendedor
    Left = 264
    Top = 116
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelRegiao
    Left = 264
    Top = 148
  end
end
