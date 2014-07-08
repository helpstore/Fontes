object FRelEstoqueLote: TFRelEstoqueLote
  Left = 285
  Top = 148
  Width = 454
  Height = 375
  BorderIcons = [biMinimize, biMaximize]
  Caption = 'Posi'#231#227'o de Estoque por Lotes'
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
    Width = 438
    Height = 337
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
      Left = 13
      Top = 32
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 11
      Top = 8
      Caption = 'Posi'#231#227'o de Estoque por Lotes'
      ParentFont = False
    end
    object Label10: TcxLabel
      Left = 227
      Top = 257
      Caption = 'Saldo Em'
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 2
      Top = 303
      Width = 434
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 0
      DesignSize = (
        434
        32)
      object BtnOk: TcxButton
        Left = 273
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
        Left = 352
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
      Left = 13
      Top = 37
      Width = 420
      Height = 75
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
        Left = 12
        Top = 15
        Caption = 'Pessoa'
        ParentFont = False
      end
      object cmbCliente: TdxLookupEdit
        Left = 9
        Top = 31
        Width = 400
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
        ListFieldName = 'NOME_RAZAO'
        CanDeleteText = True
        KeyFieldName = 'CODIGO'
        ListSource = DsClientes
        LookupKeyValue = Null
      end
    end
    object gbData: TGroupBox
      Left = 13
      Top = 115
      Width = 210
      Height = 80
      Caption = 'Data de Vencimento'
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
        Left = 110
        Top = 22
        Caption = 'Final'
        ParentFont = False
      end
      object Label5: TcxLabel
        Left = 10
        Top = 22
        Caption = 'Inicial'
        ParentFont = False
      end
      object edAs1: TcxLabel
        Left = 94
        Top = 27
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
        Left = 189
        Top = 27
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object edtVenctoInicial: TcxDateEdit
        Left = 10
        Top = 38
        EditValue = 36526.3833060185d
        ParentFont = False
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 90
      end
      object edtVenctoFinal: TcxDateEdit
        Left = 110
        Top = 38
        EditValue = 55152.3833060185d
        ParentFont = False
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 90
      end
    end
    object GroupBox1: TGroupBox
      Left = 227
      Top = 115
      Width = 209
      Height = 80
      Caption = 'Data de Emiss'#227'o'
      Color = clWhite
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 3
      object Label2: TcxLabel
        Tag = 1
        Left = 189
        Top = 27
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label3: TcxLabel
        Left = 110
        Top = 22
        Caption = 'Final'
        ParentFont = False
      end
      object Label7: TcxLabel
        Left = 94
        Top = 27
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object Label8: TcxLabel
        Left = 10
        Top = 22
        Caption = 'Inicial'
        ParentFont = False
      end
      object edtEmissaoFinal: TcxDateEdit
        Left = 110
        Top = 38
        EditValue = 55152.3833060185d
        ParentFont = False
        TabOrder = 1
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 90
      end
      object edtEmissaoInicial: TcxDateEdit
        Left = 10
        Top = 38
        EditValue = 36526.3833060185d
        ParentFont = False
        TabOrder = 0
        OnEnter = CmbCobradorEnter
        OnExit = CmbCobradorExit
        OnKeyDown = FormKeyDown
        Width = 90
      end
    end
    object GroupBox5: TGroupBox
      Left = 13
      Top = 197
      Width = 210
      Height = 102
      Caption = 'Valores (%) '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
      object Label1: TcxLabel
        Left = 9
        Top = 45
        Caption = 'Juros Corre'#231#227'o'
      end
      object Label6: TcxLabel
        Left = 91
        Top = 45
        Caption = 'Desconto Antecipa'#231#227'o'
      end
      object rd1: TRadioButton
        Left = 8
        Top = 19
        Width = 65
        Height = 17
        Caption = 'Padr'#245'es '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnClick = rd1Click
        OnKeyDown = FormKeyDown
      end
      object rd2: TRadioButton
        Left = 83
        Top = 19
        Width = 65
        Height = 17
        Caption = 'Definidos'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        TabStop = True
        OnClick = rd2Click
        OnKeyDown = FormKeyDown
      end
      object edtVlrJuros: TdxCalcEdit
        Left = 11
        Top = 62
        Width = 71
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
        Text = '0'
        ButtonGlyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000CED3D6000000
          0000000000000000000000000000000000000000000000000000000000000000
          00CED3D600008486008486008400008400008400008400008400008400008400
          008400008400008400008400000000000000848600FFFFFF8486008486008486
          0084860084860084860084860084860084860084860084000000000000008486
          00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
          00008400000000000000848600FFFFFF84860084860084860084860084860084
          86008486008486008486008486008400000000000000848600FFFF0084860000
          0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
          0000848600FFFFFF848600848600848600848600848600848600848600848600
          8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
          C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
          000000000000848600FFFF000000000000000000000000000000000000000000
          000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
          00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
          D684860084860084860084860084860084860084860084860084860084860084
          8600848600CED3D60000}
      end
      object edtVlrDescto: TdxCalcEdit
        Left = 91
        Top = 62
        Width = 71
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
        Text = '0'
        ButtonGlyph.Data = {
          46020000424D460200000000000036000000280000000E0000000C0000000100
          1800000000001002000000000000000000000000000000000000CED3D6000000
          0000000000000000000000000000000000000000000000000000000000000000
          00CED3D600008486008486008400008400008400008400008400008400008400
          008400008400008400008400000000000000848600FFFFFF8486008486008486
          0084860084860084860084860084860084860084860084000000000000008486
          00FFFF00848600000000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF00
          00008400000000000000848600FFFFFF84860084860084860084860084860084
          86008486008486008486008486008400000000000000848600FFFF0084860000
          0000FFFFFF000000FFFFFF000000FFFFFF000000FFFFFF000000840000000000
          0000848600FFFFFF848600848600848600848600848600848600848600848600
          8486008486008400000000000000848600FFFF00000000C6C7C6C6C7C6C6C7C6
          C6C7C6C6C7C6C6C7C6C6C7C68486008486008400000000000000848600FFFFFF
          000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC6C7C68486008486008400
          000000000000848600FFFF000000000000000000000000000000000000000000
          000000008486008486008400000000000000848600FFFFFFFFFF00FFFFFFFFFF
          00FFFFFFFFFF00FFFFFFFFFF00FFFFFFFFFF00FFFFFF8486000000000000CED3
          D684860084860084860084860084860084860084860084860084860084860084
          8600848600CED3D60000}
        ButtonStyle = bsExtraFlat
      end
    end
    object edtDatabase: TcxDateEdit
      Left = 227
      Top = 273
      EditValue = 36526.3833060185d
      ParentFont = False
      TabOrder = 5
      OnEnter = CmbCobradorEnter
      OnExit = CmbCobradorExit
      OnKeyDown = FormKeyDown
      Width = 90
    end
    object GroupBox3: TGroupBox
      Left = 228
      Top = 197
      Width = 209
      Height = 51
      Caption = 'Impress'#227'o'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object rd7: TRadioButton
        Left = 16
        Top = 24
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
        OnKeyDown = FormKeyDown
      end
      object rd8: TRadioButton
        Left = 112
        Top = 24
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
        OnKeyDown = FormKeyDown
      end
    end
  end
  object Actions: TActionList
    Left = 408
    Top = 143
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
  object DsClientes: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelPessoasFJ
    Left = 89
    Top = 78
  end
  object rptRelPosicaoTitulo: TppReport
    AutoStop = False
    DataPipeline = ppRelPosicaoTitulo
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
    Left = 279
    Top = 28
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'ppRelPosicaoTitulo'
    object ppTitleBand6: TppTitleBand
      PrintHeight = phDynamic
      mmBottomOffset = 0
      mmHeight = 22490
      mmPrintPosition = 0
      object ppShape5: TppShape
        UserName = 'Shape3'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 22490
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
        mmHeight = 5821
        mmLeft = 794
        mmTop = 1852
        mmWidth = 41275
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
        Caption = 'Posi'#231#227'o de T'#237'tulos Pendentes'
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
        mmWidth = 56515
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
        mmLeft = 235744
        mmTop = 1588
        mmWidth = 39158
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
        Font.Size = 7
        Font.Style = []
        Transparent = True
        mmHeight = 2963
        mmLeft = 2117
        mmTop = 15346
        mmWidth = 8467
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 7144
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'C'#243'digo '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 264
        mmTop = 2911
        mmWidth = 10319
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
        Caption = 'Emiss'#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 13494
        mmTop = 2911
        mmWidth = 17198
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
        Caption = 'Documento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 31750
        mmTop = 2911
        mmWidth = 17198
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
        Caption = 'Vlr. Nominal'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 91281
        mmTop = 2911
        mmWidth = 18256
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
        mmLeft = 0
        mmTop = 6879
        mmWidth = 283369
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
        Caption = 'Vencimento.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 70908
        mmTop = 2911
        mmWidth = 17198
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
        Caption = 'Tipo Docto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 51329
        mmTop = 2911
        mmWidth = 17198
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
        Caption = 'Saldo Nominal'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3387
        mmLeft = 148961
        mmTop = 2911
        mmWidth = 21167
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
        Caption = 'Ult. Baixa'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 111919
        mmTop = 2911
        mmWidth = 13494
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
        mmLeft = 257176
        mmTop = 2910
        mmWidth = 15610
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
        mmLeft = 128588
        mmTop = 2911
        mmWidth = 18522
        BandType = 0
      end
      object ppLabel14: TppLabel
        UserName = 'Label101'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Qtde. Index.'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 187855
        mmTop = 2911
        mmWidth = 17463
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
        mmLeft = 221986
        mmTop = 2911
        mmWidth = 16403
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
        Caption = 'Desconto'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 239978
        mmTop = 2911
        mmWidth = 15875
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
        Caption = 'Varia'#231#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 207698
        mmTop = 2910
        mmWidth = 12700
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
        Caption = 'Indexador'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3175
        mmLeft = 171715
        mmTop = 2911
        mmWidth = 14552
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
      mmHeight = 8467
      mmPrintPosition = 0
      object ppDBText4: TppDBText
        UserName = 'DBText4'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'CODIGO'
        DataPipeline = ppRelPosicaoTitulo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3260
        mmLeft = 264
        mmTop = 180
        mmWidth = 10583
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
        DataField = 'DT_EMISSAO'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = 'dd/mm/yy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 13494
        mmTop = 264
        mmWidth = 17198
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
        DataField = 'DOCTO'
        DataPipeline = ppRelPosicaoTitulo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 31750
        mmTop = 264
        mmWidth = 17198
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
        DataField = 'TIPO_DOCTO'
        DataPipeline = ppRelPosicaoTitulo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 51329
        mmTop = 264
        mmWidth = 17198
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
        DataField = 'DT_VENCIMENTO'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = 'dd/mm/yy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 70908
        mmTop = 264
        mmWidth = 17198
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
        DataField = 'VALOR_NOMINAL'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 91281
        mmTop = 264
        mmWidth = 18521
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
        DataField = 'DATA_ULT_BX'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = 'dd/mm/yy'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 111919
        mmTop = 264
        mmWidth = 13494
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
        DataField = 'AMORTIZACAO'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 128588
        mmTop = 264
        mmWidth = 18522
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
        DataField = 'SALDO_NOMINAL'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 148961
        mmTop = 264
        mmWidth = 21167
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
        DataField = 'INDEXADOR'
        DataPipeline = ppRelPosicaoTitulo
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taCentered
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 171715
        mmTop = 264
        mmWidth = 17463
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
        DataField = 'QTDE_INDEXADOR'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 187325
        mmTop = 264
        mmWidth = 17463
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
        DataField = 'VARIACAO_INDEXADOR'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 207434
        mmTop = 265
        mmWidth = 12965
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
        DataField = 'JUROS'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 221986
        mmTop = 264
        mmWidth = 16403
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
        DataField = 'DESCONTOS'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3175
        mmLeft = 239978
        mmTop = 265
        mmWidth = 15875
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
        DataField = 'SALDO_FINAL'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3260
        mmLeft = 257705
        mmTop = 0
        mmWidth = 15611
        BandType = 4
      end
      object ppSubVendas: TppSubReport
        UserName = 'SubVendas'
        ExpandAll = False
        KeepTogether = True
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppVendas'
        mmHeight = 4498
        mmLeft = 0
        mmTop = 3969
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport25: TppChildReport
          AutoStop = False
          DataPipeline = ppVendas
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
          DataPipelineName = 'ppVendas'
          object ppTitleBand18: TppTitleBand
            PrintHeight = phDynamic
            mmBottomOffset = 0
            mmHeight = 8467
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
              mmLeft = 15610
              mmTop = 8202
              mmWidth = 182034
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
              mmLeft = 26723
              mmTop = 4763
              mmWidth = 21431
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
              Caption = 'Venda'
              Color = clGreen
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold, fsItalic, fsUnderline]
              Transparent = True
              mmHeight = 3704
              mmLeft = 15875
              mmTop = 529
              mmWidth = 10583
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
              mmLeft = 113771
              mmTop = 4763
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
              mmLeft = 128852
              mmTop = 4763
              mmWidth = 14552
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
              mmLeft = 146315
              mmTop = 4763
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
              mmLeft = 162719
              mmTop = 4763
              mmWidth = 22225
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
            mmHeight = 3440
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
              DataPipeline = ppVendas
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              Transparent = True
              DataPipelineName = 'ppVendas'
              mmHeight = 3302
              mmLeft = 26458
              mmTop = 265
              mmWidth = 77788
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
              DataPipeline = ppVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendas'
              mmHeight = 3302
              mmLeft = 106098
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
              DataPipeline = ppVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendas'
              mmHeight = 3302
              mmLeft = 124354
              mmTop = 0
              mmWidth = 19579
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
              DataField = 'DESCONTO'
              DataPipeline = ppVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendas'
              mmHeight = 3302
              mmLeft = 146050
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
              DataPipeline = ppVendas
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clGreen
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsItalic]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppVendas'
              mmHeight = 3302
              mmLeft = 162454
              mmTop = 0
              mmWidth = 22490
              BandType = 4
            end
          end
          object ppSummaryBand25: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 12435
            mmPrintPosition = 0
            object ppLine66: TppLine
              UserName = 'Line66'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 15346
              mmTop = 0
              mmWidth = 182034
              BandType = 7
            end
          end
          object ppGroup7: TppGroup
            BreakName = 'CODIGO'
            DataPipeline = ppVendas
            GroupFileSettings.NewFile = False
            GroupFileSettings.EmailFile = False
            KeepTogether = True
            OutlineSettings.CreateNode = True
            StartOnOddPage = False
            UserName = 'Group7'
            mmNewColumnThreshold = 0
            mmNewPageThreshold = 0
            DataPipelineName = 'ppVendas'
            NewFile = False
            object ppGroupHeaderBand7: TppGroupHeaderBand
              mmBottomOffset = 0
              mmHeight = 5556
              mmPrintPosition = 0
              object ppLine67: TppLine
                UserName = 'Line67'
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Weight = 0.750000000000000000
                mmHeight = 1058
                mmLeft = 15346
                mmTop = 5027
                mmWidth = 182034
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
                mmHeight = 3387
                mmLeft = 15610
                mmTop = 1323
                mmWidth = 12965
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
                DataField = 'CODIGO'
                DataPipeline = ppVendas
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendas'
                mmHeight = 3175
                mmLeft = 28840
                mmTop = 1323
                mmWidth = 13758
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
                Caption = 'Data:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3387
                mmLeft = 70908
                mmTop = 1323
                mmWidth = 7070
                BandType = 3
                GroupNo = 0
              end
              object ppDBText201: TppDBText
                UserName = 'DBText201'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DATA'
                DataPipeline = ppVendas
                DisplayFormat = 'dd/mm/yy'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendas'
                mmHeight = 3302
                mmLeft = 78317
                mmTop = 1323
                mmWidth = 13494
                BandType = 3
                GroupNo = 0
              end
              object ppDBText202: TppDBText
                UserName = 'DBText202'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'TOTAL'
                DataPipeline = ppVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendas'
                mmHeight = 3302
                mmLeft = 106892
                mmTop = 1323
                mmWidth = 17727
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
                Caption = 'Total R$:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3387
                mmLeft = 93927
                mmTop = 1323
                mmWidth = 12107
                BandType = 3
                GroupNo = 0
              end
              object ppDBText203: TppDBText
                UserName = 'DBText203'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'DESC_ACRES'
                DataPipeline = ppVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendas'
                mmHeight = 3302
                mmLeft = 138907
                mmTop = 1323
                mmWidth = 13494
                BandType = 3
                GroupNo = 0
              end
              object ppLabel237: TppLabel
                UserName = 'Label237'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'D/Ac R$:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3387
                mmLeft = 126736
                mmTop = 1323
                mmWidth = 11684
                BandType = 3
                GroupNo = 0
              end
              object ppDBText204: TppDBText
                UserName = 'DBText204'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'VD_TOTAL'
                DataPipeline = ppVendas
                DisplayFormat = '#,0.00;-#,0.00'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clBlue
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendas'
                mmHeight = 3302
                mmLeft = 177800
                mmTop = 1323
                mmWidth = 13494
                BandType = 3
                GroupNo = 0
              end
              object ppLabel238: TppLabel
                UserName = 'Label238'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'Ttl Liquido R$:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3387
                mmLeft = 156898
                mmTop = 1323
                mmWidth = 20638
                BandType = 3
                GroupNo = 0
              end
              object ppDBText231: TppDBText
                UserName = 'DBText2001'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                DataField = 'NUM_NF'
                DataPipeline = ppVendas
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsItalic]
                Transparent = True
                DataPipelineName = 'ppVendas'
                mmHeight = 3440
                mmLeft = 53711
                mmTop = 1323
                mmWidth = 15875
                BandType = 3
                GroupNo = 0
              end
              object ppLabel269: TppLabel
                UserName = 'Label269'
                HyperlinkColor = clBlue
                Border.BorderPositions = []
                Border.Color = clBlack
                Border.Style = psSolid
                Border.Visible = False
                Border.Weight = 1.000000000000000000
                Caption = 'N'#186' NF.:'
                Ellipsis = False
                Font.Charset = DEFAULT_CHARSET
                Font.Color = clGreen
                Font.Name = 'Arial'
                Font.Size = 8
                Font.Style = [fsBold]
                Transparent = True
                mmHeight = 3323
                mmLeft = 44186
                mmTop = 1323
                mmWidth = 9790
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
        mmWidth = 283898
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
        mmLeft = 258763
        mmTop = 2381
        mmWidth = 14552
        BandType = 8
      end
      object ppDBText18: TppDBText
        UserName = 'DBText18'
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
        mmTop = 2117
        mmWidth = 123296
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 38365
      mmPrintPosition = 0
      object ppLine9: TppLine
        UserName = 'Line9'
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Weight = 0.750000000000000000
        mmHeight = 265
        mmLeft = 4763
        mmTop = 1323
        mmWidth = 278342
        BandType = 7
      end
      object ppDBCalc27: TppDBCalc
        UserName = 'DBCalc201'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'B_VALOR_NOMINAL'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3387
        mmLeft = 71060
        mmTop = 2381
        mmWidth = 38566
        BandType = 7
      end
      object ppLabel23: TppLabel
        UserName = 'Label23'
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
        mmLeft = 6879
        mmTop = 2117
        mmWidth = 17695
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
        DataField = 'VARIACAO_INDEXADOR'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3387
        mmLeft = 176884
        mmTop = 2381
        mmWidth = 43603
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
        DataField = 'B_JUROS'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3387
        mmLeft = 214345
        mmTop = 2381
        mmWidth = 24045
        BandType = 7
      end
      object ppDBCalc31: TppDBCalc
        UserName = 'DBCalc31'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'B_SALDO_NOMINAL'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3387
        mmLeft = 131174
        mmTop = 2381
        mmWidth = 38777
        BandType = 7
      end
      object ppDBCalc33: TppDBCalc
        OnPrint = ppDBCalc33Print
        UserName = 'DBCalc33'
        HyperlinkColor = clBlue
        AutoSize = True
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'B_SALDO_FINAL'
        DataPipeline = ppRelPosicaoTitulo
        DisplayFormat = '#,0.00;#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppRelPosicaoTitulo'
        mmHeight = 3387
        mmLeft = 239360
        mmTop = 2381
        mmWidth = 33867
        BandType = 7
      end
    end
    object ppGroup2: TppGroup
      BreakName = 'COD_PESSOA'
      DataPipeline = ppRelPosicaoTitulo
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group2'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppRelPosicaoTitulo'
      NewFile = False
      object ppGroupHeaderBand2: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6879
        mmPrintPosition = 0
        object ppLabel19: TppLabel
          UserName = 'Label19'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Pessoa:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4106
          mmLeft = 3175
          mmTop = 2381
          mmWidth = 13462
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
          mmHeight = 794
          mmLeft = 3175
          mmTop = 6615
          mmWidth = 280988
          BandType = 3
          GroupNo = 0
        end
        object ppDBText2: TppDBText
          UserName = 'DBText2'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'NOME_PESSOA'
          DataPipeline = ppRelPosicaoTitulo
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3683
          mmLeft = 16933
          mmTop = 2646
          mmWidth = 889
          BandType = 3
          GroupNo = 0
        end
      end
      object ppGroupFooterBand2: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 10054
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
          mmLeft = 3175
          mmTop = 1852
          mmWidth = 280194
          BandType = 5
          GroupNo = 0
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
          DataField = 'B_VALOR_NOMINAL'
          DataPipeline = ppRelPosicaoTitulo
          DisplayFormat = '#,0.00;#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 71324
          mmTop = 2910
          mmWidth = 38566
          BandType = 5
          GroupNo = 0
        end
        object ppLabel22: TppLabel
          UserName = 'Label22'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total Pessoa:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3683
          mmLeft = 6350
          mmTop = 2646
          mmWidth = 20743
          BandType = 5
          GroupNo = 0
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
          DataField = 'B_AMORTIZACAO'
          DataPipeline = ppRelPosicaoTitulo
          DisplayFormat = '#,0.00;#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 112060
          mmTop = 2910
          mmWidth = 35137
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc22: TppDBCalc
          UserName = 'DBCalc22'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VARIACAO_INDEXADOR'
          DataPipeline = ppRelPosicaoTitulo
          DisplayFormat = '#,0.00;#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 176355
          mmTop = 2910
          mmWidth = 43603
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc23: TppDBCalc
          UserName = 'DBCalc23'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'B_JUROS'
          DataPipeline = ppRelPosicaoTitulo
          DisplayFormat = '#,0.00;#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 214345
          mmTop = 2910
          mmWidth = 24045
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc24: TppDBCalc
          UserName = 'DBCalc24'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'B_SALDO_NOMINAL'
          DataPipeline = ppRelPosicaoTitulo
          DisplayFormat = '#,0.00;#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 131438
          mmTop = 2910
          mmWidth = 38777
          BandType = 5
          GroupNo = 0
        end
        object ppDBCalc26: TppDBCalc
          OnPrint = ppDBCalc26Print
          UserName = 'DBCalc26'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'B_SALDO_FINAL'
          DataPipeline = ppRelPosicaoTitulo
          DisplayFormat = '#,0.00;#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          ResetGroup = ppGroup2
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 239360
          mmTop = 2910
          mmWidth = 33867
          BandType = 5
          GroupNo = 0
        end
      end
    end
    object ppGroup3: TppGroup
      BreakName = 'TIPO'
      DataPipeline = ppRelPosicaoTitulo
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group3'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppRelPosicaoTitulo'
      NewFile = False
      object ppGroupHeaderBand3: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 6615
        mmPrintPosition = 0
        object ppLabel20: TppLabel
          UserName = 'Label20'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Tipo do T'#237'tulo:'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 10
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 4106
          mmLeft = 6350
          mmTop = 1323
          mmWidth = 24511
          BandType = 3
          GroupNo = 1
        end
        object ppLine6: TppLine
          UserName = 'Line6'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 794
          mmLeft = 5821
          mmTop = 5821
          mmWidth = 278342
          BandType = 3
          GroupNo = 1
        end
        object ppDBText3: TppDBText
          UserName = 'DBText3'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'TIPO'
          DataPipeline = ppRelPosicaoTitulo
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3683
          mmLeft = 32015
          mmTop = 1852
          mmWidth = 889
          BandType = 3
          GroupNo = 1
        end
      end
      object ppGroupFooterBand3: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 6350
        mmPrintPosition = 0
        object ppLine7: TppLine
          UserName = 'Line7'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 265
          mmLeft = 5822
          mmTop = 0
          mmWidth = 278342
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc13: TppDBCalc
          UserName = 'DBCalc13'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'VALOR_NOMINAL'
          DataPipeline = ppRelPosicaoTitulo
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
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 74835
          mmTop = 1058
          mmWidth = 34967
          BandType = 5
          GroupNo = 1
        end
        object ppLabel21: TppLabel
          UserName = 'Label21'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Total: '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 9
          Font.Style = [fsBold, fsItalic]
          Transparent = True
          mmHeight = 3440
          mmLeft = 6350
          mmTop = 794
          mmWidth = 20108
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc14: TppDBCalc
          UserName = 'DBCalc14'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'AMORTIZACAO'
          DataPipeline = ppRelPosicaoTitulo
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
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 115570
          mmTop = 1058
          mmWidth = 31538
          BandType = 5
          GroupNo = 1
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
          DataField = 'VARIACAO_INDEXADOR'
          DataPipeline = ppRelPosicaoTitulo
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
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 176884
          mmTop = 1058
          mmWidth = 43603
          BandType = 5
          GroupNo = 1
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
          DataField = 'JUROS'
          DataPipeline = ppRelPosicaoTitulo
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
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 217855
          mmTop = 1058
          mmWidth = 20447
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc19: TppDBCalc
          UserName = 'DBCalc19'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'SALDO_NOMINAL'
          DataPipeline = ppRelPosicaoTitulo
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
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 134948
          mmTop = 1058
          mmWidth = 35179
          BandType = 5
          GroupNo = 1
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
          DataField = 'DESCONTOS'
          DataPipeline = ppRelPosicaoTitulo
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
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 227366
          mmTop = 1058
          mmWidth = 28575
          BandType = 5
          GroupNo = 1
        end
        object ppDBCalc18: TppDBCalc
          UserName = 'DBCalc18'
          HyperlinkColor = clBlue
          AutoSize = True
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          DataField = 'SALDO_FINAL'
          DataPipeline = ppRelPosicaoTitulo
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
          DataPipelineName = 'ppRelPosicaoTitulo'
          mmHeight = 3387
          mmLeft = 243135
          mmTop = 1058
          mmWidth = 30268
          BandType = 5
          GroupNo = 1
        end
      end
    end
    object raCodeModule4: TraCodeModule
      ProgramStream = {00}
    end
    object ppParameterList2: TppParameterList
    end
  end
  object ppRelPosicaoTitulo: TppDBPipeline
    DataSource = dsRelPosicaoTitulo
    UserName = 'ppRelPosicaoTitulo'
    Left = 317
    Top = 28
    object ppRelPosicaoTituloppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 0
    end
    object ppRelPosicaoTituloppField2: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 1
    end
    object ppRelPosicaoTituloppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_PESSOA'
      FieldName = 'COD_PESSOA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object ppRelPosicaoTituloppField4: TppField
      FieldAlias = 'DOCTO'
      FieldName = 'DOCTO'
      FieldLength = 20
      DisplayWidth = 20
      Position = 3
    end
    object ppRelPosicaoTituloppField5: TppField
      FieldAlias = 'TIPO_DOCTO'
      FieldName = 'TIPO_DOCTO'
      FieldLength = 3
      DisplayWidth = 3
      Position = 4
    end
    object ppRelPosicaoTituloppField6: TppField
      FieldAlias = 'DT_EMISSAO'
      FieldName = 'DT_EMISSAO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppRelPosicaoTituloppField7: TppField
      FieldAlias = 'DT_VENCIMENTO'
      FieldName = 'DT_VENCIMENTO'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 6
    end
    object ppRelPosicaoTituloppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR_NOMINAL'
      FieldName = 'VALOR_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppRelPosicaoTituloppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'AMORTIZACAO'
      FieldName = 'AMORTIZACAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppRelPosicaoTituloppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO_NOMINAL'
      FieldName = 'SALDO_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppRelPosicaoTituloppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDE_INDEXADOR'
      FieldName = 'QTDE_INDEXADOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppRelPosicaoTituloppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'VARIACAO_INDEXADOR'
      FieldName = 'VARIACAO_INDEXADOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppRelPosicaoTituloppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'JUROS'
      FieldName = 'JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
    object ppRelPosicaoTituloppField14: TppField
      Alignment = taRightJustify
      FieldAlias = 'DESCONTOS'
      FieldName = 'DESCONTOS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 13
    end
    object ppRelPosicaoTituloppField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO_FINAL'
      FieldName = 'SALDO_FINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 14
    end
    object ppRelPosicaoTituloppField16: TppField
      FieldAlias = 'NOME_PESSOA'
      FieldName = 'NOME_PESSOA'
      FieldLength = 70
      DisplayWidth = 70
      Position = 15
    end
    object ppRelPosicaoTituloppField17: TppField
      FieldAlias = 'DATA_ULT_BX'
      FieldName = 'DATA_ULT_BX'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 16
    end
    object ppRelPosicaoTituloppField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_JUROS'
      FieldName = 'B_JUROS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object ppRelPosicaoTituloppField19: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_DESCONTOS'
      FieldName = 'B_DESCONTOS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 18
    end
    object ppRelPosicaoTituloppField20: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_SALDO_FINAL'
      FieldName = 'B_SALDO_FINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 19
    end
    object ppRelPosicaoTituloppField21: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_VALOR_NOMINAL'
      FieldName = 'B_VALOR_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 20
    end
    object ppRelPosicaoTituloppField22: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_AMORTIZACAO'
      FieldName = 'B_AMORTIZACAO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 21
    end
    object ppRelPosicaoTituloppField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'B_SALDO_NOMINAL'
      FieldName = 'B_SALDO_NOMINAL'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 22
    end
    object ppRelPosicaoTituloppField24: TppField
      FieldAlias = 'INDEXADOR'
      FieldName = 'INDEXADOR'
      FieldLength = 20
      DisplayWidth = 20
      Position = 23
    end
    object ppRelPosicaoTituloppField25: TppField
      Alignment = taRightJustify
      FieldAlias = 'COD_VENDA'
      FieldName = 'COD_VENDA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 24
    end
  end
  object dsRelPosicaoTitulo: TDataSource
    DataSet = dmRelatorios2.QryRelPosicaoTitulos
    Left = 348
    Top = 28
  end
  object stgFRelAcerto: TcxPropertiesStore
    Components = <
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
          'HelpContext'
          'HelpKeyword'
          'HelpType'
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
        Component = edtDatabase
        Properties.Strings = (
          'Date')
      end
      item
        Component = edtEmissaoFinal
        Properties.Strings = (
          'Date')
      end
      item
        Component = edtEmissaoInicial
        Properties.Strings = (
          'Date')
      end
      item
        Component = edtVenctoFinal
        Properties.Strings = (
          'Date')
      end
      item
        Component = edtVenctoInicial
        Properties.Strings = (
          'Date')
      end
      item
        Component = edtVlrDescto
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BeepOnError'
          'ButtonGlyph'
          'ButtonStyle'
          'Color'
          'Constraints'
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
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupAlignment'
          'PopupBorder'
          'PopupMenu'
          'Precision'
          'QuickClose'
          'ReadOnly'
          'ShowButtonFrame'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'Visible'
          'Width')
      end
      item
        Component = edtVlrJuros
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'BeepOnError'
          'ButtonGlyph'
          'ButtonStyle'
          'Color'
          'Constraints'
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
          'HideSelection'
          'Hint'
          'ImeMode'
          'ImeName'
          'Left'
          'Name'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PasswordChar'
          'PopupAlignment'
          'PopupBorder'
          'PopupMenu'
          'Precision'
          'QuickClose'
          'ReadOnly'
          'ShowButtonFrame'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Text'
          'Top'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFRelAcerto'
    Left = 376
    Top = 143
  end
  object ppVendas: TppDBPipeline
    DataSource = dsVendas
    UserName = 'ppVendas'
    Left = 317
    Top = 56
    object ppVendasppField1: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 0
      Searchable = False
      Sortable = False
    end
    object ppVendasppField2: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 1
      Searchable = False
      Sortable = False
    end
    object ppVendasppField3: TppField
      FieldAlias = 'TOTAL'
      FieldName = 'TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 2
      Searchable = False
      Sortable = False
    end
    object ppVendasppField4: TppField
      FieldAlias = 'DESC_ACRES'
      FieldName = 'DESC_ACRES'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 3
      Searchable = False
      Sortable = False
    end
    object ppVendasppField5: TppField
      FieldAlias = 'VD_TOTAL'
      FieldName = 'VD_TOTAL'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 4
      Searchable = False
      Sortable = False
    end
    object ppVendasppField6: TppField
      FieldAlias = 'QUANTIDADE'
      FieldName = 'QUANTIDADE'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 5
      Searchable = False
      Sortable = False
    end
    object ppVendasppField7: TppField
      FieldAlias = 'PRC_UNITARIO'
      FieldName = 'PRC_UNITARIO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 6
      Searchable = False
      Sortable = False
    end
    object ppVendasppField8: TppField
      FieldAlias = 'DESCONTO'
      FieldName = 'DESCONTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 7
      Searchable = False
      Sortable = False
    end
    object ppVendasppField9: TppField
      FieldAlias = 'COD_PRODUTO'
      FieldName = 'COD_PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 8
      Searchable = False
      Sortable = False
    end
    object ppVendasppField10: TppField
      FieldAlias = 'TOTAL_ITEM'
      FieldName = 'TOTAL_ITEM'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 9
      Searchable = False
      Sortable = False
    end
    object ppVendasppField11: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 10
      Searchable = False
      Sortable = False
    end
    object ppVendasppField12: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 11
      Searchable = False
      Sortable = False
    end
    object ppVendasppField13: TppField
      FieldAlias = 'NUM_NF'
      FieldName = 'NUM_NF'
      FieldLength = 0
      DataType = dtNotKnown
      DisplayWidth = 0
      Position = 12
      Searchable = False
      Sortable = False
    end
  end
  object dsVendas: TDataSource
    DataSet = dmRelatorios2.qryRelVDRec
    Left = 348
    Top = 56
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 342
    Top = 89
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 311
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
