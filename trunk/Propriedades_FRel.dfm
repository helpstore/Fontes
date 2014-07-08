object FRelPropriedades: TFRelPropriedades
  Left = 319
  Top = 121
  BorderStyle = bsDialog
  Caption = 'Rel. Clientes - Propriedades'
  ClientHeight = 390
  ClientWidth = 389
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 389
    Height = 350
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 1
    object rdStatus: TRadioGroup
      Left = 10
      Top = 299
      Width = 237
      Height = 41
      Caption = 'Status dos registros'
      Columns = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemIndex = 0
      Items.Strings = (
        'Ativos'
        'Inativos')
      ParentFont = False
      TabOrder = 1
      OnEnter = edDtInicialEnter
      OnExit = edDtInicialExit
    end
    object GroupBox2: TGroupBox
      Left = 10
      Top = 8
      Width = 370
      Height = 291
      Caption = 'Geral'
      TabOrder = 0
      object Label6: TcxLabel
        Left = 11
        Top = 19
        Caption = 'Regi'#227'o'
        ParentFont = False
      end
      object Label1: TcxLabel
        Left = 11
        Top = 62
        Caption = 'Cidade'
        ParentFont = False
      end
      object Label2: TcxLabel
        Left = 11
        Top = 192
        Caption = 'Bairro'
        ParentFont = False
      end
      object Label3: TcxLabel
        Left = 11
        Top = 151
        Caption = 'Logradouro'
        ParentFont = False
      end
      object Label4: TcxLabel
        Left = 11
        Top = 105
        Caption = 'Cliente'
        ParentFont = False
      end
      object Label7: TcxLabel
        Left = 11
        Top = 234
        Caption = 'Vendedor'
        ParentFont = False
      end
      object CmbRegiao: TdxLookupEdit
        Left = 11
        Top = 33
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
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsRegiao
        LookupKeyValue = Null
      end
      object CmbCidade: TdxLookupEdit
        Left = 11
        Top = 76
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
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCidades
        LookupKeyValue = Null
      end
      object cmbBairro: TdxLookupEdit
        Left = 11
        Top = 206
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
        TabOrder = 4
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsbairro
        LookupKeyValue = Null
      end
      object cmbLogradouro: TdxLookupEdit
        Left = 11
        Top = 165
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
        TabOrder = 3
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsLogradouro
        LookupKeyValue = Null
      end
      object cmbCliente: TdxLookupEdit
        Left = 11
        Top = 119
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
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'PESSOA_FJ'
        ListSource = dsClientes
        LookupKeyValue = Null
      end
      object cmbVendedor: TdxLookupEdit
        Left = 11
        Top = 250
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
        TabOrder = 5
        OnEnter = edDtInicialEnter
        OnExit = edDtInicialExit
        OnKeyDown = cmbPessoaKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsVendedor
        LookupKeyValue = Null
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 350
    Width = 389
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 0
    object LblStatus: TcxLabel
      Left = 205
      Top = 13
      Caption = 'Status'
      ParentFont = False
      Visible = False
    end
    object RzBitBtn1: TcxButton
      Left = 9
      Top = 7
      Width = 91
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
      Width = 72
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
    object ANDA: TProgressBar
      Left = 176
      Top = 12
      Width = 207
      Height = 16
      TabOrder = 2
      Visible = False
    end
  end
  object Actions: TActionList
    Left = 112
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
      OnExecute = ActPreviewExecute
    end
    object ActFechar: TAction
      Caption = '&Fechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActBuscarProd: TAction
      Caption = '&Buscar F4'
      ShortCut = 115
    end
  end
  object dsClientes: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelCliente
    Left = 72
    Top = 128
  end
  object dbLstPropriedade: TppDBPipeline
    DataSource = dsRel
    UserName = 'DBPipeline1'
    Left = 240
    Top = 16
    object dbLstPropriedadeppField1: TppField
      FieldAlias = 'PROP_ENDERECO'
      FieldName = 'PROP_ENDERECO'
      FieldLength = 66
      DisplayWidth = 66
      Position = 0
    end
    object dbLstPropriedadeppField2: TppField
      FieldAlias = 'CLI_FONE'
      FieldName = 'CLI_FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object dbLstPropriedadeppField3: TppField
      FieldAlias = 'CLI_FAX'
      FieldName = 'CLI_FAX'
      FieldLength = 20
      DisplayWidth = 20
      Position = 2
    end
    object dbLstPropriedadeppField4: TppField
      FieldAlias = 'CLI_CPF_CGC'
      FieldName = 'CLI_CPF_CGC'
      FieldLength = 15
      DisplayWidth = 15
      Position = 3
    end
    object dbLstPropriedadeppField5: TppField
      FieldAlias = 'CLI_FANTASIA'
      FieldName = 'CLI_FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object dbLstPropriedadeppField6: TppField
      FieldAlias = 'PROP_ENDERECO1'
      FieldName = 'PROP_ENDERECO1'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbLstPropriedadeppField7: TppField
      FieldAlias = 'PROP_COMPLEMENTO'
      FieldName = 'PROP_COMPLEMENTO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 6
    end
    object dbLstPropriedadeppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CLI_CODIGO'
      FieldName = 'CLI_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object dbLstPropriedadeppField9: TppField
      FieldAlias = 'CLI_NOME_RAZAO'
      FieldName = 'CLI_NOME_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object dbLstPropriedadeppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROP_CODIGO'
      FieldName = 'PROP_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object dbLstPropriedadeppField11: TppField
      FieldAlias = 'PROP_NOME'
      FieldName = 'PROP_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object dbLstPropriedadeppField12: TppField
      FieldAlias = 'PROP_IE'
      FieldName = 'PROP_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 11
    end
    object dbLstPropriedadeppField13: TppField
      FieldAlias = 'PROP_CIDADE'
      FieldName = 'PROP_CIDADE'
      FieldLength = 53
      DisplayWidth = 53
      Position = 12
    end
    object dbLstPropriedadeppField14: TppField
      FieldAlias = 'PROP_CNPJ'
      FieldName = 'PROP_CNPJ'
      FieldLength = 20
      DisplayWidth = 20
      Position = 13
    end
    object dbLstPropriedadeppField15: TppField
      FieldAlias = 'PROP_CEP'
      FieldName = 'PROP_CEP'
      FieldLength = 8
      DisplayWidth = 8
      Position = 14
    end
    object dbLstPropriedadeppField16: TppField
      FieldAlias = 'PROP_REGIAO'
      FieldName = 'PROP_REGIAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 15
    end
  end
  object rptPropriedade: TppReport
    AutoStop = False
    DataPipeline = dbLstPropriedade
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
    Left = 267
    Top = 16
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbLstPropriedade'
    object ppTitleBand6: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 23548
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 23548
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
      object ppLabel62: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Listagem de Equipamentos/Propriedades'
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
        mmWidth = 77978
        BandType = 1
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
      object lblFiltro: TppLabel
        UserName = 'lblFiltro'
        CharWrap = True
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'FILTRO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        WordWrap = True
        mmHeight = 8467
        mmLeft = 794
        mmTop = 14552
        mmWidth = 196321
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 6879
      mmPrintPosition = 0
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1058
        mmTop = 6350
        mmWidth = 195527
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'C'#243'digo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 1323
        mmTop = 1852
        mmWidth = 12171
        BandType = 0
      end
      object ppLabel5: TppLabel
        UserName = 'Label5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Propriedade'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 16140
        mmTop = 1852
        mmWidth = 20616
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Insc. Estadual'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 75141
        mmTop = 1852
        mmWidth = 24872
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CNPJ'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 101865
        mmTop = 1852
        mmWidth = 21697
        BandType = 0
      end
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Cidade'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 125148
        mmTop = 1852
        mmWidth = 11790
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4128
        mmLeft = 170921
        mmTop = 1852
        mmWidth = 25665
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
      mmHeight = 8731
      mmPrintPosition = 0
      object ppDBText55: TppDBText
        UserName = 'DBText55'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_IE'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 75141
        mmTop = 0
        mmWidth = 24872
        BandType = 4
      end
      object ppDBText56: TppDBText
        UserName = 'DBText56'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_NOME'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 16140
        mmTop = 0
        mmWidth = 58208
        BandType = 4
      end
      object ppDBText58: TppDBText
        UserName = 'DBText58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_CODIGO'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 2910
        mmTop = 0
        mmWidth = 11906
        BandType = 4
      end
      object ppDBText59: TppDBText
        UserName = 'DBText59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_CNPJ'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3260
        mmLeft = 101865
        mmTop = 0
        mmWidth = 21697
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_CIDADE'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 125413
        mmTop = 0
        mmWidth = 43656
        BandType = 4
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_ENDERECO'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 3175
        mmTop = 3969
        mmWidth = 58208
        BandType = 4
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_COMPLEMENTO'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic, fsUnderline]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 68792
        mmTop = 3969
        mmWidth = 62442
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_CEP'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 170921
        mmTop = 0
        mmWidth = 25665
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_REGIAO'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsItalic, fsUnderline]
        ParentDataPipeline = False
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3175
        mmLeft = 139965
        mmTop = 3969
        mmWidth = 56092
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
      object ppDBText7: TppDBText
        UserName = 'DBText7'
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
        mmWidth = 127794
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 23813
      mmPrintPosition = 0
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Ttl. Prop. Relatorio:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 794
        mmTop = 3704
        mmWidth = 28046
        BandType = 7
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Weight = 0.750000000000000000
        mmHeight = 1323
        mmLeft = 1059
        mmTop = 2381
        mmWidth = 193411
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PROP_CODIGO'
        DataPipeline = dbLstPropriedade
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbLstPropriedade'
        mmHeight = 3440
        mmLeft = 29898
        mmTop = 3704
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CLI_NOME_RAZAO'
      DataPipeline = dbLstPropriedade
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbLstPropriedade'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Cliente: '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4106
          mmLeft = 4498
          mmTop = 1323
          mmWidth = 13949
          BandType = 3
          GroupNo = 0
        end
        object ppLine1: TppLine
          UserName = 'Line1'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 4498
          mmTop = 6085
          mmWidth = 79375
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          DataField = 'CLI_NOME_RAZAO'
          DataPipeline = dbLstPropriedade
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbLstPropriedade'
          mmHeight = 3704
          mmLeft = 18785
          mmTop = 1588
          mmWidth = 64294
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7673
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Weight = 0.750000000000000000
          mmHeight = 1323
          mmLeft = 4498
          mmTop = 794
          mmWidth = 70115
          BandType = 5
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Caption = 'Ttl. Prop. Cliente:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3387
          mmLeft = 5027
          mmTop = 1323
          mmWidth = 24871
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
          DataField = 'PROP_CODIGO'
          DataPipeline = dbLstPropriedade
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbLstPropriedade'
          mmHeight = 3440
          mmLeft = 30956
          mmTop = 1323
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dsRel: TDataSource
    AutoEdit = False
    DataSet = dmRelatorios2.qryRelPropriedade
    Left = 296
    Top = 16
  end
  object dsbairro: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelBairro
    Left = 72
    Top = 208
  end
  object dsCidades: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelCidade
    Left = 72
    Top = 80
  end
  object dsLogradouro: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelLogradouro
    Left = 72
    Top = 176
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelVendedor2
    Left = 72
    Top = 256
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelRegiao
    Left = 72
    Top = 40
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 198
    Top = 17
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 167
    Top = 17
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
