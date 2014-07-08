object FrmFiltraResumoComissoes: TFrmFiltraResumoComissoes
  Left = 213
  Top = 194
  Width = 373
  Height = 283
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Rel. Resumo de Comiss'#245'es'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 357
    Height = 245
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    ParentColor = True
    TabOrder = 0
    OnResize = pnlClientResize
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 221
      Height = 6
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Rel. Resumo de Comiss'#245'es'
      ParentFont = False
    end
    object Label3: TcxLabel
      Left = 18
      Top = 51
      Caption = 'Data Inicial'
      ParentFont = False
    end
    object Label1: TcxLabel
      Left = 191
      Top = 51
      Caption = 'Data Final'
      ParentFont = False
    end
    object Ini: TdxDateEdit
      Left = 80
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
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Fim: TdxDateEdit
      Left = 248
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
      OnKeyDown = IniKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Panel2: TPanel
      Left = 2
      Top = 203
      Width = 353
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      object RzBitBtn1: TcxButton
        Left = 164
        Top = 7
        Width = 91
        Height = 26
        Cursor = crHandPoint
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = ActPreviewExecute
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
        Left = 257
        Top = 7
        Width = 91
        Height = 26
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
    end
    object rdTrocaVenda: TRadioGroup
      Left = 16
      Top = 91
      Width = 333
      Height = 41
      Caption = ' Tipo de Movimento'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Todas '
        'Trocas '
        'Vendas')
      ParentFont = False
      TabOrder = 2
    end
    object rdStatus: TRadioGroup
      Left = 18
      Top = 143
      Width = 332
      Height = 41
      Caption = 'Status do Movimento'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemIndex = 0
      Items.Strings = (
        'Fechado'
        'Aberto '
        'Ambos')
      ParentFont = False
      TabOrder = 3
    end
  end
  object Actions: TActionList
    Left = 216
    Top = 65534
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActPreview: TAction
      Caption = '&Imprimir'
      OnExecute = ActPreviewExecute
    end
  end
  object rptResumoComissoes: TppReport
    AutoStop = False
    DataPipeline = dbResumoComissoes
    PrinterSetup.BinName = 'Default'
    PrinterSetup.DocumentName = 'Report'
    PrinterSetup.PaperName = 'A4'
    PrinterSetup.PrinterName = 'Default'
    PrinterSetup.SaveDeviceSettings = False
    PrinterSetup.mmMarginBottom = 6350
    PrinterSetup.mmMarginLeft = 6350
    PrinterSetup.mmMarginRight = 6350
    PrinterSetup.mmMarginTop = 6350
    PrinterSetup.mmPaperHeight = 297128
    PrinterSetup.mmPaperWidth = 210080
    PrinterSetup.PaperSize = 9
    Units = utScreenPixels
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
    Left = 248
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbResumoComissoes'
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 24077
      mmPrintPosition = 0
      object ppShape22: TppShape
        UserName = 'Shape22'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 20638
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
        mmHeight = 5644
        mmLeft = 794
        mmTop = 1323
        mmWidth = 26458
        BandType = 1
      end
      object ppSystemVariable3: TppSystemVariable
        UserName = 'SystemVariable3'
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
      object lblRelatorio: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Resumo de Comiss'#245'es'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5292
        mmLeft = 794
        mmTop = 7673
        mmWidth = 43603
        BandType = 1
      end
      object lblFiltro: TppLabel
        UserName = 'lblFiltro'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblFiltro'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1058
        mmTop = 14817
        mmWidth = 9737
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape7: TppShape
        UserName = 'Shape7'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 0
        mmWidth = 19315
        BandType = 0
      end
      object ppShape6: TppShape
        UserName = 'Shape6'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 156634
        mmTop = 0
        mmWidth = 21431
        BandType = 0
      end
      object ppShape5: TppShape
        UserName = 'Shape5'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 134938
        mmTop = 0
        mmWidth = 21960
        BandType = 0
      end
      object ppShape4: TppShape
        UserName = 'Shape4'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 109802
        mmTop = 0
        mmWidth = 25400
        BandType = 0
      end
      object ppShape3: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 0
        mmWidth = 32808
        BandType = 0
      end
      object ppShape2: TppShape
        UserName = 'Shape2'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 43921
        mmTop = 0
        mmWidth = 33338
        BandType = 0
      end
      object ppShape1: TppShape
        UserName = 'Shape1'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 43921
        BandType = 0
      end
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas a Vista'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 135467
        mmTop = 0
        mmWidth = 20373
        BandType = 0
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Vendas'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 179652
        mmTop = 0
        mmWidth = 16404
        BandType = 0
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendas a Prazo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 157692
        mmTop = 0
        mmWidth = 19579
        BandType = 0
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total da Comiss'#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3528
        mmLeft = 110861
        mmTop = 0
        mmWidth = 23548
        BandType = 0
      end
      object ppLabel9: TppLabel
        UserName = 'Label9'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Comiss'#227'o a Prazo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3528
        mmLeft = 77788
        mmTop = 0
        mmWidth = 31221
        BandType = 0
      end
      object ppLabel10: TppLabel
        UserName = 'Label10'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3528
        mmLeft = 0
        mmTop = 0
        mmWidth = 35719
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
        Caption = 'Comiss'#227'o a Vista'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3528
        mmLeft = 50800
        mmTop = 0
        mmWidth = 20320
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
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape14: TppShape
        UserName = 'Shape14'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 0
        mmWidth = 19315
        BandType = 4
      end
      object ppShape13: TppShape
        UserName = 'Shape13'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 156634
        mmTop = 0
        mmWidth = 21431
        BandType = 4
      end
      object ppShape12: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 134938
        mmTop = 0
        mmWidth = 21960
        BandType = 4
      end
      object ppShape11: TppShape
        UserName = 'Shape11'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 109802
        mmTop = 0
        mmWidth = 25400
        BandType = 4
      end
      object ppShape10: TppShape
        UserName = 'Shape10'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 0
        mmWidth = 32808
        BandType = 4
      end
      object ppShape9: TppShape
        UserName = 'Shape9'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 43921
        mmTop = 0
        mmWidth = 33338
        BandType = 4
      end
      object ppShape8: TppShape
        UserName = 'Shape8'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 43921
        BandType = 4
      end
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VISTA'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3175
        mmLeft = 135467
        mmTop = 0
        mmWidth = 20373
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
        DataField = 'TOTAL'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3175
        mmLeft = 179388
        mmTop = 0
        mmWidth = 16669
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
        DataField = 'PRAZO'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 0
        mmWidth = 19579
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
        DataField = 'VLR_COMVISTA'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3175
        mmLeft = 57150
        mmTop = 0
        mmWidth = 19050
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
        DataField = 'VLR_COMPRAZO'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3175
        mmLeft = 89959
        mmTop = 0
        mmWidth = 19050
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
        DataField = 'COMISSAO'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3175
        mmLeft = 111390
        mmTop = 0
        mmWidth = 23548
        BandType = 4
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VENDEDOR'
        DataPipeline = dbResumoComissoes
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 43127
        BandType = 4
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7408
      mmPrintPosition = 0
      object ppLine2: TppLine
        UserName = 'Line2'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Pen.Color = clGray
        Pen.Width = 2
        ParentWidth = True
        Weight = 1.500000000000000000
        mmHeight = 1058
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 8
      end
      object ppShape23: TppShape
        UserName = 'Shape23'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 1058
        mmTop = 265
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
        mmLeft = 3175
        mmTop = 2117
        mmWidth = 128852
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 3704
      mmPrintPosition = 0
      object ppShape21: TppShape
        UserName = 'Shape21'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 0
        mmTop = 0
        mmWidth = 43921
        BandType = 7
      end
      object ppShape20: TppShape
        UserName = 'Shape20'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 177800
        mmTop = 0
        mmWidth = 19315
        BandType = 7
      end
      object ppShape19: TppShape
        UserName = 'Shape19'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 156369
        mmTop = 0
        mmWidth = 21431
        BandType = 7
      end
      object ppShape18: TppShape
        UserName = 'Shape18'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 134938
        mmTop = 0
        mmWidth = 21960
        BandType = 7
      end
      object ppShape17: TppShape
        UserName = 'Shape17'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 109802
        mmTop = 0
        mmWidth = 25400
        BandType = 7
      end
      object ppShape16: TppShape
        UserName = 'Shape16'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 76994
        mmTop = 0
        mmWidth = 32808
        BandType = 7
      end
      object ppShape15: TppShape
        UserName = 'Shape15'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        mmHeight = 3704
        mmLeft = 43921
        mmTop = 0
        mmWidth = 33338
        BandType = 7
      end
      object ppDBCalc1: TppDBCalc
        UserName = 'DBCalc1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_COMVISTA'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3528
        mmLeft = 45244
        mmTop = 265
        mmWidth = 31221
        BandType = 7
      end
      object ppDBCalc2: TppDBCalc
        UserName = 'DBCalc2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_COMPRAZO'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3528
        mmLeft = 77788
        mmTop = 265
        mmWidth = 31221
        BandType = 7
      end
      object ppDBCalc3: TppDBCalc
        UserName = 'DBCalc3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COMISSAO'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3528
        mmLeft = 110861
        mmTop = 265
        mmWidth = 23548
        BandType = 7
      end
      object ppDBCalc4: TppDBCalc
        UserName = 'DBCalc4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VISTA'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3528
        mmLeft = 135467
        mmTop = 265
        mmWidth = 20373
        BandType = 7
      end
      object ppDBCalc5: TppDBCalc
        UserName = 'DBCalc5'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'PRAZO'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3440
        mmLeft = 157692
        mmTop = 0
        mmWidth = 19579
        BandType = 7
      end
      object ppDBCalc6: TppDBCalc
        UserName = 'DBCalc6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'TOTAL'
        DataPipeline = dbResumoComissoes
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbResumoComissoes'
        mmHeight = 3440
        mmLeft = 178065
        mmTop = 265
        mmWidth = 17992
        BandType = 7
      end
      object ppLabel6: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        AutoSize = False
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Geral:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 8
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3528
        mmLeft = 0
        mmTop = 265
        mmWidth = 35719
        BandType = 7
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dbResumoComissoes: TppDBPipeline
    DataSource = dsResumoComissoes
    UserName = 'dbResumoComissoes'
    Left = 276
    object dbResumoComissoesppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_COMVISTA'
      FieldName = 'VLR_COMVISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 0
    end
    object dbResumoComissoesppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_COMPRAZO'
      FieldName = 'VLR_COMPRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 1
    end
    object dbResumoComissoesppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COMISSAO'
      FieldName = 'COMISSAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 2
    end
    object dbResumoComissoesppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VISTA'
      FieldName = 'VISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 3
    end
    object dbResumoComissoesppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRAZO'
      FieldName = 'PRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object dbResumoComissoesppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object dbResumoComissoesppField7: TppField
      FieldAlias = 'VENDEDOR'
      FieldName = 'VENDEDOR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
  end
  object dsResumoComissoes: TDataSource
    DataSet = DmCaixa.Vendas_Agrupadas_Periodo
    Left = 152
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 270
    Top = 73
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 239
    Top = 73
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
