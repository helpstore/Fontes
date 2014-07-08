object fRelPagar2: TfRelPagar2
  Left = 320
  Top = 122
  Width = 447
  Height = 507
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Relat'#243'rio de Contas '#224' Pagar'
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
  OnKeyDown = FormKeyDown
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 431
    Height = 469
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
      Top = 34
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 12
      Caption = 'Relat'#243'rio de Contas '#224' Pagar'
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 2
      Top = 435
      Width = 427
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
        Action = ActOk
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
      Top = 48
      Width = 409
      Height = 112
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
      object Label9: TcxLabel
        Left = 15
        Top = 23
        Caption = 'Credor'
        ParentFont = False
      end
      object Label7: TcxLabel
        Left = 6
        Top = 51
        Caption = 'C. Custo'
        ParentFont = False
      end
      object cmbCCusto: TdxLookupEdit
        Left = 51
        Top = 47
        Width = 342
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
        OnKeyDown = IniKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCCusto
        LookupKeyValue = Null
      end
      object cmbCredor: TdxLookupEdit
        Left = 51
        Top = 19
        Width = 342
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
        OnKeyDown = IniKeyDown
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsFornecedor
        LookupKeyValue = Null
      end
      object cmbContrato: TdxLookupEdit
        Left = 51
        Top = 74
        Width = 342
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
        ClearKey = 46
        ListFieldName = 'DESCRICAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsSelContrato
        LookupKeyValue = Null
      end
      object Label11: TcxLabel
        Left = 6
        Top = 77
        Caption = 'Contrato'
        ParentFont = False
      end
    end
    object gbData: TGroupBox
      Left = 16
      Top = 163
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
        Left = 141
        Top = 52
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 10
        Top = 48
        Caption = 'Inicial'
        ParentFont = False
      end
      object edAs1: TcxLabel
        Left = 133
        Top = 41
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object edAs3: TcxLabel
        Tag = 1
        Left = 269
        Top = 38
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
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
      end
      object Rd2: TRadioButton
        Left = 99
        Top = 19
        Width = 89
        Height = 17
        Caption = 'Lan'#231'amento'
        TabOrder = 1
      end
      object DataInicial: TcxDateEdit
        Left = 40
        Top = 44
        EditValue = 36526.3833060185d
        ParentFont = False
        TabOrder = 3
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = IniKeyDown
        Width = 89
      end
      object DataFinal: TcxDateEdit
        Left = 168
        Top = 45
        EditValue = 0.383306018498843d
        ParentFont = False
        TabOrder = 4
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = IniKeyDown
        Width = 97
      end
      object Rd3: TRadioButton
        Left = 190
        Top = 19
        Width = 57
        Height = 17
        Caption = 'Emiss'#227'o'
        TabOrder = 2
      end
    end
    object GroupBox5: TGroupBox
      Left = 311
      Top = 163
      Width = 114
      Height = 78
      Caption = 'Impress'#227'o'
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
        Caption = 'Anal'#237'tico'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rd8: TRadioButton
        Left = 8
        Top = 49
        Width = 65
        Height = 17
        Caption = 'Sint'#233'tico'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
      end
    end
    object gbSituacao: TGroupBox
      Left = 16
      Top = 244
      Width = 211
      Height = 50
      Caption = 'Situa'#231#227'o'
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
        Top = 24
        Width = 99
        Height = 17
        Caption = 'Bx. Parcial'
        TabOrder = 0
      end
      object Rd5: TRadioButton
        Left = 81
        Top = 24
        Width = 57
        Height = 17
        Caption = 'Integral'
        TabOrder = 1
      end
      object Rd6: TRadioButton
        Left = 142
        Top = 26
        Width = 54
        Height = 12
        Caption = 'Ambos'
        Checked = True
        TabOrder = 2
        TabStop = True
      end
    end
    object GroupBox1: TGroupBox
      Left = 15
      Top = 299
      Width = 213
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
      TabOrder = 5
      object Label2: TcxLabel
        Left = 3
        Top = 22
        Caption = 'Cod.'
      end
      object Label3: TcxLabel
        Left = 80
        Top = 22
        Caption = 'Origem'
      end
      object edtNdoc: TEdit
        Left = 26
        Top = 18
        Width = 47
        Height = 21
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = IniKeyDown
      end
      object cmbOrigem: TComboBox
        Left = 117
        Top = 17
        Width = 92
        Height = 21
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 13
        ParentFont = False
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = IniKeyDown
        Items.Strings = (
          'Entrada NF'
          'Manual')
      end
    end
    object gbValor: TGroupBox
      Left = 232
      Top = 245
      Width = 194
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
      TabOrder = 6
      object Label1: TcxLabel
        Left = 6
        Top = 23
        Caption = 'Inicial'
      end
      object Label6: TcxLabel
        Left = 97
        Top = 23
        Caption = 'Final'
      end
      object edtVlrInicial: TcxCurrencyEdit
        Left = 37
        Top = 19
        Properties.DisplayFormat = '###,##0.00'
        Properties.NullString = '0'
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = IniKeyDown
        Width = 57
      end
      object edtVlrFinal: TcxCurrencyEdit
        Left = 123
        Top = 19
        EditValue = 100000.000000000000000000
        Properties.DisplayFormat = '###,##0.00'
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = IniKeyDown
        Width = 65
      end
    end
    object GroupBox3: TGroupBox
      Left = 15
      Top = 350
      Width = 408
      Height = 72
      Caption = 'Op'#231#245'es de Quebra'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      object rd13: TRadioButton
        Left = 7
        Top = 19
        Width = 66
        Height = 17
        Caption = 'Credor'
        TabOrder = 0
      end
      object rd14: TRadioButton
        Left = 67
        Top = 19
        Width = 65
        Height = 17
        Caption = 'Emiss'#227'o'
        TabOrder = 1
      end
      object rd15: TRadioButton
        Left = 137
        Top = 19
        Width = 81
        Height = 17
        Caption = 'Vencimento'
        TabOrder = 2
      end
      object rd16: TRadioButton
        Left = 231
        Top = 19
        Width = 81
        Height = 17
        Caption = 'Lan'#231'amento'
        TabOrder = 3
      end
      object rd17: TRadioButton
        Left = 329
        Top = 19
        Width = 67
        Height = 17
        Caption = 'C. Custo'
        TabOrder = 4
      end
      object RadioButton1: TRadioButton
        Left = 7
        Top = 42
        Width = 82
        Height = 17
        Caption = 'Pagamento'
        TabOrder = 5
      end
      object rdContrato: TRadioButton
        Left = 90
        Top = 42
        Width = 82
        Height = 17
        Caption = 'Contrato'
        TabOrder = 6
      end
    end
    object ckComplementar: TcxCheckBox
      Left = 233
      Top = 328
      Caption = 'Exibir Dados Complementares'
      ParentFont = False
      State = cbsGrayed
      TabOrder = 8
      Width = 164
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
    object ActOk: TAction
      Tag = 1
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object DsFornecedor: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelFornecedor
    Left = 176
    Top = 56
  end
  object dsCCusto: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelCentro
    Left = 176
    Top = 96
  end
  object rptRelPagar: TppReport
    AutoStop = False
    DataPipeline = dbRelPagar
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
    PreviewFormSettings.ZoomSetting = zs100Percent
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 288
    Top = 4
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelPagar'
    object ppTitleBand6: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppSubCCusto: TppSubReport
        UserName = 'SubCCusto'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelPagar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport8: TppChildReport
          AutoStop = False
          DataPipeline = dbRelPagar
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
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelPagar'
          object ppHeaderBand8: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLabel114: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Origem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 63236
              mmTop = 1323
              mmWidth = 9948
              BandType = 0
            end
            object ppLabel115: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'N'#186' Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 80169
              mmTop = 1323
              mmWidth = 12435
              BandType = 0
            end
            object ppLabel116: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'PCL'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 93398
              mmTop = 1323
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel117: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 126736
              mmTop = 1323
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
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel118: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 112977
              mmTop = 1323
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel119: TppLabel
              UserName = 'Label12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 100542
              mmTop = 1323
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel120: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1323
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel121: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 146579
              mmTop = 1323
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel125: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 162190
              mmTop = 1323
              mmWidth = 15346
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
              Caption = 'Credor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 12965
              mmTop = 1323
              mmWidth = 17727
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
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 1323
              mmWidth = 11113
              BandType = 0
            end
          end
          object ppDetailBand9: TppDetailBand
            BeforePrint = ImprimeHistorico
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
            mmHeight = 17992
            mmPrintPosition = 0
            object ppDBText99: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ORIGEM'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3598
              mmLeft = 63236
              mmTop = 0
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText100: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 80169
              mmTop = 0
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText101: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 93663
              mmTop = 0
              mmWidth = 5672
              BandType = 4
            end
            object ppDBText102: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 100542
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText103: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 112977
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText104: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 126736
              mmTop = 0
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText105: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_ULTIMA_BAIXA'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 146579
              mmTop = 0
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText106: TppDBText
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 162190
              mmTop = 0
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText109: TppDBText
              UserName = 'DBText13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Saldo'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText98: TppDBText
              UserName = 'DBText98'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'cod_nome_fornecedor'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2879
              mmLeft = 12700
              mmTop = 0
              mmWidth = 48948
              BandType = 4
            end
            object ppDBText56: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText56'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2921
              mmLeft = 94986
              mmTop = 5821
              mmWidth = 54504
              BandType = 4
            end
            object ppLabel62: TppLabel
              OnPrint = lb7Print
              UserName = 'Label62'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hist'#243'rico:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 80433
              mmTop = 5292
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText70: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText70'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 50800
              mmTop = 5821
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel65: TppLabel
              OnPrint = lb7Print
              UserName = 'Label65'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 38100
              mmTop = 5292
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText84: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText84'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 14288
              mmTop = 5821
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel81: TppLabel
              OnPrint = lb7Print
              UserName = 'Label81'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 6350
              mmTop = 5292
              mmWidth = 7747
              BandType = 4
            end
            object ppSubPagas2: TppSubReport
              OnPrint = ppSubPagas1Print
              UserName = 'SubPagas2'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppPagas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12965
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport11: TppChildReport
                AutoStop = False
                DataPipeline = ppPagas
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
                Left = 216
                Top = 256
                Version = '12.03'
                mmColumnWidth = 0
                DataPipelineName = 'ppPagas'
                object ppTitleBand3: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel157: TppLabel
                    UserName = 'Label150'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hist'#243'rico'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Conta'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Ellipsis = False
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
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText140: TppDBText
                    UserName = 'DBText133'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText141: TppDBText
                    UserName = 'DBText134'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = 'dd/mm/yyyy'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText142: TppDBText
                    UserName = 'DBText135'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText143: TppDBText
                    UserName = 'DBText136'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand11: TppSummaryBand
                  AlignToBottom = False
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
            object ppDBText2: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_PAGAR'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 529
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
          end
          object ppSummaryBand8: TppSummaryBand
            AlignToBottom = False
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
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
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
            object ppDBCalc85: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3387
              mmLeft = 110024
              mmTop = 4498
              mmWidth = 34967
              BandType = 7
            end
            object ppDBCalc86: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3387
              mmLeft = 149215
              mmTop = 4763
              mmWidth = 28321
              BandType = 7
            end
            object ppDBCalc89: TppDBCalc
              UserName = 'DBCalc11'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3387
              mmLeft = 178924
              mmTop = 4763
              mmWidth = 18457
              BandType = 7
            end
          end
          object ppGroup8: TppGroup
            BreakName = 'CCT_NOME'
            DataPipeline = dbRelPagar
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelPagar'
            NewFile = False
            object ppGroupHeaderBand8: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel128: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'C. Custo:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 15663
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
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CCT_NOME'
                DataPipeline = dbRelPagar
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3683
                mmLeft = 23548
                mmTop = 3440
                mmWidth = 889
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand8: TppGroupFooterBand
              HideWhenOneDetail = False
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
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3387
                mmLeft = 110024
                mmTop = 1323
                mmWidth = 34967
                BandType = 5
                GroupNo = 0
              end
              object ppLabel130: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total Cliente:'
                Ellipsis = False
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
              object ppDBCalc92: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3387
                mmLeft = 149215
                mmTop = 1323
                mmWidth = 28321
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc95: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3387
                mmLeft = 178924
                mmTop = 1323
                mmWidth = 18457
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
      object ppSubLancto: TppSubReport
        UserName = 'SubLancto'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelPagar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = dbRelPagar
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
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelPagar'
          object ppHeaderBand4: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLabel32: TppLabel
              UserName = 'Label32'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Origem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65352
              mmTop = 1323
              mmWidth = 9948
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
              Caption = 'N'#186' Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 82286
              mmTop = 1323
              mmWidth = 12435
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
              Caption = 'PCL'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 95515
              mmTop = 1323
              mmWidth = 5673
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
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 128852
              mmTop = 1323
              mmWidth = 18256
              BandType = 0
            end
            object ppLine13: TppLine
              UserName = 'Line13'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 794
              mmTop = 4763
              mmWidth = 196850
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
              Caption = 'Vencto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 115094
              mmTop = 1323
              mmWidth = 11377
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
              Caption = 'Lancto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 102659
              mmTop = 1323
              mmWidth = 11377
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
              Caption = 'Saldo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180446
              mmTop = 1323
              mmWidth = 17198
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
              Caption = 'Ult. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 148696
              mmTop = 1323
              mmWidth = 13758
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
              Caption = 'Bx. Parcial'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 164307
              mmTop = 1323
              mmWidth = 15346
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
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 0
              mmTop = 795
              mmWidth = 11113
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
              Caption = 'Credor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 12700
              mmTop = 795
              mmWidth = 17727
              BandType = 0
            end
          end
          object ppDetailBand4: TppDetailBand
            BeforePrint = ImprimeHistorico
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
            mmHeight = 17991
            mmPrintPosition = 0
            object ppSubPagas5: TppSubReport
              UserName = 'SubPagas5'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppPagas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12964
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport14: TppChildReport
                AutoStop = False
                DataPipeline = ppPagas
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
                Left = 216
                Top = 256
                Version = '12.03'
                mmColumnWidth = 0
                DataPipelineName = 'ppPagas'
                object ppTitleBand7: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel174: TppLabel
                    UserName = 'Label150'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hist'#243'rico'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Conta'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Ellipsis = False
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
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText152: TppDBText
                    UserName = 'DBText133'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText153: TppDBText
                    UserName = 'DBText134'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = 'dd/mm/yyyy'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText154: TppDBText
                    UserName = 'DBText135'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText155: TppDBText
                    UserName = 'DBText136'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand14: TppSummaryBand
                  AlignToBottom = False
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
            object ppDBText28: TppDBText
              UserName = 'DBText28'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ORIGEM'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3598
              mmLeft = 65352
              mmTop = 0
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText33'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 82286
              mmTop = 0
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText42: TppDBText
              UserName = 'DBText42'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 95779
              mmTop = 0
              mmWidth = 5672
              BandType = 4
            end
            object ppDBText43: TppDBText
              UserName = 'DBText43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 102659
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText44: TppDBText
              UserName = 'DBText44'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 115094
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText45: TppDBText
              UserName = 'DBText45'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 128852
              mmTop = 0
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText46'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_ULTIMA_BAIXA'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 148696
              mmTop = 0
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText47: TppDBText
              UserName = 'DBText102'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 164307
              mmTop = 0
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText48: TppDBText
              UserName = 'DBText48'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Saldo'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 180446
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText50: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText50'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2921
              mmLeft = 97102
              mmTop = 7938
              mmWidth = 54504
              BandType = 4
            end
            object ppLabel57: TppLabel
              OnPrint = lb7Print
              UserName = 'Label57'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hist'#243'rico:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 82550
              mmTop = 7408
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText51: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText701'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 52917
              mmTop = 7938
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel58: TppLabel
              OnPrint = lb7Print
              UserName = 'Label58'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 40217
              mmTop = 7408
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText52: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText52'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 16404
              mmTop = 7938
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel59: TppLabel
              OnPrint = lb7Print
              UserName = 'Label59'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 8467
              mmTop = 7408
              mmWidth = 7747
              BandType = 4
            end
            object ppDBText49: TppDBText
              UserName = 'DBText49'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'cod_nome_fornecedor'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 12700
              mmTop = 529
              mmWidth = 50800
              BandType = 4
            end
            object ppDBText53: TppDBText
              UserName = 'DBText53'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_PAGAR'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 0
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel61: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
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
            object ppLine14: TppLine
              UserName = 'Line14'
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
            object ppDBCalc36: TppDBCalc
              UserName = 'DBCalc36'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 114510
              mmTop = 4498
              mmWidth = 32597
              BandType = 7
            end
            object ppDBCalc37: TppDBCalc
              UserName = 'DBCalc37'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 153408
              mmTop = 4763
              mmWidth = 26247
              BandType = 7
            end
            object ppDBCalc38: TppDBCalc
              UserName = 'DBCalc38'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 179536
              mmTop = 4763
              mmWidth = 17780
              BandType = 7
            end
          end
          object ppGroup4: TppGroup
            BreakName = 'DT_LANCTO'
            DataPipeline = dbRelPagar
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelPagar'
            NewFile = False
            object ppGroupHeaderBand4: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel63: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Lancto:'
                Ellipsis = False
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
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_LANCTO'
                DataPipeline = dbRelPagar
                DisplayFormat = 'dd/mm/yyyy'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3683
                mmLeft = 25665
                mmTop = 3440
                mmWidth = 19219
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand4: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 13758
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
              object ppDBCalc10: TppDBCalc
                UserName = 'DBCalc10'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 128852
                mmTop = 1323
                mmWidth = 18255
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc11: TppDBCalc
                UserName = 'DBCalc101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 164308
                mmTop = 1323
                mmWidth = 15347
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc12: TppDBCalc
                UserName = 'DBCalc12'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'Saldo'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup4
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 176828
                mmTop = 1323
                mmWidth = 20490
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
        DataPipelineName = 'dbRelPagar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = dbRelPagar
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
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelPagar'
          object ppHeaderBand3: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLabel33: TppLabel
              UserName = 'Label33'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Origem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 67469
              mmTop = 1588
              mmWidth = 9948
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
              Caption = 'N'#186' Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 84402
              mmTop = 1588
              mmWidth = 12435
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
              Caption = 'PCL'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 97631
              mmTop = 1588
              mmWidth = 5673
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
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 130969
              mmTop = 1588
              mmWidth = 18256
              BandType = 0
            end
            object ppLine9: TppLine
              UserName = 'Line9'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 794
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel38: TppLabel
              UserName = 'Label501'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 117211
              mmTop = 1588
              mmWidth = 11377
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
              Caption = 'Lancto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 104775
              mmTop = 1588
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel40: TppLabel
              UserName = 'Label40'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180446
              mmTop = 1588
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel41: TppLabel
              UserName = 'Label41'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 150813
              mmTop = 1588
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel42: TppLabel
              UserName = 'Label42'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 166423
              mmTop = 1588
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel43: TppLabel
              UserName = 'Label43'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 265
              mmTop = 1323
              mmWidth = 11113
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
              Caption = 'Credor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 12965
              mmTop = 1323
              mmWidth = 17727
              BandType = 0
            end
          end
          object ppDetailBand3: TppDetailBand
            BeforePrint = ImprimeHistorico
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
            mmHeight = 17991
            mmPrintPosition = 0
            object ppSubPagas6: TppSubReport
              UserName = 'SubPagas6'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppPagas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12965
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport5: TppChildReport
                AutoStop = False
                DataPipeline = ppPagas
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
                Left = 216
                Top = 256
                Version = '12.03'
                mmColumnWidth = 0
                DataPipelineName = 'ppPagas'
                object ppTitleBand2: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel45: TppLabel
                    UserName = 'Label150'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Ellipsis = False
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
                  object ppLabel47: TppLabel
                    UserName = 'Label151'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hist'#243'rico'
                    Ellipsis = False
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
                  object ppLine10: TppLine
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
                  object ppLabel60: TppLabel
                    UserName = 'Label160'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Conta'
                    Ellipsis = False
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
                  object ppLabel64: TppLabel
                    UserName = 'Label161'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Ellipsis = False
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
                  object ppLabel66: TppLabel
                    UserName = 'Label1501'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Ellipsis = False
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
                object ppDetailBand5: TppDetailBand
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText29: TppDBText
                    UserName = 'DBText133'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText30: TppDBText
                    UserName = 'DBText134'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = 'dd/mm/yyyy'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText31: TppDBText
                    UserName = 'DBText135'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText32: TppDBText
                    UserName = 'DBText136'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand5: TppSummaryBand
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine12: TppLine
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
            object ppDBText34: TppDBText
              UserName = 'DBText34'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ORIGEM'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3598
              mmLeft = 67469
              mmTop = 0
              mmWidth = 16139
              BandType = 4
            end
            object ppDBText35: TppDBText
              UserName = 'DBText35'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 84402
              mmTop = 0
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText36: TppDBText
              UserName = 'DBText36'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 97896
              mmTop = 0
              mmWidth = 5672
              BandType = 4
            end
            object ppDBText37: TppDBText
              UserName = 'DBText37'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 104775
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText38: TppDBText
              UserName = 'DBText38'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 117211
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText39: TppDBText
              UserName = 'DBText39'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 130969
              mmTop = 0
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText40: TppDBText
              UserName = 'DBText40'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_ULTIMA_BAIXA'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 150813
              mmTop = 0
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText54: TppDBText
              UserName = 'DBText54'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 166423
              mmTop = 0
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText57: TppDBText
              UserName = 'DBText57'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Saldo'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 180446
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText59: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText501'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2921
              mmLeft = 99219
              mmTop = 7938
              mmWidth = 54504
              BandType = 4
            end
            object ppLabel67: TppLabel
              OnPrint = lb7Print
              UserName = 'Label67'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hist'#243'rico:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 84667
              mmTop = 7408
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText60: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText60'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 55033
              mmTop = 7938
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel68: TppLabel
              OnPrint = lb7Print
              UserName = 'Label68'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 42333
              mmTop = 7408
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText61: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText61'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 18521
              mmTop = 7938
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel69: TppLabel
              OnPrint = lb7Print
              UserName = 'Label69'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 10583
              mmTop = 7408
              mmWidth = 7747
              BandType = 4
            end
            object ppDBText58: TppDBText
              UserName = 'DBText58'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'cod_nome_fornecedor'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 13758
              mmTop = 265
              mmWidth = 50800
              BandType = 4
            end
            object ppDBText62: TppDBText
              UserName = 'DBText62'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_PAGAR'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 0
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel70: TppLabel
              UserName = 'Label70'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 6085
              mmTop = 6350
              mmWidth = 17695
              BandType = 7
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 794
              mmTop = 4498
              mmWidth = 196850
              BandType = 7
            end
            object ppDBCalc28: TppDBCalc
              UserName = 'DBCalc28'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 116626
              mmTop = 5556
              mmWidth = 32597
              BandType = 7
            end
            object ppDBCalc29: TppDBCalc
              UserName = 'DBCalc29'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 155524
              mmTop = 5821
              mmWidth = 26247
              BandType = 7
            end
            object ppDBCalc30: TppDBCalc
              UserName = 'DBCalc30'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 179800
              mmTop = 5821
              mmWidth = 17780
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'DT_VENCTO'
            DataPipeline = dbRelPagar
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelPagar'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel46: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Vencto:'
                Ellipsis = False
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
                mmTop = 7938
                mmWidth = 189971
                BandType = 3
                GroupNo = 0
              end
              object ppDBText41: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_VENCTO'
                DataPipeline = dbRelPagar
                DisplayFormat = 'dd/mm/yyyy'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3683
                mmLeft = 25665
                mmTop = 3440
                mmWidth = 19219
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine17: TppLine
                UserName = 'Line17'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7938
                mmTop = 0
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc7: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 130968
                mmTop = 1323
                mmWidth = 18255
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc8: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'Saldo'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 180447
                mmTop = 1323
                mmWidth = 17198
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc9: TppDBCalc
                UserName = 'DBCalc9'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 166424
                mmTop = 1323
                mmWidth = 15347
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
        DataPipelineName = 'dbRelPagar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = dbRelPagar
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
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelPagar'
          object ppHeaderBand2: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel17: TppLabel
              UserName = 'Label17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Origem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 69586
              mmTop = 1588
              mmWidth = 9948
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
              Caption = 'N'#186' Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 86519
              mmTop = 1588
              mmWidth = 12435
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
              Caption = 'PCL'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 99748
              mmTop = 1588
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 133086
              mmTop = 1588
              mmWidth = 18256
              BandType = 0
            end
            object ppLine5: TppLine
              UserName = 'Line5'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 794
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 119327
              mmTop = 1588
              mmWidth = 11377
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
              Caption = 'Lancto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 106892
              mmTop = 1588
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel23: TppLabel
              UserName = 'Label401'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180446
              mmTop = 1588
              mmWidth = 17198
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
              Caption = 'Ult. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 152929
              mmTop = 1588
              mmWidth = 13758
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
              Caption = 'Bx. Parcial'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 168540
              mmTop = 1588
              mmWidth = 15346
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
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 1323
              mmWidth = 11113
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
              Caption = 'Credor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 13229
              mmTop = 1323
              mmWidth = 17727
              BandType = 0
            end
          end
          object ppDetailBand2: TppDetailBand
            BeforePrint = ImprimeHistorico
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
            mmHeight = 17991
            mmPrintPosition = 0
            object ppSubPagas7: TppSubReport
              OnPrint = ppSubPagas1Print
              UserName = 'SubPagas7'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppPagas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12964
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport16: TppChildReport
                AutoStop = False
                DataPipeline = ppPagas
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
                Left = 216
                Top = 256
                Version = '12.03'
                mmColumnWidth = 0
                DataPipelineName = 'ppPagas'
                object ppTitleBand9: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel184: TppLabel
                    UserName = 'Label150'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hist'#243'rico'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Conta'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Ellipsis = False
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
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText160: TppDBText
                    UserName = 'DBText133'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText161: TppDBText
                    UserName = 'DBText134'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = 'dd/mm/yyyy'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText162: TppDBText
                    UserName = 'DBText135'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText163: TppDBText
                    UserName = 'DBText136'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand16: TppSummaryBand
                  AlignToBottom = False
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
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ORIGEM'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3598
              mmLeft = 69586
              mmTop = 0
              mmWidth = 16139
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
              DataField = 'DOCTO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 86519
              mmTop = 0
              mmWidth = 12436
              BandType = 4
            end
            object ppDBText17: TppDBText
              UserName = 'DBText17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 100013
              mmTop = 0
              mmWidth = 5672
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
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 106892
              mmTop = 0
              mmWidth = 11377
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
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 119327
              mmTop = 0
              mmWidth = 11377
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
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 133086
              mmTop = 0
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText401'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_ULTIMA_BAIXA'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 152929
              mmTop = 0
              mmWidth = 13759
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
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 168540
              mmTop = 0
              mmWidth = 15347
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
              DataField = 'Saldo'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 180446
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText25: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText25'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2921
              mmLeft = 101336
              mmTop = 6615
              mmWidth = 54504
              BandType = 4
            end
            object ppLabel28: TppLabel
              OnPrint = lb7Print
              UserName = 'Label28'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hist'#243'rico:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 86784
              mmTop = 6085
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText26: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText601'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 57150
              mmTop = 6615
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel29: TppLabel
              OnPrint = lb7Print
              UserName = 'Label29'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 44450
              mmTop = 6085
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText63: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText63'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 20638
              mmTop = 6615
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel31: TppLabel
              OnPrint = lb7Print
              UserName = 'Label31'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 12700
              mmTop = 6085
              mmWidth = 7747
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
              DataField = 'cod_nome_fornecedor'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 13229
              mmTop = 265
              mmWidth = 55033
              BandType = 4
            end
            object ppDBText64: TppDBText
              UserName = 'DBText64'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_PAGAR'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 529
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel71: TppLabel
              UserName = 'Label701'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 8202
              mmTop = 8467
              mmWidth = 17695
              BandType = 7
            end
            object ppLine8: TppLine
              UserName = 'Line8'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 794
              mmTop = 6615
              mmWidth = 196850
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 118744
              mmTop = 7673
              mmWidth = 32597
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 157639
              mmTop = 7938
              mmWidth = 26247
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc301'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3528
              mmLeft = 179800
              mmTop = 7938
              mmWidth = 17780
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'DT_EMISSAO'
            DataPipeline = dbRelPagar
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelPagar'
            NewFile = False
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel30: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Emiss'#227'o:'
                Ellipsis = False
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
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DT_EMISSAO'
                DataPipeline = dbRelPagar
                DisplayFormat = 'dd/mm/yyyy'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3683
                mmLeft = 28310
                mmTop = 3440
                mmWidth = 20574
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 8467
              mmPrintPosition = 0
              object ppLine6: TppLine
                UserName = 'Line6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 7938
                mmTop = 1852
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc19: TppDBCalc
                UserName = 'DBCalc19'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 133086
                mmTop = 2646
                mmWidth = 18255
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc13: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 168539
                mmTop = 2646
                mmWidth = 15347
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc14: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'Saldo'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup2
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 177092
                mmTop = 2646
                mmWidth = 20490
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
      object ppSubFornecedores: TppSubReport
        UserName = 'SubFornecedores'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelPagar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbRelPagar
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
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelPagar'
          object ppHeaderBand1: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5080
            mmPrintPosition = 0
            object ppLabel2: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Origem'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 21696
              mmTop = 1323
              mmWidth = 13229
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
              Caption = 'N'#186' Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 37571
              mmTop = 1323
              mmWidth = 12700
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
              Caption = 'PCL'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 53446
              mmTop = 1323
              mmWidth = 5673
              BandType = 0
            end
            object ppLabel5: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 107156
              mmTop = 1323
              mmWidth = 18785
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
              mmLeft = 794
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel6: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 87577
              mmTop = 1323
              mmWidth = 14816
              BandType = 0
            end
            object ppLabel7: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 65352
              mmTop = 1323
              mmWidth = 16934
              BandType = 0
            end
            object ppLabel8: TppLabel
              UserName = 'Label402'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 178330
              mmTop = 1323
              mmWidth = 18458
              BandType = 0
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 132292
              mmTop = 1323
              mmWidth = 20373
              BandType = 0
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 156104
              mmTop = 1323
              mmWidth = 19315
              BandType = 0
            end
            object ppLabel12: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2646
              mmTop = 1323
              mmWidth = 16139
              BandType = 0
            end
          end
          object ppDetailBand1: TppDetailBand
            BeforePrint = ImprimeHistorico
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
            mmHeight = 26723
            mmPrintPosition = 0
            object ppSubPagas: TppSubReport
              OnPrint = ppSubPagas1Print
              UserName = 'SubPagas'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              ShiftRelativeTo = ppSubEntradas
              TraverseAllData = False
              DataPipelineName = 'ppPagas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 20902
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport7: TppChildReport
                AutoStop = False
                DataPipeline = ppPagas
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
                Left = 216
                Top = 256
                Version = '12.03'
                mmColumnWidth = 0
                DataPipelineName = 'ppPagas'
                object ppTitleBand1: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel150: TppLabel
                    UserName = 'Label150'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hist'#243'rico'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Conta'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Ellipsis = False
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
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Ellipsis = False
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
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText133: TppDBText
                    UserName = 'DBText133'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText134: TppDBText
                    UserName = 'DBText134'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = 'dd/mm/yy'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 125677
                    mmTop = 0
                    mmWidth = 13494
                    BandType = 4
                  end
                  object ppDBText135: TppDBText
                    UserName = 'DBText135'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 2836
                    mmLeft = 141288
                    mmTop = 0
                    mmWidth = 59531
                    BandType = 4
                  end
                  object ppDBText136: TppDBText
                    UserName = 'DBText136'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 106892
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                end
                object ppSummaryBand7: TppSummaryBand
                  AlignToBottom = False
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
            object ppSubEntradas: TppSubReport
              OnPrint = ppSubPagas1Print
              UserName = 'SubEntradas'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppEntradas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12965
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport25: TppChildReport
                AutoStop = False
                DataPipeline = ppEntradas
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
                Left = 216
                Top = 256
                Version = '12.03'
                mmColumnWidth = 0
                DataPipelineName = 'ppEntradas'
                object ppTitleBand18: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 13229
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
                    mmLeft = 61648
                    mmTop = 12965
                    mmWidth = 133086
                    BandType = 1
                  end
                  object ppLabel231: TppLabel
                    UserName = 'Label160'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Produto'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 61383
                    mmTop = 8996
                    mmWidth = 12171
                    BandType = 1
                  end
                  object ppLabel232: TppLabel
                    UserName = 'Label161'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Entradas'
                    Color = clGreen
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 9
                    Font.Style = [fsBold, fsItalic, fsUnderline]
                    Transparent = True
                    mmHeight = 3704
                    mmLeft = 56092
                    mmTop = 3969
                    mmWidth = 13758
                    BandType = 1
                  end
                  object ppLabel229: TppLabel
                    UserName = 'Label1602'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Qtde'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 132557
                    mmTop = 8996
                    mmWidth = 8996
                    BandType = 1
                  end
                  object ppLabel230: TppLabel
                    UserName = 'Label230'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 147902
                    mmTop = 8996
                    mmWidth = 8467
                    BandType = 1
                  end
                  object ppLabel233: TppLabel
                    UserName = 'Label2301'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Desconto'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 159544
                    mmTop = 8996
                    mmWidth = 14288
                    BandType = 1
                  end
                  object ppLabel239: TppLabel
                    UserName = 'Label239'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Total Item'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsBold]
                    TextAlignment = taRightJustified
                    Transparent = True
                    mmHeight = 3440
                    mmLeft = 178594
                    mmTop = 8996
                    mmWidth = 15081
                    BandType = 1
                  end
                end
                object ppDetailBand26: TppDetailBand
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 2910
                  mmPrintPosition = 0
                  object ppDBText196: TppDBText
                    UserName = 'DBText133'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'PRODUTO'
                    DataPipeline = ppEntradas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppEntradas'
                    mmHeight = 2910
                    mmLeft = 61383
                    mmTop = 0
                    mmWidth = 61648
                    BandType = 4
                  end
                  object ppDBText199: TppDBText
                    UserName = 'DBText136'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'QUANTIDADE'
                    DataPipeline = ppEntradas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppEntradas'
                    mmHeight = 2836
                    mmLeft = 125148
                    mmTop = 0
                    mmWidth = 16669
                    BandType = 4
                  end
                  object ppDBText198: TppDBText
                    UserName = 'DBText198'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'PRC_UNITARIO'
                    DataPipeline = ppEntradas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppEntradas'
                    mmHeight = 2836
                    mmLeft = 143669
                    mmTop = 0
                    mmWidth = 13494
                    BandType = 4
                  end
                  object ppDBText197: TppDBText
                    UserName = 'DBText197'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DESCONTOS'
                    DataPipeline = ppEntradas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppEntradas'
                    mmHeight = 2836
                    mmLeft = 159544
                    mmTop = 0
                    mmWidth = 14552
                    BandType = 4
                  end
                  object ppDBText205: TppDBText
                    UserName = 'DBText205'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'TOTAL_ITEM'
                    DataPipeline = ppEntradas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clGreen
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppEntradas'
                    mmHeight = 2836
                    mmLeft = 178594
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand25: TppSummaryBand
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 3969
                  mmPrintPosition = 0
                end
                object ppGroup7: TppGroup
                  BreakName = 'NDOCTO'
                  DataPipeline = ppEntradas
                  GroupFileSettings.NewFile = False
                  GroupFileSettings.EmailFile = False
                  KeepTogether = True
                  OutlineSettings.CreateNode = True
                  StartOnOddPage = False
                  UserName = 'Group7'
                  mmNewColumnThreshold = 0
                  mmNewPageThreshold = 0
                  DataPipelineName = 'ppEntradas'
                  NewFile = False
                  object ppGroupHeaderBand7: TppGroupHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 17727
                    mmPrintPosition = 0
                    object ppShape1: TppShape
                      UserName = 'Shape1'
                      Gradient.EndColor = clWhite
                      Gradient.StartColor = clWhite
                      Gradient.Style = gsNone
                      Pen.Color = clGreen
                      mmHeight = 8996
                      mmLeft = 61383
                      mmTop = 7938
                      mmWidth = 133615
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel234: TppLabel
                      UserName = 'Label1601'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'C'#243'digo:'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 60854
                      mmTop = 529
                      mmWidth = 10848
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText200: TppDBText
                      UserName = 'DBText200'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'NDOCTO'
                      DataPipeline = ppEntradas
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 3175
                      mmLeft = 72496
                      mmTop = 529
                      mmWidth = 17198
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel236: TppLabel
                      UserName = 'Label236'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Valores totais R$'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold, fsItalic, fsUnderline]
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 59267
                      mmTop = 4763
                      mmWidth = 19844
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText201: TppDBText
                      UserName = 'DBText201'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'DATA_REF'
                      DataPipeline = ppEntradas
                      DisplayFormat = 'dd/mm/yyyy'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 3302
                      mmLeft = 130969
                      mmTop = 529
                      mmWidth = 14817
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel235: TppLabel
                      UserName = 'Label235'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Dt. Ref:'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 120386
                      mmTop = 529
                      mmWidth = 10054
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText12: TppDBText
                      UserName = 'DBText12'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'DATA_NF'
                      DataPipeline = ppEntradas
                      DisplayFormat = 'dd/mm/yyyy'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 3302
                      mmLeft = 157957
                      mmTop = 529
                      mmWidth = 12912
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel11: TppLabel
                      UserName = 'Label1'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Dt. NF:'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 148167
                      mmTop = 529
                      mmWidth = 9260
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText13: TppDBText
                      UserName = 'DBText1'
                      HyperlinkColor = clBlue
                      AutoSize = True
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'DATA_ENT'
                      DataPipeline = ppEntradas
                      DisplayFormat = 'dd/mm/yyyy'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 3302
                      mmLeft = 103981
                      mmTop = 529
                      mmWidth = 14817
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel13: TppLabel
                      UserName = 'Label2'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Dt. Ent.:'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 92340
                      mmTop = 529
                      mmWidth = 10848
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel15: TppLabel
                      UserName = 'Label3'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Mercadorias'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 63765
                      mmTop = 8996
                      mmWidth = 14436
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel16: TppLabel
                      UserName = 'Label4'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Emb.'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 81227
                      mmTop = 8996
                      mmWidth = 6011
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel73: TppLabel
                      UserName = 'Label73'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Frete'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 121973
                      mmTop = 8996
                      mmWidth = 5969
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel74: TppLabel
                      UserName = 'Label74'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Seguro'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 89165
                      mmTop = 8996
                      mmWidth = 8424
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel75: TppLabel
                      UserName = 'Label75'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'IPI'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 99484
                      mmTop = 8996
                      mmWidth = 5556
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel76: TppLabel
                      UserName = 'Label76'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'ICMS'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 161396
                      mmTop = 8996
                      mmWidth = 6181
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel77: TppLabel
                      UserName = 'Label77'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Base ICMS'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 142082
                      mmTop = 8996
                      mmWidth = 12700
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel78: TppLabel
                      UserName = 'Label78'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Descontos'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 128852
                      mmTop = 8996
                      mmWidth = 12446
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel79: TppLabel
                      UserName = 'Label79'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'ICMS Sub.'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 168011
                      mmTop = 8996
                      mmWidth = 12700
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel82: TppLabel
                      UserName = 'Label82'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Total NF'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 184150
                      mmTop = 8996
                      mmWidth = 9737
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText14: TppDBText
                      UserName = 'DBText14'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_PRODUTOS'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 62442
                      mmTop = 13229
                      mmWidth = 15610
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel80: TppLabel
                      UserName = 'Label80'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Taxas'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = [fsBold]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 2910
                      mmLeft = 108215
                      mmTop = 8996
                      mmWidth = 6900
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText65: TppDBText
                      UserName = 'DBText65'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_EMBALAGEM'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 78846
                      mmTop = 12965
                      mmWidth = 8467
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText67: TppDBText
                      UserName = 'DBText67'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_SEGURO'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 88106
                      mmTop = 12965
                      mmWidth = 9525
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText68: TppDBText
                      UserName = 'DBText68'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_IPI_LC'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 98161
                      mmTop = 12965
                      mmWidth = 7144
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText69: TppDBText
                      UserName = 'DBText69'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'TAXAS'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 107156
                      mmTop = 13229
                      mmWidth = 7938
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText71: TppDBText
                      UserName = 'DBText71'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_FRETE'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 116417
                      mmTop = 12965
                      mmWidth = 11642
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText72: TppDBText
                      UserName = 'DBText72'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'DESCONTOS'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 129911
                      mmTop = 13229
                      mmWidth = 11642
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText73: TppDBText
                      UserName = 'DBText73'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_BC_ICM'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 143404
                      mmTop = 12965
                      mmWidth = 11642
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText74: TppDBText
                      UserName = 'DBText74'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_ICM'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 155840
                      mmTop = 12965
                      mmWidth = 11642
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText75: TppDBText
                      UserName = 'DBText75'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_ICM_SUBS'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 169863
                      mmTop = 12965
                      mmWidth = 11113
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText76: TppDBText
                      UserName = 'DBText76'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_TOTAL_NF'
                      DataPipeline = ppEntradas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'Arial'
                      Font.Size = 7
                      Font.Style = []
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 2910
                      mmLeft = 181240
                      mmTop = 12965
                      mmWidth = 12700
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLabel83: TppLabel
                      UserName = 'Label83'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'CFOP:'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsBold]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 174361
                      mmTop = 529
                      mmWidth = 8731
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppDBText77: TppDBText
                      UserName = 'DBText77'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'NATUREZA'
                      DataPipeline = ppEntradas
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'Arial'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'ppEntradas'
                      mmHeight = 3302
                      mmLeft = 183621
                      mmTop = 529
                      mmWidth = 10319
                      BandType = 3
                      GroupNo = 0
                    end
                    object ppLine19: TppLine
                      UserName = 'Line19'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 60854
                      mmTop = 16933
                      mmWidth = 134144
                      BandType = 3
                      GroupNo = 0
                    end
                  end
                  object ppGroupFooterBand7: TppGroupFooterBand
                    HideWhenOneDetail = False
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                end
              end
            end
            object ppDBText3: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ORIGEM'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3598
              mmLeft = 21696
              mmTop = 264
              mmWidth = 13229
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 37571
              mmTop = 264
              mmWidth = 12700
              BandType = 4
            end
            object ppDBText5: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PARCELA'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3683
              mmLeft = 53711
              mmTop = 0
              mmWidth = 5672
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 65352
              mmTop = 264
              mmWidth = 16934
              BandType = 4
            end
            object ppDBText7: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 87577
              mmTop = 0
              mmWidth = 14816
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 107156
              mmTop = 0
              mmWidth = 18785
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText402'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_ULTIMA_BAIXA'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 132292
              mmTop = 264
              mmWidth = 20108
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 155575
              mmTop = 264
              mmWidth = 19844
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Saldo'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 178330
              mmTop = 264
              mmWidth = 18458
              BandType = 4
            end
            object ppDBText66: TppDBText
              UserName = 'DBText66'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_PAGAR'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 2646
              mmTop = 264
              mmWidth = 16140
              BandType = 4
            end
            object ppDBText78: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText78'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 91546
              mmTop = 7144
              mmWidth = 54504
              BandType = 4
            end
            object ppLabel84: TppLabel
              OnPrint = lb7Print
              UserName = 'Label84'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hist'#243'rico:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 76994
              mmTop = 6615
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText79: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText79'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 47361
              mmTop = 7144
              mmWidth = 26988
              BandType = 4
            end
            object ppDBText80: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText80'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 10848
              mmTop = 7144
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel85: TppLabel
              OnPrint = lb7Print
              UserName = 'Label85'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 2910
              mmTop = 6615
              mmWidth = 7673
              BandType = 4
            end
            object ppLabel86: TppLabel
              OnPrint = lb7Print
              UserName = 'Label86'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 34660
              mmTop = 6615
              mmWidth = 12435
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            PrintHeight = phDynamic
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 10319
            mmPrintPosition = 0
            object ppLabel72: TppLabel
              UserName = 'Label702'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3683
              mmLeft = 8202
              mmTop = 2910
              mmWidth = 17695
              BandType = 7
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 794
              mmTop = 794
              mmWidth = 196850
              BandType = 7
            end
            object ppDBCalc4: TppDBCalc
              UserName = 'DBCalc4'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3323
              mmLeft = 90952
              mmTop = 1852
              mmWidth = 34989
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc5'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3323
              mmLeft = 148558
              mmTop = 1852
              mmWidth = 28448
              BandType = 7
            end
            object ppDBCalc6: TppDBCalc
              UserName = 'DBCalc302'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3323
              mmLeft = 176404
              mmTop = 1852
              mmWidth = 20384
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'FORNECEDOR'
            DataPipeline = dbRelPagar
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelPagar'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel1: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Credor:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3439
                mmWidth = 12700
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
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'cod_nome_fornecedor'
                DataPipeline = dbRelPagar
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3683
                mmLeft = 20373
                mmTop = 3440
                mmWidth = 34375
                BandType = 3
                GroupNo = 0
              end
              object lb3: TppLabel
                OnPrint = lb1Print
                UserName = 'lb3'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Fone:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 130704
                mmTop = 3704
                mmWidth = 7673
                BandType = 3
                GroupNo = 0
              end
              object lb4: TppDBText
                OnPrint = lb1Print
                UserName = 'lb4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'FONE'
                DataPipeline = dbRelPagar
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 2910
                mmLeft = 138642
                mmTop = 4233
                mmWidth = 16669
                BandType = 3
                GroupNo = 0
              end
              object lb5: TppLabel
                OnPrint = lb1Print
                UserName = 'lb5'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Contato:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3440
                mmLeft = 156369
                mmTop = 3704
                mmWidth = 12435
                BandType = 3
                GroupNo = 0
              end
              object lb6: TppDBText
                OnPrint = lb1Print
                UserName = 'lb6'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CONTATO'
                DataPipeline = dbRelPagar
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 2910
                mmLeft = 169069
                mmTop = 4233
                mmWidth = 26988
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 13229
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
                mmLeft = 7938
                mmTop = 0
                mmWidth = 189707
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc15: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 90752
                mmTop = 1588
                mmWidth = 35179
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc1: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 148473
                mmTop = 1588
                mmWidth = 28532
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc2: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'Saldo'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3440
                mmLeft = 176299
                mmTop = 1588
                mmWidth = 20490
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
      object ppShape5: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 24342
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 1
      end
      object lblEmpresa: TppLabel
        UserName = 'lblEmpresa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblEmpresa'
        Ellipsis = False
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
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Contas '#224' Pagar'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 1058
        mmTop = 9260
        mmWidth = 53594
        BandType = 1
      end
      object lblFiltro: TppLabel
        UserName = 'lblFiltro'
        CharWrap = True
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FILTRO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 2910
        mmLeft = 1058
        mmTop = 15610
        mmWidth = 195263
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
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
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        OnGetText = ppSystemVariable1GetText
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 2910
        mmLeft = 1323
        mmTop = 19579
        mmWidth = 50536
        BandType = 1
      end
      object SubContrato: TppSubReport
        UserName = 'SubContrato'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        Visible = False
        DataPipelineName = 'dbRelPagar'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 1
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport6: TppChildReport
          AutoStop = False
          DataPipeline = dbRelPagar
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
          Left = 216
          Top = 312
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelPagar'
          object ppHeaderBand5: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 5027
            mmPrintPosition = 0
            object ppLabel87: TppLabel
              UserName = 'Label2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C. Custo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 70379
              mmTop = 1323
              mmWidth = 11642
              BandType = 0
            end
            object ppLabel90: TppLabel
              UserName = 'Label7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Nominal'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 126736
              mmTop = 1323
              mmWidth = 18256
              BandType = 0
            end
            object ppLine20: TppLine
              UserName = 'Line1'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4763
              mmWidth = 196850
              BandType = 0
            end
            object ppLabel91: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vencto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 112977
              mmTop = 1323
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel92: TppLabel
              UserName = 'Label12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Lancto.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 100542
              mmTop = 1323
              mmWidth = 11377
              BandType = 0
            end
            object ppLabel93: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Saldo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 180182
              mmTop = 1323
              mmWidth = 17198
              BandType = 0
            end
            object ppLabel94: TppLabel
              UserName = 'Label8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Baixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 146579
              mmTop = 1323
              mmWidth = 13758
              BandType = 0
            end
            object ppLabel95: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Bx. Parcial'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 162190
              mmTop = 1323
              mmWidth = 15346
              BandType = 0
            end
            object ppLabel96: TppLabel
              UserName = 'Label112'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Credor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 12965
              mmTop = 1323
              mmWidth = 17727
              BandType = 0
            end
            object ppLabel97: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'C'#243'digo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 529
              mmTop = 1323
              mmWidth = 11113
              BandType = 0
            end
          end
          object ppDetailBand7: TppDetailBand
            BeforePrint = ImprimeHistorico
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
            mmHeight = 17992
            mmPrintPosition = 0
            object ppDBText82: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CCT_NOME'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3175
              mmLeft = 70379
              mmTop = 0
              mmWidth = 28840
              BandType = 4
            end
            object ppDBText86: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_LANCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 100542
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText87: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_VENCTO'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 112977
              mmTop = 0
              mmWidth = 11377
              BandType = 4
            end
            object ppDBText88: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 126736
              mmTop = 0
              mmWidth = 18255
              BandType = 4
            end
            object ppDBText89: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DT_ULTIMA_BAIXA'
              DataPipeline = dbRelPagar
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 146579
              mmTop = 0
              mmWidth = 13759
              BandType = 4
            end
            object ppDBText90: TppDBText
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 162190
              mmTop = 0
              mmWidth = 15347
              BandType = 4
            end
            object ppDBText91: TppDBText
              UserName = 'DBText13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'Saldo'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 180182
              mmTop = 0
              mmWidth = 17198
              BandType = 4
            end
            object ppDBText92: TppDBText
              UserName = 'DBText98'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'cod_nome_fornecedor'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 12700
              mmTop = 0
              mmWidth = 56886
              BandType = 4
            end
            object ppDBText93: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText56'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2921
              mmLeft = 94986
              mmTop = 5821
              mmWidth = 54504
              BandType = 4
            end
            object ppLabel98: TppLabel
              OnPrint = lb7Print
              UserName = 'Label62'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Hist'#243'rico:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 80433
              mmTop = 5292
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText94: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText70'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CONTATO'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 50800
              mmTop = 5821
              mmWidth = 26988
              BandType = 4
            end
            object ppLabel99: TppLabel
              OnPrint = lb7Print
              UserName = 'Label65'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Contato:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 38100
              mmTop = 5292
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText95: TppDBText
              OnPrint = lb7Print
              UserName = 'DBText84'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FONE'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 2910
              mmLeft = 14288
              mmTop = 5821
              mmWidth = 16669
              BandType = 4
            end
            object ppLabel100: TppLabel
              OnPrint = lb7Print
              UserName = 'Label81'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fone:'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 6350
              mmTop = 5292
              mmWidth = 7747
              BandType = 4
            end
            object ppSubReport2: TppSubReport
              OnPrint = ppSubPagas1Print
              UserName = 'SubPagas2'
              ExpandAll = False
              KeepTogether = True
              NewPrintJob = False
              OutlineSettings.CreateNode = True
              TraverseAllData = False
              DataPipelineName = 'ppPagas'
              mmHeight = 5027
              mmLeft = 0
              mmTop = 12965
              mmWidth = 197300
              BandType = 4
              mmBottomOffset = 0
              mmOverFlowOffset = 0
              mmStopPosition = 0
              mmMinHeight = 0
              object ppChildReport9: TppChildReport
                AutoStop = False
                DataPipeline = ppPagas
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
                Left = 216
                Top = 256
                Version = '12.03'
                mmColumnWidth = 0
                DataPipelineName = 'ppPagas'
                object ppTitleBand4: TppTitleBand
                  mmBottomOffset = 0
                  mmHeight = 12700
                  mmPrintPosition = 0
                  object ppLabel101: TppLabel
                    UserName = 'Label150'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Dt. Baixa'
                    Ellipsis = False
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
                  object ppLabel102: TppLabel
                    UserName = 'Label151'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Hist'#243'rico'
                    Ellipsis = False
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
                  object ppLine21: TppLine
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
                  object ppLabel103: TppLabel
                    UserName = 'Label160'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Conta'
                    Ellipsis = False
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
                  object ppLabel104: TppLabel
                    UserName = 'Label161'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Baixas'
                    Ellipsis = False
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
                  object ppLabel105: TppLabel
                    UserName = 'Label1501'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    Caption = 'Valor'
                    Ellipsis = False
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
                object ppDetailBand10: TppDetailBand
                  Background1.Brush.Style = bsClear
                  Background1.Gradient.EndColor = clWhite
                  Background1.Gradient.StartColor = clWhite
                  Background1.Gradient.Style = gsNone
                  Background2.Brush.Style = bsClear
                  Background2.Gradient.EndColor = clWhite
                  Background2.Gradient.StartColor = clWhite
                  Background2.Gradient.Style = gsNone
                  mmBottomOffset = 0
                  mmHeight = 3175
                  mmPrintPosition = 0
                  object ppDBText96: TppDBText
                    UserName = 'DBText133'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'CONTA'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 87313
                    mmTop = 0
                    mmWidth = 17198
                    BandType = 4
                  end
                  object ppDBText97: TppDBText
                    UserName = 'DBText134'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'DT_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = 'dd/mm/yyyy'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 106098
                    mmTop = 0
                    mmWidth = 14288
                    BandType = 4
                  end
                  object ppDBText107: TppDBText
                    UserName = 'DBText135'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'HISTORICO_BX'
                    DataPipeline = ppPagas
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 7
                    Font.Style = [fsItalic]
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 2836
                    mmLeft = 148696
                    mmTop = 0
                    mmWidth = 49742
                    BandType = 4
                  end
                  object ppDBText108: TppDBText
                    UserName = 'DBText136'
                    HyperlinkColor = clBlue
                    Border.BorderPositions = []
                    Border.Color = clBlack
                    Border.Style = psSolid
                    Border.Visible = False
                    Border.Weight = 1.000000000000000000
                    DataField = 'VLR_BAIXA'
                    DataPipeline = ppPagas
                    DisplayFormat = '#,0.00;-#,0.00'
                    Ellipsis = False
                    Font.Charset = DEFAULT_CHARSET
                    Font.Color = clTeal
                    Font.Name = 'Arial'
                    Font.Size = 8
                    Font.Style = [fsItalic]
                    TextAlignment = taRightJustified
                    Transparent = True
                    DataPipelineName = 'ppPagas'
                    mmHeight = 3302
                    mmLeft = 131499
                    mmTop = 0
                    mmWidth = 15347
                    BandType = 4
                  end
                end
                object ppSummaryBand6: TppSummaryBand
                  AlignToBottom = False
                  mmBottomOffset = 0
                  mmHeight = 5556
                  mmPrintPosition = 0
                  object ppLine22: TppLine
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
            object ppDBText110: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_PAGAR'
              DataPipeline = dbRelPagar
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3704
              mmLeft = 529
              mmTop = 0
              mmWidth = 11113
              BandType = 4
            end
          end
          object ppSummaryBand9: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLine23: TppLine
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
            object ppLabel106: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Geral:'
              Ellipsis = False
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
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc7'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VALOR_NOMINAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3387
              mmLeft = 110024
              mmTop = 4498
              mmWidth = 34967
              BandType = 7
            end
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'BX_PARCIAL'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3387
              mmLeft = 149215
              mmTop = 4763
              mmWidth = 28321
              BandType = 7
            end
            object ppDBCalc21: TppDBCalc
              UserName = 'DBCalc11'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = dbRelPagar
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelPagar'
              mmHeight = 3387
              mmLeft = 178924
              mmTop = 4763
              mmWidth = 18457
              BandType = 7
            end
          end
          object ppGroup5: TppGroup
            BreakName = 'COD_CONTRATO'
            DataPipeline = dbRelPagar
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbRelPagar'
            NewFile = False
            object ppGroupHeaderBand5: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 8731
              mmPrintPosition = 0
              object ppLabel107: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Contrato:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 10
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 4106
                mmLeft = 6879
                mmTop = 3175
                mmWidth = 15875
                BandType = 3
                GroupNo = 0
              end
              object ppLine24: TppLine
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
              object ppDBText112: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CTR_NOME'
                DataPipeline = dbRelPagar
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3704
                mmLeft = 23548
                mmTop = 3440
                mmWidth = 103452
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand5: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 6350
              mmPrintPosition = 0
              object ppLine27: TppLine
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
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VALOR_NOMINAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3387
                mmLeft = 110024
                mmTop = 1323
                mmWidth = 34967
                BandType = 5
                GroupNo = 0
              end
              object ppLabel108: TppLabel
                UserName = 'Label15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Total Cliente:'
                Ellipsis = False
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
              object ppDBCalc23: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'BX_PARCIAL'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3387
                mmLeft = 149215
                mmTop = 1323
                mmWidth = 28321
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc24: TppDBCalc
                UserName = 'DBCalc5'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'SALDO'
                DataPipeline = dbRelPagar
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbRelPagar'
                mmHeight = 3387
                mmLeft = 178924
                mmTop = 1323
                mmWidth = 18457
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
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 8
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
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
      object ppDBText81: TppDBText
        UserName = 'DBText81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PARC_TEXTO_RELATORIO'
        DataPipeline = ppAppRepresentante
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'ppAppRepresentante'
        mmHeight = 3704
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 121709
        BandType = 8
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dbRelPagar: TppDBPipeline
    DataSource = dsRelPagar
    UserName = 'dbRelPagar'
    Left = 327
    Top = 6
    object dbRelPagarppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_FORNECEDOR'
      FieldName = 'COD_FORNECEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbRelPagarppField2: TppField
      FieldAlias = 'FORNECEDOR'
      FieldName = 'FORNECEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object dbRelPagarppField3: TppField
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 3
      DisplayWidth = 3
      Position = 2
    end
    object dbRelPagarppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_PAGAR'
      FieldName = 'COD_PAGAR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbRelPagarppField5: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object dbRelPagarppField6: TppField
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 5
    end
    object dbRelPagarppField7: TppField
      FieldAlias = 'DT_EMISSAO'
      FieldName = 'DT_EMISSAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 6
    end
    object dbRelPagarppField8: TppField
      FieldAlias = 'DT_VENCTO'
      FieldName = 'DT_VENCTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 7
    end
    object dbRelPagarppField9: TppField
      FieldAlias = 'DT_LANCTO'
      FieldName = 'DT_LANCTO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 8
    end
    object dbRelPagarppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_NOMINAL'
      FieldName = 'VALOR_NOMINAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object dbRelPagarppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'BX_PARCIAL'
      FieldName = 'BX_PARCIAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object dbRelPagarppField12: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 11
    end
    object dbRelPagarppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object dbRelPagarppField14: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object dbRelPagarppField15: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 14
    end
    object dbRelPagarppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CCT_CODIGO'
      FieldName = 'CCT_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object dbRelPagarppField17: TppField
      FieldAlias = 'CCT_NOME'
      FieldName = 'CCT_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 16
    end
    object dbRelPagarppField18: TppField
      FieldAlias = 'cod_nome_fornecedor'
      FieldName = 'cod_nome_fornecedor'
      FieldLength = 100
      DisplayWidth = 100
      Position = 17
    end
    object dbRelPagarppField19: TppField
      FieldAlias = 'DT_ULTIMA_BAIXA'
      FieldName = 'DT_ULTIMA_BAIXA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 18
    end
    object dbRelPagarppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'Saldo'
      FieldName = 'Saldo'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object dbRelPagarppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CONTRATO'
      FieldName = 'COD_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 20
    end
    object dbRelPagarppField22: TppField
      FieldAlias = 'CTR_NOME'
      FieldName = 'CTR_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 21
    end
  end
  object dsRelPagar: TDataSource
    DataSet = DMRelatorios.qryRelPagar
    Left = 358
    Top = 6
  end
  object dsTipoDocto: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelTipoDocto
    Left = 176
    Top = 216
  end
  object ppPagas: TppDBPipeline
    DataSource = dsPagas
    UserName = 'Pagas'
    Left = 327
    Top = 38
    object ppPagasppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppPagasppField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppPagasppField3: TppField
      FieldAlias = 'ANO'
      FieldName = 'ANO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppPagasppField4: TppField
      FieldAlias = 'CODIGO_PG'
      FieldName = 'CODIGO_PG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppPagasppField5: TppField
      FieldAlias = 'ANO_PG'
      FieldName = 'ANO_PG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppPagasppField6: TppField
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppPagasppField7: TppField
      FieldAlias = 'DT_BAIXA'
      FieldName = 'DT_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppPagasppField8: TppField
      FieldAlias = 'HISTORICO_BX'
      FieldName = 'HISTORICO_BX'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppPagasppField9: TppField
      FieldAlias = 'VLR_BAIXA'
      FieldName = 'VLR_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppPagasppField10: TppField
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppPagasppField11: TppField
      FieldAlias = 'DESCONTOS'
      FieldName = 'DESCONTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppPagasppField12: TppField
      FieldAlias = 'PLANILHA'
      FieldName = 'PLANILHA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppPagasppField13: TppField
      FieldAlias = 'TAXA_JUROS'
      FieldName = 'TAXA_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppPagasppField14: TppField
      FieldAlias = 'TIPO_JUROS'
      FieldName = 'TIPO_JUROS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppPagasppField15: TppField
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppPagasppField16: TppField
      FieldAlias = 'DT_EMISSAO'
      FieldName = 'DT_EMISSAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppPagasppField17: TppField
      FieldAlias = 'DT_VENCTO'
      FieldName = 'DT_VENCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppPagasppField18: TppField
      FieldAlias = 'DT_LANCTO'
      FieldName = 'DT_LANCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppPagasppField19: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppPagasppField20: TppField
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppPagasppField21: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppPagasppField22: TppField
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppPagasppField23: TppField
      FieldAlias = 'VLR_PARCIAL'
      FieldName = 'VLR_PARCIAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppPagasppField24: TppField
      FieldAlias = 'JUROS_PAG'
      FieldName = 'JUROS_PAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppPagasppField25: TppField
      FieldAlias = 'DESCONTOS_PAG'
      FieldName = 'DESCONTOS_PAG'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppPagasppField26: TppField
      FieldAlias = 'BOLETO'
      FieldName = 'BOLETO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppPagasppField27: TppField
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppPagasppField28: TppField
      FieldAlias = 'CODIGO_ENT'
      FieldName = 'CODIGO_ENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
    object ppPagasppField29: TppField
      FieldAlias = 'ANO_ENT'
      FieldName = 'ANO_ENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 28
      Searchable = False
      Sortable = False
    end
    object ppPagasppField30: TppField
      FieldAlias = 'AVISO'
      FieldName = 'AVISO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 29
      Searchable = False
      Sortable = False
    end
    object ppPagasppField31: TppField
      FieldAlias = 'DT_AVISO'
      FieldName = 'DT_AVISO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 30
      Searchable = False
      Sortable = False
    end
    object ppPagasppField32: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 31
      Searchable = False
      Sortable = False
    end
    object ppPagasppField33: TppField
      FieldAlias = 'CENTRO_CUSTO'
      FieldName = 'CENTRO_CUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppPagasppField34: TppField
      FieldAlias = 'DUPLICATA'
      FieldName = 'DUPLICATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 33
      Searchable = False
      Sortable = False
    end
    object ppPagasppField35: TppField
      FieldAlias = 'CONFERIDA'
      FieldName = 'CONFERIDA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 34
      Searchable = False
      Sortable = False
    end
    object ppPagasppField36: TppField
      FieldAlias = 'CONTA'
      FieldName = 'CONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 35
      Searchable = False
      Sortable = False
    end
    object ppPagasppField37: TppField
      FieldAlias = 'TOTAL_ENTRADA'
      FieldName = 'TOTAL_ENTRADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 36
      Searchable = False
      Sortable = False
    end
    object ppPagasppField38: TppField
      FieldAlias = 'TURNO'
      FieldName = 'TURNO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 37
      Searchable = False
      Sortable = False
    end
    object ppPagasppField39: TppField
      FieldAlias = 'CONTABILIDADE'
      FieldName = 'CONTABILIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 38
      Searchable = False
      Sortable = False
    end
    object ppPagasppField40: TppField
      FieldAlias = 'CODIGO_VN'
      FieldName = 'CODIGO_VN'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 39
      Searchable = False
      Sortable = False
    end
    object ppPagasppField41: TppField
      FieldAlias = 'COD_INDEXADOR'
      FieldName = 'COD_INDEXADOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 40
      Searchable = False
      Sortable = False
    end
    object ppPagasppField42: TppField
      FieldAlias = 'IDX_DATABASE'
      FieldName = 'IDX_DATABASE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 41
      Searchable = False
      Sortable = False
    end
    object ppPagasppField43: TppField
      FieldAlias = 'IDX_COTACAO'
      FieldName = 'IDX_COTACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 42
      Searchable = False
      Sortable = False
    end
    object ppPagasppField44: TppField
      FieldAlias = 'IDX_QTDE'
      FieldName = 'IDX_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 43
      Searchable = False
      Sortable = False
    end
    object ppPagasppField45: TppField
      FieldAlias = 'VARIACAO'
      FieldName = 'VARIACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 44
      Searchable = False
      Sortable = False
    end
    object ppPagasppField46: TppField
      FieldAlias = 'MULTA'
      FieldName = 'MULTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 45
      Searchable = False
      Sortable = False
    end
    object ppPagasppField47: TppField
      FieldAlias = 'BX_IDX_QTDE'
      FieldName = 'BX_IDX_QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 46
      Searchable = False
      Sortable = False
    end
    object ppPagasppField48: TppField
      FieldAlias = 'BX_IDX_COTACAO'
      FieldName = 'BX_IDX_COTACAO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 47
      Searchable = False
      Sortable = False
    end
    object ppPagasppField49: TppField
      FieldAlias = 'JURO_CALCULADO'
      FieldName = 'JURO_CALCULADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 48
      Searchable = False
      Sortable = False
    end
    object ppPagasppField50: TppField
      FieldAlias = 'VARIACAO_CALCULADA'
      FieldName = 'VARIACAO_CALCULADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 49
      Searchable = False
      Sortable = False
    end
    object ppPagasppField51: TppField
      FieldAlias = 'MULTA_CALCULADA'
      FieldName = 'MULTA_CALCULADA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 50
      Searchable = False
      Sortable = False
    end
    object ppPagasppField52: TppField
      FieldAlias = 'DESCONTO_CALCULADO'
      FieldName = 'DESCONTO_CALCULADO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 51
      Searchable = False
      Sortable = False
    end
    object ppPagasppField53: TppField
      FieldAlias = 'COD_ACERTOCONTA'
      FieldName = 'COD_ACERTOCONTA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 52
      Searchable = False
      Sortable = False
    end
    object ppPagasppField54: TppField
      FieldAlias = 'COD_CONFIG_TITULO'
      FieldName = 'COD_CONFIG_TITULO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 53
      Searchable = False
      Sortable = False
    end
    object ppPagasppField55: TppField
      FieldAlias = 'COD_EVENTOCONTABIL'
      FieldName = 'COD_EVENTOCONTABIL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 54
      Searchable = False
      Sortable = False
    end
    object ppPagasppField56: TppField
      FieldAlias = 'ACT_TIPO_BAIXA'
      FieldName = 'ACT_TIPO_BAIXA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 55
      Searchable = False
      Sortable = False
    end
  end
  object dsPagas: TDataSource
    DataSet = DMRelatorios.qryRelPagas
    Left = 358
    Top = 38
  end
  object dsEntradas: TDataSource
    DataSet = DMRelatorios.qryRelENTPag
    Left = 358
    Top = 74
  end
  object ppEntradas: TppDBPipeline
    DataSource = dsEntradas
    UserName = 'Entradas'
    Left = 327
    Top = 74
    object ppEntradasppField1: TppField
      FieldAlias = 'FRETE_LF'
      FieldName = 'FRETE_LF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField2: TppField
      FieldAlias = 'NATUREZA'
      FieldName = 'NATUREZA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField3: TppField
      FieldAlias = 'NDOCTO'
      FieldName = 'NDOCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField4: TppField
      FieldAlias = 'DATA_ENT'
      FieldName = 'DATA_ENT'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField5: TppField
      FieldAlias = 'DATA_NF'
      FieldName = 'DATA_NF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField6: TppField
      FieldAlias = 'DATA_REF'
      FieldName = 'DATA_REF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField7: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField8: TppField
      FieldAlias = 'VLR_PRODUTOS'
      FieldName = 'VLR_PRODUTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField9: TppField
      FieldAlias = 'VLR_PRODUTOS_LC'
      FieldName = 'VLR_PRODUTOS_LC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField10: TppField
      FieldAlias = 'VLR_DESCONTO'
      FieldName = 'VLR_DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField11: TppField
      FieldAlias = 'VLR_EMBALAGEM'
      FieldName = 'VLR_EMBALAGEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField12: TppField
      FieldAlias = 'VLR_FRETE'
      FieldName = 'VLR_FRETE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField13: TppField
      FieldAlias = 'VLR_SEGURO'
      FieldName = 'VLR_SEGURO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField14: TppField
      FieldAlias = 'VLR_IPI'
      FieldName = 'VLR_IPI'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 13
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField15: TppField
      FieldAlias = 'VLR_IPI_LC'
      FieldName = 'VLR_IPI_LC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 14
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField16: TppField
      FieldAlias = 'VLR_BC_ICM'
      FieldName = 'VLR_BC_ICM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 15
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField17: TppField
      FieldAlias = 'PERC_ICM'
      FieldName = 'PERC_ICM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 16
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField18: TppField
      FieldAlias = 'VLR_ICM'
      FieldName = 'VLR_ICM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 17
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField19: TppField
      FieldAlias = 'VLR_ICM_SUBS'
      FieldName = 'VLR_ICM_SUBS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 18
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField20: TppField
      FieldAlias = 'VLR_PARC_LC'
      FieldName = 'VLR_PARC_LC'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 19
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField21: TppField
      FieldAlias = 'TAXAS'
      FieldName = 'TAXAS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 20
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField22: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 21
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField23: TppField
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 22
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField24: TppField
      FieldAlias = 'DESCONTOS'
      FieldName = 'DESCONTOS'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 23
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField25: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 24
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField26: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 25
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField27: TppField
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 26
      Searchable = False
      Sortable = False
    end
    object ppEntradasppField28: TppField
      FieldAlias = 'VLR_TOTAL_NF'
      FieldName = 'VLR_TOTAL_NF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 27
      Searchable = False
      Sortable = False
    end
  end
  object stgfRelPagar2: TcxPropertiesStore
    Components = <
      item
        Component = DataFinal
        Properties.Strings = (
          'Anchors'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'Date'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
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
        Component = DataInicial
        Properties.Strings = (
          'Anchors'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'Date'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
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
        Component = edAs1
        Properties.Strings = (
          'Align'
          'Anchors'
          'AutoSize'
          'Caption'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Height'
          'Hint'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width')
      end
      item
        Component = edAs3
        Properties.Strings = (
          'Align'
          'Anchors'
          'AutoSize'
          'Caption'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'FocusControl'
          'Height'
          'Hint'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'Tag'
          'Top'
          'Transparent'
          'Visible'
          'Width')
      end
      item
        Component = edtNdoc
        Properties.Strings = (
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BiDiMode'
          'BorderStyle'
          'CharCase'
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
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'MaxLength'
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
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtVlrFinal
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Value'
          'Visible'
          'Width')
      end
      item
        Component = edtVlrInicial
        Properties.Strings = (
          'Anchors'
          'AutoSize'
          'BiDiMode'
          'Constraints'
          'Cursor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Height'
          'HelpContext'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'TabOrder'
          'TabStop'
          'Tag'
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
        Component = rdContrato
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
      end>
    StorageName = 'stgfRelPagar2'
    Left = 144
    Top = 215
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 169
    Top = 14
    object ppAppRepresentanteppField1: TppField
      FieldAlias = 'PARC_RAZAO_SOCIAL'
      FieldName = 'PARC_RAZAO_SOCIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 0
    end
    object ppAppRepresentanteppField2: TppField
      FieldAlias = 'PARC_NOME_FANTASIA'
      FieldName = 'PARC_NOME_FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 1
    end
    object ppAppRepresentanteppField3: TppField
      FieldAlias = 'PARC_CNPJ'
      FieldName = 'PARC_CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 2
    end
    object ppAppRepresentanteppField4: TppField
      FieldAlias = 'PARC_FONE'
      FieldName = 'PARC_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 3
    end
    object ppAppRepresentanteppField5: TppField
      FieldAlias = 'PARC_SITE'
      FieldName = 'PARC_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppAppRepresentanteppField6: TppField
      FieldAlias = 'PARC_EMAIL'
      FieldName = 'PARC_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppAppRepresentanteppField7: TppField
      FieldAlias = 'PARC_SLOGAN'
      FieldName = 'PARC_SLOGAN'
      FieldLength = 200
      DisplayWidth = 200
      Position = 6
    end
    object ppAppRepresentanteppField8: TppField
      FieldAlias = 'PARC_SUPORTE_EMAIL'
      FieldName = 'PARC_SUPORTE_EMAIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object ppAppRepresentanteppField9: TppField
      FieldAlias = 'PARC_SUPORTE_FONE'
      FieldName = 'PARC_SUPORTE_FONE'
      FieldLength = 16
      DisplayWidth = 16
      Position = 8
    end
    object ppAppRepresentanteppField10: TppField
      FieldAlias = 'PARC_SUPORTE_SITE'
      FieldName = 'PARC_SUPORTE_SITE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 9
    end
    object ppAppRepresentanteppField11: TppField
      FieldAlias = 'PARC_LOGO'
      FieldName = 'PARC_LOGO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppAppRepresentanteppField12: TppField
      FieldAlias = 'PARC_TEXTO_RELATORIO'
      FieldName = 'PARC_TEXTO_RELATORIO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 11
    end
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 200
    Top = 14
  end
  object qryContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ct.codigo, ct.descricao from ctr_contrato ct'
      'where ct.ativo = '#39'S'#39)
    Left = 358
    Top = 115
    object qryContratosCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"CTR_CONTRATO"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qryContratosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = '"CTR_CONTRATO"."DESCRICAO"'
      Size = 50
    end
  end
  object dsSelContrato: TDataSource
    AutoEdit = False
    DataSet = qryContratos
    Left = 326
    Top = 114
  end
end
