object FRelComiVendRecebimento: TFRelComiVendRecebimento
  Left = 247
  Top = 189
  BorderStyle = bsDialog
  Caption = 'Comiss'#245'es de Vendedor por Recebimento'
  ClientHeight = 288
  ClientWidth = 351
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
    Width = 351
    Height = 248
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 269
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Comiss'#245'es Por Recebimento'
      ParentFont = False
    end
    object Label12: TcxLabel
      Left = 8
      Top = 43
      Caption = 'Vendedor'
      ParentFont = False
    end
    object cmbVendedor: TdxLookupEdit
      Left = 9
      Top = 59
      Width = 332
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
    object gbData: TGroupBox
      Left = 11
      Top = 86
      Width = 330
      Height = 58
      Caption = 'Data'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object Label4: TcxLabel
        Left = 159
        Top = 25
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 10
        Top = 25
        Caption = 'Inicial'
        ParentFont = False
      end
      object edAs1: TcxLabel
        Left = 129
        Top = 16
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
        Left = 275
        Top = 16
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Ini: TcxDateEdit
        Left = 40
        Top = 21
        EditValue = 0.383298611111111d
        ParentFont = False
        TabOrder = 0
        Width = 86
      end
      object fim: TcxDateEdit
        Left = 184
        Top = 22
        EditValue = 0.383298611111111d
        ParentFont = False
        TabOrder = 1
        Width = 89
      end
    end
    object gbDetalhes: TGroupBox
      Left = 10
      Top = 193
      Width = 332
      Height = 47
      Caption = ' Leiaute de Exibi'#231#227'o  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      object ckVendas: TcxCheckBox
        Left = 104
        Top = 20
        Caption = 'Vendas'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 0
        Width = 59
      end
      object ckTrocas: TcxCheckBox
        Left = 180
        Top = 20
        Caption = 'Trocas'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 1
        Width = 55
      end
      object ckRecebimento: TcxCheckBox
        Left = 8
        Top = 20
        Caption = 'Recebimentos'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 2
        Width = 92
      end
      object ckResumo: TcxCheckBox
        Left = 256
        Top = 20
        Caption = 'Resumo'
        ParentFont = False
        State = cbsGrayed
        TabOrder = 3
        Width = 64
      end
    end
    object GroupBox4: TGroupBox
      Left = 10
      Top = 146
      Width = 332
      Height = 44
      Caption = 'Tipos de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      object rdVista: TRadioButton
        Left = 8
        Top = 19
        Width = 65
        Height = 17
        Caption = #192' Vista'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rdPrazo: TRadioButton
        Left = 138
        Top = 19
        Width = 58
        Height = 17
        Caption = #192' Prazo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rdAmbos: TRadioButton
        Left = 262
        Top = 19
        Width = 52
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
      end
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 248
    Width = 351
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
      Left = 195
      Top = 12
      Width = 150
      Height = 16
      TabOrder = 2
      Visible = False
    end
  end
  object Actions: TActionList
    Left = 8
    Top = 4
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
      OnExecute = ActPreviewExecute
    end
  end
  object DsVendedor: TDataSource
    DataSet = DMRelatorios.SelVendedor
    Left = 40
    Top = 4
  end
  object rptComissaoVend: TppReport
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
    Left = 324
    Top = 4
    Version = '12.03'
    mmColumnWidth = 0
    object ppTitleBand1: TppTitleBand
      mmBottomOffset = 0
      mmHeight = 23283
      mmPrintPosition = 0
      object ppShape3: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 22754
        mmLeft = 0
        mmTop = 265
        mmWidth = 260880
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
        mmTop = 1852
        mmWidth = 26458
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
        VarType = vtDateTime
        DisplayFormat = 'dd/mm/yyyy h:nn:ss AM/PM'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 225955
        mmTop = 1852
        mmWidth = 33338
        BandType = 1
      end
      object lblCaixa: TppLabel
        UserName = 'lblCaixa'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Relat'#243'rio de Comiss'#245'es por Vendedor'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 13
        Font.Style = []
        Transparent = True
        mmHeight = 5644
        mmLeft = 1058
        mmTop = 10054
        mmWidth = 77682
        BandType = 1
      end
      object lblfiltro: TppLabel
        UserName = 'lblCaixa1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Filtro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4586
        mmLeft = 794
        mmTop = 16669
        mmWidth = 9102
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      PrintHeight = phDynamic
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
      mmHeight = 19050
      mmPrintPosition = 0
      object SubVendas: TppSubReport
        UserName = 'SubVendas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppComissaoVend'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 265
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppComissaoVend
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
          Left = 184
          Top = 84
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppComissaoVend'
          object ppTitleBand2: TppTitleBand
            BeforePrint = ppTitleBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 15081
            mmPrintPosition = 0
            object ppLabel8: TppLabel
              UserName = 'Label8'
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
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 0
              mmTop = 10848
              mmWidth = 10583
              BandType = 1
            end
            object ppLabel9: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt.Caixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 14552
              mmTop = 10848
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel10: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 31221
              mmTop = 10848
              mmWidth = 11906
              BandType = 1
            end
            object ppLabel11: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Nat'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 86784
              mmTop = 10848
              mmWidth = 9261
              BandType = 1
            end
            object ppLabel12: TppLabel
              UserName = 'Label12'
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
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3704
              mmLeft = 97102
              mmTop = 10848
              mmWidth = 10160
              BandType = 1
            end
            object ppLabel13: TppLabel
              UserName = 'Label13'
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
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 126207
              mmTop = 10848
              mmWidth = 19982
              BandType = 1
            end
            object ppLabel14: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Des/Acr'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 147902
              mmTop = 10848
              mmWidth = 12964
              BandType = 1
            end
            object ppLabel15: TppLabel
              UserName = 'Label15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Com%'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3323
              mmLeft = 162984
              mmTop = 10848
              mmWidth = 8678
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label802'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Liquido'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 172244
              mmTop = 10848
              mmWidth = 15347
              BandType = 1
            end
            object ppLabel17: TppLabel
              UserName = 'Label17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vista'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 188384
              mmTop = 10848
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel18: TppLabel
              UserName = 'Label18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Prazo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3704
              mmLeft = 203200
              mmTop = 10848
              mmWidth = 14023
              BandType = 1
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
              mmLeft = 265
              mmTop = 14816
              mmWidth = 254001
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label23'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vendas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 5292
              mmLeft = 0
              mmTop = 794
              mmWidth = 14817
              BandType = 1
            end
            object ppLabel46: TppLabel
              UserName = 'Label46'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cm. Venda'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 218282
              mmTop = 11113
              mmWidth = 16404
              BandType = 1
            end
            object ppLabel49: TppLabel
              UserName = 'Label49'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Tp. Fat. '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 110331
              mmTop = 10848
              mmWidth = 10880
              BandType = 1
            end
            object ppLabel51: TppLabel
              UserName = 'Label51'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Codigo Ref.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 237332
              mmTop = 11113
              mmWidth = 17198
              BandType = 1
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
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRAZO'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3439
              mmLeft = 203200
              mmTop = 0
              mmWidth = 14023
              BandType = 4
            end
            object ppDBText15: TppDBText
              UserName = 'DBText15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VISTA'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3439
              mmLeft = 188384
              mmTop = 0
              mmWidth = 14023
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
              DataField = 'LIQUIDO'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3440
              mmLeft = 172244
              mmTop = 0
              mmWidth = 15347
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
              DataField = 'PORCENTAGEM'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3439
              mmLeft = 162454
              mmTop = 0
              mmWidth = 8996
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
              DataField = 'DESC_ACRESC'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3439
              mmLeft = 147902
              mmTop = 0
              mmWidth = 12964
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText19'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3260
              mmLeft = 136969
              mmTop = 0
              mmWidth = 9144
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText20'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCTO'
              DataPipeline = ppComissaoVend
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 2879
              mmLeft = 97102
              mmTop = 0
              mmWidth = 8890
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
              DataField = 'NATUREZA'
              DataPipeline = ppComissaoVend
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 2858
              mmLeft = 86784
              mmTop = 0
              mmWidth = 9261
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = ppComissaoVend
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3440
              mmLeft = 29898
              mmTop = 0
              mmWidth = 54769
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
              DataField = 'DATA'
              DataPipeline = ppComissaoVend
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3440
              mmLeft = 14552
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
              DataField = 'CODIGO'
              DataPipeline = ppComissaoVend
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3439
              mmLeft = 0
              mmTop = 0
              mmWidth = 10583
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
              DataField = 'VLR_COMISSAO'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3239
              mmLeft = 218017
              mmTop = 0
              mmWidth = 16669
              BandType = 4
            end
            object ppDBText43: TppDBText
              OnPrint = ppDBText43Print
              UserName = 'DBText201'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO_FAT'
              DataPipeline = ppComissaoVend
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 2879
              mmLeft = 110331
              mmTop = 0
              mmWidth = 11726
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
              DataField = 'ID_AGRUPADOR'
              DataPipeline = ppComissaoVend
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3175
              mmLeft = 237332
              mmTop = 0
              mmWidth = 16669
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLine7: TppLine
              UserName = 'Line7'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 529
              mmLeft = 123296
              mmTop = 794
              mmWidth = 130969
              BandType = 7
            end
            object ppDBCalc16: TppDBCalc
              UserName = 'DBCalc16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRAZO'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3528
              mmLeft = 203200
              mmTop = 1588
              mmWidth = 14023
              BandType = 7
            end
            object lblTtlVdVista: TppDBCalc
              UserName = 'lblTtlVdVista'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VISTA'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3528
              mmLeft = 188384
              mmTop = 1588
              mmWidth = 14023
              BandType = 7
            end
            object ppDBCalc18: TppDBCalc
              UserName = 'DBCalc18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LIQUIDO'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3528
              mmLeft = 172244
              mmTop = 1588
              mmWidth = 15347
              BandType = 7
            end
            object ppDBCalc19: TppDBCalc
              UserName = 'DBCalc19'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_ACRESC'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3528
              mmLeft = 147902
              mmTop = 1588
              mmWidth = 12964
              BandType = 7
            end
            object ppDBCalc20: TppDBCalc
              UserName = 'DBCalc20'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3302
              mmLeft = 128609
              mmTop = 1588
              mmWidth = 17484
              BandType = 7
            end
            object ppLabel20: TppLabel
              UserName = 'Label20'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Vendas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3528
              mmLeft = 72231
              mmTop = 1588
              mmWidth = 17145
              BandType = 7
            end
            object ppDBCalc31: TppDBCalc
              UserName = 'DBCalc31'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_COMISSAO'
              DataPipeline = ppComissaoVend
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoVend'
              mmHeight = 3281
              mmLeft = 218017
              mmTop = 1588
              mmWidth = 16669
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'TIPO_MOV'
            DataPipeline = ppComissaoVend
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppComissaoVend'
            NewFile = False
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 7144
              mmPrintPosition = 0
              object ppLabel19: TppLabel
                UserName = 'Label19'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Movimento: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3881
                mmLeft = 1852
                mmTop = 2910
                mmWidth = 18203
                BandType = 3
                GroupNo = 0
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
                mmLeft = 1588
                mmTop = 6879
                mmWidth = 66675
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
                DataField = 'TIPO_MOV'
                DataPipeline = ppComissaoVend
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppComissaoVend'
                mmHeight = 4586
                mmLeft = 20108
                mmTop = 2381
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5822
              mmPrintPosition = 0
              object ppLine6: TppLine
                UserName = 'Line6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 123561
                mmTop = 0
                mmWidth = 130704
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc4: TppDBCalc
                UserName = 'DBCalc4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRAZO'
                DataPipeline = ppComissaoVend
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoVend'
                mmHeight = 3440
                mmLeft = 203200
                mmTop = 529
                mmWidth = 14023
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
                DataField = 'VISTA'
                DataPipeline = ppComissaoVend
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoVend'
                mmHeight = 3528
                mmLeft = 188384
                mmTop = 529
                mmWidth = 14023
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
                DataField = 'LIQUIDO'
                DataPipeline = ppComissaoVend
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoVend'
                mmHeight = 3440
                mmLeft = 172244
                mmTop = 529
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
                DataField = 'DESC_ACRESC'
                DataPipeline = ppComissaoVend
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoVend'
                mmHeight = 3528
                mmLeft = 147902
                mmTop = 529
                mmWidth = 12964
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc15: TppDBCalc
                UserName = 'DBCalc15'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppComissaoVend
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoVend'
                mmHeight = 3302
                mmLeft = 128609
                mmTop = 529
                mmWidth = 17484
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc6: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VLR_COMISSAO'
                DataPipeline = ppComissaoVend
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoVend'
                mmHeight = 3281
                mmLeft = 218017
                mmTop = 529
                mmWidth = 16669
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object ppRecebidas: TppSubReport
        UserName = 'Recebidas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubTrocas
        TraverseAllData = False
        DataPipelineName = 'ppComissaoRec'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 12965
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppComissaoRec
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
          Left = 184
          Top = 84
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppComissaoRec'
          object ppTitleBand3: TppTitleBand
            BeforePrint = ppTitleBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 15081
            mmPrintPosition = 0
            object ppLabel1: TppLabel
              UserName = 'Label1'
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
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3969
              mmLeft = 0
              mmTop = 10584
              mmWidth = 10848
              BandType = 1
            end
            object ppLabel2: TppLabel
              UserName = 'Label2'
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
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 11642
              mmTop = 10584
              mmWidth = 13335
              BandType = 1
            end
            object ppLabel3: TppLabel
              UserName = 'Label101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3969
              mmLeft = 26458
              mmTop = 10584
              mmWidth = 10319
              BandType = 1
            end
            object ppLabel6: TppLabel
              UserName = 'Label3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Conta'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 68792
              mmTop = 10848
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel7: TppLabel
              UserName = 'Label4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Juros'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 88371
              mmTop = 10848
              mmWidth = 14288
              BandType = 1
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
              mmTop = 14816
              mmWidth = 223573
              BandType = 1
            end
            object ppLabel4: TppLabel
              UserName = 'Label5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Descto'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 103452
              mmTop = 10848
              mmWidth = 12964
              BandType = 1
            end
            object ppLabel5: TppLabel
              UserName = 'Label6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Bx. Com'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 153459
              mmTop = 10848
              mmWidth = 18256
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label21'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod. Orig.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 206111
              mmTop = 10848
              mmWidth = 15346
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label22'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cod. Rec.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 221721
              mmTop = 10848
              mmWidth = 14023
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label24'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Recebimentos'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 5292
              mmLeft = 0
              mmTop = 795
              mmWidth = 28840
              BandType = 1
            end
            object ppLabel47: TppLabel
              UserName = 'Label47'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Com (%)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3387
              mmLeft = 173038
              mmTop = 10848
              mmWidth = 11472
              BandType = 1
            end
            object ppLabel48: TppLabel
              UserName = 'Label48'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vlr. Com'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 189971
              mmTop = 10848
              mmWidth = 15081
              BandType = 1
            end
            object ppLabel50: TppLabel
              UserName = 'Label50'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Pct. Baixa (%)'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 133879
              mmTop = 10848
              mmWidth = 18785
              BandType = 1
            end
            object ppLabel52: TppLabel
              UserName = 'Label52'
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
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 119327
              mmTop = 10848
              mmWidth = 13758
              BandType = 1
            end
          end
          object ppDetailBand3: TppDetailBand
            BeforePrint = ppDetailBand3BeforePrint
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
            object ppDBText5: TppDBText
              UserName = 'DBText2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3450
              mmLeft = 88371
              mmTop = 254
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText6: TppDBText
              UserName = 'DBText3'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LIQUIDO'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2879
              mmLeft = 75734
              mmTop = 265
              mmWidth = 9991
              BandType = 4
            end
            object ppDBText9: TppDBText
              UserName = 'DBText4'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = ppComissaoRec
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3440
              mmLeft = 24342
              mmTop = 264
              mmWidth = 37835
              BandType = 4
            end
            object ppDBText10: TppDBText
              UserName = 'DBText5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA'
              DataPipeline = ppComissaoRec
              DisplayFormat = 'dd/mm/yyyy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3440
              mmLeft = 11377
              mmTop = 264
              mmWidth = 12171
              BandType = 4
            end
            object ppDBText11: TppDBText
              UserName = 'DBText6'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = ppComissaoRec
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2879
              mmLeft = 0
              mmTop = 264
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText4: TppDBText
              UserName = 'DBText7'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESCONTO'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3450
              mmLeft = 103452
              mmTop = 254
              mmWidth = 12964
              BandType = 4
            end
            object ppDBText1: TppDBText
              UserName = 'DBText8'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_REC'
              DataPipeline = ppComissaoRec
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3450
              mmLeft = 222250
              mmTop = 254
              mmWidth = 12965
              BandType = 4
            end
            object ppDBText2: TppDBText
              UserName = 'DBText9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_ORIGEM'
              DataPipeline = ppComissaoRec
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3450
              mmLeft = 205846
              mmTop = 254
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText3: TppDBText
              UserName = 'DBText10'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2879
              mmLeft = 163492
              mmTop = 265
              mmWidth = 7959
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
              DataField = 'PORCENTAGEM'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3450
              mmLeft = 174890
              mmTop = 0
              mmWidth = 10054
              BandType = 4
            end
            object ppDBText41: TppDBText
              UserName = 'DBText102'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_COMISSAO'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2879
              mmLeft = 185738
              mmTop = 0
              mmWidth = 19304
              BandType = 4
            end
            object ppDBText42: TppDBText
              UserName = 'DBText11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TIPO'
              DataPipeline = ppComissaoRec
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3440
              mmLeft = 63765
              mmTop = 264
              mmWidth = 7938
              BandType = 4
            end
            object ppDBText44: TppDBText
              OnPrint = ppDBText44Print
              UserName = 'DBText401'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PCT_BAIXA'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 3429
              mmLeft = 142611
              mmTop = 0
              mmWidth = 10054
              BandType = 4
            end
            object ppDBText46: TppDBText
              UserName = 'DBText103'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_BX_ORIG'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2879
              mmLeft = 116152
              mmTop = 265
              mmWidth = 16933
              BandType = 4
            end
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 7408
            mmPrintPosition = 0
            object ppLine2: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1058
              mmLeft = 76994
              mmTop = 0
              mmWidth = 158486
              BandType = 7
            end
            object lblTtlBaixaRec: TppDBCalc
              UserName = 'lblTtlBaixaRec'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2910
              mmLeft = 155046
              mmTop = 1588
              mmWidth = 16404
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc5'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESCONTO'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2900
              mmLeft = 103452
              mmTop = 1588
              mmWidth = 12964
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc6'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'JUROS'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2879
              mmLeft = 87259
              mmTop = 1588
              mmWidth = 15452
              BandType = 7
            end
            object ppDBCalc5: TppDBCalc
              UserName = 'DBCalc8'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LIQUIDO'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2879
              mmLeft = 68538
              mmTop = 1588
              mmWidth = 17187
              BandType = 7
            end
            object ppLabel34: TppLabel
              UserName = 'Label201'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Recebidas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3528
              mmLeft = 41010
              mmTop = 1588
              mmWidth = 21167
              BandType = 7
            end
            object ppDBCalc34: TppDBCalc
              UserName = 'DBCalc34'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PORCENTAGEM'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2900
              mmLeft = 174890
              mmTop = 1323
              mmWidth = 10054
              BandType = 7
            end
            object ppDBCalc35: TppDBCalc
              UserName = 'lblTtlBaixaRec1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VLR_COMISSAO'
              DataPipeline = ppComissaoRec
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoRec'
              mmHeight = 2910
              mmLeft = 189971
              mmTop = 1323
              mmWidth = 15081
              BandType = 7
            end
          end
          object ppGroup3: TppGroup
            BreakName = 'ORIGEM'
            DataPipeline = ppComissaoRec
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group1'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppComissaoRec'
            NewFile = False
            object ppGroupHeaderBand3: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 6085
              mmPrintPosition = 0
              object ppLabel26: TppLabel
                UserName = 'Label7'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Origem: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3881
                mmLeft = 7408
                mmTop = 1058
                mmWidth = 12912
                BandType = 3
                GroupNo = 0
              end
              object ppDBText12: TppDBText
                UserName = 'DBText1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ORIGEM'
                DataPipeline = ppComissaoRec
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppComissaoRec'
                mmHeight = 3969
                mmLeft = 20373
                mmTop = 1058
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
              object ppLine3: TppLine
                UserName = 'Line2'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 19844
                mmTop = 5292
                mmWidth = 215636
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand3: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5821
              mmPrintPosition = 0
              object ppLine8: TppLine
                UserName = 'Line3'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1323
                mmLeft = 76729
                mmTop = 0
                mmWidth = 158750
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc9: TppDBCalc
                UserName = 'DBCalc1'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppComissaoRec
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoRec'
                mmHeight = 2910
                mmLeft = 155046
                mmTop = 794
                mmWidth = 16404
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc11: TppDBCalc
                UserName = 'DBCalc2'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESCONTO'
                DataPipeline = ppComissaoRec
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoRec'
                mmHeight = 2900
                mmLeft = 103452
                mmTop = 794
                mmWidth = 12964
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc12: TppDBCalc
                UserName = 'DBCalc3'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'JUROS'
                DataPipeline = ppComissaoRec
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoRec'
                mmHeight = 2879
                mmLeft = 87259
                mmTop = 794
                mmWidth = 15452
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc7: TppDBCalc
                UserName = 'DBCalc7'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'LIQUIDO'
                DataPipeline = ppComissaoRec
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoRec'
                mmHeight = 2879
                mmLeft = 68538
                mmTop = 794
                mmWidth = 17187
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc32: TppDBCalc
                UserName = 'DBCalc32'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PORCENTAGEM'
                DataPipeline = ppComissaoRec
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoRec'
                mmHeight = 2900
                mmLeft = 174890
                mmTop = 794
                mmWidth = 10054
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc33: TppDBCalc
                UserName = 'DBCalc33'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VLR_COMISSAO'
                DataPipeline = ppComissaoRec
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup3
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoRec'
                mmHeight = 2910
                mmLeft = 189971
                mmTop = 794
                mmWidth = 15081
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
      object SubTrocas: TppSubReport
        UserName = 'SubTrocas'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubVendas
        TraverseAllData = False
        DataPipelineName = 'ppComissaoTrc'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 6615
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppComissaoTrc
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
          Left = 184
          Top = 84
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'ppComissaoTrc'
          object ppTitleBand4: TppTitleBand
            BeforePrint = ppTitleBand2BeforePrint
            mmBottomOffset = 0
            mmHeight = 15081
            mmPrintPosition = 0
            object ppLabel27: TppLabel
              UserName = 'Label8'
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
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 0
              mmTop = 10848
              mmWidth = 10795
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label9'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dt.Caixa'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 11906
              mmTop = 10848
              mmWidth = 12488
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label10'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Cliente'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3881
              mmLeft = 25135
              mmTop = 10848
              mmWidth = 10372
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Ent.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 83079
              mmTop = 10848
              mmWidth = 11430
              BandType = 1
            end
            object ppLabel33: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dc. Ent.'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 98954
              mmTop = 10848
              mmWidth = 11642
              BandType = 1
            end
            object ppLabel35: TppLabel
              UserName = 'Label802'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Liquido'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 151077
              mmTop = 10848
              mmWidth = 11218
              BandType = 1
            end
            object ppLabel36: TppLabel
              UserName = 'Label17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Vista'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 173567
              mmTop = 10848
              mmWidth = 7408
              BandType = 1
            end
            object ppLabel37: TppLabel
              UserName = 'Label18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Prazo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 189177
              mmTop = 10848
              mmWidth = 8678
              BandType = 1
            end
            object ppLine9: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 265
              mmLeft = 0
              mmTop = 14816
              mmWidth = 196321
              BandType = 1
            end
            object ppLabel38: TppLabel
              UserName = 'Label23'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Trocas'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 12
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 5292
              mmLeft = 3440
              mmTop = 529
              mmWidth = 13758
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label30'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ttl. Saida'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 113771
              mmTop = 10848
              mmWidth = 13758
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label301'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Dc. Saida'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3881
              mmLeft = 130969
              mmTop = 10848
              mmWidth = 13970
              BandType = 1
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
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText7: TppDBText
              UserName = 'DBText14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'PRAZO'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3440
              mmLeft = 185473
              mmTop = 0
              mmWidth = 12435
              BandType = 4
            end
            object ppDBText8: TppDBText
              UserName = 'DBText15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VISTA'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3440
              mmLeft = 166688
              mmTop = 0
              mmWidth = 14288
              BandType = 4
            end
            object ppDBText25: TppDBText
              UserName = 'DBText16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LIQUIDO'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3440
              mmLeft = 147109
              mmTop = 0
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_ACRESC'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3440
              mmLeft = 97102
              mmTop = 0
              mmWidth = 13494
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText19'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 85461
              mmTop = 0
              mmWidth = 8890
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText101'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CLIENTE'
              DataPipeline = ppComissaoTrc
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 2381
              mmLeft = 24871
              mmTop = 0
              mmWidth = 48948
              BandType = 4
            end
            object ppDBText32: TppDBText
              UserName = 'DBText23'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA'
              DataPipeline = ppComissaoTrc
              DisplayFormat = 'dd/mm/yy'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 12171
              mmTop = 0
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText33: TppDBText
              UserName = 'DBText24'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CODIGO'
              DataPipeline = ppComissaoTrc
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3440
              mmLeft = 265
              mmTop = 0
              mmWidth = 10583
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText29'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL_2'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 115094
              mmTop = 0
              mmWidth = 11853
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText30'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_ACRESC_2'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 119856
              mmTop = 0
              mmWidth = 24553
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 9790
            mmPrintPosition = 0
            object ppLabel39: TppLabel
              UserName = 'Label20'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Total Troca'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              Transparent = True
              mmHeight = 3528
              mmLeft = 51858
              mmTop = 2381
              mmWidth = 14817
              BandType = 7
            end
            object ppLine10: TppLine
              UserName = 'Line10'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 794
              mmLeft = 71967
              mmTop = 1852
              mmWidth = 125413
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
              DataField = 'PRAZO'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 183886
              mmTop = 2381
              mmWidth = 14023
              BandType = 7
            end
            object lblTtlTrocaVista: TppDBCalc
              UserName = 'lblTtlTrocaVista'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'VISTA'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 165894
              mmTop = 2381
              mmWidth = 14288
              BandType = 7
            end
            object ppDBCalc8: TppDBCalc
              UserName = 'DBCalc2'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'LIQUIDO'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 146579
              mmTop = 2381
              mmWidth = 15346
              BandType = 7
            end
            object ppDBCalc17: TppDBCalc
              UserName = 'DBCalc17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DESC_ACRESC_2'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3528
              mmLeft = 130969
              mmTop = 2381
              mmWidth = 12965
              BandType = 7
            end
            object ppDBCalc21: TppDBCalc
              UserName = 'DBCalc21'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'TOTAL_2'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3302
              mmLeft = 103717
              mmTop = 2381
              mmWidth = 23283
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
              DataField = 'DESC_ACRESC'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3302
              mmLeft = 78052
              mmTop = 2381
              mmWidth = 32089
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
              DataField = 'TOTAL'
              DataPipeline = ppComissaoTrc
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlue
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold, fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppComissaoTrc'
              mmHeight = 3302
              mmLeft = 74083
              mmTop = 2381
              mmWidth = 20151
              BandType = 7
            end
          end
          object ppGroup1: TppGroup
            BreakName = 'TIPO_MOV'
            DataPipeline = ppComissaoTrc
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppComissaoTrc'
            NewFile = False
            object ppGroupHeaderBand1: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 7144
              mmPrintPosition = 0
              object ppLabel40: TppLabel
                UserName = 'Label19'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Movimento: '
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                TextAlignment = taRightJustified
                Transparent = True
                mmHeight = 3881
                mmLeft = 3175
                mmTop = 2910
                mmWidth = 18203
                BandType = 3
                GroupNo = 0
              end
              object ppLine11: TppLine
                UserName = 'Line5'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 265
                mmTop = 6879
                mmWidth = 66675
                BandType = 3
                GroupNo = 0
              end
              object ppDBText34: TppDBText
                UserName = 'DBText13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TIPO_MOV'
                DataPipeline = ppComissaoTrc
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 9
                Font.Style = [fsBold, fsItalic]
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 4586
                mmLeft = 21431
                mmTop = 2381
                mmWidth = 17198
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand1: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 5822
              mmPrintPosition = 0
              object ppLine12: TppLine
                UserName = 'Line6'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 71702
                mmTop = 529
                mmWidth = 125942
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc22: TppDBCalc
                UserName = 'DBCalc4'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'PRAZO'
                DataPipeline = ppComissaoTrc
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 3440
                mmLeft = 183886
                mmTop = 1058
                mmWidth = 14023
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc23: TppDBCalc
                UserName = 'DBCalc10'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VISTA'
                DataPipeline = ppComissaoTrc
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clWindowText
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 3440
                mmLeft = 166423
                mmTop = 1058
                mmWidth = 14288
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc24: TppDBCalc
                UserName = 'DBCalc13'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'LIQUIDO'
                DataPipeline = ppComissaoTrc
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 3440
                mmLeft = 147109
                mmTop = 1058
                mmWidth = 15346
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc25: TppDBCalc
                UserName = 'DBCalc14'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRESC_2'
                DataPipeline = ppComissaoTrc
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 3440
                mmLeft = 131234
                mmTop = 1058
                mmWidth = 12965
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc26: TppDBCalc
                UserName = 'DBCalc15'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL_2'
                DataPipeline = ppComissaoTrc
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 3302
                mmLeft = 103452
                mmTop = 1058
                mmWidth = 23283
                BandType = 5
                GroupNo = 0
              end
              object ppDBCalc27: TppDBCalc
                UserName = 'DBCalc27'
                HyperlinkColor = clBlue
                AutoSize = True
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRESC'
                DataPipeline = ppComissaoTrc
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 3302
                mmLeft = 78581
                mmTop = 1058
                mmWidth = 32089
                BandType = 5
                GroupNo = 0
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
                DataField = 'TOTAL'
                DataPipeline = ppComissaoTrc
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold, fsItalic]
                ResetGroup = ppGroup1
                TextAlignment = taRightJustified
                Transparent = True
                DataPipelineName = 'ppComissaoTrc'
                mmHeight = 3302
                mmLeft = 74083
                mmTop = 1058
                mmWidth = 20151
                BandType = 5
                GroupNo = 0
              end
            end
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppShape12: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 261409
        BandType = 8
      end
      object ppSystemVariable4: TppSystemVariable
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
        mmLeft = 245534
        mmTop = 1588
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText47: TppDBText
        UserName = 'DBText47'
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
        mmTop = 1588
        mmWidth = 147638
        BandType = 8
      end
    end
    object ppSummaryBand7: TppSummaryBand
      BeforePrint = ppSummaryBand7BeforePrint
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 21696
      mmPrintPosition = 0
      object regTotal: TppRegion
        UserName = 'regTotal'
        Pen.Style = psClear
        Pen.Width = 0
        Visible = False
        mmHeight = 21431
        mmLeft = 0
        mmTop = 265
        mmWidth = 260880
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppShape1: TppShape
          UserName = 'Shape1'
          Gradient.EndColor = clWhite
          Gradient.StartColor = clWhite
          Gradient.Style = gsNone
          Shape = stRoundRect
          mmHeight = 18256
          mmLeft = 0
          mmTop = 2117
          mmWidth = 259028
          BandType = 7
        end
        object ppDBText38: TppDBText
          UserName = 'DBText38'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'COMISSAO_PRAZO'
          DataPipeline = ppComGeral
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppComGeral'
          mmHeight = 4191
          mmLeft = 89165
          mmTop = 13494
          mmWidth = 16933
          BandType = 7
        end
        object ppDBText37: TppDBText
          UserName = 'DBText37'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'COMISSAO_VISTA'
          DataPipeline = ppComGeral
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppComGeral'
          mmHeight = 4191
          mmLeft = 89165
          mmTop = 9260
          mmWidth = 16933
          BandType = 7
        end
        object ppDBText36: TppDBText
          UserName = 'DBText36'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TotalComissoes'
          DataPipeline = ppComGeral
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          ParentDataPipeline = False
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppComGeral'
          mmHeight = 4191
          mmLeft = 89165
          mmTop = 4233
          mmWidth = 16933
          BandType = 7
        end
        object ppLabel44: TppLabel
          UserName = 'Label44'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Comiss'#227'o:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 3969
          mmLeft = 71967
          mmTop = 4233
          mmWidth = 16669
          BandType = 7
        end
        object ppLabel43: TppLabel
          UserName = 'Label43'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'C. Vista :'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 71702
          mmTop = 9260
          mmWidth = 14224
          BandType = 7
        end
        object ppLabel45: TppLabel
          UserName = 'Label45'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'C. Prazo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4022
          mmLeft = 71702
          mmTop = 13494
          mmWidth = 14563
          BandType = 7
        end
        object ppDBText35: TppDBText
          UserName = 'DBText35'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'COM_PRAZO'
          DataPipeline = ppComGeral
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppComGeral'
          mmHeight = 3969
          mmLeft = 23548
          mmTop = 13494
          mmWidth = 17198
          BandType = 7
        end
        object ppDBText26: TppDBText
          UserName = 'DBText26'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'COM_VISTA'
          DataPipeline = ppComGeral
          DisplayFormat = '#,0.00;-#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          ParentDataPipeline = False
          Transparent = True
          DataPipelineName = 'ppComGeral'
          mmHeight = 3969
          mmLeft = 23813
          mmTop = 9260
          mmWidth = 17198
          BandType = 7
        end
        object lblTotalGeral: TppLabel
          UserName = 'lblTotalGeral'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'lblTotalGeral'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clGreen
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3969
          mmLeft = 38100
          mmTop = 4233
          mmWidth = 21590
          BandType = 7
        end
        object ppLabel25: TppLabel
          UserName = 'Label25'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total Geral P/C'#225'lculo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = []
          Transparent = True
          mmHeight = 4586
          mmLeft = 3175
          mmTop = 4233
          mmWidth = 34713
          BandType = 7
        end
        object ppLabel41: TppLabel
          UserName = 'Label41'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pct(%) Vista.:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3704
          mmLeft = 3175
          mmTop = 9260
          mmWidth = 19315
          BandType = 7
        end
        object ppLabel42: TppLabel
          UserName = 'Label42'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pct(%) Prazo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlue
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsItalic]
          Transparent = True
          mmHeight = 3704
          mmLeft = 2910
          mmTop = 13494
          mmWidth = 19579
          BandType = 7
        end
      end
    end
    object raCodeModule2: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList1: TppParameterList
    end
  end
  object ppComissaoVend: TppDBPipeline
    DataSource = dsComissaoVend
    UserName = 'ppComissaoVend'
    Left = 71
    Top = 3
    object ppComissaoVendppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppComissaoVendppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppComissaoVendppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppComissaoVendppField4: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 55
      DisplayWidth = 55
      Position = 3
    end
    object ppComissaoVendppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'NATUREZA'
      FieldName = 'NATUREZA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 4
    end
    object ppComissaoVendppField6: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object ppComissaoVendppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppComissaoVendppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCENTAGEM'
      FieldName = 'PORCENTAGEM'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppComissaoVendppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppComissaoVendppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LIQUIDO'
      FieldName = 'LIQUIDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppComissaoVendppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'VISTA'
      FieldName = 'VISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppComissaoVendppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRAZO'
      FieldName = 'PRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppComissaoVendppField13: TppField
      FieldAlias = 'TIPO_MOV'
      FieldName = 'TIPO_MOV'
      FieldLength = 10
      DisplayWidth = 10
      Position = 12
    end
    object ppComissaoVendppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORM_PAGTO'
      FieldName = 'FORM_PAGTO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 13
    end
    object ppComissaoVendppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_COMISSAO'
      FieldName = 'VLR_COMISSAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppComissaoVendppField16: TppField
      FieldAlias = 'TIPO_FAT'
      FieldName = 'TIPO_FAT'
      FieldLength = 10
      DisplayWidth = 10
      Position = 15
    end
    object ppComissaoVendppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_AGRUPADOR'
      FieldName = 'ID_AGRUPADOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 16
    end
  end
  object dsComissaoVend: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.qryComissaoVend
    Left = 229
    Top = 4
  end
  object ppComissaoRec: TppDBPipeline
    DataSource = dsComissaoRec
    UserName = 'ppComissaoRec'
    Left = 198
    Top = 3
    object ppComissaoRecppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppComissaoRecppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppComissaoRecppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppComissaoRecppField4: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 55
      DisplayWidth = 55
      Position = 3
    end
    object ppComissaoRecppField5: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object ppComissaoRecppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object ppComissaoRecppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_REC'
      FieldName = 'COD_REC'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object ppComissaoRecppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_ORIGEM'
      FieldName = 'COD_ORIGEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 7
    end
    object ppComissaoRecppField9: TppField
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 10
      DisplayWidth = 10
      Position = 8
    end
    object ppComissaoRecppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'LIQUIDO'
      FieldName = 'LIQUIDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppComissaoRecppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppComissaoRecppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppComissaoRecppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_COMISSAO'
      FieldName = 'VLR_COMISSAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppComissaoRecppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'PORCENTAGEM'
      FieldName = 'PORCENTAGEM'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object ppComissaoRecppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object ppComissaoRecppField16: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 15
    end
    object ppComissaoRecppField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'PCT_BAIXA'
      FieldName = 'PCT_BAIXA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object ppComissaoRecppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'VLR_BX_ORIG'
      FieldName = 'VLR_BX_ORIG'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
  end
  object dsComissaoRec: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.qryComissaoRec
    Left = 103
    Top = 3
  end
  object dsComissaoTrc: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.qryComissaoTrc
    Left = 166
    Top = 3
  end
  object ppComissaoTrc: TppDBPipeline
    DataSource = dsComissaoTrc
    UserName = 'ppComissaoTrc'
    Left = 261
    Top = 4
    object ppComissaoTrcppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 0
      Position = 0
    end
    object ppComissaoTrcppField2: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 1
    end
    object ppComissaoTrcppField3: TppField
      FieldAlias = 'CLIENTE'
      FieldName = 'CLIENTE'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object ppComissaoTrcppField4: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESSOA_FJ'
      FieldName = 'PESSOA_FJ'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 3
    end
    object ppComissaoTrcppField5: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 4
    end
    object ppComissaoTrcppField6: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC'
      FieldName = 'DESC_ACRESC'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 5
    end
    object ppComissaoTrcppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'TOTAL_2'
      FieldName = 'TOTAL_2'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppComissaoTrcppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESC_ACRESC_2'
      FieldName = 'DESC_ACRESC_2'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppComissaoTrcppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'ENTRADA'
      FieldName = 'ENTRADA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppComissaoTrcppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VISTA'
      FieldName = 'VISTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppComissaoTrcppField11: TppField
      FieldAlias = 'TIPO_MOV'
      FieldName = 'TIPO_MOV'
      FieldLength = 10
      DisplayWidth = 10
      Position = 10
    end
    object ppComissaoTrcppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'LIQUIDO'
      FieldName = 'LIQUIDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppComissaoTrcppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRAZO'
      FieldName = 'PRAZO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
  end
  object ppComGeral: TppDBPipeline
    DataSource = dsComGeral
    UserName = 'ppComGeral'
    Left = 292
    Top = 4
  end
  object dsComGeral: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.qryComissaoGeral
    Left = 134
    Top = 3
  end
  object stgFRelComiVendRecebimento: TcxPropertiesStore
    Components = <
      item
        Component = ckRecebimento
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
          'ShadowColor'
          'ShadowDepth'
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
        Component = ckResumo
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
          'ShadowColor'
          'ShadowDepth'
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
        Component = ckTrocas
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
          'ShadowColor'
          'ShadowDepth'
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
        Component = ckVendas
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
          'ShadowColor'
          'ShadowDepth'
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
        Component = edAs3
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
        Component = fim
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
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
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
          'UseFrameController'
          'Visible'
          'Width')
      end
      item
        Component = Ini
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
          'FrameFlat'
          'FrameFlatStyle'
          'FrameFocusStyle'
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
          'UseFrameController'
          'Visible'
          'Width')
      end
      item
        Component = rdAmbos
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
        Component = rdPrazo
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
        Component = rdVista
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
        Component = regTotal
        Properties.Strings = (
          'BottomOffset'
          'Brush'
          'Caption'
          'Height'
          'KeepTogether'
          'Left'
          'Name'
          'OverFlowOffset'
          'Owner'
          'ParentHeight'
          'ParentWidth'
          'Pen'
          'ReprintOnOverFlow'
          'ShiftRelativeTo'
          'ShiftWithParent'
          'Stretch'
          'StretchWithParent'
          'Tag'
          'Top'
          'Transparent'
          'UserName'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFRelComiVendRecebimento'
    Left = 242
    Top = 40
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 71
    Top = 33
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
    Left = 102
    Top = 33
  end
end
