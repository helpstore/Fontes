object fRelSugestaoCompra: TfRelSugestaoCompra
  Left = 457
  Top = 184
  Width = 428
  Height = 430
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Relat'#243'rio de Sugest'#227'o de Compras'
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
    Width = 412
    Height = 392
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
      Top = 30
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Relat'#243'rio de Sugest'#227'o de Compras'
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 2
      Top = 358
      Width = 408
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      DesignSize = (
        408
        32)
      object BtnOk: TcxButton
        Left = 7
        Top = 4
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActPreview
        Anchors = [akRight, akBottom]
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
        Left = 86
        Top = 4
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Action = ActFechar
        Anchors = [akRight, akBottom]
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
      Left = 8
      Top = 37
      Width = 399
      Height = 169
      Caption = 'Geral'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
      object Label11: TcxLabel
        Left = 5
        Top = 138
        Caption = 'Fornecedor'
        ParentFont = False
      end
      object Label9: TcxLabel
        Left = 21
        Top = 20
        Caption = 'Produto'
        ParentFont = False
      end
      object Label7: TcxLabel
        Left = 30
        Top = 49
        Caption = 'Grupo '
        ParentFont = False
      end
      object Label8: TcxLabel
        Left = 12
        Top = 78
        Caption = 'SubGrupo'
        ParentFont = False
      end
      object Label12: TcxLabel
        Left = 31
        Top = 108
        Caption = 'Marca'
        ParentFont = False
      end
      object cmbFornecedor: TdxLookupEdit
        Left = 62
        Top = 134
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
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'PESSOA_FJ'
        ListSource = dsForncedor
        LookupKeyValue = Null
      end
      object cmbGrupo: TdxLookupEdit
        Left = 62
        Top = 45
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
        ListSource = dsGrupo
        LookupKeyValue = Null
      end
      object cmbSubGrupo: TdxLookupEdit
        Left = 62
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
        KeyFieldName = 'SUBGRUPO'
        ListSource = dsSubGrupo
        LookupKeyValue = Null
      end
      object cmbMarca: TdxLookupEdit
        Left = 62
        Top = 104
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
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsMarca
        LookupKeyValue = Null
      end
      object cmbProduto: TdxLookupEdit
        Left = 62
        Top = 17
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
        ListFieldName = 'NOME;CODIGO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsProduto
        LookupKeyValue = Null
      end
    end
    object gbData: TGroupBox
      Left = 8
      Top = 281
      Width = 401
      Height = 71
      Caption = 'Per'#237'odo VMM - Venda M'#233'dia Mensal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object Label4: TcxLabel
        Left = 141
        Top = 33
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 10
        Top = 32
        Caption = 'Inicial'
        ParentFont = False
      end
      object edAs1: TcxLabel
        Left = 133
        Top = 26
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
        Top = 23
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object DataInicial: TcxDateEdit
        Left = 40
        Top = 29
        EditValue = 36526.3833060185d
        ParentFont = False
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 89
      end
      object DataFinal: TcxDateEdit
        Left = 168
        Top = 29
        EditValue = 72686.3833060185d
        ParentFont = False
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 97
      end
    end
    object GroupBox1: TGroupBox
      Left = 232
      Top = 209
      Width = 177
      Height = 67
      Caption = 'Compras'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object Label1: TcxLabel
        Left = 9
        Top = 33
        Caption = #218'ltimas Compras'
        ParentFont = False
      end
      object edtCompras: TcxCurrencyEdit
        Left = 96
        Top = 32
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 54
      end
    end
    object GroupBox3: TGroupBox
      Left = 8
      Top = 209
      Width = 217
      Height = 67
      Caption = 'Per'#237'odo TME - Tempo M'#233'dio de Entrega'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label2: TcxLabel
        Left = 9
        Top = 33
        ParentFont = False
      end
      object Label3: TcxLabel
        Left = 76
        Top = 38
        Caption = #224' '
        ParentFont = False
      end
      object Label6: TcxLabel
        Left = 155
        Top = 37
        Caption = 'Dias'
        ParentFont = False
      end
      object RzNumericEdit1: TcxCurrencyEdit
        Left = 16
        Top = 30
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 54
      end
      object RzNumericEdit2: TcxCurrencyEdit
        Left = 91
        Top = 30
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 54
      end
    end
  end
  object Actions: TActionList
    Left = 385
    Top = 20
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
  object dsProduto: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelProdutos
    Left = 208
    Top = 49
  end
  object dsGrupo: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelGrupo
    Left = 208
    Top = 79
  end
  object dsSubGrupo: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelSubGrupo
    Left = 208
    Top = 109
  end
  object dsMarca: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelMarca
    Left = 208
    Top = 139
  end
  object dsForncedor: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.SelFornecedor
    Left = 208
    Top = 170
  end
  object rptRelSugCompra: TppReport
    AutoStop = False
    DataPipeline = dbRelSugestao
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 210000
    PrinterSetup.mmPaperWidth = 297000
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
    Left = 282
    Top = 27
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelSugestao'
    object ppTitleBand6: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 21696
        mmLeft = 0
        mmTop = 0
        mmWidth = 284428
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
        Caption = 'Relat'#243'rio de Sugest'#227'o de Compras'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 9260
        mmWidth = 81280
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
        mmHeight = 5027
        mmLeft = 794
        mmTop = 15610
        mmWidth = 196321
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
        mmLeft = 257705
        mmTop = 1588
        mmWidth = 25400
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      BeforePrint = HabilitaHeader
      Visible = False
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 17727
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Produto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4233
        mmLeft = 38100
        mmTop = 12700
        mmWidth = 52123
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Und'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 131234
        mmTop = 12700
        mmWidth = 7620
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
        Caption = 'Marca'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4234
        mmLeft = 91811
        mmTop = 12700
        mmWidth = 15610
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
        Caption = 'Estoque'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 141552
        mmTop = 12700
        mmWidth = 12700
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
        Caption = 'VMM'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 166688
        mmTop = 12700
        mmWidth = 10319
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
        mmHeight = 794
        mmLeft = 189707
        mmTop = 10054
        mmWidth = 32279
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
        Caption = 'Sugest'#227'o de Compra'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4233
        mmLeft = 189707
        mmTop = 4763
        mmWidth = 32015
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'M'#225'xima'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 207169
        mmTop = 12700
        mmWidth = 13758
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
        Caption = 'M'#237'nima'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 190765
        mmTop = 12700
        mmWidth = 15080
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 189442
        mmTop = 10054
        mmWidth = 794
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Position = lpLeft
        Weight = 0.750000000000000000
        mmHeight = 6879
        mmLeft = 221986
        mmTop = 10054
        mmWidth = 794
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
        Caption = 'Pedido'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4234
        mmLeft = 154782
        mmTop = 12700
        mmWidth = 10848
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 1588
        mmLeft = 0
        mmTop = 17463
        mmWidth = 283105
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
        Caption = 'PP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4234
        mmLeft = 177800
        mmTop = 12700
        mmWidth = 11377
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
        Caption = 'C'#243'digo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3810
        mmLeft = 0
        mmTop = 13229
        mmWidth = 11113
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      BeforePrint = ImprimeCompras
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
      mmHeight = 8996
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = dbRelSugestao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3440
        mmLeft = 38100
        mmTop = 0
        mmWidth = 52123
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
        DataField = 'UNIDADE'
        DataPipeline = dbRelSugestao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 131234
        mmTop = 0
        mmWidth = 7620
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MARCA'
        DataPipeline = dbRelSugestao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 91811
        mmTop = 0
        mmWidth = 38894
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE'
        DataPipeline = dbRelSugestao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 139965
        mmTop = 0
        mmWidth = 13494
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VMM'
        DataPipeline = dbRelSugestao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 166688
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE_PEDIDA'
        DataPipeline = dbRelSugestao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 154782
        mmTop = 0
        mmWidth = 10848
        BandType = 4
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE_MIN'
        DataPipeline = dbRelSugestao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 191030
        mmTop = 0
        mmWidth = 15080
        BandType = 4
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QTDE_MAX'
        DataPipeline = dbRelSugestao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 207434
        mmTop = 0
        mmWidth = 13758
        BandType = 4
      end
      object SubCompra: TppSubReport
        OnPrint = SubCompraPrint
        UserName = 'SubCompra'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbRelCompras'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 3969
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbRelCompras
          PrinterSetup.BinName = 'Default'
          PrinterSetup.DocumentName = 'Report'
          PrinterSetup.Orientation = poLandscape
          PrinterSetup.PaperName = 'A4'
          PrinterSetup.PrinterName = 'Default'
          PrinterSetup.SaveDeviceSettings = False
          PrinterSetup.mmMarginBottom = 6350
          PrinterSetup.mmMarginLeft = 6350
          PrinterSetup.mmMarginRight = 6350
          PrinterSetup.mmMarginTop = 6350
          PrinterSetup.mmPaperHeight = 210000
          PrinterSetup.mmPaperWidth = 297000
          PrinterSetup.PaperSize = 9
          Left = 208
          Top = 160
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbRelCompras'
          object ppHeaderBand2: TppHeaderBand
            BeforePrint = HabilitaHeader
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLabel10: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ultimas Compras'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 4233
              mmLeft = 8467
              mmTop = 0
              mmWidth = 38100
              BandType = 0
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Fornecedor'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3439
              mmLeft = 8731
              mmTop = 3440
              mmWidth = 25400
              BandType = 0
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ult. Custo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 129646
              mmTop = 3440
              mmWidth = 15875
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
              Caption = 'Qtde'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 150019
              mmTop = 3440
              mmWidth = 10160
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
              Caption = 'Data'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3439
              mmLeft = 161396
              mmTop = 3440
              mmWidth = 13494
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
              mmLeft = 8731
              mmTop = 7142
              mmWidth = 184415
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
              Caption = 'Telefone'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3439
              mmLeft = 91546
              mmTop = 3440
              mmWidth = 20320
              BandType = 0
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Docto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3439
              mmLeft = 112977
              mmTop = 3440
              mmWidth = 12700
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
              Caption = 'L. Estoque'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3439
              mmLeft = 175948
              mmTop = 3440
              mmWidth = 17463
              BandType = 0
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'TME'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3704
              mmLeft = 81227
              mmTop = 3440
              mmWidth = 7620
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
            mmHeight = 3175
            mmPrintPosition = 0
            object ppDBText9: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'FORNECEDOR'
              DataPipeline = dbRelCompras
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 8731
              mmTop = 0
              mmWidth = 67204
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
              DataField = 'TELEFONE'
              DataPipeline = dbRelCompras
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 92075
              mmTop = 0
              mmWidth = 20373
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CUSTO'
              DataPipeline = dbRelCompras
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 132821
              mmTop = 0
              mmWidth = 12965
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
              DataField = 'QTDE'
              DataPipeline = dbRelCompras
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 147109
              mmTop = 0
              mmWidth = 12964
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
              DataField = 'DATA'
              DataPipeline = dbRelCompras
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 161396
              mmTop = 0
              mmWidth = 13758
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText102'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'NDOCTO'
              DataPipeline = dbRelCompras
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 113506
              mmTop = 0
              mmWidth = 15346
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
              DataField = 'LOCAL_ESTOQUE'
              DataPipeline = dbRelCompras
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 179123
              mmTop = 0
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText103'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataPipeline = dbRelCompras
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbRelCompras'
              mmHeight = 3175
              mmLeft = 81756
              mmTop = 0
              mmWidth = 7938
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 2646
            mmPrintPosition = 0
          end
        end
      end
      object ppDBText17: TppDBText
        UserName = 'DBText17'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataPipeline = dbRelSugestao
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 0
        mmWidth = 11377
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
        DataField = 'CODIGO'
        DataPipeline = dbRelSugestao
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbRelSugestao'
        mmHeight = 2910
        mmLeft = 0
        mmTop = 0
        mmWidth = 35983
        BandType = 4
      end
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
        mmWidth = 284163
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
        mmLeft = 268288
        mmTop = 2117
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText19: TppDBText
        UserName = 'DBText19'
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
        mmLeft = 1058
        mmTop = 2117
        mmWidth = 155575
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dbRelSugestao: TppDBPipeline
    DataSource = dsRelSugestao
    UserName = 'dbRelSugestao'
    Left = 317
    Top = 27
    object dbRelSugestaoppField1: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 0
    end
    object dbRelSugestaoppField2: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 1
    end
    object dbRelSugestaoppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_MARCA'
      FieldName = 'COD_MARCA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbRelSugestaoppField4: TppField
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object dbRelSugestaoppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_FORNECEDOR'
      FieldName = 'COD_FORNECEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbRelSugestaoppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VMM'
      FieldName = 'VMM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dbRelSugestaoppField7: TppField
      FieldAlias = 'FORNECEDOR'
      FieldName = 'FORNECEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object dbRelSugestaoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_GRUPO'
      FieldName = 'COD_GRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object dbRelSugestaoppField9: TppField
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object dbRelSugestaoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_SUBGRUPO'
      FieldName = 'COD_SUBGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object dbRelSugestaoppField11: TppField
      FieldAlias = 'SUBGRUPO'
      FieldName = 'SUBGRUPO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object dbRelSugestaoppField12: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 11
    end
    object dbRelSugestaoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE_PEDIDA'
      FieldName = 'QTDE_PEDIDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object dbRelSugestaoppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE_MAX'
      FieldName = 'QTDE_MAX'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object dbRelSugestaoppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE_MIN'
      FieldName = 'QTDE_MIN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object dbRelSugestaoppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 15
    end
  end
  object dsRelSugestao: TDataSource
    DataSet = dmRelatorios2.qryRelSugestaoCompra
    Left = 348
    Top = 27
  end
  object dsCompras: TDataSource
    DataSet = dmRelatorios2.qryRelCompras
    Left = 348
    Top = 60
  end
  object dbRelCompras: TppDBPipeline
    DataSource = dsCompras
    UserName = 'dbRelCompras'
    Left = 318
    Top = 60
    object dbRelComprasppField1: TppField
      FieldAlias = 'COD_FORNECEDOR'
      FieldName = 'COD_FORNECEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField2: TppField
      FieldAlias = 'FORNECEDOR'
      FieldName = 'FORNECEDOR'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField3: TppField
      FieldAlias = 'TELEFONE'
      FieldName = 'TELEFONE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField4: TppField
      FieldAlias = 'CUSTO'
      FieldName = 'CUSTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField5: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField6: TppField
      FieldAlias = 'QTDE'
      FieldName = 'QTDE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField7: TppField
      FieldAlias = 'NDOCTO'
      FieldName = 'NDOCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField8: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object dbRelComprasppField9: TppField
      FieldAlias = 'LOCAL_ESTOQUE'
      FieldName = 'LOCAL_ESTOQUE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
  end
  object stgfRelSugestaoCompra: TcxPropertiesStore
    Components = <
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
      end>
    StorageName = 'stgfRelSugestaoCompra'
    Left = 296
    Top = 181
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 190
    Top = 9
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 159
    Top = 9
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
end
