object FRelCotacoesPeriodo: TFRelCotacoesPeriodo
  Left = 275
  Top = 116
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Cota'#231#245'es por Per'#237'odo'
  ClientHeight = 254
  ClientWidth = 465
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnActivate = ActFecharExecute
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 465
    Height = 254
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object Label3: TcxLabel
      Left = 16
      Top = 51
      Caption = 'Data Inicial'
      ParentFont = False
    end
    object Label1: TcxLabel
      Left = 202
      Top = 51
      Caption = 'Data Final'
      ParentFont = False
    end
    object LblTitulo: TcxLabel
      Left = 10
      Top = 8
      Caption = 'Cota'#231#245'es por Per'#237'odo'
      ParentFont = False
    end
    object Label2: TcxLabel
      Left = 16
      Top = 81
      Caption = 'Fornecedor'
      ParentFont = False
    end
    object Label4: TcxLabel
      Left = 14
      Top = 108
      Caption = 'Transport.'
      ParentFont = False
    end
    object Ini: TdxDateEdit
      Left = 89
      Top = 45
      Width = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 0
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = cmbPessoaKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Fim: TdxDateEdit
      Left = 274
      Top = 45
      Width = 100
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 1
      OnEnter = IniEnter
      OnExit = FimExit
      OnKeyDown = cmbPessoaKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Panel2: TPanel
      Left = 2
      Top = 212
      Width = 461
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 5
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
        OnClick = ActFecharExecute
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
        Left = 205
        Top = 12
        Width = 248
        Height = 16
        TabOrder = 2
        Visible = False
      end
    end
    object TipoCotacao: TRadioGroup
      Left = 19
      Top = 131
      Width = 418
      Height = 41
      Caption = ' Tipo Cota'#231#227'o'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Ambas'
        'Abertas'
        'Fechadas')
      ParentFont = False
      TabOrder = 4
    end
    object cmbTransp: TdxLookupEdit
      Left = 88
      Top = 103
      Width = 349
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = cmbPessoaKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = dsTransp
      LookupKeyValue = Null
    end
    object cmbFornecedor: TdxLookupEdit
      Left = 88
      Top = 75
      Width = 348
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = cmbPessoaKeyDown
      ClearKey = 46
      ListFieldName = 'NOME_RAZAO'
      CanDeleteText = True
      KeyFieldName = 'PESSOA_FJ'
      ListSource = DsFornecedor
      LookupKeyValue = Null
    end
  end
  object Actions: TActionList
    Left = 60
    Top = 8
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
      OnExecute = ActPreviewExecute
    end
  end
  object DsFornecedor: TDataSource
    DataSet = DMRelatorios.lkpFornecedor
    Left = 360
    Top = 68
  end
  object dsTransp: TDataSource
    DataSet = DMRelatorios.lkpTransportadora
    Left = 360
    Top = 100
  end
  object rptCotacoesPeriodo: TppReport
    AutoStop = False
    DataPipeline = ppCotacoes
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
    Left = 215
    Top = 3
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppCotacoes'
    object ppTitleBand7: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object ppShape6: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 21696
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
      object ppLabel76: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Cota'#231#245'es por Per'#237'odo'
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
        mmWidth = 65405
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
        mmHeight = 4763
        mmLeft = 794
        mmTop = 15346
        mmWidth = 196321
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
        UserName = 'SystemVariable1'
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
        mmLeft = 168275
        mmTop = 1058
        mmWidth = 25400
        BandType = 1
      end
    end
    object ppHeaderBand4: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
    end
    object ppDetailBand7: TppDetailBand
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
      object ppDBText76: TppDBText
        UserName = 'DBText76'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'QUANTIDADE'
        DataPipeline = ppCotacoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 100542
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText77: TppDBText
        UserName = 'DBText77'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRC_UNITARIO'
        DataPipeline = ppCotacoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 118798
        mmTop = 0
        mmWidth = 18256
        BandType = 4
      end
      object ppDBText78: TppDBText
        UserName = 'DBText78'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PORC_DESC'
        DataPipeline = ppCotacoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 184944
        mmTop = 0
        mmWidth = 11113
        BandType = 4
      end
      object ppDBText80: TppDBText
        UserName = 'DBText80'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'UNIDADE'
        DataPipeline = ppCotacoes
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 75671
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
      object ppDBText81: TppDBText
        UserName = 'DBText81'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME_PRODUTO'
        DataPipeline = ppCotacoes
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 3969
        mmTop = 0
        mmWidth = 69056
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
        DataField = 'PRC_UNIT_ORIGINAL'
        DataPipeline = ppCotacoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 138907
        mmTop = 0
        mmWidth = 19844
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
        DataField = 'PRC_CUSTO'
        DataPipeline = ppCotacoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 162454
        mmTop = 0
        mmWidth = 17727
        BandType = 4
      end
      object ppDBText5: TppDBText
        UserName = 'DBText801'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SUBUNIDADE'
        DataPipeline = ppCotacoes
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppCotacoes'
        mmHeight = 4233
        mmLeft = 87313
        mmTop = 0
        mmWidth = 9790
        BandType = 4
      end
    end
    object ppFooterBand3: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppShape8: TppShape
        UserName = 'Shape8'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 264
        mmWidth = 197644
        BandType = 8
      end
      object ppSystemVariable6: TppSystemVariable
        UserName = 'SystemVariable6'
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
        mmLeft = 182298
        mmTop = 2381
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText6: TppDBText
        UserName = 'DBText5'
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
        mmLeft = 2117
        mmTop = 2381
        mmWidth = 127794
        BandType = 8
      end
    end
    object ppSummaryBand3: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 9260
      mmPrintPosition = 0
    end
    object ppGroup3: TppGroup
      BreakName = 'CODIGO'
      DataPipeline = ppCotacoes
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppCotacoes'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 22225
        mmPrintPosition = 0
        object ppDBText65: TppDBText
          UserName = 'DBText65'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'DESC_ACRESC'
          DataPipeline = ppCotacoes
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppCotacoes'
          mmHeight = 4233
          mmLeft = 160602
          mmTop = 9260
          mmWidth = 15346
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
          DataField = 'DATA'
          DataPipeline = ppCotacoes
          DisplayFormat = 'dd/mm/yy'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppCotacoes'
          mmHeight = 3440
          mmLeft = 12965
          mmTop = 9260
          mmWidth = 12700
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
          DataField = 'CODIGO'
          DataPipeline = ppCotacoes
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppCotacoes'
          mmHeight = 3528
          mmLeft = 529
          mmTop = 9261
          mmWidth = 11377
          BandType = 3
          GroupNo = 0
        end
        object ppDBText70: TppDBText
          UserName = 'DBText70'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TOTAL'
          DataPipeline = ppCotacoes
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppCotacoes'
          mmHeight = 4233
          mmLeft = 180975
          mmTop = 9261
          mmWidth = 15875
          BandType = 3
          GroupNo = 0
        end
        object ppLine12: TppLine
          UserName = 'Line12'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psInsideFrame
          Style = lsDouble
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 3969
          mmTop = 15610
          mmWidth = 192617
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
          Caption = 'Produto'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 4233
          mmTop = 16933
          mmWidth = 13335
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
          Caption = 'UND'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 76465
          mmTop = 16933
          mmWidth = 7673
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
          Caption = 'Qtde'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 108215
          mmTop = 16933
          mmWidth = 7938
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
          Caption = 'Vlr. Unit.'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 122238
          mmTop = 16933
          mmWidth = 14817
          BandType = 3
          GroupNo = 0
        end
        object ppLabel84: TppLabel
          UserName = 'Label84'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Desc(%)'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 182563
          mmTop = 16933
          mmWidth = 13494
          BandType = 3
          GroupNo = 0
        end
        object ppLine13: TppLine
          UserName = 'Line13'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 529
          mmLeft = 4233
          mmTop = 21431
          mmWidth = 192882
          BandType = 3
          GroupNo = 0
        end
        object ppLabel86: TppLabel
          UserName = 'Label86'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Codigo'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 0
          mmTop = 4234
          mmWidth = 12171
          BandType = 3
          GroupNo = 0
        end
        object ppLabel87: TppLabel
          UserName = 'Label87'
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
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4233
          mmLeft = 13229
          mmTop = 4234
          mmWidth = 7673
          BandType = 3
          GroupNo = 0
        end
        object ppLabel88: TppLabel
          UserName = 'Label88'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Desc/Acresc'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 155046
          mmTop = 4234
          mmWidth = 20902
          BandType = 3
          GroupNo = 0
        end
        object ppLabel90: TppLabel
          UserName = 'Label90'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4233
          mmLeft = 188384
          mmTop = 4234
          mmWidth = 8467
          BandType = 3
          GroupNo = 0
        end
        object ppShape7: TppShape
          UserName = 'Shape7'
          Gradient.EndColor = clWhite
          Gradient.StartColor = clWhite
          Gradient.Style = gsNone
          mmHeight = 265
          mmLeft = 0
          mmTop = 8731
          mmWidth = 197644
          BandType = 3
          GroupNo = 0
        end
        object ppDBText1: TppDBText
          UserName = 'DBText1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'FORNECEDOR'
          DataPipeline = ppCotacoes
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppCotacoes'
          mmHeight = 3440
          mmLeft = 27252
          mmTop = 9261
          mmWidth = 72496
          BandType = 3
          GroupNo = 0
        end
        object ppLabel1: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Fornecedor '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 4191
          mmLeft = 27252
          mmTop = 4234
          mmWidth = 20320
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
          Border.Weight = 1.000000000000000000
          DataField = 'NOME'
          DataPipeline = ppCotacoes
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 7
          Font.Style = []
          Transparent = True
          DataPipelineName = 'ppCotacoes'
          mmHeight = 4233
          mmLeft = 103188
          mmTop = 9261
          mmWidth = 45244
          BandType = 3
          GroupNo = 0
        end
        object ppLabel2: TppLabel
          UserName = 'Label2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Forma Pagto'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4191
          mmLeft = 103114
          mmTop = 4234
          mmWidth = 21505
          BandType = 3
          GroupNo = 0
        end
        object ppLabel3: TppLabel
          UserName = 'Label3'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Vlr. Org.'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4191
          mmLeft = 144992
          mmTop = 16933
          mmWidth = 13843
          BandType = 3
          GroupNo = 0
        end
        object ppLabel4: TppLabel
          UserName = 'Label4'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Vlr. Custo'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4191
          mmLeft = 163513
          mmTop = 16933
          mmWidth = 16595
          BandType = 3
          GroupNo = 0
        end
        object ppLabel5: TppLabel
          UserName = 'Label801'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Sub.'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          mmHeight = 4191
          mmLeft = 89429
          mmTop = 16933
          mmWidth = 7620
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 3969
        mmPrintPosition = 0
        object ppLine14: TppLine
          UserName = 'Line14'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Pen.Style = psDashDotDot
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 2117
          mmTop = 2117
          mmWidth = 195263
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object raCodeModule1: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList3: TppParameterList
    end
  end
  object ppCotacoes: TppDBPipeline
    DataSource = dsCotacoes
    UserName = 'Cotacoes'
    Left = 245
    Top = 4
    object ppCotacoesppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 0
      Position = 0
    end
    object ppCotacoesppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object ppCotacoesppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object ppCotacoesppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object ppCotacoesppField5: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object ppCotacoesppField6: TppField
      FieldAlias = 'FORNECEDOR'
      FieldName = 'FORNECEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object ppCotacoesppField7: TppField
      FieldAlias = 'NOME_PRODUTO'
      FieldName = 'NOME_PRODUTO'
      FieldLength = 66
      DisplayWidth = 66
      Position = 6
    end
    object ppCotacoesppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORC_DESC'
      FieldName = 'PORC_DESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object ppCotacoesppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNIT_ORIGINAL'
      FieldName = 'PRC_UNIT_ORIGINAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object ppCotacoesppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object ppCotacoesppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_CUSTO'
      FieldName = 'PRC_CUSTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object ppCotacoesppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object ppCotacoesppField13: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 12
    end
    object ppCotacoesppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBUNIDADE'
      FieldName = 'SUBUNIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppCotacoesppField15: TppField
      FieldAlias = 'FECHADO'
      FieldName = 'FECHADO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 14
    end
  end
  object dsCotacoes: TDataSource
    DataSet = DMRelatorios.qryRelCotacoes
    Left = 285
    Top = 4
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 246
    Top = 41
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 215
    Top = 41
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
