object FRelEnviaCaixa: TFRelEnviaCaixa
  Left = 291
  Top = 378
  BorderStyle = bsDialog
  Caption = '  Imprime Venda '
  ClientHeight = 141
  ClientWidth = 301
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
    Width = 301
    Height = 101
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object LBLNOME: TcxLabel
      Left = 45
      Top = 10
      Caption = 'Impress'#227'o  de Vendas'
      ParentFont = False
      Transparent = True
    end
    object LBLPEDIDO: TcxLabel
      Left = 45
      Top = 42
      Caption = 'Pedido N'#186' =>'
      ParentFont = False
      Transparent = True
    end
    object LblTipo: TcxLabel
      Left = 45
      Top = 71
      Caption = 'Tipo Impressora'
      ParentFont = False
      Transparent = True
      Visible = False
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 101
    Width = 301
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnimprimir: TcxButton
      Left = 8
      Top = 7
      Width = 85
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
      Left = 216
      Top = 7
      Width = 74
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
      TabOrder = 3
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
    object btnver: TcxButton
      Left = 93
      Top = 7
      Width = 88
      Height = 25
      Cursor = crHandPoint
      Action = ActVisualizar
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000000000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDD0000000DDDDDDDDDDDDDDDDD0000000DD0000000000000DD0000000D0FF
        FFFFFFFFFFF0D0000000D0F00000000000F0D0000000D0FFFFFFFFFFFFF0D000
        0000D0F00000000000F0D0000000D0FFFFFFFFFFFFF0D0000000D0F000000000
        00F0D0000000D0FFFFFFFFFFFFF0D0000000D0F00000000000F0D0000000D0FF
        FFFFFFFFFFF0D0000000D0F00000000000F0D0000000D0FFFFFFFFFFFFF0D000
        0000DD0000000000000DD0000000DDDDDDDDDDDDDDDDD0000000DDDDDDDDDDDD
        DDDDD0000000}
    end
    object Vias: TdxSpinEdit
      Left = 182
      Top = 7
      Width = 33
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
      Value = 1.000000000000000000
    end
  end
  object Actions: TActionList
    Left = 176
    Top = 72
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
    object ActVisualizar: TAction
      Caption = 'Visualizar'
      OnExecute = ActVisualizarExecute
    end
  end
  object Print: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 87 49'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Visualizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = False
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0h - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = 'Configurar Impress'#227'o'
    UsaGerenciadorImpr = True
    CorForm = clBtnFace
    CorFonte = clBlack
    Impressora = Epson
    PortaComunicacao = 'LPT1'
    TestarPorta = False
    TamanhoQteLinhas = 33
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = PrintNewPage
    OnBeforeNewPage = PrintBeforeNewPage
    Left = 248
    Top = 64
  end
  object DSource: TDataSource
    DataSet = DmVendas.Serie
    Left = 256
    Top = 16
  end
  object rptSerieNF: TppReport
    AutoStop = False
    DataPipeline = ppSerieNF
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.Orientation = poLandscape
    PrinterSetup.PaperName = 'Custom'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 184600
    PrinterSetup.mmPaperWidth = 220800
    PrinterSetup.PaperSize = 256
    Template.DatabaseSettings.DataPipeline = ppLayout
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_SERIE_NF'
    Template.FileName = 'D:\Updates\Manager\SerieNF(Piratini).rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 16
    Top = 4
    Version = '12.03'
    mmColumnWidth = 297000
    DataPipelineName = 'ppSerieNF'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 47096
      mmPrintPosition = 0
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 180182
        mmTop = 1058
        mmWidth = 17463
        BandType = 0
      end
      object Cliente: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DT_VENDA'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 11113
        mmWidth = 81756
        BandType = 0
      end
      object ppDBText17: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 16140
        mmWidth = 82021
        BandType = 0
      end
      object ppDBText3: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRO_RUA_NOME'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91811
        mmTop = 21167
        mmWidth = 82021
        BandType = 0
      end
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91546
        mmTop = 26194
        mmWidth = 82021
        BandType = 0
      end
      object ppDBText5: TppDBText
        UserName = 'DBText5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FORMA_PAGTO'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 91281
        mmTop = 31221
        mmWidth = 82021
        BandType = 0
      end
      object ppDBText1: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 1852
        mmWidth = 24342
        BandType = 0
      end
      object ppDBText2: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PARCELAMENTO'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 4763
        mmLeft = 794
        mmTop = 42069
        mmWidth = 205582
        BandType = 0
      end
      object lblParcelamento: TppLabel
        UserName = 'lblParcelamento'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblParcelamento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        Visible = False
        mmHeight = 4191
        mmLeft = 795
        mmTop = 42070
        mmWidth = 27136
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
      mmHeight = 11642
      mmPrintPosition = 0
      object ppDBText11: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 18256
        mmTop = 0
        mmWidth = 65881
        BandType = 4
      end
      object ppDBText6: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SEQUENCIA'
        DataPipeline = ppSerieNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 0
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText15: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 94721
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText16: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 143669
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
      object ppDBText18: TppDBText
        UserName = 'DBText16'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ITEM'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3440
        mmLeft = 183621
        mmTop = 0
        mmWidth = 14023
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppDBText19: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = ppSerieNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieNF'
        mmHeight = 3969
        mmLeft = 179652
        mmTop = 0
        mmWidth = 17198
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppSerieNF: TppDBPipeline
    DataSource = dsPedidos
    UserName = 'SerieNF'
    Left = 44
    Top = 4
  end
  object ppLayout: TppDBPipeline
    DataSource = DMCadastros.dsEdtSerieNF
    UserName = 'SerieNF1'
    Left = 72
    Top = 4
  end
  object rptSerieOrcaNF: TppReport
    AutoStop = False
    DataPipeline = ppSerieOrcaNF
    PassSetting = psTwoPass
    PrinterSetup.BinName = 'Cont. Feed - No Break'
    PrinterSetup.Collation = False
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'Carta'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 4000
    PrinterSetup.mmMarginLeft = 4000
    PrinterSetup.mmMarginRight = 4000
    PrinterSetup.mmMarginTop = 4000
    PrinterSetup.mmPaperHeight = 279000
    PrinterSetup.mmPaperWidth = 216000
    PrinterSetup.PaperSize = 1
    Template.DatabaseSettings.DataPipeline = ppLayoutOrca
    Template.DatabaseSettings.NameField = 'CNPJ'
    Template.DatabaseSettings.TemplateField = 'CONFIG_SERIE_ORC_NF'
    Template.FileName = 'C:\Documents and Settings\Administrador\Desktop\SerieNF.rtm'
    Template.SaveTo = stDatabase
    Template.Format = ftASCII
    Units = utMillimeters
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
    PreviewFormSettings.ZoomSetting = zsPercentage
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 82
    Top = 55
    Version = '12.03'
    mmColumnWidth = 74000
    DataPipelineName = 'ppSerieOrcaNF'
    object ppHeaderBand4: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 49477
      mmPrintPosition = 0
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 12965
        mmWidth = 21167
        BandType = 0
      end
      object ppDBText71: TppDBText
        UserName = 'Cliente'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'MRC_CODIGO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 24077
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText107: TppDBText
        UserName = 'Cliente1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_CLI'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 31485
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText108: TppDBText
        UserName = 'DBText3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 35190
        mmWidth = 82815
        BandType = 0
      end
      object ppDBText109: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_VENDA'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '000000#'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 14
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 5027
        mmLeft = 173832
        mmTop = 7673
        mmWidth = 20902
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
        mmTop = 24077
        mmWidth = 16404
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
        mmTop = 31485
        mmWidth = 6350
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
        mmTop = 35190
        mmWidth = 12700
        BandType = 0
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'PEDIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 16
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 6526
        mmLeft = 174150
        mmTop = 1323
        mmWidth = 20320
        BandType = 0
      end
      object ppDBText110: TppDBText
        UserName = 'DBText111'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'EMPRESA'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 22
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 8467
        mmLeft = 3969
        mmTop = 794
        mmWidth = 157163
        BandType = 0
      end
      object ppDBText111: TppDBText
        UserName = 'DBText112'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'ENDERECO_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 12965
        mmWidth = 78052
        BandType = 0
      end
      object ppDBText113: TppDBText
        UserName = 'DBText113'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 26458
        mmTop = 16669
        mmWidth = 30427
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
        Caption = 'DATA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4498
        mmLeft = 170127
        mmTop = 12965
        mmWidth = 10583
        BandType = 0
      end
      object ppSystemVariable4: TppSystemVariable
        UserName = 'SystemVariable3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtTime
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 181240
        mmTop = 17198
        mmWidth = 16933
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
        Caption = 'HORA:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3969
        mmLeft = 170127
        mmTop = 17198
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText115: TppDBText
        UserName = 'DBText115'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'BAIRRO_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 95779
        mmTop = 12965
        mmWidth = 20902
        BandType = 0
      end
      object ppDBText116: TppDBText
        UserName = 'DBText116'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 118534
        mmTop = 12965
        mmWidth = 22225
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
        Caption = 'FONE:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 16669
        mmWidth = 10583
        BandType = 0
      end
      object ppDBText118: TppDBText
        UserName = 'DBText118'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CGC_CPF_CLI'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 27781
        mmWidth = 82815
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
        mmTop = 27781
        mmWidth = 17992
        BandType = 0
      end
      object ppDBText117: TppDBText
        UserName = 'Cliente2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FANTASIA_CLI'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 24077
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText119: TppDBText
        UserName = 'DBText119'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'RG_IE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 27781
        mmWidth = 71438
        BandType = 0
      end
      object ppDBText121: TppDBText
        UserName = 'DBText121'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'FONE_CLIENTE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 22754
        mmTop = 38894
        mmWidth = 82815
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
        Caption = 'NOME FANTASIA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 24077
        mmWidth = 27781
        BandType = 0
      end
      object ppLabel28: TppLabel
        UserName = 'Label28'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmTop = 27781
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel30: TppLabel
        UserName = 'Label30'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
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
        mmTop = 38894
        mmWidth = 9790
        BandType = 0
      end
      object ppDBText124: TppDBText
        UserName = 'DBText124'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA_CAIXA'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 35190
        mmWidth = 71438
        BandType = 0
      end
      object ppLabel32: TppLabel
        UserName = 'Label32'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'CEP'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 105834
        mmTop = 35190
        mmWidth = 6350
        BandType = 0
      end
      object ppLine1: TppLine
        UserName = 'Line1'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 0
      end
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        StretchWithParent = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 794
        mmLeft = 0
        mmTop = 21960
        mmWidth = 208000
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
        Caption = 'C'#211'DIGO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 44979
        mmWidth = 12700
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
        Caption = 'DESCRI'#199#195'O'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 25135
        mmTop = 44979
        mmWidth = 19050
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
        Caption = 'UN.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 44979
        mmWidth = 6350
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
        Caption = 'QTDE.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 151078
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLabel38: TppLabel
        UserName = 'Label38'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'UNIT.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 173302
        mmTop = 44979
        mmWidth = 10583
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
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 192750
        mmTop = 44979
        mmWidth = 10583
        BandType = 0
      end
      object ppLine4: TppLine
        UserName = 'Line4'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 48948
        mmWidth = 208000
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 27781
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel45: TppLabel
        UserName = 'Label45'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 24077
        mmWidth = 2117
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 24077
        mmWidth = 2117
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 27781
        mmWidth = 2117
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 31485
        mmWidth = 2117
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 35190
        mmWidth = 2117
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 35190
        mmWidth = 2117
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 20373
        mmTop = 38894
        mmWidth = 2117
        BandType = 0
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44186
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText112: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CIDADE'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 136790
        mmTop = 31485
        mmWidth = 71438
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
        mmTop = 31485
        mmWidth = 12700
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
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 134144
        mmTop = 31485
        mmWidth = 2117
        BandType = 0
      end
      object ppLine7: TppLine
        UserName = 'Line7'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 44450
        mmWidth = 208000
        BandType = 0
      end
      object ppDBText114: TppDBText
        UserName = 'DBText107'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CNPJ_EMP'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4586
        mmLeft = 26194
        mmTop = 9260
        mmWidth = 39158
        BandType = 0
      end
      object ppLabel31: TppLabel
        UserName = 'Label31'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'MS'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 147638
        mmTop = 12965
        mmWidth = 4233
        BandType = 0
      end
      object ppLabel33: TppLabel
        UserName = 'Label33'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 141817
        mmTop = 12965
        mmWidth = 2117
        BandType = 0
      end
      object ppLabel46: TppLabel
        UserName = 'Label46'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'INSCR.EST:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 101600
        mmTop = 9260
        mmWidth = 21167
        BandType = 0
      end
      object ppLabel47: TppLabel
        UserName = 'Label47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '28.100.347-5'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 126471
        mmTop = 9260
        mmWidth = 25400
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
        Caption = 'CNPJ:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 14817
        mmTop = 9260
        mmWidth = 10583
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
        Caption = 'CEL:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 64029
        mmTop = 16669
        mmWidth = 8467
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
        Caption = '(67) 8409-4900'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 73290
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
      end
      object ppLabel57: TppLabel
        UserName = 'Label57'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'FAX:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4586
        mmLeft = 109538
        mmTop = 16669
        mmWidth = 8467
        BandType = 0
      end
      object ppLabel58: TppLabel
        UserName = 'Label58'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '(67) 3422-5706'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4586
        mmLeft = 122238
        mmTop = 16669
        mmWidth = 29633
        BandType = 0
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
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 4498
      mmPrintPosition = 0
      object ppDBText120: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_PRODUTO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 3175
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText122: TppDBText
        UserName = 'DBText2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRD_GRADE'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '#,0.0;-#,0.0'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 146844
        mmTop = 265
        mmWidth = 14817
        BandType = 4
      end
      object ppDBText123: TppDBText
        UserName = 'DBText15'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO_LIQ'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 168540
        mmTop = 0
        mmWidth = 14552
        BandType = 4
      end
      object ppDBText125: TppDBText
        UserName = 'DBText71'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_ITEM'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 183357
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppDBText126: TppDBText
        UserName = 'DBText110'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'GRD_NUMERO'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = '!99999;0; '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 137319
        mmTop = 0
        mmWidth = 7673
        BandType = 4
      end
      object ppDBText127: TppDBText
        UserName = 'DBText11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRODUTO'
        DataPipeline = ppSerieOrcaNF
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 23019
        mmTop = 0
        mmWidth = 111125
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 35719
      mmPrintPosition = 0
      object ppLabel20: TppLabel
        UserName = 'Label20'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '+/-'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 166423
        mmTop = 5027
        mmWidth = 6350
        BandType = 8
      end
      object ppDBText128: TppDBText
        UserName = 'DBText108'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DESC_ACRESC'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 4763
        mmWidth = 25400
        BandType = 8
      end
      object ppDBText129: TppDBText
        UserName = 'DBText6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 8996
        mmWidth = 25400
        BandType = 8
      end
      object ppSystemVariable5: TppSystemVariable
        UserName = 'SystemVariable4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageNo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 191030
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppLabel40: TppLabel
        UserName = 'Label40'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = '/'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 4057
        mmLeft = 194734
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageCount
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4057
        mmLeft = 198173
        mmTop = 23813
        mmWidth = 2117
        BandType = 8
      end
      object ppDBText130: TppDBText
        UserName = 'DBText123'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL_BRUTO'
        DataPipeline = ppSerieOrcaNF
        DisplayFormat = 'R$#,0.00;-R$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4057
        mmLeft = 175419
        mmTop = 529
        mmWidth = 25400
        BandType = 8
      end
      object ppLabel42: TppLabel
        UserName = 'Label42'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 162190
        mmTop = 794
        mmWidth = 10583
        BandType = 8
      end
      object ppDBRichText1: TppDBRichText
        UserName = 'DBRichText1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'OBSERVACAO'
        DataPipeline = ppSerieOrcaNF
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 9790
        mmLeft = 27517
        mmTop = 19579
        mmWidth = 147373
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel41: TppLabel
        UserName = 'Label41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'OBSERVA'#199#195'O:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 3704
        mmTop = 19050
        mmWidth = 23283
        BandType = 8
      end
      object ppLine6: TppLine
        UserName = 'Line6'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 13758
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 4498
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel60: TppLabel
        UserName = 'Label60'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 794
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel61: TppLabel
        UserName = 'Label61'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = ':'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3175
        mmLeft = 173197
        mmTop = 8202
        mmWidth = 1693
        BandType = 8
      end
      object ppLabel12: TppLabel
        UserName = 'Label12'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'TOTAL LIQUIDO'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4057
        mmLeft = 145257
        mmTop = 8731
        mmWidth = 27517
        BandType = 8
      end
      object ppLine5: TppLine
        UserName = 'Line5'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        ParentWidth = True
        Style = lsDouble
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 0
        mmTop = 0
        mmWidth = 208000
        BandType = 8
      end
      object ppLabel43: TppLabel
        UserName = 'Label43'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENDEDOR:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 7938
        mmTop = 15346
        mmWidth = 19050
        BandType = 8
      end
      object ppDBRichText2: TppDBRichText
        UserName = 'DBRichText2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_VENDEDOR'
        DataPipeline = ppSerieOrcaNF
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 4233
        mmLeft = 27517
        mmTop = 15610
        mmWidth = 51065
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel21: TppLabel
        UserName = 'Label21'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'ASSINATURA'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 75142
        mmTop = 1058
        mmWidth = 21167
        BandType = 8
      end
      object ppDBRichText3: TppDBRichText
        UserName = 'DBRichText3'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'MS Sans Serif'
        Font.Size = 8
        Font.Style = []
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PARCELAMENTO'
        DataPipeline = ppSerieOrcaNF
        DataPipelineName = 'ppSerieOrcaNF'
        mmHeight = 7938
        mmLeft = 2646
        mmTop = 5556
        mmWidth = 71438
        BandType = 8
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        mmLeftMargin = 794
      end
      object ppLabel29: TppLabel
        UserName = 'Label29'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'VENCIMENTO:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Courier New'
        Font.Size = 10
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 4057
        mmLeft = 2646
        mmTop = 1058
        mmWidth = 23283
        BandType = 8
      end
    end
    object ppParameterList4: TppParameterList
    end
  end
  object ppLayoutOrca: TppDBPipeline
    DataSource = DMCadastros.dsSerieOrcNF
    UserName = 'LayoutOrca'
    Left = 50
    Top = 55
  end
  object ppSerieOrcaNF: TppDBPipeline
    DataSource = DmVendas2.dsSeries_ORC_NF
    UserName = 'SerieOrcaNF'
    Left = 18
    Top = 55
    object ppSerieOrcaNFppField1: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppSerieOrcaNFppField2: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 60
      DisplayWidth = 60
      Position = 1
    end
    object ppSerieOrcaNFppField3: TppField
      FieldAlias = 'ENDERECO_CLI'
      FieldName = 'ENDERECO_CLI'
      FieldLength = 100
      DisplayWidth = 100
      Position = 2
    end
    object ppSerieOrcaNFppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppSerieOrcaNFppField5: TppField
      FieldAlias = 'DT_VENDA'
      FieldName = 'DT_VENDA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppSerieOrcaNFppField6: TppField
      FieldAlias = 'DATA_CAIXA'
      FieldName = 'DATA_CAIXA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppSerieOrcaNFppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object ppSerieOrcaNFppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ITEM'
      FieldName = 'DESC_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppSerieOrcaNFppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppSerieOrcaNFppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_BRUTO'
      FieldName = 'TOTAL_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppSerieOrcaNFppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_CUPOM'
      FieldName = 'NUM_CUPOM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object ppSerieOrcaNFppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object ppSerieOrcaNFppField13: TppField
      FieldAlias = 'NOME_VENDEDOR'
      FieldName = 'NOME_VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 12
    end
    object ppSerieOrcaNFppField14: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object ppSerieOrcaNFppField15: TppField
      FieldAlias = 'FORMA_PAGTO'
      FieldName = 'FORMA_PAGTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 14
    end
    object ppSerieOrcaNFppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object ppSerieOrcaNFppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object ppSerieOrcaNFppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object ppSerieOrcaNFppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO_LIQ'
      FieldName = 'PRC_UNITARIO_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object ppSerieOrcaNFppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object ppSerieOrcaNFppField21: TppField
      FieldAlias = 'PARCELAMENTO'
      FieldName = 'PARCELAMENTO'
      FieldLength = 500
      DisplayWidth = 500
      Position = 20
    end
    object ppSerieOrcaNFppField22: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 21
    end
    object ppSerieOrcaNFppField23: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 22
    end
    object ppSerieOrcaNFppField24: TppField
      FieldAlias = 'COMPLEMENTO'
      FieldName = 'COMPLEMENTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 23
    end
    object ppSerieOrcaNFppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_ITEM_DESCTO'
      FieldName = 'PCT_ITEM_DESCTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 24
    end
    object ppSerieOrcaNFppField26: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 25
    end
    object ppSerieOrcaNFppField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object ppSerieOrcaNFppField28: TppField
      FieldAlias = 'CGC_CPF_CLI'
      FieldName = 'CGC_CPF_CLI'
      FieldLength = 20
      DisplayWidth = 20
      Position = 27
    end
    object ppSerieOrcaNFppField29: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 28
    end
    object ppSerieOrcaNFppField30: TppField
      FieldAlias = 'NOME_TIPO_DOCTO'
      FieldName = 'NOME_TIPO_DOCTO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
    object ppSerieOrcaNFppField31: TppField
      FieldAlias = 'RG_IE'
      FieldName = 'RG_IE'
      FieldLength = 15
      DisplayWidth = 15
      Position = 30
    end
    object ppSerieOrcaNFppField32: TppField
      FieldAlias = 'HORA'
      FieldName = 'HORA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 31
    end
    object ppSerieOrcaNFppField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_DESCTO_VENDA'
      FieldName = 'PCT_DESCTO_VENDA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 32
    end
    object ppSerieOrcaNFppField34: TppField
      FieldAlias = 'CPF_CGC'
      FieldName = 'CPF_CGC'
      FieldLength = 14
      DisplayWidth = 14
      Position = 33
    end
    object ppSerieOrcaNFppField35: TppField
      FieldAlias = 'CEP'
      FieldName = 'CEP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 34
    end
    object ppSerieOrcaNFppField36: TppField
      FieldAlias = 'CEP_EMP'
      FieldName = 'CEP_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 35
    end
    object ppSerieOrcaNFppField37: TppField
      FieldAlias = 'BAIRRO_EMP'
      FieldName = 'BAIRRO_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 36
    end
    object ppSerieOrcaNFppField38: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 37
    end
    object ppSerieOrcaNFppField39: TppField
      FieldAlias = 'FONE_CLIENTE'
      FieldName = 'FONE_CLIENTE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 38
    end
    object ppSerieOrcaNFppField40: TppField
      FieldAlias = 'ENDERECO_EMP'
      FieldName = 'ENDERECO_EMP'
      FieldLength = 80
      DisplayWidth = 80
      Position = 39
    end
    object ppSerieOrcaNFppField41: TppField
      FieldAlias = 'FANTASIA_CLI'
      FieldName = 'FANTASIA_CLI'
      FieldLength = 50
      DisplayWidth = 50
      Position = 40
    end
    object ppSerieOrcaNFppField42: TppField
      FieldAlias = 'EMPRESA'
      FieldName = 'EMPRESA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 41
    end
    object ppSerieOrcaNFppField43: TppField
      FieldAlias = 'CIDADE_EMP'
      FieldName = 'CIDADE_EMP'
      FieldLength = 50
      DisplayWidth = 50
      Position = 42
    end
    object ppSerieOrcaNFppField44: TppField
      FieldAlias = 'CNPJ_EMP'
      FieldName = 'CNPJ_EMP'
      FieldLength = 20
      DisplayWidth = 20
      Position = 43
    end
    object ppSerieOrcaNFppField45: TppField
      FieldAlias = 'OBSERVACAO'
      FieldName = 'OBSERVACAO'
      FieldLength = 200
      DisplayWidth = 200
      Position = 44
    end
    object ppSerieOrcaNFppField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'CONT_ITENS'
      FieldName = 'CONT_ITENS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 45
    end
    object ppSerieOrcaNFppField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 46
    end
    object ppSerieOrcaNFppField48: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO'
      FieldName = 'PESO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 47
    end
    object ppSerieOrcaNFppField49: TppField
      FieldAlias = 'DATA_VALIDADE'
      FieldName = 'DATA_VALIDADE'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 48
    end
    object ppSerieOrcaNFppField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'MRC_CODIGO'
      FieldName = 'MRC_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object ppSerieOrcaNFppField51: TppField
      FieldAlias = 'MRC_NOME'
      FieldName = 'MRC_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 50
    end
    object ppSerieOrcaNFppField52: TppField
      FieldAlias = 'GRD_GRADE'
      FieldName = 'GRD_GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 51
    end
    object ppSerieOrcaNFppField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_MATERIAL'
      FieldName = 'GRD_MATERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 52
    end
    object ppSerieOrcaNFppField54: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_COR'
      FieldName = 'GRD_COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 53
    end
    object ppSerieOrcaNFppField55: TppField
      FieldAlias = 'GRD_NOME_MATERIAL'
      FieldName = 'GRD_NOME_MATERIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 54
    end
    object ppSerieOrcaNFppField56: TppField
      FieldAlias = 'GRD_NOME_COR'
      FieldName = 'GRD_NOME_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 55
    end
    object ppSerieOrcaNFppField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_PERFIL'
      FieldName = 'GRD_PERFIL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object ppSerieOrcaNFppField58: TppField
      FieldAlias = 'GRD_NOME_PERFIL'
      FieldName = 'GRD_NOME_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 57
    end
    object ppSerieOrcaNFppField59: TppField
      FieldAlias = 'GRD_NUMERO'
      FieldName = 'GRD_NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 58
    end
    object ppSerieOrcaNFppField60: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRD_ORDEM'
      FieldName = 'GRD_ORDEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 59
    end
  end
  object dsPedidos: TDataSource
    DataSet = DmVendas2.qrySeriesNF
    Left = 101
    Top = 5
  end
end
