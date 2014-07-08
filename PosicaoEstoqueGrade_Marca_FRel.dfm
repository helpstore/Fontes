object FRelPosicaoEstoqueGrade_Marca: TFRelPosicaoEstoqueGrade_Marca
  Left = 269
  Top = 163
  BorderStyle = bsDialog
  Caption = ' List de Pos. de Est. por Grade / Marca'
  ClientHeight = 264
  ClientWidth = 352
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
    Width = 352
    Height = 224
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Label2: TcxLabel
      Left = 14
      Top = 15
      Caption = 'Grupo'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 14
      Top = 63
      Caption = 'SubGrupo'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 240
      Top = 111
      Caption = 'Tipo de Produtos'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 14
      Top = 111
      Caption = 'Marca'
      ParentFont = False
      Transparent = True
    end
    object cmbGrupo: TdxLookupEdit
      Left = 12
      Top = 32
      Width = 325
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
      OnEnter = cmbGrupoEnter
      OnExit = cmbGrupoExit
      OnKeyDown = cmbPessoaKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = dsGrupos
      LookupKeyValue = Null
    end
    object EdTipo: TdxPickEdit
      Left = 240
      Top = 128
      Width = 97
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
      OnEnter = cmbGrupoEnter
      OnExit = cmbGrupoExit
      OnKeyDown = cmbPessoaKeyDown
      Items.Strings = (
        'Ativo'
        'Desativado')
    end
    object RDALFA: TRadioButton
      Left = 14
      Top = 168
      Width = 117
      Height = 17
      Caption = 'Ordem Alfab'#233'tica'
      Checked = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
      TabStop = True
    end
    object RadioButton2: TRadioButton
      Left = 190
      Top = 168
      Width = 130
      Height = 17
      Caption = 'Ordenar por C'#243'digo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
    object cmbSubGrupo: TdxLookupEdit
      Left = 12
      Top = 80
      Width = 325
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
      OnEnter = cmbGrupoEnter
      OnExit = cmbGrupoExit
      OnKeyDown = cmbPessoaKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'SUBGRUPO'
      ListSource = DsSubGrupo
      LookupKeyValue = Null
    end
    object CkEstoque: TCheckBox
      Left = 16
      Top = 195
      Width = 168
      Height = 17
      Caption = 'Somente Estoque Positivo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnEnter = cmbGrupoEnter
      OnExit = cmbGrupoExit
      OnKeyDown = cmbPessoaKeyDown
    end
    object CmbMarca: TdxLookupEdit
      Left = 12
      Top = 128
      Width = 221
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
      OnEnter = cmbGrupoEnter
      OnExit = cmbGrupoExit
      OnKeyDown = cmbPessoaKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = DsMarca
      LookupKeyValue = Null
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 224
    Width = 352
    Height = 40
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Caption = #39
    TabOrder = 1
    object LblStatus: TcxLabel
      Left = 200
      Top = 13
      Caption = 'Status'
      ParentFont = False
      Transparent = True
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
      Left = 197
      Top = 12
      Width = 146
      Height = 16
      TabOrder = 2
      Visible = False
    end
  end
  object Actions: TActionList
    Left = 264
    Top = 16
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
  object dsGrupos: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelGrupo
    Left = 184
    Top = 24
  end
  object RelPrint: TRDprint
    ImpressoraPersonalizada.NomeImpressora = 'Modelo Personalizado - (Epson)'
    ImpressoraPersonalizada.AvancaOitavos = '27 48'
    ImpressoraPersonalizada.AvancaSextos = '27 50'
    ImpressoraPersonalizada.SaltoPagina = '12'
    ImpressoraPersonalizada.TamanhoPagina = '27 67 66'
    ImpressoraPersonalizada.Negrito = '27 69'
    ImpressoraPersonalizada.Italico = '27 52'
    ImpressoraPersonalizada.Sublinhado = '27 45 49'
    ImpressoraPersonalizada.Expandido = '27 14'
    ImpressoraPersonalizada.Normal10 = '18 27 80'
    ImpressoraPersonalizada.Comprimir12 = '18 27 77'
    ImpressoraPersonalizada.Comprimir17 = '27 80 27 15'
    ImpressoraPersonalizada.Comprimir20 = '27 77 27 15'
    ImpressoraPersonalizada.Reset = '27 80 18 20 27 53 27 70 27 45 48'
    ImpressoraPersonalizada.Inicializar = '27 64'
    OpcoesPreview.PaginaZebrada = True
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Rdprint Preview'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
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
    TamanhoQteLinhas = 66
    TamanhoQteColunas = 80
    TamanhoQteLPP = Seis
    NumeroPaginaInicial = 1
    PaginaInicial = 1
    PaginaFinal = 9999
    NumerodeCopias = 1
    FonteTamanhoPadrao = S10cpp
    FonteEstiloPadrao = []
    Orientacao = poPortrait
    OnNewPage = RelPrintNewPage
    OnBeforeNewPage = RelPrintBeforeNewPage
    Left = 312
    Top = 16
  end
  object DsSubGrupo: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelSubGrupo
    Left = 120
    Top = 24
  end
  object DsMarca: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelMarca
    Left = 48
    Top = 24
  end
  object rptPosEstMarca: TppReport
    AutoStop = False
    DataPipeline = dbPosEstMarca
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
    Units = utMillimeters
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
    TextSearchSettings.DefaultString = '<FindText>'
    TextSearchSettings.Enabled = True
    Left = 144
    Top = 108
    Version = '12.03'
    mmColumnWidth = 0
    DataPipelineName = 'dbPosEstMarca'
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 13229
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
  object dbPosEstMarca: TppDBPipeline
    DataSource = dsPosEstMarca
    UserName = 'dbPosEstMarca'
    Left = 260
    Top = 172
    object dbPosEstMarcappField1: TppField
      FieldAlias = 'CNPJ'
      FieldName = 'CNPJ'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object dbPosEstMarcappField2: TppField
      FieldAlias = 'CODIGO'
      FieldName = 'CODIGO'
      FieldLength = 15
      DisplayWidth = 15
      Position = 1
    end
    object dbPosEstMarcappField3: TppField
      FieldAlias = 'CODIGO_2'
      FieldName = 'CODIGO_2'
      FieldLength = 15
      DisplayWidth = 15
      Position = 2
    end
    object dbPosEstMarcappField4: TppField
      FieldAlias = 'CNPJ_AGRUP'
      FieldName = 'CNPJ_AGRUP'
      FieldLength = 14
      DisplayWidth = 14
      Position = 3
    end
    object dbPosEstMarcappField5: TppField
      FieldAlias = 'COD_AGRUP'
      FieldName = 'COD_AGRUP'
      FieldLength = 15
      DisplayWidth = 15
      Position = 4
    end
    object dbPosEstMarcappField6: TppField
      FieldAlias = 'NOME'
      FieldName = 'NOME'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
    object dbPosEstMarcappField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 6
    end
    object dbPosEstMarcappField8: TppField
      FieldAlias = 'NOME_MARCA'
      FieldName = 'NOME_MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 7
    end
    object dbPosEstMarcappField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'GRUPO'
      FieldName = 'GRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 8
    end
    object dbPosEstMarcappField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBGRUPO'
      FieldName = 'SUBGRUPO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 9
    end
    object dbPosEstMarcappField11: TppField
      FieldAlias = 'NOME_GRUPO'
      FieldName = 'NOME_GRUPO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 10
    end
    object dbPosEstMarcappField12: TppField
      FieldAlias = 'NOME_SUBGRUPO'
      FieldName = 'NOME_SUBGRUPO'
      FieldLength = 50
      DisplayWidth = 50
      Position = 11
    end
    object dbPosEstMarcappField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'REDUCAO'
      FieldName = 'REDUCAO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 12
    end
    object dbPosEstMarcappField14: TppField
      FieldAlias = 'UNIDADE'
      FieldName = 'UNIDADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 13
    end
    object dbPosEstMarcappField15: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTE'
      FieldName = 'CTE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 14
    end
    object dbPosEstMarcappField16: TppField
      Alignment = taRightJustify
      FieldAlias = 'CTIE'
      FieldName = 'CTIE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 15
    end
    object dbPosEstMarcappField17: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDADE_1'
      FieldName = 'QTDADE_1'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 16
    end
    object dbPosEstMarcappField18: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDADE_2'
      FieldName = 'QTDADE_2'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 17
    end
    object dbPosEstMarcappField19: TppField
      FieldAlias = 'LOCALIZACAO_1'
      FieldName = 'LOCALIZACAO_1'
      FieldLength = 30
      DisplayWidth = 30
      Position = 18
    end
    object dbPosEstMarcappField20: TppField
      FieldAlias = 'LOCALIZACAO_2'
      FieldName = 'LOCALIZACAO_2'
      FieldLength = 30
      DisplayWidth = 30
      Position = 19
    end
    object dbPosEstMarcappField21: TppField
      FieldAlias = 'LOCALIZACAO_3'
      FieldName = 'LOCALIZACAO_3'
      FieldLength = 30
      DisplayWidth = 30
      Position = 20
    end
    object dbPosEstMarcappField22: TppField
      FieldAlias = 'NEG_QTDADE_2'
      FieldName = 'NEG_QTDADE_2'
      FieldLength = 1
      DisplayWidth = 1
      Position = 21
    end
    object dbPosEstMarcappField23: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDADE_MIN'
      FieldName = 'QTDADE_MIN'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 22
    end
    object dbPosEstMarcappField24: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDADE_MAX'
      FieldName = 'QTDADE_MAX'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 23
    end
    object dbPosEstMarcappField25: TppField
      FieldAlias = 'COMPLEMENTO_NF'
      FieldName = 'COMPLEMENTO_NF'
      FieldLength = 1
      DisplayWidth = 1
      Position = 24
    end
    object dbPosEstMarcappField26: TppField
      FieldAlias = 'DT_ULT_COMPRA'
      FieldName = 'DT_ULT_COMPRA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 25
    end
    object dbPosEstMarcappField27: TppField
      Alignment = taRightJustify
      FieldAlias = 'QT_ULT_COMPRA'
      FieldName = 'QT_ULT_COMPRA'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 26
    end
    object dbPosEstMarcappField28: TppField
      FieldAlias = 'DT_ULT_VENDA'
      FieldName = 'DT_ULT_VENDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 27
    end
    object dbPosEstMarcappField29: TppField
      Alignment = taRightJustify
      FieldAlias = 'MARGEM_BRUTA'
      FieldName = 'MARGEM_BRUTA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 28
    end
    object dbPosEstMarcappField30: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_REPOS'
      FieldName = 'PRC_REPOS'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 29
    end
    object dbPosEstMarcappField31: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_CUSTO_ANT'
      FieldName = 'PRC_CUSTO_ANT'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 30
    end
    object dbPosEstMarcappField32: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_CUSTO_MED'
      FieldName = 'PRC_CUSTO_MED'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 31
    end
    object dbPosEstMarcappField33: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_VENDA'
      FieldName = 'PRC_VENDA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 32
    end
    object dbPosEstMarcappField34: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_VENDA_ANT'
      FieldName = 'PRC_VENDA_ANT'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 33
    end
    object dbPosEstMarcappField35: TppField
      Alignment = taRightJustify
      FieldAlias = 'PRC_VENDA_MED'
      FieldName = 'PRC_VENDA_MED'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 34
    end
    object dbPosEstMarcappField36: TppField
      FieldAlias = 'ALIQUOTA_ECF'
      FieldName = 'ALIQUOTA_ECF'
      FieldLength = 5
      DisplayWidth = 5
      Position = 35
    end
    object dbPosEstMarcappField37: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORIGEM'
      FieldName = 'ORIGEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 36
    end
    object dbPosEstMarcappField38: TppField
      Alignment = taRightJustify
      FieldAlias = 'PESO_LIQ'
      FieldName = 'PESO_LIQ'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 37
    end
    object dbPosEstMarcappField39: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERC_FRETE'
      FieldName = 'PERC_FRETE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 38
    end
    object dbPosEstMarcappField40: TppField
      Alignment = taRightJustify
      FieldAlias = 'IPI'
      FieldName = 'IPI'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 39
    end
    object dbPosEstMarcappField41: TppField
      Alignment = taRightJustify
      FieldAlias = 'VOLUME'
      FieldName = 'VOLUME'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 40
    end
    object dbPosEstMarcappField42: TppField
      FieldAlias = 'PROD_PESAVEL'
      FieldName = 'PROD_PESAVEL'
      FieldLength = 1
      DisplayWidth = 1
      Position = 41
    end
    object dbPosEstMarcappField43: TppField
      FieldAlias = 'ETIQUETA_ENT'
      FieldName = 'ETIQUETA_ENT'
      FieldLength = 1
      DisplayWidth = 1
      Position = 42
    end
    object dbPosEstMarcappField44: TppField
      FieldAlias = 'ATIVO'
      FieldName = 'ATIVO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 43
    end
    object dbPosEstMarcappField45: TppField
      Alignment = taRightJustify
      FieldAlias = 'ULTIMO_FORNECEDOR'
      FieldName = 'ULTIMO_FORNECEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 44
    end
    object dbPosEstMarcappField46: TppField
      Alignment = taRightJustify
      FieldAlias = 'FORNECEDOR'
      FieldName = 'FORNECEDOR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 45
    end
    object dbPosEstMarcappField47: TppField
      Alignment = taRightJustify
      FieldAlias = 'SUBUNIDADE'
      FieldName = 'SUBUNIDADE'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 46
    end
    object dbPosEstMarcappField48: TppField
      FieldAlias = 'PRC_CUSTO_CODIF'
      FieldName = 'PRC_CUSTO_CODIF'
      FieldLength = 15
      DisplayWidth = 15
      Position = 47
    end
    object dbPosEstMarcappField49: TppField
      FieldAlias = 'GRADE'
      FieldName = 'GRADE'
      FieldLength = 4
      DisplayWidth = 4
      Position = 48
    end
    object dbPosEstMarcappField50: TppField
      Alignment = taRightJustify
      FieldAlias = 'MATERIAL'
      FieldName = 'MATERIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 49
    end
    object dbPosEstMarcappField51: TppField
      Alignment = taRightJustify
      FieldAlias = 'COR'
      FieldName = 'COR'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 50
    end
    object dbPosEstMarcappField52: TppField
      FieldAlias = 'ULTIMA_COMPRA'
      FieldName = 'ULTIMA_COMPRA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 51
    end
    object dbPosEstMarcappField53: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDADE_COMPRA'
      FieldName = 'QTDADE_COMPRA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 52
    end
    object dbPosEstMarcappField54: TppField
      FieldAlias = 'ULTIMA_VENDA'
      FieldName = 'ULTIMA_VENDA'
      FieldLength = 0
      DataType = dtDateTime
      DisplayWidth = 18
      Position = 53
    end
    object dbPosEstMarcappField55: TppField
      Alignment = taRightJustify
      FieldAlias = 'QTDADE_VENDA'
      FieldName = 'QTDADE_VENDA'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 54
    end
    object dbPosEstMarcappField56: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTOQUE'
      FieldName = 'ESTOQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 55
    end
    object dbPosEstMarcappField57: TppField
      Alignment = taRightJustify
      FieldAlias = 'PERFIL'
      FieldName = 'PERFIL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 56
    end
    object dbPosEstMarcappField58: TppField
      FieldAlias = 'NOME_PERFIL'
      FieldName = 'NOME_PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 57
    end
    object dbPosEstMarcappField59: TppField
      FieldAlias = 'NOME_COR'
      FieldName = 'NOME_COR'
      FieldLength = 50
      DisplayWidth = 50
      Position = 58
    end
    object dbPosEstMarcappField60: TppField
      FieldAlias = 'NOME_MATERIAL'
      FieldName = 'NOME_MATERIAL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 59
    end
    object dbPosEstMarcappField61: TppField
      Alignment = taRightJustify
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 60
    end
    object dbPosEstMarcappField62: TppField
      Alignment = taRightJustify
      FieldAlias = 'INICIAL'
      FieldName = 'INICIAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 61
    end
    object dbPosEstMarcappField63: TppField
      Alignment = taRightJustify
      FieldAlias = 'FINAL'
      FieldName = 'FINAL'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 62
    end
    object dbPosEstMarcappField64: TppField
      Alignment = taRightJustify
      FieldAlias = 'INTERVALO'
      FieldName = 'INTERVALO'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 63
    end
  end
  object dsPosEstMarca: TDataSource
    DataSet = DMRelatorios.VER_EST_PRODUTOS_GRADES
    Left = 184
    Top = 84
  end
end
