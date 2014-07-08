object fRelClientesCidade: TfRelClientesCidade
  Left = 195
  Top = 130
  Width = 757
  Height = 266
  BorderIcons = [biSystemMenu]
  Caption = 'Relat'#243'rio de Clientes por Cidade'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 741
    Height = 228
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
    object LblTitulo: TcxLabel
      Left = 16
      Top = 2
      Caption = 'Relat'#243'rio de Clientes por Cidade'
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 2
      Top = 193
      Width = 737
      Height = 33
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        737
        33)
      object BtnOk: TcxButton
        Left = 574
        Top = 4
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
        Left = 653
        Top = 4
        Width = 79
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
    object GroupBox2: TGroupBox
      Left = 6
      Top = 23
      Width = 729
      Height = 109
      Caption = ' [ Geral ] '
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 1
      object Label11: TcxLabel
        Left = 8
        Top = 16
        Caption = 'Regi'#227'o'
        ParentFont = False
      end
      object Label12: TcxLabel
        Left = 368
        Top = 16
        Caption = 'Vendedor'
        ParentFont = False
      end
      object Label3: TcxLabel
        Left = 368
        Top = 56
        Caption = 'Categoria'
      end
      object Label20: TcxLabel
        Left = 8
        Top = 56
        Caption = 'Cidade'
        ParentFont = False
      end
      object cmbRegiao: TdxLookupEdit
        Left = 8
        Top = 32
        Width = 350
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
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        OnChange = cmbRegiaoChange
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsRegiao
        LookupKeyValue = Null
      end
      object cmbVendedor: TdxLookupEdit
        Left = 368
        Top = 32
        Width = 350
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
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        DropDownWidth = 500
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsVendedor
        LookupKeyValue = Null
      end
      object cmbCategoria: TdxLookupEdit
        Left = 368
        Top = 72
        Width = 350
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
        OnEnter = cmbEquipamentoEnter
        OnExit = cmbEquipamentoExit
        OnKeyDown = cmbEquipamentoKeyDown
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCategoria
        LookupKeyValue = Null
      end
      object cmbCidade: TdxLookupEdit
        Left = 8
        Top = 72
        Width = 350
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
        OnExit = cmbEquipamentoExit
        ClearKey = 46
        ListFieldName = 'NOME'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = dsCidade
        LookupKeyValue = Null
      end
    end
    object gbStatus: TGroupBox
      Left = 5
      Top = 134
      Width = 363
      Height = 53
      Caption = 'Status do Cliente'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 2
      object rd1: TRadioButton
        Left = 12
        Top = 18
        Width = 59
        Height = 23
        Caption = 'Ativos'
        Checked = True
        TabOrder = 0
        TabStop = True
      end
      object rd2: TRadioButton
        Left = 147
        Top = 18
        Width = 57
        Height = 22
        Caption = 'Inativos'
        TabOrder = 1
      end
      object rd3: TRadioButton
        Left = 279
        Top = 18
        Width = 60
        Height = 22
        Caption = 'Ambos'
        TabOrder = 2
      end
    end
  end
  object dsRegiao: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelRegiao
    Left = 207
    Top = 68
  end
  object dsVendedor: TDataSource
    AutoEdit = False
    DataSet = SelVendedor
    Left = 659
    Top = 46
  end
  object dsCidade: TDataSource
    AutoEdit = False
    DataSet = DMCadastros.Cidades
    Left = 207
    Top = 108
  end
  object stgfRelContratos: TcxPropertiesStore
    Components = <
      item
        Component = rd1
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
        Component = rd2
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
        Component = rd3
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
    StorageName = 'stgfRelContratos'
    Left = 336
    Top = 87
  end
  object rptListagem: TppReport
    AutoStop = False
    DataPipeline = dbListagem
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
    Left = 71
    Top = 36
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbListagem'
    object ppTitleBand6: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 21696
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
        mmWidth = 196850
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
        Caption = 'Relat'#243'rio de Clientes por Cidade'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 5027
        mmLeft = 1058
        mmTop = 9260
        mmWidth = 69321
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
        Caption = 'Relat'#243'rio de Clientes por Cidade'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4191
        mmLeft = 794
        mmTop = 15346
        mmWidth = 50927
        BandType = 1
      end
    end
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel8: TppLabel
        UserName = 'Label8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Ativo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        TextAlignment = taCentered
        Transparent = True
        mmHeight = 3969
        mmLeft = 185473
        mmTop = 2381
        mmWidth = 11377
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
        mmLeft = 7408
        mmTop = 6879
        mmWidth = 189707
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
        Caption = 'Codigo'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 9
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 7144
        mmTop = 2381
        mmWidth = 11113
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
        Caption = 'Fantasia'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 85990
        mmTop = 2910
        mmWidth = 14552
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
        Caption = 'Raz'#227'o Social'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3969
        mmLeft = 21431
        mmTop = 2381
        mmWidth = 21696
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
        Caption = 'Categoria'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 151077
        mmTop = 2910
        mmWidth = 14288
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
      mmHeight = 14552
      mmPrintPosition = 0
      object ppDBText7: TppDBText
        UserName = 'DBText7'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 3429
        mmLeft = 7144
        mmTop = 265
        mmWidth = 12171
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
        DataField = 'FANTASIA'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 3302
        mmLeft = 85990
        mmTop = 265
        mmWidth = 62706
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
        DataField = 'NOME_RAZAO'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 3429
        mmLeft = 21431
        mmTop = 265
        mmWidth = 63236
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
        DataField = 'CATEGORIA'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 3302
        mmLeft = 151077
        mmTop = 265
        mmWidth = 32279
        BandType = 4
      end
      object ppLabel3: TppLabel
        UserName = 'Label3'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'End:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 7144
        mmTop = 4498
        mmWidth = 5588
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
        DataField = 'LOGRADOURO'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 2921
        mmLeft = 14288
        mmTop = 4498
        mmWidth = 51329
        BandType = 4
      end
      object ppLabel4: TppLabel
        UserName = 'Label4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'N:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2910
        mmLeft = 67469
        mmTop = 4498
        mmWidth = 2646
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
        DataField = 'NUMERO'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 2910
        mmLeft = 70644
        mmTop = 4498
        mmWidth = 14023
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
        DataField = 'BAIRRO'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 2921
        mmLeft = 95250
        mmTop = 4498
        mmWidth = 40217
        BandType = 4
      end
      object ppLabel6: TppLabel
        UserName = 'Label6'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Bairro:'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 85990
        mmTop = 4498
        mmWidth = 8731
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
        DataField = 'FONE'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 2921
        mmLeft = 144198
        mmTop = 4498
        mmWidth = 29633
        BandType = 4
      end
      object ppLabel7: TppLabel
        UserName = 'Label7'
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
        Font.Size = 7
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 2921
        mmLeft = 136790
        mmTop = 4498
        mmWidth = 7144
        BandType = 4
      end
      object ppSubReport1: TppSubReport
        UserName = 'SubContratos'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'dbLEquipamento'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 9525
        mmWidth = 197300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = dbLEquipamento
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
          Version = '12.03'
          mmColumnWidth = 0
          DataPipelineName = 'dbLEquipamento'
          object ppTitleBand1: TppTitleBand
            mmBottomOffset = 0
            mmHeight = 3704
            mmPrintPosition = 0
            object ppLabel13: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Equipamento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2910
              mmLeft = 21696
              mmTop = 265
              mmWidth = 15610
              BandType = 1
            end
            object ppLabel16: TppLabel
              UserName = 'Label16'
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
              Font.Size = 7
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2910
              mmLeft = 116946
              mmTop = 265
              mmWidth = 7408
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
              Caption = 'Modelo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2910
              mmLeft = 142611
              mmTop = 265
              mmWidth = 8731
              BandType = 1
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
              mmLeft = 21960
              mmTop = 3439
              mmWidth = 163513
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label19'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Ativo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2910
              mmLeft = 174361
              mmTop = 265
              mmWidth = 6085
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
              Caption = 'S'#233'rie'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 2921
              mmLeft = 85725
              mmTop = 265
              mmWidth = 13494
              BandType = 1
            end
          end
          object ppHeaderBand2: TppHeaderBand
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
            mmBottomOffset = 0
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText10: TppDBText
              UserName = 'CodContrato1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_EQUIPAMENTO'
              DataPipeline = dbLEquipamento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbLEquipamento'
              mmHeight = 2921
              mmLeft = 21696
              mmTop = 0
              mmWidth = 62706
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
              DataField = 'MARCA'
              DataPipeline = dbLEquipamento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbLEquipamento'
              mmHeight = 2921
              mmLeft = 116946
              mmTop = 0
              mmWidth = 24871
              BandType = 4
            end
            object ppDBText14: TppDBText
              UserName = 'DBText14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'MODELO'
              DataPipeline = dbLEquipamento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbLEquipamento'
              mmHeight = 2910
              mmLeft = 142611
              mmTop = 0
              mmWidth = 28310
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
              DataField = 'ATIVO'
              DataPipeline = dbLEquipamento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              TextAlignment = taCentered
              Transparent = True
              DataPipelineName = 'dbLEquipamento'
              mmHeight = 2921
              mmLeft = 174361
              mmTop = 0
              mmWidth = 8731
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
              DataField = 'SERIE'
              DataPipeline = dbLEquipamento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'dbLEquipamento'
              mmHeight = 2910
              mmLeft = 85725
              mmTop = 0
              mmWidth = 29369
              BandType = 4
            end
          end
          object ppFooterBand1: TppFooterBand
            mmBottomOffset = 0
            mmHeight = 0
            mmPrintPosition = 0
          end
          object ppSummaryBand2: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 6879
            mmPrintPosition = 0
            object ppLabel18: TppLabel
              UserName = 'Label18'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Qtde: '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3429
              mmLeft = 25400
              mmTop = 1058
              mmWidth = 7874
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc3'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              DataField = 'COD_EQUIPAMENTO'
              DataPipeline = dbLEquipamento
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DBCalcType = dcCount
              DataPipelineName = 'dbLEquipamento'
              mmHeight = 3302
              mmLeft = 34396
              mmTop = 1058
              mmWidth = 34131
              BandType = 7
            end
          end
          object ppGroup2: TppGroup
            BreakName = 'COD_CONTRATO'
            DataPipeline = dbLEquipamento
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group2'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'dbLEquipamento'
            NewFile = False
            object ppGroupHeaderBand2: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 5027
              mmPrintPosition = 0
              object ppLine4: TppLine
                UserName = 'Line4'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 265
                mmLeft = 24606
                mmTop = 4763
                mmWidth = 161132
                BandType = 3
                GroupNo = 0
              end
              object ppLabel9: TppLabel
                UserName = 'Label9'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'N. Contrato:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2921
                mmLeft = 56621
                mmTop = 1058
                mmWidth = 15081
                BandType = 3
                GroupNo = 0
              end
              object ppDBText11: TppDBText
                UserName = 'DBText11'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TIPO_CONTRATO'
                DataPipeline = dbLEquipamento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbLEquipamento'
                mmHeight = 2921
                mmLeft = 119856
                mmTop = 1058
                mmWidth = 28840
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
                Caption = 'Tp. Contrato:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2921
                mmLeft = 102394
                mmTop = 1058
                mmWidth = 16140
                BandType = 3
                GroupNo = 0
              end
              object ppDBText12: TppDBText
                UserName = 'DBText12'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NUM_CONTRATO'
                DataPipeline = dbLEquipamento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbLEquipamento'
                mmHeight = 2921
                mmLeft = 71438
                mmTop = 1058
                mmWidth = 28840
                BandType = 3
                GroupNo = 0
              end
              object ppLabel20: TppLabel
                UserName = 'Label20'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'ID Contrato:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 2921
                mmLeft = 24606
                mmTop = 1058
                mmWidth = 15081
                BandType = 3
                GroupNo = 0
              end
              object ppDBText17: TppDBText
                UserName = 'DBText17'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'ID_CONTRATO'
                DataPipeline = dbLEquipamento
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlack
                Font.Name = 'Arial'
                Font.Size = 7
                Font.Style = []
                Transparent = True
                DataPipelineName = 'dbLEquipamento'
                mmHeight = 2910
                mmLeft = 40217
                mmTop = 1058
                mmWidth = 15081
                BandType = 3
                GroupNo = 0
              end
            end
            object ppGroupFooterBand2: TppGroupFooterBand
              HideWhenOneDetail = False
              mmBottomOffset = 0
              mmHeight = 0
              mmPrintPosition = 0
            end
          end
        end
      end
      object ppDBText8: TppDBText
        UserName = 'DBText8'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        DataField = 'ATIVO'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'dbListagem'
        mmHeight = 3302
        mmLeft = 185473
        mmTop = 265
        mmWidth = 9525
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 6350
      mmPrintPosition = 0
      object ppShape9: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 6350
        mmLeft = 0
        mmTop = 0
        mmWidth = 196850
        BandType = 8
      end
      object ppDBText19: TppDBText
        UserName = 'DBText10'
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
        mmTop = 1323
        mmWidth = 127794
        BandType = 8
      end
    end
    object ppSummaryBand1: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Total Clientes: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3429
        mmLeft = 1588
        mmTop = 794
        mmWidth = 21431
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
        DataField = 'CODIGO'
        DataPipeline = dbListagem
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DBCalcType = dcCount
        DataPipelineName = 'dbListagem'
        mmHeight = 3440
        mmLeft = 24342
        mmTop = 794
        mmWidth = 22225
        BandType = 7
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'CIDADE'
      DataPipeline = dbListagem
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'dbListagem'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 9790
        mmPrintPosition = 0
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 3440
          mmTop = 9525
          mmWidth = 191559
          BandType = 3
          GroupNo = 0
        end
        object ppLabel15: TppLabel
          UserName = 'Label15'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Cidade:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2646
          mmTop = 5292
          mmWidth = 11113
          BandType = 3
          GroupNo = 0
        end
        object ppDBText16: TppDBText
          UserName = 'CodContrato2'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'CIDADE'
          DataPipeline = dbListagem
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = []
          Transparent = True
          DataPipelineName = 'dbListagem'
          mmHeight = 3440
          mmLeft = 15081
          mmTop = 5292
          mmWidth = 64558
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine3: TppLine
          UserName = 'Line3'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 1852
          mmTop = 0
          mmWidth = 193940
          BandType = 5
          GroupNo = 0
        end
        object CodContrato: TppDBText
          UserName = 'CodContrato'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'CIDADE'
          DataPipeline = dbListagem
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          DataPipelineName = 'dbListagem'
          mmHeight = 3440
          mmLeft = 11377
          mmTop = 1058
          mmWidth = 37835
          BandType = 5
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
          Caption = 'Total '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 2646
          mmTop = 1058
          mmWidth = 7144
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
          DataField = 'CODIGO'
          DataPipeline = dbListagem
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup1
          Transparent = True
          DBCalcType = dcCount
          DataPipelineName = 'dbListagem'
          mmHeight = 3440
          mmLeft = 52652
          mmTop = 1058
          mmWidth = 22225
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
  object dbListagem: TppDBPipeline
    DataSource = dsListagem
    UserName = 'dbListagem'
    Left = 100
    Top = 36
    object dbListagemppField1: TppField
      FieldAlias = 'CIDADE'
      FieldName = 'CIDADE'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbListagemppField2: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 1
    end
    object dbListagemppField3: TppField
      FieldAlias = 'NOME_RAZAO'
      FieldName = 'NOME_RAZAO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 2
    end
    object dbListagemppField4: TppField
      FieldAlias = 'FANTASIA'
      FieldName = 'FANTASIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object dbListagemppField5: TppField
      FieldAlias = 'FONE'
      FieldName = 'FONE'
      FieldLength = 20
      DisplayWidth = 20
      Position = 4
    end
    object dbListagemppField6: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 5
    end
    object dbListagemppField7: TppField
      FieldAlias = 'BAIRRO'
      FieldName = 'BAIRRO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 6
    end
    object dbListagemppField8: TppField
      FieldAlias = 'CONTATO'
      FieldName = 'CONTATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object dbListagemppField9: TppField
      FieldAlias = 'LOGRADOURO'
      FieldName = 'LOGRADOURO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 8
    end
    object dbListagemppField10: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 14
      DisplayWidth = 14
      Position = 9
    end
    object dbListagemppField11: TppField
      FieldAlias = 'CATEGORIA'
      FieldName = 'CATEGORIA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object dbListagemppField12: TppField
      FieldAlias = 'ATIVO'
      FieldName = 'ATIVO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 11
    end
  end
  object dsListagem: TDataSource
    AutoEdit = False
    DataSet = QryRelClientes
    Left = 128
    Top = 37
  end
  object QryRelContratos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    DataSource = dsLink
    SQL.Strings = (
      
        'select ct.codigo id_contrato, cti.ativo, prd.codigo cod_equipame' +
        'nto, prd.nome||'#39' ('#39'||prd.serie||'#39')'#39' nome_serie, prd.serie, coale' +
        'sce(mrc.nome,'#39'N'#227'o determinada'#39') marca,'
      
        'coalesce(mdl.nome,'#39'N'#227'o determinado'#39') modelo,  ctr.nome tipo_cont' +
        'rato,'
      'ct.cod_contrato, ct.num_contrato'
      'from ofc_contratos_itens cti'
      
        'inner join ofc_contratos ct on (ct.codigo = cti.contrato and ct.' +
        'cnpj = cti.cnpj)'
      
        'left join glo_tipo_contrato     ctr on (ct.cod_contrato   = ctr.' +
        'codigo    and ctr.cnpj  = ct.cnpj)'
      
        'left join est_produtos          prd on (prd.codigo     = cti.cod' +
        '_produto and cti.cnpj  = prd.cnpj)'
      
        'left join est_marcas             mrc on (prd.marca      = mrc.co' +
        'digo  and mrc.cnpj  = prd.cnpj)'
      
        'left join glo_modelo_propriedade mdl on (prd.modelo     = mdl.co' +
        'digo     and mdl.cnpj = prd.cnpj)'
      'where ct.cod_cliente = :codigo'
      'and ct.cnpj = :cnpj'
      'order by ct.cod_contrato, ct.num_contrato, prd.nome')
    Left = 161
    Top = 70
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CODIGO'
        ParamType = ptUnknown
        Size = 4
      end
      item
        DataType = ftFixedChar
        Name = 'CNPJ'
        ParamType = ptUnknown
        Size = 15
      end>
    object QryRelContratosCOD_EQUIPAMENTO: TIBStringField
      FieldName = 'COD_EQUIPAMENTO'
      Origin = '"EST_PRODUTOS"."CODIGO"'
      Size = 15
    end
    object QryRelContratosNOME_SERIE: TIBStringField
      FieldName = 'NOME_SERIE'
      ProviderFlags = []
      Size = 83
    end
    object QryRelContratosSERIE: TIBStringField
      FieldName = 'SERIE'
      Origin = '"EST_PRODUTOS"."SERIE"'
      Size = 30
    end
    object QryRelContratosMARCA: TIBStringField
      FieldName = 'MARCA'
      ProviderFlags = []
      Size = 50
    end
    object QryRelContratosMODELO: TIBStringField
      FieldName = 'MODELO'
      ProviderFlags = []
      Size = 50
    end
    object QryRelContratosTIPO_CONTRATO: TIBStringField
      FieldName = 'TIPO_CONTRATO'
      Origin = '"GLO_TIPO_CONTRATO"."NOME"'
      Size = 50
    end
    object QryRelContratosCOD_CONTRATO: TIntegerField
      FieldName = 'COD_CONTRATO'
      Origin = '"OFC_CONTRATOS"."COD_CONTRATO"'
    end
    object QryRelContratosNUM_CONTRATO: TIBStringField
      FieldName = 'NUM_CONTRATO'
      Origin = '"OFC_CONTRATOS"."NUM_CONTRATO"'
      Size = 30
    end
    object QryRelContratosATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"OFC_CONTRATOS_ITENS"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object QryRelContratosID_CONTRATO: TIntegerField
      FieldName = 'ID_CONTRATO'
      Origin = '"OFC_CONTRATOS"."CODIGO"'
      Required = True
    end
  end
  object SelVendedor: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelVendedorBeforeOpen
    SQL.Strings = (
      'SELECT CNPJ, '
      '               CODIGO, '
      '               NOME, '
      '               COM_VISTA, '
      '               COM_PRAZO,'
      '               PESSOA_FJ,'
      '               SENHA,'
      '               ATIVO,'
      '               COD_PERFIL, '
      '               COD_PERFIL_PAGTO'
      'FROM FAT_VENDEDOR'
      'WHERE CNPJ = :CNPJ '
      'ORDER BY NOME')
    Left = 688
    Top = 47
    ParamData = <
      item
        DataType = ftString
        Name = 'CNPJ'
        ParamType = ptInput
      end>
    object SelVendedorCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"FAT_VENDEDOR"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelVendedorCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"FAT_VENDEDOR"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelVendedorNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"FAT_VENDEDOR"."NOME"'
      Size = 50
    end
    object SelVendedorCOM_VISTA: TFloatField
      FieldName = 'COM_VISTA'
      Origin = '"FAT_VENDEDOR"."COM_VISTA"'
    end
    object SelVendedorCOM_PRAZO: TFloatField
      FieldName = 'COM_PRAZO'
      Origin = '"FAT_VENDEDOR"."COM_PRAZO"'
    end
    object SelVendedorPESSOA_FJ: TIntegerField
      FieldName = 'PESSOA_FJ'
      Origin = '"FAT_VENDEDOR"."PESSOA_FJ"'
    end
    object SelVendedorSENHA: TIBStringField
      FieldName = 'SENHA'
      Origin = '"FAT_VENDEDOR"."SENHA"'
      Size = 6
    end
    object SelVendedorATIVO: TIBStringField
      FieldName = 'ATIVO'
      Origin = '"FAT_VENDEDOR"."ATIVO"'
      FixedChar = True
      Size = 1
    end
    object SelVendedorCOD_PERFIL: TIntegerField
      FieldName = 'COD_PERFIL'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL"'
    end
    object SelVendedorCOD_PERFIL_PAGTO: TIntegerField
      FieldName = 'COD_PERFIL_PAGTO'
      Origin = '"FAT_VENDEDOR"."COD_PERFIL_PAGTO"'
    end
  end
  object dsCategoria: TDataSource
    AutoEdit = False
    DataSet = SelCategorias
    Left = 650
    Top = 93
  end
  object SelCategorias: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    BeforeOpen = SelVendedorBeforeOpen
    SQL.Strings = (
      'select * from glo_clientes_categoria c'
      'where c.cnpj = :cnpj'
      'order by c.nome')
    Left = 689
    Top = 96
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'CNPJ'
        ParamType = ptUnknown
      end>
    object SelCategoriasCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_CLIENTES_CATEGORIA"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object SelCategoriasCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_CLIENTES_CATEGORIA"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object SelCategoriasNOME: TIBStringField
      FieldName = 'NOME'
      Origin = '"GLO_CLIENTES_CATEGORIA"."NOME"'
      Size = 50
    end
  end
  object QryRelClientes: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      
        'select psa.cnpj, cdd.nome cidade, psa.codigo, psa.nome_razao, ps' +
        'a.fantasia, psa.fone, psa.numero, br.nome bairro,'
      'cli.comprador contato, lgd.nome logradouro,'
      'case'
      '  when coalesce(cli.bloqueado,'#39'N'#39') = '#39'N'#39' then '#39'Sim'#39
      '  else '#39'N'#227'o'#39
      'end Ativo,'
      'c.nome categoria'
      ''
      'from glo_pessoas_fj psa'
      
        'left join glo_cidades cdd on (cdd.cnpj = psa.cnpj and cdd.codigo' +
        ' = psa.cidade)'
      
        'left join glo_logradouros lgd on (lgd.cnpj = psa.cnpj and lgd.co' +
        'digo = psa.endereco)'
      
        'left join glo_bairros br on (br.cnpj = psa.cnpj and psa.bairro =' +
        ' br.codigo)'
      
        'left join glo_clientes cli on (cli.cnpj = psa.cnpj and cli.pesso' +
        'a_fj = psa.codigo)'
      
        'left join glo_clientes_categoria c on (cli.cnpj = psa.cnpj and c' +
        'li.categoria = c.codigo)'
      'where psa.cnpj = :cnpj'
      'and ((cli.cod_vend = :vendedor) or (:vendedor = 0))'
      'and ((cli.categoria = :categoria) or (:categoria = 0))'
      'and ((psa.cidade = :cidade) or (:cidade = 0))'
      'and ((psa.regiao = :regiao) or (:regiao = 0))'
      
        'and ((coalesce(cli.bloqueado,'#39'N'#39') = cast(:bloqueado as char(1)))' +
        ' or (cast(:bloqueado as char(1)) = '#39#39'))'
      'order by cdd.nome, psa.nome_razao'
      '')
    Left = 161
    Top = 38
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'vendedor'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'categoria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'categoria'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cidade'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'regiao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'regiao'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloqueado'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'bloqueado'
        ParamType = ptUnknown
      end>
    object QryRelClientesCIDADE: TIBStringField
      FieldName = 'CIDADE'
      Origin = '"GLO_CIDADES"."NOME"'
      Size = 50
    end
    object QryRelClientesCODIGO: TIntegerField
      FieldName = 'CODIGO'
      Origin = '"GLO_PESSOAS_FJ"."CODIGO"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object QryRelClientesNOME_RAZAO: TIBStringField
      FieldName = 'NOME_RAZAO'
      Origin = '"GLO_PESSOAS_FJ"."NOME_RAZAO"'
      Size = 50
    end
    object QryRelClientesFANTASIA: TIBStringField
      FieldName = 'FANTASIA'
      Origin = '"GLO_PESSOAS_FJ"."FANTASIA"'
      Size = 50
    end
    object QryRelClientesFONE: TIBStringField
      FieldName = 'FONE'
      Origin = '"GLO_PESSOAS_FJ"."FONE"'
    end
    object QryRelClientesNUMERO: TIBStringField
      FieldName = 'NUMERO'
      Origin = '"GLO_PESSOAS_FJ"."NUMERO"'
      Size = 15
    end
    object QryRelClientesBAIRRO: TIBStringField
      FieldName = 'BAIRRO'
      Origin = '"GLO_BAIRROS"."NOME"'
      Size = 50
    end
    object QryRelClientesCONTATO: TIBStringField
      FieldName = 'CONTATO'
      Origin = '"GLO_CLIENTES"."COMPRADOR"'
      Size = 50
    end
    object QryRelClientesLOGRADOURO: TIBStringField
      FieldName = 'LOGRADOURO'
      Origin = '"GLO_LOGRADOUROS"."NOME"'
      Size = 50
    end
    object QryRelClientesCNPJ: TIBStringField
      FieldName = 'CNPJ'
      Origin = '"GLO_PESSOAS_FJ"."CNPJ"'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      FixedChar = True
      Size = 14
    end
    object QryRelClientesCATEGORIA: TIBStringField
      FieldName = 'CATEGORIA'
      Origin = '"GLO_CLIENTES_CATEGORIA"."NOME"'
      Size = 50
    end
    object QryRelClientesATIVO: TIBStringField
      FieldName = 'ATIVO'
      ProviderFlags = []
      FixedChar = True
      Size = 3
    end
  end
  object dbLEquipamento: TppDBPipeline
    DataSource = dsEquipamentos
    UserName = 'dbLEquipamento'
    Left = 100
    Top = 68
    object dbLEquipamentoppField1: TppField
      FieldAlias = 'COD_EQUIPAMENTO'
      FieldName = 'COD_EQUIPAMENTO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbLEquipamentoppField2: TppField
      FieldAlias = 'NOME_SERIE'
      FieldName = 'NOME_SERIE'
      FieldLength = 83
      DisplayWidth = 83
      Position = 1
    end
    object dbLEquipamentoppField3: TppField
      FieldAlias = 'SERIE'
      FieldName = 'SERIE'
      FieldLength = 30
      DisplayWidth = 30
      Position = 2
    end
    object dbLEquipamentoppField4: TppField
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object dbLEquipamentoppField5: TppField
      FieldAlias = 'MODELO'
      FieldName = 'MODELO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 4
    end
    object dbLEquipamentoppField6: TppField
      FieldAlias = 'TIPO_CONTRATO'
      FieldName = 'TIPO_CONTRATO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbLEquipamentoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_CONTRATO'
      FieldName = 'COD_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object dbLEquipamentoppField8: TppField
      FieldAlias = 'NUM_CONTRATO'
      FieldName = 'NUM_CONTRATO'
      FieldLength = 30
      DisplayWidth = 30
      Position = 7
    end
    object dbLEquipamentoppField9: TppField
      FieldAlias = 'ATIVO'
      FieldName = 'ATIVO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 8
    end
    object dbLEquipamentoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'ID_CONTRATO'
      FieldName = 'ID_CONTRATO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
  end
  object dsEquipamentos: TDataSource
    AutoEdit = False
    DataSet = QryRelContratos
    Left = 128
    Top = 69
  end
  object dsLink: TDataSource
    AutoEdit = False
    DataSet = QryRelClientes
    Left = 69
    Top = 67
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 100
    Top = 96
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 69
    Top = 96
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
