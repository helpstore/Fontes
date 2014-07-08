object FRelComissoesPendendes: TFRelComissoesPendendes
  Left = 221
  Top = 135
  BorderStyle = bsDialog
  Caption = 'Relat'#243'rio de Comiss'#245'es'
  ClientHeight = 289
  ClientWidth = 379
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
    Width = 379
    Height = 249
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 8
      Top = 33
      Width = 211
      Height = 1
      Shape = bsTopLine
    end
    object Label2: TcxLabel
      Left = 10
      Top = 41
      Caption = 'Vendedor'
      ParentFont = False
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Relat'#243'rio de Comiss'#245'es'
      ParentFont = False
    end
    object cmbVendedor: TdxLookupEdit
      Left = 10
      Top = 55
      Width = 361
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
      OnEnter = IniEnter
      OnExit = IniExit
      OnKeyDown = cmbPessoaKeyDown
      ClearKey = 46
      ListFieldName = 'NOME_RAZAO'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = DsVendedor
      LookupKeyValue = Null
    end
    object gbSituacao: TGroupBox
      Left = 11
      Top = 84
      Width = 360
      Height = 92
      Caption = 'Relat'#243'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Rd4: TRadioButton
        Left = 8
        Top = 18
        Width = 105
        Height = 17
        Caption = 'Sint'#233'tico'
        Checked = True
        TabOrder = 0
        TabStop = True
        OnClick = Rd5Click
      end
      object Rd5: TRadioButton
        Left = 88
        Top = 18
        Width = 65
        Height = 17
        Caption = 'Anal'#237'tico'
        TabOrder = 1
        OnClick = Rd5Click
      end
      object gbExibir: TGroupBox
        Left = 5
        Top = 42
        Width = 347
        Height = 39
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        object ck1: TCheckBox
          Left = 11
          Top = 13
          Width = 76
          Height = 17
          Caption = 'Comiss'#245'es'
          Checked = True
          State = cbChecked
          TabOrder = 0
        end
        object ck2: TCheckBox
          Left = 129
          Top = 13
          Width = 82
          Height = 17
          Caption = 'Bx. Receber'
          Checked = True
          State = cbChecked
          TabOrder = 1
        end
        object ck3: TCheckBox
          Left = 259
          Top = 13
          Width = 75
          Height = 17
          Caption = 'Par'#226'metros'
          Checked = True
          State = cbChecked
          TabOrder = 2
        end
      end
    end
    object GroupBox1: TGroupBox
      Left = 11
      Top = 178
      Width = 358
      Height = 63
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object SRd1: TRadioButton
        Left = 8
        Top = 18
        Width = 105
        Height = 17
        Caption = 'Abertas'
        TabOrder = 0
      end
      object SRd2: TRadioButton
        Left = 140
        Top = 18
        Width = 65
        Height = 17
        Caption = 'Geradas'
        TabOrder = 1
      end
      object SRd4: TRadioButton
        Left = 8
        Top = 38
        Width = 65
        Height = 17
        Caption = 'Quitadas'
        TabOrder = 2
      end
      object SRd3: TRadioButton
        Left = 262
        Top = 18
        Width = 81
        Height = 17
        Caption = 'Canceladas'
        TabOrder = 3
      end
      object SRd5: TRadioButton
        Left = 140
        Top = 38
        Width = 125
        Height = 17
        Caption = 'N'#227'o Comissionadas'
        TabOrder = 4
      end
      object sRd6: TRadioButton
        Left = 262
        Top = 38
        Width = 81
        Height = 17
        Caption = 'Todas'
        TabOrder = 5
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 249
    Width = 379
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object LblStatus: TcxLabel
      Left = 205
      Top = 13
      Caption = 'Status'
      ParentFont = False
      Visible = False
    end
    object RzBitBtn1: TcxButton
      Left = 5
      Top = 7
      Width = 91
      Height = 26
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
      Left = 98
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
    object ANDA: TProgressBar
      Left = 194
      Top = 12
      Width = 176
      Height = 16
      TabOrder = 2
      Visible = False
    end
  end
  object Actions: TActionList
    Left = 136
    Top = 56
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
      OnExecute = ActPreviewExecute
    end
  end
  object DsVendedor: TDataSource
    DataSet = DMRelatorios.SelVendedor
    Left = 173
    Top = 9
  end
  object rptComAnalitico: TppReport
    AutoStop = False
    DataPipeline = dbVendedor
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 208
    Top = 8
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbVendedor'
    object ppTitleBand1: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20638
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
        mmWidth = 197380
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
        mmWidth = 27781
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
      object ppLabel62: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de  Comiss'#245'es Anal'#237'tico'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 794
        mmTop = 7673
        mmWidth = 63712
        BandType = 1
      end
      object lblFiltro: TppLabel
        UserName = 'Label5'
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
        mmLeft = 794
        mmTop = 15081
        mmWidth = 194205
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 0
      mmPrintPosition = 0
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
      mmHeight = 15346
      mmPrintPosition = 0
      object Region: TppRegion
        UserName = 'Region'
        Pen.Style = psClear
        Stretch = True
        mmHeight = 8467
        mmLeft = 0
        mmTop = 265
        mmWidth = 196586
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
      end
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'NOME'
        DataPipeline = dbVendedor
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        ParentDataPipeline = False
        Transparent = True
        DataPipelineName = 'dbVendedor'
        mmHeight = 4233
        mmLeft = 19579
        mmTop = 1852
        mmWidth = 43127
        BandType = 4
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vendedor:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 10
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4233
        mmLeft = 1588
        mmTop = 1852
        mmWidth = 17463
        BandType = 4
      end
      object ppLine3: TppLine
        UserName = 'Line3'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 1588
        mmTop = 6350
        mmWidth = 61648
        BandType = 4
      end
      object SubVendas: TppSubReport
        UserName = 'SubVendas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbVendas'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9525
        mmWidth = 197380
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport4: TppChildReport
          AutoStop = False
          DataPipeline = dbVendas
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
          Left = 200
          Top = 112
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbVendas'
          object ppHeaderBand5: TppHeaderBand
            mmBottomOffset = 0
            mmHeight = 5821
            mmPrintPosition = 0
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
            object ppDBText1: TppDBText
              UserName = 'DBText1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'prd_cod_nome'
              DataPipeline = dbVendas
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3704
              mmLeft = 12171
              mmTop = 265
              mmWidth = 50006
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
              DataField = 'VDI_PRC_UNITARIO'
              DataPipeline = dbVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3683
              mmLeft = 63236
              mmTop = 265
              mmWidth = 17727
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
              DataField = 'VDI_DESCONTO'
              DataPipeline = dbVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3704
              mmLeft = 82286
              mmTop = 265
              mmWidth = 13758
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
              DataField = 'VDI_QTDE'
              DataPipeline = dbVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3704
              mmLeft = 96838
              mmTop = 265
              mmWidth = 12965
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
              DataField = 'VDI_TTL_ITEM'
              DataPipeline = dbVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3683
              mmLeft = 112713
              mmTop = 265
              mmWidth = 17727
              BandType = 4
            end
            object ppLine16: TppLine
              UserName = 'Line16'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4233
              mmLeft = 195527
              mmTop = 0
              mmWidth = 1058
              BandType = 4
            end
            object ppLine18: TppLine
              UserName = 'Line18'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 265
              mmTop = 4233
              mmWidth = 195263
              BandType = 4
            end
            object ppLine19: TppLine
              UserName = 'Line19'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Position = lpLeft
              Weight = 0.750000000000000000
              mmHeight = 4233
              mmLeft = 0
              mmTop = 0
              mmWidth = 1058
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
              DataField = 'SEQUENCIA'
              DataPipeline = dbVendas
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3683
              mmLeft = 529
              mmTop = 265
              mmWidth = 10319
              BandType = 4
            end
            object ppDBText50: TppDBText
              UserName = 'DBText50'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COM_VISTA'
              DataPipeline = dbVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3683
              mmLeft = 136261
              mmTop = 265
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText51: TppDBText
              UserName = 'DBText51'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COM_PRAZO'
              DataPipeline = dbVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3683
              mmLeft = 156104
              mmTop = 265
              mmWidth = 17727
              BandType = 4
            end
            object ppDBText52: TppDBText
              UserName = 'DBText52'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'ttl_comissao'
              DataPipeline = dbVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'ARIAL'
              Font.Size = 8
              Font.Style = [fsItalic]
              ParentDataPipeline = False
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'dbVendas'
              mmHeight = 3683
              mmLeft = 176477
              mmTop = 265
              mmWidth = 17727
              BandType = 4
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'CM_COD_VENDA'
            DataPipeline = dbVendas
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbVendas'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 17992
              mmPrintPosition = 0
              object ppShape1: TppShape
                UserName = 'Shape1'
                Gradient.EndColor = clWhite
                Gradient.StartColor = clWhite
                Gradient.Style = gsNone
                mmHeight = 17992
                mmLeft = 0
                mmTop = 0
                mmWidth = 195792
                BandType = 3
                GroupNo = 0
              end
              object pnlStatus: TppShape
                UserName = 'pnlStatus'
                Brush.Color = clGray
                Gradient.EndColor = clWhite
                Gradient.StartColor = clWhite
                Gradient.Style = gsNone
                Pen.Style = psClear
                mmHeight = 3704
                mmLeft = 265
                mmTop = 265
                mmWidth = 195527
                BandType = 3
                GroupNo = 0
              end
              object ppLabel11: TppLabel
                UserName = 'Label11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'C'#243'digo:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 3704
                mmTop = 4233
                mmWidth = 11906
                BandType = 3
                GroupNo = 0
              end
              object ppDBText10: TppDBText
                UserName = 'DBText10'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'CM_COD_VENDA'
                DataPipeline = dbVendas
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3704
                mmLeft = 15875
                mmTop = 4233
                mmWidth = 15346
                BandType = 3
                GroupNo = 0
              end
              object ppDBText12: TppDBText
                UserName = 'DBText101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VD_DATA'
                DataPipeline = dbVendas
                DisplayFormat = 'dd/mm/yyyy'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3704
                mmLeft = 48154
                mmTop = 4233
                mmWidth = 17463
                BandType = 3
                GroupNo = 0
              end
              object ppLabel12: TppLabel
                UserName = 'Label12'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Venda:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 32015
                mmTop = 4233
                mmWidth = 15875
                BandType = 3
                GroupNo = 0
              end
              object ppLabel13: TppLabel
                UserName = 'Label13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Dt. Cx.:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 66675
                mmTop = 4233
                mmWidth = 11113
                BandType = 3
                GroupNo = 0
              end
              object ppDBText13: TppDBText
                UserName = 'DBText13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VD_DT_CX'
                DataPipeline = dbVendas
                DisplayFormat = 'dd/mm/yy'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3704
                mmLeft = 78052
                mmTop = 4233
                mmWidth = 18521
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
                DataField = 'VD_TOTAL'
                DataPipeline = dbVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3704
                mmLeft = 114300
                mmTop = 4233
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLabel14: TppLabel
                UserName = 'Label14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ttl. Venda:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 97631
                mmTop = 4233
                mmWidth = 16404
                BandType = 3
                GroupNo = 0
              end
              object ppDBText15: TppDBText
                UserName = 'DBText15'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VD_DESC_ACRESC'
                DataPipeline = dbVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3704
                mmLeft = 146050
                mmTop = 4233
                mmWidth = 17198
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
                Caption = 'Lucro:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 133615
                mmTop = 4233
                mmWidth = 12171
                BandType = 3
                GroupNo = 0
              end
              object ppDBText16: TppDBText
                UserName = 'DBText16'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VD_TOTAL_LIQ'
                DataPipeline = dbVendas
                DisplayFormat = '#,0.00;(#,0.00)'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3683
                mmLeft = 176742
                mmTop = 4233
                mmWidth = 18256
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
                Caption = 'Vlr. Tll:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 164307
                mmTop = 4233
                mmWidth = 11906
                BandType = 3
                GroupNo = 0
              end
              object ppLabel31: TppLabel
                UserName = 'Label101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Nome:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 3704
                mmTop = 8731
                mmWidth = 9790
                BandType = 3
                GroupNo = 0
              end
              object ppDBText32: TppDBText
                UserName = 'DBText32'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VD_CLIENTE'
                DataPipeline = dbVendas
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3704
                mmLeft = 14023
                mmTop = 8731
                mmWidth = 63500
                BandType = 3
                GroupNo = 0
              end
              object ppLabel33: TppLabel
                UserName = 'Label33'
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
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3302
                mmLeft = 12171
                mmTop = 14023
                mmWidth = 10880
                BandType = 3
                GroupNo = 0
              end
              object ppLabel42: TppLabel
                UserName = 'Label42'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Unit'#225'rio'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3175
                mmLeft = 66411
                mmTop = 14023
                mmWidth = 14552
                BandType = 3
                GroupNo = 0
              end
              object ppLabel43: TppLabel
                UserName = 'Label43'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Lucro'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3175
                mmLeft = 83873
                mmTop = 14023
                mmWidth = 11906
                BandType = 3
                GroupNo = 0
              end
              object ppLabel46: TppLabel
                UserName = 'Label46'
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
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3175
                mmLeft = 99219
                mmTop = 14023
                mmWidth = 10319
                BandType = 3
                GroupNo = 0
              end
              object ppLabel47: TppLabel
                UserName = 'Label47'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ttl. Item'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3302
                mmLeft = 119327
                mmTop = 14023
                mmWidth = 10837
                BandType = 3
                GroupNo = 0
              end
              object ppLabel10: TppLabel
                UserName = 'Label10'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Entrada:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3704
                mmLeft = 97367
                mmTop = 8731
                mmWidth = 12965
                BandType = 3
                GroupNo = 0
              end
              object ppDBText31: TppDBText
                UserName = 'DBText31'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VD_ENTRADA'
                DataPipeline = dbVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'ARIAL'
                Font.Size = 9
                Font.Style = [fsItalic]
                ParentDataPipeline = False
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3683
                mmLeft = 110596
                mmTop = 8731
                mmWidth = 17727
                BandType = 3
                GroupNo = 0
              end
              object ppLabel101: TppLabel
                UserName = 'Label1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Seq.'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                mmHeight = 3302
                mmLeft = 4498
                mmTop = 14023
                mmWidth = 6011
                BandType = 3
                GroupNo = 0
              end
              object ppLabel50: TppLabel
                UserName = 'Label50'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cm. vista'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3175
                mmLeft = 139171
                mmTop = 14023
                mmWidth = 14552
                BandType = 3
                GroupNo = 0
              end
              object ppLabel52: TppLabel
                UserName = 'Label52'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Cm. Prazo'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3175
                mmLeft = 157163
                mmTop = 14023
                mmWidth = 16404
                BandType = 3
                GroupNo = 0
              end
              object ppLabel60: TppLabel
                UserName = 'Label60'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ttl. Com'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3175
                mmLeft = 179123
                mmTop = 14023
                mmWidth = 14817
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              PrintHeight = phDynamic
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 39952
              mmPrintPosition = 0
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc6'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'COM_VISTA'
                DataPipeline = dbVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3175
                mmLeft = 136261
                mmTop = 265
                mmWidth = 17727
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
                DataField = 'COM_PRAZO'
                DataPipeline = dbVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3175
                mmLeft = 156104
                mmTop = 265
                mmWidth = 17727
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc12: TppDBCalc
                UserName = 'DBCalc101'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ttl_comissao'
                DataPipeline = dbVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'ARIAL'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'dbVendas'
                mmHeight = 3175
                mmLeft = 176477
                mmTop = 265
                mmWidth = 17727
                BandType = 5
                GroupNo = 0
              end
              object ppLine1: TppLine
                UserName = 'Line1'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 529
                mmLeft = 134938
                mmTop = 3969
                mmWidth = 60854
                BandType = 5
                GroupNo = 0
              end
              object ppLine21: TppLine
                UserName = 'Line21'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4233
                mmLeft = 195527
                mmTop = 0
                mmWidth = 1058
                BandType = 5
                GroupNo = 0
              end
              object ppLine22: TppLine
                UserName = 'Line22'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Position = lpLeft
                Weight = 0.750000000000000000
                mmHeight = 4233
                mmLeft = 134673
                mmTop = 0
                mmWidth = 1058
                BandType = 5
                GroupNo = 0
              end
              object SubParametros: TppSubReport
                OnPrint = SubParametrosPrint
                UserName = 'SubParametros'
                ExpandAll = False
                KeepTogether = True
                NewPrintJob = False
                OutlineSettings.CreateNode = True
                ShiftRelativeTo = SubComissoes
                TraverseAllData = False
                DataPipelineName = 'dbParametro'
                mmHeight = 5027
                mmLeft = 0
                mmTop = 19579
                mmWidth = 197380
                BandType = 5
                GroupNo = 0
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                object ppChildReport3: TppChildReport
                  AutoStop = False
                  DataPipeline = dbParametro
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
                  Left = 200
                  Top = 112
                  Version = '12.03'
                  mmColumnWidth = 0
                  DataPipelineName = 'dbParametro'
                  object ppHeaderBand4: TppHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 11906
                    mmPrintPosition = 0
                    object ppLabel26: TppLabel
                      UserName = 'Label26'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Par'#226'metros'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      Transparent = True
                      mmHeight = 3281
                      mmLeft = 4498
                      mmTop = 529
                      mmWidth = 15494
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
                      Caption = 'Sequencia'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3704
                      mmLeft = 21431
                      mmTop = 7673
                      mmWidth = 15346
                      BandType = 0
                    end
                    object ppLine6: TppLine
                      UserName = 'Line6'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 21696
                      mmTop = 11642
                      mmWidth = 172509
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
                      Caption = 'Produto'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      Transparent = True
                      mmHeight = 3440
                      mmLeft = 39158
                      mmTop = 7938
                      mmWidth = 14288
                      BandType = 0
                    end
                    object ppLine10: TppLine
                      UserName = 'Line10'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 4498
                      mmTop = 3969
                      mmWidth = 17463
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
                      Caption = 'Ttl. Lucro Item'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      Transparent = True
                      mmHeight = 3281
                      mmLeft = 101600
                      mmTop = 8202
                      mmWidth = 19368
                      BandType = 0
                    end
                  end
                  object ppDetailBand4: TppDetailBand
                    Background1.Brush.Style = bsClear
                    Background1.Gradient.EndColor = clWhite
                    Background1.Gradient.StartColor = clWhite
                    Background1.Gradient.Style = gsNone
                    Background2.Brush.Style = bsClear
                    Background2.Gradient.EndColor = clWhite
                    Background2.Gradient.StartColor = clWhite
                    Background2.Gradient.Style = gsNone
                    mmBottomOffset = 0
                    mmHeight = 3704
                    mmPrintPosition = 0
                    object ppDBText27: TppDBText
                      UserName = 'DBText201'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'SEQUENCIA'
                      DataPipeline = dbParametro
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbParametro'
                      mmHeight = 3704
                      mmLeft = 21431
                      mmTop = 0
                      mmWidth = 15346
                      BandType = 4
                    end
                    object ppDBText30: TppDBText
                      UserName = 'DBText30'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'prd_cod_nome'
                      DataPipeline = dbParametro
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      Transparent = True
                      DataPipelineName = 'dbParametro'
                      mmHeight = 3704
                      mmLeft = 38365
                      mmTop = 0
                      mmWidth = 56886
                      BandType = 4
                    end
                    object ppDBText29: TppDBText
                      UserName = 'DBText29'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'TTL_DESCTO_ITEM'
                      DataPipeline = dbParametro
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbParametro'
                      mmHeight = 3440
                      mmLeft = 101071
                      mmTop = 0
                      mmWidth = 20638
                      BandType = 4
                    end
                  end
                  object ppSummaryBand4: TppSummaryBand
                    AlignToBottom = False
                    mmBottomOffset = 0
                    mmHeight = 6085
                    mmPrintPosition = 0
                  end
                  object ppGroup3: TppGroup
                    BreakName = 'P_CODIGO'
                    DataPipeline = dbParametro
                    GroupFileSettings.NewFile = False
                    GroupFileSettings.EmailFile = False
                    OutlineSettings.CreateNode = True
                    StartOnOddPage = False
                    UserName = 'Group3'
                    mmNewColumnThreshold = 0
                    mmNewPageThreshold = 0
                    DataPipelineName = 'dbParametro'
                    NewFile = False
                    object ppGroupHeaderBand3: TppGroupHeaderBand
                      mmBottomOffset = 0
                      mmHeight = 6085
                      mmPrintPosition = 0
                      object ppLabel29: TppLabel
                        UserName = 'Label29'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Perfil:'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 2900
                        mmLeft = 24606
                        mmTop = 1588
                        mmWidth = 7049
                        BandType = 3
                        GroupNo = 0
                      end
                      object ppLine11: TppLine
                        UserName = 'Line11'
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Weight = 0.750000000000000000
                        mmHeight = 1323
                        mmLeft = 24871
                        mmTop = 5292
                        mmWidth = 169334
                        BandType = 3
                        GroupNo = 0
                      end
                      object ppDBText28: TppDBText
                        UserName = 'DBText28'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_PERFIL'
                        DataPipeline = dbParametro
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 2900
                        mmLeft = 32015
                        mmTop = 1588
                        mmWidth = 35190
                        BandType = 3
                        GroupNo = 0
                      end
                    end
                    object ppGroupFooterBand3: TppGroupFooterBand
                      HideWhenOneDetail = False
                      mmBottomOffset = 0
                      mmHeight = 0
                      mmPrintPosition = 0
                    end
                  end
                  object ppGroup4: TppGroup
                    BreakName = 'P_FX_CODIGO'
                    DataPipeline = dbParametro
                    GroupFileSettings.NewFile = False
                    GroupFileSettings.EmailFile = False
                    OutlineSettings.CreateNode = True
                    StartOnOddPage = False
                    UserName = 'Group4'
                    mmNewColumnThreshold = 0
                    mmNewPageThreshold = 0
                    DataPipelineName = 'dbParametro'
                    NewFile = False
                    object ppGroupHeaderBand4: TppGroupHeaderBand
                      mmBottomOffset = 0
                      mmHeight = 5292
                      mmPrintPosition = 0
                      object ppLabel28: TppLabel
                        UserName = 'Label28'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Faixa de Valores:'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 2900
                        mmLeft = 29369
                        mmTop = 1323
                        mmWidth = 20384
                        BandType = 3
                        GroupNo = 1
                      end
                      object ppDBText34: TppDBText
                        UserName = 'DBText34'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_VLR_INICIAL'
                        DataPipeline = dbParametro
                        DisplayFormat = '$#,0.00;-$#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 2900
                        mmLeft = 65617
                        mmTop = 1323
                        mmWidth = 17992
                        BandType = 3
                        GroupNo = 1
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
                        mmLeft = 29633
                        mmTop = 5027
                        mmWidth = 164571
                        BandType = 3
                        GroupNo = 1
                      end
                      object ppLabel34: TppLabel
                        UserName = 'Label34'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Vlr. Inicial - '
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 2900
                        mmLeft = 50800
                        mmTop = 1323
                        mmWidth = 13991
                        BandType = 3
                        GroupNo = 1
                      end
                      object ppDBText35: TppDBText
                        UserName = 'DBText35'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_VLR_FINAL'
                        DataPipeline = dbParametro
                        DisplayFormat = '#,0.00;-#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 2900
                        mmLeft = 112977
                        mmTop = 1323
                        mmWidth = 17992
                        BandType = 3
                        GroupNo = 1
                      end
                      object ppLabel35: TppLabel
                        UserName = 'Label35'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Vlr. Final - '
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 2900
                        mmLeft = 99748
                        mmTop = 1323
                        mmWidth = 12721
                        BandType = 3
                        GroupNo = 1
                      end
                    end
                    object ppGroupFooterBand4: TppGroupFooterBand
                      HideWhenOneDetail = False
                      mmBottomOffset = 0
                      mmHeight = 0
                      mmPrintPosition = 0
                    end
                  end
                  object ppGroup5: TppGroup
                    BreakName = 'P_FX_D_CODIGO'
                    DataPipeline = dbParametro
                    GroupFileSettings.NewFile = False
                    GroupFileSettings.EmailFile = False
                    OutlineSettings.CreateNode = True
                    StartOnOddPage = False
                    UserName = 'Group5'
                    mmNewColumnThreshold = 0
                    mmNewPageThreshold = 0
                    DataPipelineName = 'dbParametro'
                    NewFile = False
                    object ppGroupHeaderBand5: TppGroupHeaderBand
                      mmBottomOffset = 0
                      mmHeight = 5292
                      mmPrintPosition = 0
                      object ppLabel36: TppLabel
                        UserName = 'Label36'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Faixa de Lucros:'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 3175
                        mmLeft = 34131
                        mmTop = 265
                        mmWidth = 19664
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppDBText36: TppDBText
                        UserName = 'DBText36'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_D_PCT_INI'
                        DataPipeline = dbParametro
                        DisplayFormat = '#,0.00;-#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 3704
                        mmLeft = 69321
                        mmTop = 265
                        mmWidth = 17992
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppLine12: TppLine
                        UserName = 'Line12'
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Weight = 0.750000000000000000
                        mmHeight = 1323
                        mmLeft = 34396
                        mmTop = 4498
                        mmWidth = 159809
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppLabel37: TppLabel
                        UserName = 'Label37'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Pct. Ini. - (%)'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 3175
                        mmLeft = 53975
                        mmTop = 265
                        mmWidth = 14944
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppDBText37: TppDBText
                        UserName = 'DBText37'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_D_PCT_FIN'
                        DataPipeline = dbParametro
                        DisplayFormat = '#,0.00;-#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 3969
                        mmLeft = 105040
                        mmTop = 265
                        mmWidth = 17992
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppLabel38: TppLabel
                        UserName = 'Label38'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Pct. Fim. - (%)'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 3175
                        mmLeft = 88106
                        mmTop = 265
                        mmWidth = 16447
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppDBText38: TppDBText
                        UserName = 'DBText38'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_D_PCT_PRAZO'
                        DataPipeline = dbParametro
                        DisplayFormat = '#,0.00;-#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 4233
                        mmLeft = 177007
                        mmTop = 265
                        mmWidth = 13758
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppLabel39: TppLabel
                        UserName = 'Label39'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Pct. Prazo- (%)'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 3175
                        mmLeft = 158486
                        mmTop = 265
                        mmWidth = 17992
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppDBText39: TppDBText
                        UserName = 'DBText39'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_D_PCT_VISTA'
                        DataPipeline = dbParametro
                        DisplayFormat = '#,0.00;-#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 3969
                        mmLeft = 141552
                        mmTop = 265
                        mmWidth = 15875
                        BandType = 3
                        GroupNo = 2
                      end
                      object ppLabel40: TppLabel
                        UserName = 'Label40'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Pct. Vista - (%)'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 3175
                        mmLeft = 123825
                        mmTop = 265
                        mmWidth = 17272
                        BandType = 3
                        GroupNo = 2
                      end
                    end
                    object ppGroupFooterBand5: TppGroupFooterBand
                      HideWhenOneDetail = False
                      mmBottomOffset = 0
                      mmHeight = 3969
                      mmPrintPosition = 0
                    end
                  end
                  object ppGroup6: TppGroup
                    BreakName = 'P_FX_D_PRD_CODIGO'
                    DataPipeline = dbParametro
                    GroupFileSettings.NewFile = False
                    GroupFileSettings.EmailFile = False
                    OutlineSettings.CreateNode = True
                    StartOnOddPage = False
                    UserName = 'Group6'
                    mmNewColumnThreshold = 0
                    mmNewPageThreshold = 0
                    DataPipelineName = 'dbParametro'
                    NewFile = False
                    object ppGroupHeaderBand6: TppGroupHeaderBand
                      mmBottomOffset = 0
                      mmHeight = 4763
                      mmPrintPosition = 0
                      object ppLabel41: TppLabel
                        UserName = 'Label41'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Faixa de Descto. Produto:'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 2900
                        mmLeft = 38365
                        mmTop = 0
                        mmWidth = 30522
                        BandType = 3
                        GroupNo = 3
                      end
                      object ppLine14: TppLine
                        UserName = 'Line14'
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Weight = 0.750000000000000000
                        mmHeight = 529
                        mmLeft = 21167
                        mmTop = 3969
                        mmWidth = 173038
                        BandType = 3
                        GroupNo = 3
                      end
                      object ppDBText42: TppDBText
                        UserName = 'DBText42'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_D_PRD_PCT_PRAZO'
                        DataPipeline = dbParametro
                        DisplayFormat = '#,0.00;-#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 3979
                        mmLeft = 121444
                        mmTop = 0
                        mmWidth = 13758
                        BandType = 3
                        GroupNo = 3
                      end
                      object ppLabel44: TppLabel
                        UserName = 'Label44'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Pct. Prazo- (%)'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 2900
                        mmLeft = 103452
                        mmTop = 0
                        mmWidth = 17399
                        BandType = 3
                        GroupNo = 3
                      end
                      object ppDBText43: TppDBText
                        UserName = 'DBText43'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        DataField = 'P_FX_D_PRD_PCT_VISTA'
                        DataPipeline = dbParametro
                        DisplayFormat = '#,0.00;-#,0.00'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlack
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        DataPipelineName = 'dbParametro'
                        mmHeight = 3704
                        mmLeft = 86784
                        mmTop = 0
                        mmWidth = 15875
                        BandType = 3
                        GroupNo = 3
                      end
                      object ppLabel45: TppLabel
                        UserName = 'Label401'
                        HyperlinkColor = clBlue
                        Border.BorderPositions = []
                        Border.Color = clBlack
                        Border.Style = psSolid
                        Border.Visible = False
                        Border.Weight = 1.000000000000000000
                        Caption = 'Pct. Vista - (%)'
                        Ellipsis = False
                        Font.Charset = DEFAULT_CHARSET
                        Font.Color = clBlue
                        Font.Name = 'ARIAL'
                        Font.Size = 7
                        Font.Style = [fsBold, fsItalic]
                        Transparent = True
                        mmHeight = 2900
                        mmLeft = 69056
                        mmTop = 0
                        mmWidth = 17272
                        BandType = 3
                        GroupNo = 3
                      end
                    end
                    object ppGroupFooterBand6: TppGroupFooterBand
                      HideWhenOneDetail = False
                      mmBottomOffset = 0
                      mmHeight = 0
                      mmPrintPosition = 0
                    end
                  end
                end
              end
              object SubComissoes: TppSubReport
                OnPrint = SubComissoesPrint
                UserName = 'SubComissoes'
                ExpandAll = False
                NewPrintJob = False
                OutlineSettings.CreateNode = True
                ShiftRelativeTo = SubBaixas
                TraverseAllData = False
                DataPipelineName = 'dbComissoes'
                mmHeight = 5027
                mmLeft = 0
                mmTop = 13494
                mmWidth = 197380
                BandType = 5
                GroupNo = 0
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                object ppChildReport2: TppChildReport
                  AutoStop = False
                  DataPipeline = dbComissoes
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
                  Left = 200
                  Top = 112
                  Version = '12.03'
                  mmColumnWidth = 0
                  DataPipelineName = 'dbComissoes'
                  object ppHeaderBand3: TppHeaderBand
                    AfterGenerate = SubComissoesPrint
                    mmBottomOffset = 0
                    mmHeight = 11642
                    mmPrintPosition = 0
                    object ppLabel18: TppLabel
                      UserName = 'Label18'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Comiss'#245'es'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      Transparent = True
                      mmHeight = 3281
                      mmLeft = 2381
                      mmTop = 3175
                      mmWidth = 15007
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
                      Caption = 'C'#243'd. Com'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 4688
                      mmTop = 7938
                      mmWidth = 13420
                      BandType = 0
                    end
                    object ppLine7: TppLine
                      UserName = 'Line7'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 7144
                      mmTop = 11377
                      mmWidth = 180182
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
                      Caption = 'C'#243'd. Rec.'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 21960
                      mmTop = 7938
                      mmWidth = 13081
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
                      Caption = 'Cod. Parc. '
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 57944
                      mmTop = 7938
                      mmWidth = 14859
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
                      Caption = 'Pct. Liberado'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 96044
                      mmTop = 7938
                      mmWidth = 19844
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
                      Caption = 'Pct. Pago'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 117740
                      mmTop = 7938
                      mmWidth = 15081
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
                      Caption = 'Vlr. Comissao'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 75142
                      mmTop = 7938
                      mmWidth = 20373
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
                      mmLeft = 2646
                      mmTop = 6615
                      mmWidth = 15081
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
                      Caption = 'Vlr. Liberado'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 133879
                      mmTop = 7938
                      mmWidth = 19844
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
                      Caption = 'Vlr. Receber'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 38100
                      mmTop = 7938
                      mmWidth = 18256
                      BandType = 0
                    end
                    object ppLabel61: TppLabel
                      UserName = 'Label61'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Atraso'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 159015
                      mmTop = 7938
                      mmWidth = 9525
                      BandType = 0
                    end
                    object ppLabel63: TppLabel
                      UserName = 'Label63'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Pct. Pagto'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3175
                      mmLeft = 169598
                      mmTop = 7938
                      mmWidth = 16933
                      BandType = 0
                    end
                  end
                  object ppDetailBand3: TppDetailBand
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
                    object ppDBText20: TppDBText
                      UserName = 'DBText20'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'CODIGO'
                      DataPipeline = dbComissoes
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 7144
                      mmTop = 0
                      mmWidth = 11377
                      BandType = 4
                    end
                    object ppDBText21: TppDBText
                      UserName = 'DBText21'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'COD_RECEBER'
                      DataPipeline = dbComissoes
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 20373
                      mmTop = 0
                      mmWidth = 14552
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
                      DataField = 'CODIGO_PARC'
                      DataPipeline = dbComissoes
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3175
                      mmLeft = 58738
                      mmTop = 0
                      mmWidth = 14023
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
                      DataField = 'PCT_LIBERADO'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 96838
                      mmTop = 0
                      mmWidth = 19050
                      BandType = 4
                    end
                    object ppDBText25: TppDBText
                      UserName = 'DBText25'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'PCT_PAGO'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 116946
                      mmTop = 0
                      mmWidth = 15875
                      BandType = 4
                    end
                    object ppDBText26: TppDBText
                      UserName = 'DBText26'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_TOTAL'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 78052
                      mmTop = 0
                      mmWidth = 17198
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
                      DataField = 'VLR_LIBERADO'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 136525
                      mmTop = 0
                      mmWidth = 17198
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
                      DataField = 'VLR_RECEBER'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 38894
                      mmTop = 0
                      mmWidth = 17198
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
                      DataField = 'PGT_ATRASO'
                      DataPipeline = dbComissoes
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3175
                      mmLeft = 159015
                      mmTop = 0
                      mmWidth = 9525
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
                      DataField = 'PGT_FX_PCT_PAGTO'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 169334
                      mmTop = 0
                      mmWidth = 17198
                      BandType = 4
                    end
                  end
                  object ppFooterBand3: TppFooterBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                  object ppSummaryBand3: TppSummaryBand
                    AlignToBottom = False
                    mmBottomOffset = 0
                    mmHeight = 11642
                    mmPrintPosition = 0
                    object ppLine8: TppLine
                      UserName = 'Line8'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 265
                      mmLeft = 37042
                      mmTop = 0
                      mmWidth = 115888
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
                      DataField = 'VLR_LIBERADO'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clGreen
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3175
                      mmLeft = 136261
                      mmTop = 794
                      mmWidth = 16933
                      BandType = 7
                    end
                    object ppDBCalc7: TppDBCalc
                      UserName = 'DBCalc7'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'VLR_TOTAL'
                      DataPipeline = dbComissoes
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbComissoes'
                      mmHeight = 3302
                      mmLeft = 78581
                      mmTop = 794
                      mmWidth = 17198
                      BandType = 7
                    end
                  end
                end
              end
              object SubBaixas: TppSubReport
                OnPrint = SubBaixasPrint
                UserName = 'SubBaixas'
                ExpandAll = False
                NewPrintJob = False
                OutlineSettings.CreateNode = True
                TraverseAllData = False
                DataPipelineName = 'dbBaixas'
                mmHeight = 5027
                mmLeft = 0
                mmTop = 7408
                mmWidth = 197380
                BandType = 5
                GroupNo = 0
                mmBottomOffset = 0
                mmOverFlowOffset = 0
                mmStopPosition = 0
                mmMinHeight = 0
                object ppChildReport1: TppChildReport
                  AutoStop = False
                  DataPipeline = dbBaixas
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
                  Left = 200
                  Top = 112
                  Version = '12.03'
                  mmColumnWidth = 0
                  DataPipelineName = 'dbBaixas'
                  object ppHeaderBand2: TppHeaderBand
                    mmBottomOffset = 0
                    mmHeight = 11113
                    mmPrintPosition = 0
                    object ppLabel5: TppLabel
                      UserName = 'Label1'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Caption = 'Baixas Receber'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlue
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      Transparent = True
                      mmHeight = 3281
                      mmLeft = 2381
                      mmTop = 2646
                      mmWidth = 20976
                      BandType = 0
                    end
                    object ppLine2: TppLine
                      UserName = 'Line2'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 529
                      mmLeft = 2381
                      mmTop = 6085
                      mmWidth = 22490
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
                      Caption = 'C'#243'digo'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 8329
                      mmTop = 7408
                      mmWidth = 9779
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
                      mmHeight = 265
                      mmLeft = 7144
                      mmTop = 10848
                      mmWidth = 113242
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
                      Caption = 'C'#243'd. Rec.'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 21453
                      mmTop = 7408
                      mmWidth = 13081
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
                      Caption = 'Dt. Baixa'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 38037
                      mmTop = 7408
                      mmWidth = 12107
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
                      Caption = 'Parcela'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taCentered
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 53457
                      mmTop = 7408
                      mmWidth = 10033
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
                      Caption = 'Vlr. Baixa'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 68812
                      mmTop = 7408
                      mmWidth = 12912
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
                      Caption = 'Vlr. Juros'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 86805
                      mmTop = 7408
                      mmWidth = 13081
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
                      Caption = 'Vlr. Liquido'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      mmHeight = 3302
                      mmLeft = 105252
                      mmTop = 7408
                      mmWidth = 15663
                      BandType = 0
                    end
                  end
                  object ppDetailBand2: TppDetailBand
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
                    object ppDBText6: TppDBText
                      UserName = 'DBText6'
                      HyperlinkColor = clBlue
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      DataField = 'CODIGO'
                      DataPipeline = dbBaixas
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 7144
                      mmTop = 0
                      mmWidth = 11377
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
                      DataField = 'CODIGO_CR'
                      DataPipeline = dbBaixas
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 19844
                      mmTop = 0
                      mmWidth = 14552
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
                      DataField = 'DT_BAIXA'
                      DataPipeline = dbBaixas
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 36513
                      mmTop = 0
                      mmWidth = 14023
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
                      DataField = 'PARCELA'
                      DataPipeline = dbBaixas
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 52388
                      mmTop = 0
                      mmWidth = 12171
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
                      DataField = 'VLR_BRUTO'
                      DataPipeline = dbBaixas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 66940
                      mmTop = 0
                      mmWidth = 15081
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
                      DataField = 'VLR_JUROS'
                      DataPipeline = dbBaixas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 85196
                      mmTop = 0
                      mmWidth = 15081
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
                      DataField = 'VALOR'
                      DataPipeline = dbBaixas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 105834
                      mmTop = 0
                      mmWidth = 15081
                      BandType = 4
                    end
                  end
                  object ppFooterBand2: TppFooterBand
                    mmBottomOffset = 0
                    mmHeight = 0
                    mmPrintPosition = 0
                  end
                  object ppSummaryBand2: TppSummaryBand
                    AlignToBottom = False
                    mmBottomOffset = 0
                    mmHeight = 5556
                    mmPrintPosition = 0
                    object ppLine5: TppLine
                      UserName = 'Line5'
                      Border.BorderPositions = []
                      Border.Color = clBlack
                      Border.Style = psSolid
                      Border.Visible = False
                      Border.Weight = 1.000000000000000000
                      Weight = 0.750000000000000000
                      mmHeight = 1588
                      mmLeft = 64294
                      mmTop = 0
                      mmWidth = 57415
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
                      DataField = 'VALOR'
                      DataPipeline = dbBaixas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 103981
                      mmTop = 529
                      mmWidth = 17198
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
                      DataField = 'VLR_BRUTO'
                      DataPipeline = dbBaixas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 64558
                      mmTop = 529
                      mmWidth = 17198
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
                      DataField = 'VLR_JUROS'
                      DataPipeline = dbBaixas
                      DisplayFormat = '#,0.00;-#,0.00'
                      Ellipsis = False
                      Font.Charset = DEFAULT_CHARSET
                      Font.Color = clBlack
                      Font.Name = 'ARIAL'
                      Font.Size = 8
                      Font.Style = [fsBold, fsItalic]
                      TextAlignment = taRightJustified
                      Transparent = True
                      DataPipelineName = 'dbBaixas'
                      mmHeight = 3302
                      mmLeft = 83344
                      mmTop = 529
                      mmWidth = 17198
                      BandType = 7
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 11642
      mmPrintPosition = 0
      object ppShape23: TppShape
        UserName = 'Shape23'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 3969
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
        mmTop = 6085
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText55: TppDBText
        UserName = 'DBText55'
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
        mmLeft = 1588
        mmTop = 6085
        mmWidth = 127794
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
    end
    object ppParameterList2: TppParameterList
    end
  end
  object dbVendas: TppDBPipeline
    DataSource = dsVendas
    UserName = 'dbVendas'
    Left = 241
    Top = 39
    object dbVendasppField1: TppField
      FieldAlias = 'VD_DATA'
      FieldName = 'VD_DATA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 0
    end
    object dbVendasppField2: TppField
      FieldAlias = 'VD_DT_CX'
      FieldName = 'VD_DT_CX'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object dbVendasppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL'
      FieldName = 'VD_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 2
    end
    object dbVendasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_DESC_ACRESC'
      FieldName = 'VD_DESC_ACRESC'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 3
    end
    object dbVendasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_TOTAL_LIQ'
      FieldName = 'VD_TOTAL_LIQ'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 4
    end
    object dbVendasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_QTDE'
      FieldName = 'VDI_QTDE'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dbVendasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_PRC_UNITARIO'
      FieldName = 'VDI_PRC_UNITARIO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object dbVendasppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_CUSTO'
      FieldName = 'VDI_CUSTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dbVendasppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_DESCONTO'
      FieldName = 'VDI_DESCONTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbVendasppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VDI_TTL_ITEM'
      FieldName = 'VDI_TTL_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object dbVendasppField11: TppField
      FieldAlias = 'PRD_CODIGO'
      FieldName = 'PRD_CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 10
    end
    object dbVendasppField12: TppField
      FieldAlias = 'PRD_NOME'
      FieldName = 'PRD_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object dbVendasppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_COD_CLIENTE'
      FieldName = 'VD_COD_CLIENTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object dbVendasppField14: TppField
      FieldAlias = 'VD_CLIENTE'
      FieldName = 'VD_CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 13
    end
    object dbVendasppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_ENTRADA'
      FieldName = 'VD_ENTRADA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object dbVendasppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'VD_COD_PAGTO'
      FieldName = 'VD_COD_PAGTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object dbVendasppField17: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 16
    end
    object dbVendasppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'CM_COD_VENDA'
      FieldName = 'CM_COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 17
    end
    object dbVendasppField19: TppField
      FieldAlias = 'prd_cod_nome'
      FieldName = 'prd_cod_nome'
      FieldLength = 90
      DisplayWidth = 90
      Position = 18
    end
    object dbVendasppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 19
    end
    object dbVendasppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'COM_VISTA'
      FieldName = 'COM_VISTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 20
    end
    object dbVendasppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'COM_PRAZO'
      FieldName = 'COM_PRAZO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 21
    end
    object dbVendasppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'ttl_comissao'
      FieldName = 'ttl_comissao'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
  end
  object dbBaixas: TppDBPipeline
    DataSource = dsBaixas
    UserName = 'dbBaixas'
    Left = 174
    Top = 40
    object dbBaixasppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 0
      Position = 0
    end
    object dbBaixasppField2: TppField
      FieldAlias = 'DT_BAIXA'
      FieldName = 'DT_BAIXA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 1
    end
    object dbBaixasppField3: TppField
      FieldAlias = 'PARCELA'
      FieldName = 'PARCELA'
      FieldLength = 6
      DisplayWidth = 6
      Position = 2
    end
    object dbBaixasppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_CR'
      FieldName = 'CODIGO_CR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbBaixasppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbBaixasppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_BRUTO'
      FieldName = 'VLR_BRUTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dbBaixasppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_JUROS'
      FieldName = 'VLR_JUROS'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
  end
  object dsBaixas: TDataSource
    DataSet = dmRelatorios2.qryRelComBaixas
    Left = 207
    Top = 39
  end
  object dsComissoes: TDataSource
    DataSet = dmRelatorios2.qryRelComissoes
    Left = 332
    Top = 8
  end
  object dbComissoes: TppDBPipeline
    DataSource = dsComissoes
    UserName = 'dbComissoes'
    Left = 302
    Top = 8
    object dbComissoesppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbComissoesppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDEDOR'
      FieldName = 'COD_VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbComissoesppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbComissoesppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_RECEBER'
      FieldName = 'COD_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbComissoesppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PARC'
      FieldName = 'CODIGO_PARC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbComissoesppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_LIBERADO'
      FieldName = 'PCT_LIBERADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dbComissoesppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_PAGO'
      FieldName = 'PCT_PAGO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object dbComissoesppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_TOTAL'
      FieldName = 'VLR_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 7
    end
    object dbComissoesppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_RECEBER'
      FieldName = 'VLR_RECEBER'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbComissoesppField10: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 1
      DisplayWidth = 1
      Position = 9
    end
    object dbComissoesppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_LIBERADO'
      FieldName = 'VLR_LIBERADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
    object dbComissoesppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'PGT_ATRASO'
      FieldName = 'PGT_ATRASO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 11
    end
    object dbComissoesppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PGT_FX_PCT_PAGTO'
      FieldName = 'PGT_FX_PCT_PAGTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
  end
  object dbParametro: TppDBPipeline
    DataSource = dsParametro
    UserName = 'dbParametro'
    Left = 302
    Top = 39
    object dbParametroppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object dbParametroppField2: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 1
    end
    object dbParametroppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbParametroppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'SEQUENCIA'
      FieldName = 'SEQUENCIA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbParametroppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_CODIGO'
      FieldName = 'P_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbParametroppField6: TppField
      FieldAlias = 'P_PERFIL'
      FieldName = 'P_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbParametroppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_BASE_CALC'
      FieldName = 'P_BASE_CALC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object dbParametroppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_CODIGO'
      FieldName = 'P_FX_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object dbParametroppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_VLR_INICIAL'
      FieldName = 'P_FX_VLR_INICIAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbParametroppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_VLR_FINAL'
      FieldName = 'P_FX_VLR_FINAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 9
    end
    object dbParametroppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_CODIGO'
      FieldName = 'P_FX_D_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 10
    end
    object dbParametroppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_PCT_INI'
      FieldName = 'P_FX_D_PCT_INI'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 11
    end
    object dbParametroppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_PCT_FIN'
      FieldName = 'P_FX_D_PCT_FIN'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 12
    end
    object dbParametroppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_PCT_VISTA'
      FieldName = 'P_FX_D_PCT_VISTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 13
    end
    object dbParametroppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_PCT_PRAZO'
      FieldName = 'P_FX_D_PCT_PRAZO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 14
    end
    object dbParametroppField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_PRD_CODIGO'
      FieldName = 'P_FX_D_PRD_CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object dbParametroppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_PRD_PCT_VISTA'
      FieldName = 'P_FX_D_PRD_PCT_VISTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 16
    end
    object dbParametroppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'P_FX_D_PRD_PCT_PRAZO'
      FieldName = 'P_FX_D_PRD_PCT_PRAZO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 17
    end
    object dbParametroppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'TTL_FATURAMENTO'
      FieldName = 'TTL_FATURAMENTO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 18
    end
    object dbParametroppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'TTL_DESCTO_ITEM'
      FieldName = 'TTL_DESCTO_ITEM'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 19
    end
    object dbParametroppField21: TppField
      FieldAlias = 'DT_INICIAL'
      FieldName = 'DT_INICIAL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 20
    end
    object dbParametroppField22: TppField
      FieldAlias = 'DT_FINAL'
      FieldName = 'DT_FINAL'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 21
    end
    object dbParametroppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'COM_VISTA'
      FieldName = 'COM_VISTA'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 22
    end
    object dbParametroppField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'COM_PRAZO'
      FieldName = 'COM_PRAZO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 23
    end
    object dbParametroppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'USUARIO'
      FieldName = 'USUARIO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
    object dbParametroppField26: TppField
      FieldAlias = 'DT_GERACAO'
      FieldName = 'DT_GERACAO'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object dbParametroppField27: TppField
      FieldAlias = 'HORA'
      FieldName = 'HORA'
      FieldLength = 0
      DataType = dtTime
      DisplayWidth = 10
      Position = 26
    end
    object dbParametroppField28: TppField
      FieldAlias = 'prd_cod_nome'
      FieldName = 'prd_cod_nome'
      FieldLength = 70
      DisplayWidth = 70
      Position = 27
    end
    object dbParametroppField29: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 28
    end
    object dbParametroppField30: TppField
      FieldAlias = 'PRD_NOME'
      FieldName = 'PRD_NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 29
    end
  end
  object dsParametro: TDataSource
    DataSet = dmRelatorios2.qryRelParametros
    Left = 332
    Top = 39
  end
  object dsVendas: TDataSource
    DataSet = dmRelatorios2.qryRelComVendas
    Left = 271
    Top = 39
  end
  object dsVendedorR: TDataSource
    DataSet = dmRelatorios2.qryRelComVendd
    Left = 271
    Top = 8
  end
  object dbVendedor: TppDBPipeline
    DataSource = dsVendedorR
    UserName = 'dbVendedor'
    Left = 241
    Top = 8
    object dbVendedorppField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbVendedorppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'VENDEDOR'
      FieldName = 'VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbVendedorppField3: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
  end
  object rptSintetico: TppReport
    AutoStop = False
    DataPipeline = dbRelSint
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
    PreviewFormSettings.ZoomSetting = zsPageWidth
    RTFSettings.DefaultFont.Charset = DEFAULT_CHARSET
    RTFSettings.DefaultFont.Color = clWindowText
    RTFSettings.DefaultFont.Height = -13
    RTFSettings.DefaultFont.Name = 'Arial'
    RTFSettings.DefaultFont.Style = []
    TextSearchSettings.DefaultString = '<Texto a localizar>'
    TextSearchSettings.Enabled = True
    Left = 77
    Top = 8
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbRelSint'
    object ppTitleBand2: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 20638
      mmPrintPosition = 0
      object ppShape2: TppShape
        UserName = 'Shape22'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 20638
        mmLeft = 0
        mmTop = 0
        mmWidth = 197380
        BandType = 1
      end
      object lblEmpresaSint: TppLabel
        UserName = 'lblEmpresaSint'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'lblEmpresaSint'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 14
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 5842
        mmLeft = 794
        mmTop = 1323
        mmWidth = 36068
        BandType = 1
      end
      object ppSystemVariable1: TppSystemVariable
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
      object ppLabel49: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Comiss'#245'es Sint'#233'tico'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4868
        mmLeft = 794
        mmTop = 8202
        mmWidth = 62569
        BandType = 1
      end
      object lblFiltroSint: TppLabel
        UserName = 'lblFiltroSint'
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
        mmLeft = 794
        mmTop = 15081
        mmWidth = 194205
        BandType = 1
      end
    end
    object ppHeaderBand6: TppHeaderBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 8731
      mmPrintPosition = 0
      object ppLabel53: TppLabel
        UserName = 'Label53'
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
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3683
        mmLeft = 10583
        mmTop = 4498
        mmWidth = 10964
        BandType = 0
      end
      object ppLine15: TppLine
        UserName = 'Line15'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 10583
        mmTop = 8467
        mmWidth = 168805
        BandType = 0
      end
      object ppLabel54: TppLabel
        UserName = 'Label201'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'd. Rec.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3683
        mmLeft = 25400
        mmTop = 4498
        mmWidth = 14690
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
        Caption = 'Cod. Parc. '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 3683
        mmLeft = 41275
        mmTop = 4498
        mmWidth = 16637
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
        Caption = 'Pct. Liberado'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3683
        mmLeft = 82021
        mmTop = 4498
        mmWidth = 20193
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
        Caption = 'Pct. Pago'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3704
        mmLeft = 104511
        mmTop = 4498
        mmWidth = 14817
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
        Caption = 'Vlr. Comissao'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3683
        mmLeft = 59267
        mmTop = 4498
        mmWidth = 21251
        BandType = 0
      end
      object ppLabel59: TppLabel
        UserName = 'Label59'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Vlr. Liberado'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3683
        mmLeft = 121444
        mmTop = 4498
        mmWidth = 19473
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
        Caption = 'Status'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 4498
        mmWidth = 37571
        BandType = 0
      end
    end
    object ppDetailBand6: TppDetailBand
      BeforePrint = ppDetailBand6BeforePrint
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
      object XStatus: TppShape
        UserName = 'XStatus'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Pen.Color = clWindow
        Pen.Style = psClear
        Pen.Width = 0
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 0
        mmWidth = 37571
        BandType = 4
      end
      object lblSinStatus: TppDBText
        UserName = 'lblSinStatus'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'STATUS'
        DataPipeline = dbRelSint
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 142082
        mmTop = 0
        mmWidth = 37571
        BandType = 4
      end
      object ppDBText40: TppDBText
        UserName = 'DBText202'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO'
        DataPipeline = dbRelSint
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 10583
        mmTop = 0
        mmWidth = 11377
        BandType = 4
      end
      object ppDBText41: TppDBText
        UserName = 'DBText41'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'COD_RECEBER'
        DataPipeline = dbRelSint
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 25400
        mmTop = 0
        mmWidth = 14552
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
        DataField = 'CODIGO_PARC'
        DataPipeline = dbRelSint
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 45508
        mmTop = 0
        mmWidth = 12171
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
        DataField = 'PCT_LIBERADO'
        DataPipeline = dbRelSint
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 82021
        mmTop = 0
        mmWidth = 19050
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
        DataField = 'PCT_PAGO'
        DataPipeline = dbRelSint
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 103717
        mmTop = 0
        mmWidth = 15875
        BandType = 4
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_TOTAL'
        DataPipeline = dbRelSint
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 62706
        mmTop = 0
        mmWidth = 17198
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
        DataField = 'VLR_LIBERADO'
        DataPipeline = dbRelSint
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3704
        mmLeft = 123296
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand10: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
      object ppShape4: TppShape
        UserName = 'Shape23'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 529
        mmWidth = 197644
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
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
      object ppDBText56: TppDBText
        UserName = 'DBText56'
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
        mmLeft = 4233
        mmTop = 2646
        mmWidth = 102659
        BandType = 8
      end
    end
    object ppSummaryBand6: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 10054
      mmPrintPosition = 0
      object ppLine20: TppLine
        UserName = 'Line20'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 58738
        mmTop = 0
        mmWidth = 102394
        BandType = 7
      end
      object ppDBCalc8: TppDBCalc
        UserName = 'DBCalc8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_LIBERADO'
        DataPipeline = dbRelSint
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clGreen
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3683
        mmLeft = 123296
        mmTop = 529
        mmWidth = 17198
        BandType = 7
      end
      object ppDBCalc11: TppDBCalc
        UserName = 'DBCalc11'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'VLR_TOTAL'
        DataPipeline = dbRelSint
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Name = 'ARIAL'
        Font.Size = 9
        Font.Style = [fsBold, fsItalic]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'dbRelSint'
        mmHeight = 3683
        mmLeft = 62177
        mmTop = 529
        mmWidth = 17198
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'COD_VENDEDOR'
      DataPipeline = dbRelSint
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbRelSint'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 5556
        mmPrintPosition = 0
        object ppDBText33: TppDBText
          UserName = 'DBText7'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NOME'
          DataPipeline = dbRelSint
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'dbRelSint'
          mmHeight = 3969
          mmLeft = 24871
          mmTop = 794
          mmWidth = 54769
          BandType = 3
          GroupNo = 0
        end
        object ppLabel51: TppLabel
          UserName = 'Label1'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Vendedor:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'ARIAL'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4233
          mmLeft = 7144
          mmTop = 529
          mmWidth = 17463
          BandType = 3
          GroupNo = 0
        end
        object ppLine17: TppLine
          UserName = 'Line17'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 7144
          mmTop = 5292
          mmWidth = 72761
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 7144
        mmPrintPosition = 0
        object ppLine23: TppLine
          UserName = 'Line201'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 59002
          mmTop = 0
          mmWidth = 120121
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc5: TppDBCalc
          UserName = 'DBCalc5'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VLR_LIBERADO'
          DataPipeline = dbRelSint
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbRelSint'
          mmHeight = 3704
          mmLeft = 123561
          mmTop = 0
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
          DataField = 'VLR_TOTAL'
          DataPipeline = dbRelSint
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'ARIAL'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'dbRelSint'
          mmHeight = 3704
          mmLeft = 62442
          mmTop = 0
          mmWidth = 17198
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dbRelSint: TppDBPipeline
    DataSource = dsRelSint
    UserName = 'dbRelSint'
    Left = 106
    Top = 8
    object dbRelSintppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object dbRelSintppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDEDOR'
      FieldName = 'COD_VENDEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbRelSintppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbRelSintppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_RECEBER'
      FieldName = 'COD_RECEBER'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object dbRelSintppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO_PARC'
      FieldName = 'CODIGO_PARC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object dbRelSintppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_PAGO'
      FieldName = 'PCT_PAGO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 5
    end
    object dbRelSintppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_TOTAL'
      FieldName = 'VLR_TOTAL'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 6
    end
    object dbRelSintppField8: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object dbRelSintppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_LIBERADO'
      FieldName = 'VLR_LIBERADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 8
    end
    object dbRelSintppField10: TppField
      FieldAlias = 'STATUS'
      FieldName = 'STATUS'
      FieldLength = 12
      DisplayWidth = 12
      Position = 9
    end
    object dbRelSintppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_LIBERADO'
      FieldName = 'PCT_LIBERADO'
      FieldLength = 0
      DataType = dtDouble
      DisplayWidth = 10
      Position = 10
    end
  end
  object dsRelSint: TDataSource
    DataSet = dmRelatorios2.qryRelComissaoSint
    Left = 135
    Top = 8
  end
  object stgFRelComissoesPendendes: TcxPropertiesStore
    Components = <
      item
        Component = ck1
        Properties.Strings = (
          'Action'
          'Alignment'
          'AllowGrayed'
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
          'State'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = ck2
        Properties.Strings = (
          'Action'
          'Alignment'
          'AllowGrayed'
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
          'State'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = ck3
        Properties.Strings = (
          'Action'
          'Alignment'
          'AllowGrayed'
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
          'State'
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
        Component = SRd1
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
        Component = SRd2
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
        Component = SRd3
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
        Component = SRd4
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
        Component = SRd5
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
        Component = sRd6
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
    StorageName = 'stgFRelComissoesPendendes'
    Left = 218
    Top = 72
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 318
    Top = 89
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 287
    Top = 89
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
