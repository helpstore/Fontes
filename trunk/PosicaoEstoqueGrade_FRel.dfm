object FRelPosicaoEstoqueGrade: TFRelPosicaoEstoqueGrade
  Left = 591
  Top = 464
  BorderStyle = bsDialog
  Caption = ' List de Pos. de Estoque por Grade'
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
    end
    object Label3: TcxLabel
      Left = 14
      Top = 63
      Caption = 'SubGrupo'
      ParentFont = False
    end
    object Label4: TcxLabel
      Left = 13
      Top = 111
      Caption = 'Tipo de Produtos'
      ParentFont = False
    end
    object Label1: TcxLabel
      Left = 122
      Top = 111
      Caption = 'Marca'
      ParentFont = False
    end
    object cmbGrupo: TdxLookupEdit
      Left = 12
      Top = 28
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
      Left = 13
      Top = 124
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
      TabOrder = 2
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
      Top = 76
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
      Left = 120
      Top = 124
      Width = 217
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
    Left = 296
    Top = 112
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
    Left = 56
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
    Left = 280
    Top = 24
  end
  object DsSubGrupo: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelSubGrupo
    Left = 56
    Top = 72
  end
  object dbProdGrd: TppDBPipeline
    DataSource = dsProdGrd
    UserName = 'dbProdGrd'
    Left = 260
    Top = 192
    object dbProdGrdppField1: TppField
      Alignment = taRightJustify
      FieldAlias = 'ESTOQUE'
      FieldName = 'ESTOQUE'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 0
    end
    object dbProdGrdppField2: TppField
      FieldAlias = 'NUMERO'
      FieldName = 'NUMERO'
      FieldLength = 6
      DisplayWidth = 6
      Position = 1
    end
    object dbProdGrdppField3: TppField
      Alignment = taRightJustify
      FieldAlias = 'ORDEM'
      FieldName = 'ORDEM'
      FieldLength = 0
      DataType = dtInteger
      DisplayWidth = 10
      Position = 2
    end
    object dbProdGrdppField4: TppField
      FieldAlias = 'PERFIL'
      FieldName = 'PERFIL'
      FieldLength = 50
      DisplayWidth = 50
      Position = 3
    end
    object dbProdGrdppField5: TppField
      FieldAlias = 'PRODUTO'
      FieldName = 'PRODUTO'
      FieldLength = 86
      DisplayWidth = 86
      Position = 4
    end
    object dbProdGrdppField6: TppField
      FieldAlias = 'MARCA'
      FieldName = 'MARCA'
      FieldLength = 50
      DisplayWidth = 50
      Position = 5
    end
  end
  object dsProdGrd: TDataSource
    DataSet = DMRelatorios.qPosEstGrade
    Left = 296
    Top = 192
  end
  object rpt: TppReport
    PassSetting = psTwoPass
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
    Template.FileName = 'D:\softbr\manager\fontes\posi'#231#227'o de estoque da grade.rtm'
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
    Left = 192
    Top = 192
    Version = '12.03'
    mmColumnWidth = 0
    object ppHeaderBand1: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 14552
      mmPrintPosition = 0
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Posi'#231#227'o de Estoque por Grade'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'ARIAL'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 5821
        mmWidth = 61913
        BandType = 0
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
        Font.Color = clWindowText
        Font.Name = 'ARIAL'
        Font.Size = 12
        Font.Style = [fsBold, fsItalic]
        Transparent = True
        mmHeight = 4763
        mmLeft = 0
        mmTop = 0
        mmWidth = 22754
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
      mmHeight = 5292
      mmPrintPosition = 0
      object ppCrossTab1: TppCrossTab
        UserName = 'CrossTab1'
        DataPipeline = dbProdGrd
        Stretch = True
        Style = 'RepeatedCaptions'
        DataPipelineName = 'dbProdGrd'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 0
        mmWidth = 284300
        BandType = 4
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object TppGrandTotal
          ChildType = 6
          object TppTotalCaptionDef
            ChildType = 4
            Alignment = taRightJustify
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
          end
          object TppTotalDef
            ChildType = 3
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
        object TppGrandTotal
          ChildType = 7
          object TppTotalCaptionDef
            ChildType = 4
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
            Visible = False
          end
          object TppTotalDef
            ChildType = 3
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Arial'
            Font.Style = []
            Visible = False
          end
        end
        object TppColumnDef
          FieldAlias = 'NUMERO'
          FieldName = 'NUMERO'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppRowDef
          ChildType = 1
          FieldAlias = 'PERFIL'
          FieldName = 'PERFIL'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppRowDef
          ChildType = 1
          FieldAlias = 'MARCA'
          FieldName = 'MARCA'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -9
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppRowDef
          ChildType = 1
          FieldAlias = 'PRODUTO'
          FieldName = 'PRODUTO'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -8
          Font.Name = 'Arial'
          Font.Style = []
          object TppSubTotal
            ChildType = 5
            object TppTotalCaptionDef
              ChildType = 4
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
            object TppTotalDef
              ChildType = 3
              Color = clWhite
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clWindowText
              Font.Height = -13
              Font.Name = 'Arial'
              Font.Style = []
            end
          end
        end
        object TppValueDef
          ChildType = 2
          FieldAlias = 'ESTOQUE'
          FieldName = 'ESTOQUE'
          Color = clWhite
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Arial'
          Font.Style = []
          object TppValueCaptionDef
            ChildType = 8
            CalcType = dcSum
            Color = clWhite
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWhite
            Font.Height = -9
            Font.Name = 'Arial'
            Font.Style = []
          end
        end
      end
    end
    object ppFooterBand1: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 13229
      mmPrintPosition = 0
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
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        Transparent = True
        mmHeight = 4233
        mmLeft = 1323
        mmTop = 1323
        mmWidth = 29810
        BandType = 8
      end
      object ppSystemVariable2: TppSystemVariable
        UserName = 'SystemVariable2'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        VarType = vtPageSetDesc
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Name = 'TIMES NEW ROMAN'
        Font.Size = 10
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 4233
        mmLeft = 248180
        mmTop = 1323
        mmWidth = 19315
        BandType = 8
      end
    end
    object ppParameterList1: TppParameterList
    end
  end
  object dsSomaPerfil: TDataSource
    Left = 244
    Top = 72
  end
  object DsMarca: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.SelMarca
    Left = 160
    Top = 120
  end
end
