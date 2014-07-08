object FRel_CargaVenda: TFRel_CargaVenda
  Left = 344
  Top = 220
  Width = 427
  Height = 226
  Caption = 'Equilibrio de Venda - Devolu'#231#227'o - Carga'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel2: TPanel
    Left = 0
    Top = 163
    Width = 419
    Height = 36
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    DesignSize = (
      419
      36)
    object BtnOk: TcxButton
      Left = 250
      Top = 6
      Width = 77
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = BtnOkClick
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
      Left = 329
      Top = 6
      Width = 85
      Height = 25
      Cursor = crHandPoint
      Anchors = [akRight, akBottom]
      Cancel = True
      Caption = '&Fechar  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = RzBitBtn2Click
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
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 419
    Height = 163
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 6
      Top = 23
      Width = 403
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 1
      Caption = 'Equilibrio de Venda - Devolu'#231#227'o - Carga'
      ParentFont = False
      Transparent = True
    end
    object GroupBox1: TGroupBox
      Left = 6
      Top = 90
      Width = 404
      Height = 60
      Caption = ' [ Cliente ] '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label9: TcxLabel
        Left = 7
        Top = 21
        Caption = 'Cliente'
        ParentFont = False
        Transparent = True
      end
      object cmbCliente: TdxLookupEdit
        Left = 42
        Top = 17
        Width = 343
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
        OnEnter = DataInicialEnter
        OnExit = DataInicialExit
        OnKeyDown = DataInicialKeyDown
        DropDownWidth = 500
        ClearKey = 46
        ListFieldName = 'NOME_RAZAO;PESSOA_FJ'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCliente
        LookupKeyValue = Null
      end
    end
    object gbData: TGroupBox
      Left = 6
      Top = 31
      Width = 404
      Height = 58
      Caption = ' [ Data do Caixa ] '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 0
      object Label4: TcxLabel
        Left = 158
        Top = 26
        Caption = 'Final'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 11
        Top = 26
        Caption = 'Inicial'
        ParentFont = False
        Transparent = True
      end
      object edAs1: TcxLabel
        Left = 134
        Top = 24
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object edAs3: TcxLabel
        Tag = 1
        Left = 286
        Top = 23
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        Transparent = True
      end
      object DataInicial: TcxDateEdit
        Left = 41
        Top = 24
        EditValue = 0.383306018498843d
        ParentFont = False
        TabOrder = 0
        OnEnter = DataInicialEnter
        OnExit = DataInicialExit
        OnKeyDown = DataInicialKeyDown
        Width = 89
      end
      object DataFinal: TcxDateEdit
        Left = 185
        Top = 23
        EditValue = 72686.3833060185d
        ParentFont = False
        TabOrder = 1
        OnEnter = DataInicialEnter
        OnExit = DataInicialExit
        OnKeyDown = DataInicialKeyDown
        Width = 97
      end
    end
  end
  object dsCliente: TDataSource
    DataSet = DmServicos.SelPessoasFJ
    Left = 286
    Top = 121
  end
  object ppFatVendasCli: TppDBPipeline
    DataSource = dsFatVendasCli
    UserName = 'FatVendasCli'
    Left = 292
    Top = 24
    object ppFatVendasClippField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppFatVendasClippField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object ppFatVendasClippField3: TppField
      FieldAlias = 'FECHADA'
      FieldName = 'FECHADA'
      FieldLength = 1
      DisplayWidth = 1
      Position = 2
    end
    object ppFatVendasClippField4: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 100
      DisplayWidth = 100
      Position = 3
    end
    object ppFatVendasClippField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppFatVendasClippField6: TppField
      FieldAlias = 'PESSOA_RAZAO'
      FieldName = 'PESSOA_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppFatVendasClippField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppFatVendasClippField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'NATUREZA'
      FieldName = 'NATUREZA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppFatVendasClippField9: TppField
      FieldAlias = 'NOME_NATUREZA'
      FieldName = 'NOME_NATUREZA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object ppFatVendasClippField10: TppField
      FieldAlias = 'ENVIADA_CX'
      FieldName = 'ENVIADA_CX'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object ppFatVendasClippField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORMA_PGTO'
      FieldName = 'FORMA_PGTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppFatVendasClippField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppFatVendasClippField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_CUPOM'
      FieldName = 'NUM_CUPOM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object ppFatVendasClippField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'PROPRIEDADE'
      FieldName = 'PROPRIEDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppFatVendasClippField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONVENIADO'
      FieldName = 'CONVENIADO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppFatVendasClippField16: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 15
    end
    object ppFatVendasClippField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'LOCAL_COBRANCA'
      FieldName = 'LOCAL_COBRANCA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
    object ppFatVendasClippField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRES'
      FieldName = 'DESC_ACRES'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppFatVendasClippField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppFatVendasClippField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'DINHEIRO'
      FieldName = 'DINHEIRO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppFatVendasClippField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'CHEQUE'
      FieldName = 'CHEQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppFatVendasClippField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARTAO'
      FieldName = 'CARTAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object ppFatVendasClippField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'TICKET'
      FieldName = 'TICKET'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 22
    end
    object ppFatVendasClippField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 23
    end
    object ppFatVendasClippField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLRLIQUIDO'
      FieldName = 'VLRLIQUIDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 24
    end
    object ppFatVendasClippField26: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 80
      DisplayWidth = 80
      Position = 25
    end
    object ppFatVendasClippField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_PARC_LC'
      FieldName = 'VLR_PARC_LC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 26
    end
    object ppFatVendasClippField28: TppField
      Alignment = taRightJustify
      FieldAlias = 'TERCEIRO'
      FieldName = 'TERCEIRO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 27
    end
    object ppFatVendasClippField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'CARGA'
      FieldName = 'CARGA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 28
    end
    object ppFatVendasClippField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 29
    end
    object ppFatVendasClippField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 30
    end
    object ppFatVendasClippField32: TppField
      FieldAlias = 'REQUISICAO'
      FieldName = 'REQUISICAO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 31
    end
    object ppFatVendasClippField33: TppField
      FieldAlias = 'DESCRICAO'
      FieldName = 'DESCRICAO'
      FieldLength = 8
      DataType = dtBLOB
      DisplayWidth = 10
      Position = 32
      Searchable = False
      Sortable = False
    end
    object ppFatVendasClippField34: TppField
      FieldAlias = 'TIPO_VENDA'
      FieldName = 'TIPO_VENDA'
      FieldLength = 3
      DisplayWidth = 3
      Position = 33
    end
    object ppFatVendasClippField35: TppField
      FieldAlias = 'NOME_CONSUMIDOR'
      FieldName = 'NOME_CONSUMIDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 34
    end
    object ppFatVendasClippField36: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORCAMENTO'
      FieldName = 'ORCAMENTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 35
    end
    object ppFatVendasClippField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDO'
      FieldName = 'VENDEDO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object ppFatVendasClippField38: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 37
    end
  end
  object rptFatVendasCli: TppReport
    AutoStop = False
    DataPipeline = ppFatVendasCli
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 264
    Top = 24
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppFatVendasCli'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 31485
      mmPrintPosition = 0
      object ppLine9: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 197300
        BandType = 0
      end
      object ppDBText131: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PESSOA_RAZAO'
        DataPipeline = ppFatVendasCli
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppFatVendasCli'
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 10848
        mmWidth = 82815
        BandType = 0
      end
      object ppLabel62: TppLabel
        UserName = 'Label13'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmTop = 10848
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
        mmTop = 18256
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
        mmTop = 21960
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel69: TppLabel
        UserName = 'Label26'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmTop = 14552
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
        DataField = 'NOME_VENDEDOR'
        DataPipeline = ppFatVendasCli
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppFatVendasCli'
        mmHeight = 3969
        mmLeft = 136790
        mmTop = 10848
        mmWidth = 60325
        BandType = 0
      end
      object ppLabel70: TppLabel
        UserName = 'Label27'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'VENDEDOR'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 105834
        mmTop = 10848
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel71: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmTop = 14552
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
        mmTop = 25665
        mmWidth = 9790
        BandType = 0
      end
      object ppLabel73: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'CEP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 105834
        mmTop = 21960
        mmWidth = 6350
        BandType = 0
      end
      object ppLabel80: TppLabel
        UserName = 'Label44'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 14552
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 10848
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 10848
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 14552
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 18256
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 21960
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 21960
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 20373
        mmTop = 25665
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel88: TppLabel
        UserName = 'Label18'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
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
        mmTop = 18256
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 134144
        mmTop = 18256
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Caption = 'Equilibrio de Venda - Devolu'#231#227'o - Cargas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 6350
        mmLeft = 21431
        mmTop = 1852
        mmWidth = 154517
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 8996
        mmWidth = 197300
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 30691
        mmWidth = 197300
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'CARGA'
        DataPipeline = ppFatVendasCli
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppFatVendasCli'
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 14552
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PESSOA_RAZAO'
        DataPipeline = ppFatVendasCli
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppFatVendasCli'
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 18256
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PESSOA_RAZAO'
        DataPipeline = ppFatVendasCli
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppFatVendasCli'
        mmHeight = 3704
        mmLeft = 22754
        mmTop = 21960
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'PESSOA_RAZAO'
        DataPipeline = ppFatVendasCli
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppFatVendasCli'
        mmHeight = 3969
        mmLeft = 22754
        mmTop = 25665
        mmWidth = 82815
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
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsFatVendasCli: TDataSource
    DataSet = DMRelatorios.Fat_VendasCli
    Left = 320
    Top = 24
  end
end
