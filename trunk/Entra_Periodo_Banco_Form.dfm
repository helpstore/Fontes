object frmRelExtratoBancario: TfrmRelExtratoBancario
  Left = 370
  Top = 201
  Width = 318
  Height = 313
  BorderIcons = [biSystemMenu]
  Caption = ' Digite o Per'#237'odo '
  Color = clBtnFace
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
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 302
    Height = 275
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
    object Bevel1: TBevel
      Left = 13
      Top = 32
      Width = 248
      Height = 2
      Shape = bsTopLine
    end
    object Label2: TcxLabel
      Left = 11
      Top = 8
      Caption = 'Extrato Movimento Banc'#225'rio'
      ParentFont = False
    end
    object Panel2: TPanel
      Left = 2
      Top = 241
      Width = 298
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 2
      DesignSize = (
        298
        32)
      object BtnOk: TcxButton
        Left = 123
        Top = 4
        Width = 85
        Height = 25
        Cursor = crHandPoint
        Action = ActOk
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
        Left = 210
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
    object gbData: TGroupBox
      Left = 13
      Top = 43
      Width = 276
      Height = 80
      Caption = 'Data de Movimento'
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
        Left = 140
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
        Left = 118
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
        Left = 246
        Top = 27
        Cursor = crHandPoint
        Hint = 'Campo Requerido'
        Caption = '*'
        ParentColor = False
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
      end
      object edtVenctoInicial: TdxDateEdit
        Left = 10
        Top = 38
        Width = 117
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnEnter = edtVenctoInicialEnter
        OnExit = edtVenctoInicialExit
        OnKeyDown = edtVenctoInicialKeyDown
        Date = 36526.000000000000000000
      end
      object edtVenctoFinal: TdxDateEdit
        Left = 140
        Top = 38
        Width = 117
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -13
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnEnter = edtVenctoInicialEnter
        OnExit = edtVenctoInicialExit
        OnKeyDown = edtVenctoInicialKeyDown
        Date = 55152.000000000000000000
      end
    end
    object GroupBox3: TGroupBox
      Left = 12
      Top = 126
      Width = 277
      Height = 51
      Caption = 'Status'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      object rdConciliado: TRadioButton
        Left = 16
        Top = 21
        Width = 81
        Height = 17
        Caption = 'Conciliados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object rdPendente: TRadioButton
        Left = 101
        Top = 21
        Width = 100
        Height = 17
        Caption = 'N'#227'o Conciliados'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object rdAmbos: TRadioButton
        Left = 208
        Top = 21
        Width = 65
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
    object ckMovtoDia: TcxCheckBox
      Left = 14
      Top = 193
      Caption = 'Exibir Movto Di'#225'rio'
      ParentFont = False
      State = cbsGrayed
      TabOrder = 3
      Width = 139
    end
    object ckMovtoFuturo: TcxCheckBox
      Left = 158
      Top = 193
      Caption = 'Exibir Movtos Futuros'
      ParentFont = False
      State = cbsGrayed
      TabOrder = 4
      Width = 139
    end
    object ckMovtoNConc: TcxCheckBox
      Left = 14
      Top = 217
      Caption = 'Movimentos N'#227'o Conciliados'
      ParentFont = False
      State = cbsGrayed
      TabOrder = 5
      Width = 235
    end
  end
  object Actions: TActionList
    Left = 185
    Top = 32
    object ActFechar: TAction
      Caption = '&Fechar  '
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = '&Ok'
      OnExecute = ActOkExecute
    end
  end
  object IMPRESSORA: TRDprint
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
    OpcoesPreview.PaginaZebrada = False
    OpcoesPreview.Remalina = False
    OpcoesPreview.CaptionPreview = 'Visualizar Impress'#227'o'
    OpcoesPreview.PreviewZoom = 100
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
    CaptionSetup = 'Configurar Impres'#227'o'
    UsaGerenciadorImpr = False
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
    Left = 216
    Top = 32
  end
  object stgfrmRelExtratoBancario: TcxPropertiesStore
    Components = <
      item
        Component = ckMovtoDia
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
          'DisabledColor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HighlightColor'
          'Hint'
          'HotTrack'
          'HotTrackColor'
          'HotTrackColorType'
          'Left'
          'LightTextStyle'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'State'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'TextHighlightColor'
          'TextShadowColor'
          'TextShadowDepth'
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
        Component = ckMovtoFuturo
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
          'DisabledColor'
          'DragCursor'
          'DragKind'
          'DragMode'
          'Enabled'
          'Font'
          'FrameColor'
          'FrameController'
          'Height'
          'HelpContext'
          'HelpKeyword'
          'HelpType'
          'HighlightColor'
          'Hint'
          'HotTrack'
          'HotTrackColor'
          'HotTrackColorType'
          'Left'
          'LightTextStyle'
          'Name'
          'ParentBiDiMode'
          'ParentColor'
          'ParentFont'
          'ParentShowHint'
          'PopupMenu'
          'ShowHint'
          'State'
          'TabOnEnter'
          'TabOrder'
          'TabStop'
          'Tag'
          'TextHighlightColor'
          'TextShadowColor'
          'TextShadowDepth'
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
        Component = ckMovtoNConc
        Properties.Strings = (
          'Checked')
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
        Component = edtVenctoFinal
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'ButtonGlyph'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateButtons'
          'DateOnError'
          'DateValidation'
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
          'PopupAlignment'
          'PopupBorder'
          'PopupMenu'
          'ReadOnly'
          'SaveTime'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseEditMask'
          'Visible'
          'Width')
      end
      item
        Component = edtVenctoInicial
        Properties.Strings = (
          'Alignment'
          'Anchors'
          'AutoSelect'
          'AutoSize'
          'ButtonGlyph'
          'Color'
          'Constraints'
          'Cursor'
          'Date'
          'DateButtons'
          'DateOnError'
          'DateValidation'
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
          'PopupAlignment'
          'PopupBorder'
          'PopupMenu'
          'ReadOnly'
          'SaveTime'
          'ShowHint'
          'Style'
          'StyleController'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseEditMask'
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
          'HelpKeyword'
          'HelpType'
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
          'Width'
          'WordWrap')
      end
      item
        Component = rdConciliado
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
          'HelpKeyword'
          'HelpType'
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
          'Width'
          'WordWrap')
      end
      item
        Component = rdPendente
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
          'HelpKeyword'
          'HelpType'
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
          'Width'
          'WordWrap')
      end>
    StorageName = 'stgfrmRelExtratoBancario'
    Left = 160
    Top = 32
  end
  object rptExtratoMovimento: TppReport
    AutoStop = False
    DataPipeline = ppExtratoMovimento
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
    DataPipelineName = 'ppExtratoMovimento'
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
        mmWidth = 197115
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
        mmLeft = 2117
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
        Caption = 'Extrato Movimento Banc'#225'rio'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 12
        Font.Style = []
        Transparent = True
        mmHeight = 4763
        mmLeft = 2117
        mmTop = 9260
        mmWidth = 55827
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
        mmLeft = 153988
        mmTop = 2117
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
        Font.Size = 9
        Font.Style = []
        Transparent = True
        mmHeight = 3704
        mmLeft = 2117
        mmTop = 15346
        mmWidth = 27252
        BandType = 1
      end
    end
    object ppHeaderBand2: TppHeaderBand
      mmBottomOffset = 0
      mmHeight = 17198
      mmPrintPosition = 0
      object ppLabel2: TppLabel
        UserName = 'Label2'
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
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 264
        mmTop = 12965
        mmWidth = 6096
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
        Caption = 'Documento'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3387
        mmLeft = 35983
        mmTop = 12965
        mmWidth = 23019
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
        Caption = 'Historico'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 70644
        mmTop = 12965
        mmWidth = 52123
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
        mmLeft = 183621
        mmTop = 12965
        mmWidth = 13494
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
        mmHeight = 1323
        mmLeft = 0
        mmTop = 16669
        mmWidth = 197115
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
        Caption = 'Credito'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 157957
        mmTop = 12965
        mmWidth = 16933
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
        Caption = 'Debito '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        TextAlignment = taRightJustified
        Transparent = True
        mmHeight = 3440
        mmLeft = 136525
        mmTop = 12965
        mmWidth = 16933
        BandType = 0
      end
      object ppLabel1: TppLabel
        UserName = 'Label1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        Caption = 'Concilia'#231#227'o'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 16669
        mmTop = 12700
        mmWidth = 17198
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
        Caption = 'Saldo Anterior: '
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        mmHeight = 3440
        mmLeft = 0
        mmTop = 3704
        mmWidth = 23019
        BandType = 0
      end
      object ppDBText9: TppDBText
        UserName = 'DBText9'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'SALDO_ANTERIOR'
        DataPipeline = ppExtratoMovimento
        DisplayFormat = '$#,0.00;-$#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = [fsBold]
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 22490
        mmTop = 3969
        mmWidth = 19844
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
      mmHeight = 10848
      mmPrintPosition = 0
      object ppDBText1: TppDBText
        UserName = 'DBText1'
        HyperlinkColor = clBlue
        Border.BorderPositions = []
        Border.Color = clBlack
        Border.Style = psSolid
        Border.Visible = False
        Border.Weight = 1.000000000000000000
        DataField = 'DATA'
        DataPipeline = ppExtratoMovimento
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 0
        mmTop = 0
        mmWidth = 15610
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
        DataField = 'DOCUMENTO'
        DataPipeline = ppExtratoMovimento
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 35983
        mmTop = 0
        mmWidth = 22754
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
        DataField = 'COD_DOC'
        DataPipeline = ppExtratoMovimento
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 60061
        mmTop = 0
        mmWidth = 8467
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
        DataField = 'HISTORICO'
        DataPipeline = ppExtratoMovimento
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 7
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 70644
        mmTop = 0
        mmWidth = 64294
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
        DataField = 'DEBITO'
        DataPipeline = ppExtratoMovimento
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 136525
        mmTop = 0
        mmWidth = 16933
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
        DataField = 'CREDITO'
        DataPipeline = ppExtratoMovimento
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 157957
        mmTop = 0
        mmWidth = 16933
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
        DataField = 'SALDO'
        DataPipeline = ppExtratoMovimento
        DisplayFormat = '#,0.00;-#,0.00'
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        TextAlignment = taRightJustified
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 177271
        mmTop = 0
        mmWidth = 19844
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
        DataField = 'DATA_CONC'
        DataPipeline = ppExtratoMovimento
        Ellipsis = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Name = 'Arial'
        Font.Size = 8
        Font.Style = []
        Transparent = True
        DataPipelineName = 'ppExtratoMovimento'
        mmHeight = 3175
        mmLeft = 16933
        mmTop = 0
        mmWidth = 17198
        BandType = 4
      end
    end
    object ppFooterBand4: TppFooterBand
      mmBottomOffset = 0
      mmHeight = 7673
      mmPrintPosition = 0
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
        mmLeft = 180182
        mmTop = 1852
        mmWidth = 14552
        BandType = 8
      end
      object ppShape9: TppShape
        UserName = 'Shape12'
        Gradient.EndColor = clWhite
        Gradient.StartColor = clWhite
        Gradient.Style = gsNone
        Shape = stRoundRect
        mmHeight = 7144
        mmLeft = 0
        mmTop = 0
        mmWidth = 197644
        BandType = 8
      end
      object ppDBText32: TppDBText
        UserName = 'DBText32'
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
        mmTop = 1852
        mmWidth = 151342
        BandType = 8
      end
    end
    object ppSummaryBand2: TppSummaryBand
      PrintHeight = phDynamic
      AlignToBottom = False
      mmBottomOffset = 0
      mmHeight = 34925
      mmPrintPosition = 0
      object SubMovtoFuturo: TppSubReport
        UserName = 'SubMovtoFuturo'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubMovtoNConciliados
        TraverseAllData = False
        DataPipelineName = 'ppMovtoFuturo'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 14552
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport1: TppChildReport
          AutoStop = False
          DataPipeline = ppMovtoFuturo
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
          DataPipelineName = 'ppMovtoFuturo'
          object ppTitleBand1: TppTitleBand
            BeforePrint = ppTitleBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 16404
            mmPrintPosition = 0
            object ppLabel9: TppLabel
              UserName = 'Label9'
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
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2381
              mmTop = 11113
              mmWidth = 6096
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
              Caption = 'Documento'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 20902
              mmTop = 11113
              mmWidth = 23019
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
              Caption = 'Historico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 56356
              mmTop = 11113
              mmWidth = 52123
              BandType = 1
            end
            object ppLine3: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 529
              mmTop = 15610
              mmWidth = 182563
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
              Caption = 'Credito'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 143669
              mmTop = 11113
              mmWidth = 16933
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
              Caption = 'Debito '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 122238
              mmTop = 11113
              mmWidth = 16933
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
              Caption = 'Movimentos Futuros'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 1588
              mmTop = 2910
              mmWidth = 31327
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
              mmLeft = 168805
              mmTop = 11642
              mmWidth = 13494
              BandType = 1
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
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText11: TppDBText
              UserName = 'DBText11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA'
              DataPipeline = ppMovtoFuturo
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3175
              mmLeft = 2117
              mmTop = 265
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText12: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCUMENTO'
              DataPipeline = ppMovtoFuturo
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3175
              mmLeft = 20902
              mmTop = 265
              mmWidth = 22733
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
              DataField = 'COD_DOC'
              DataPipeline = ppMovtoFuturo
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3175
              mmLeft = 45773
              mmTop = 265
              mmWidth = 8467
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
              DataField = 'HISTORICO'
              DataPipeline = ppMovtoFuturo
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3175
              mmLeft = 56356
              mmTop = 265
              mmWidth = 64294
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
              DataField = 'DEBITO'
              DataPipeline = ppMovtoFuturo
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3175
              mmLeft = 122238
              mmTop = 265
              mmWidth = 16933
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
              DataField = 'CREDITO'
              DataPipeline = ppMovtoFuturo
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3175
              mmLeft = 143669
              mmTop = 265
              mmWidth = 16933
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
              DataField = 'SALDO'
              DataPipeline = ppMovtoFuturo
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3175
              mmLeft = 162454
              mmTop = 265
              mmWidth = 19844
              BandType = 4
            end
          end
          object ppSummaryBand1: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel17: TppLabel
              UserName = 'Label17'
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
              mmHeight = 3387
              mmLeft = 123561
              mmTop = 794
              mmWidth = 7535
              BandType = 7
            end
            object ppLine4: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 123561
              mmTop = 0
              mmWidth = 59002
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
              DataField = 'SALDO'
              DataPipeline = ppMovtoFuturo
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoFuturo'
              mmHeight = 3387
              mmLeft = 162719
              mmTop = 529
              mmWidth = 19845
              BandType = 7
            end
          end
        end
      end
      object SubMovtoNConciliados: TppSubReport
        UserName = 'SubMovtoNConciliados'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        TraverseAllData = False
        DataPipelineName = 'ppMovtoNConciliados'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 5821
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport2: TppChildReport
          AutoStop = False
          DataPipeline = ppMovtoNConciliados
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
          DataPipelineName = 'ppMovtoNConciliados'
          object ppTitleBand2: TppTitleBand
            BeforePrint = ppTitleBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 16404
            mmPrintPosition = 0
            object ppLabel18: TppLabel
              UserName = 'Label9'
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
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2381
              mmTop = 11113
              mmWidth = 6096
              BandType = 1
            end
            object ppLabel19: TppLabel
              UserName = 'Label10'
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
              mmLeft = 20902
              mmTop = 11113
              mmWidth = 23019
              BandType = 1
            end
            object ppLabel20: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Historico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 56356
              mmTop = 11113
              mmWidth = 52123
              BandType = 1
            end
            object ppLine5: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 529
              mmTop = 15610
              mmWidth = 182563
              BandType = 1
            end
            object ppLabel21: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Credito'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 143669
              mmTop = 11113
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel22: TppLabel
              UserName = 'Label15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Debito '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 122238
              mmTop = 11113
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel23: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Movimentos N'#227'o Conciliados do Per'#237'odo'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 1588
              mmTop = 2910
              mmWidth = 61976
              BandType = 1
            end
            object ppLabel24: TppLabel
              UserName = 'Label16'
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
              mmLeft = 168805
              mmTop = 11642
              mmWidth = 13494
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
            mmHeight = 4763
            mmPrintPosition = 0
            object ppDBText18: TppDBText
              UserName = 'DBText11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA'
              DataPipeline = ppMovtoNConciliados
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3175
              mmLeft = 2117
              mmTop = 265
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText19: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCUMENTO'
              DataPipeline = ppMovtoNConciliados
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3175
              mmLeft = 20902
              mmTop = 265
              mmWidth = 22733
              BandType = 4
            end
            object ppDBText20: TppDBText
              UserName = 'DBText13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'COD_DOC'
              DataPipeline = ppMovtoNConciliados
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3175
              mmLeft = 45773
              mmTop = 265
              mmWidth = 8467
              BandType = 4
            end
            object ppDBText21: TppDBText
              UserName = 'DBText14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = ppMovtoNConciliados
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3175
              mmLeft = 56356
              mmTop = 265
              mmWidth = 64294
              BandType = 4
            end
            object ppDBText22: TppDBText
              UserName = 'DBText15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DEBITO'
              DataPipeline = ppMovtoNConciliados
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3175
              mmLeft = 122238
              mmTop = 265
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText23: TppDBText
              UserName = 'DBText16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CREDITO'
              DataPipeline = ppMovtoNConciliados
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3175
              mmLeft = 143669
              mmTop = 265
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText24: TppDBText
              UserName = 'DBText17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = ppMovtoNConciliados
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3175
              mmLeft = 162454
              mmTop = 265
              mmWidth = 19844
              BandType = 4
            end
          end
          object ppSummaryBand3: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel25: TppLabel
              UserName = 'Label17'
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
              mmHeight = 3387
              mmLeft = 123561
              mmTop = 794
              mmWidth = 7535
              BandType = 7
            end
            object ppLine6: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 123561
              mmTop = 0
              mmWidth = 59002
              BandType = 7
            end
            object ppDBCalc2: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = ppMovtoNConciliados
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoNConciliados'
              mmHeight = 3387
              mmLeft = 162719
              mmTop = 529
              mmWidth = 19845
              BandType = 7
            end
          end
        end
      end
      object SubMovtoDia: TppSubReport
        UserName = 'SubMovtoDia'
        ExpandAll = False
        NewPrintJob = False
        OutlineSettings.CreateNode = True
        ShiftRelativeTo = SubMovtoFuturo
        TraverseAllData = False
        DataPipelineName = 'ppMovtoDia'
        mmHeight = 5027
        mmLeft = 0
        mmTop = 23813
        mmWidth = 197300
        BandType = 7
        mmBottomOffset = 0
        mmOverFlowOffset = 0
        mmStopPosition = 0
        mmMinHeight = 0
        object ppChildReport3: TppChildReport
          AutoStop = False
          DataPipeline = ppMovtoDia
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
          DataPipelineName = 'ppMovtoDia'
          object ppTitleBand3: TppTitleBand
            BeforePrint = ppTitleBand1BeforePrint
            mmBottomOffset = 0
            mmHeight = 16404
            mmPrintPosition = 0
            object ppLabel26: TppLabel
              UserName = 'Label9'
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
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3387
              mmLeft = 2381
              mmTop = 11113
              mmWidth = 6096
              BandType = 1
            end
            object ppLabel27: TppLabel
              UserName = 'Label10'
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
              mmLeft = 44186
              mmTop = 10848
              mmWidth = 17198
              BandType = 1
            end
            object ppLabel28: TppLabel
              UserName = 'Label11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Historico'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 71438
              mmTop = 10848
              mmWidth = 52123
              BandType = 1
            end
            object ppLine7: TppLine
              UserName = 'Line3'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1852
              mmLeft = 1852
              mmTop = 15610
              mmWidth = 196057
              BandType = 1
            end
            object ppLabel29: TppLabel
              UserName = 'Label14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Credito'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 158486
              mmTop = 10848
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel30: TppLabel
              UserName = 'Label15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Debito '
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              mmHeight = 3440
              mmLeft = 137054
              mmTop = 10848
              mmWidth = 16933
              BandType = 1
            end
            object ppLabel31: TppLabel
              UserName = 'Label13'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Movimentos Realizados no Dia'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 9
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3810
              mmLeft = 1588
              mmTop = 2910
              mmWidth = 46778
              BandType = 1
            end
            object ppLabel32: TppLabel
              UserName = 'Label16'
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
              mmLeft = 183621
              mmTop = 11377
              mmWidth = 13494
              BandType = 1
            end
            object ppLabel34: TppLabel
              UserName = 'Label34'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Caption = 'Concilia'#231#227'o'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              Transparent = True
              mmHeight = 3440
              mmLeft = 21167
              mmTop = 11377
              mmWidth = 17992
              BandType = 1
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
            mmHeight = 3440
            mmPrintPosition = 0
            object ppDBText25: TppDBText
              UserName = 'DBText11'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA'
              DataPipeline = ppMovtoDia
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 3175
              mmLeft = 2117
              mmTop = 265
              mmWidth = 15610
              BandType = 4
            end
            object ppDBText26: TppDBText
              UserName = 'DBText12'
              HyperlinkColor = clBlue
              AutoSize = True
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DOCUMENTO'
              DataPipeline = ppMovtoDia
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 2879
              mmLeft = 44186
              mmTop = 0
              mmWidth = 16087
              BandType = 4
            end
            object ppDBText28: TppDBText
              UserName = 'DBText14'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'HISTORICO'
              DataPipeline = ppMovtoDia
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 7
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 3175
              mmLeft = 71438
              mmTop = 0
              mmWidth = 64294
              BandType = 4
            end
            object ppDBText29: TppDBText
              UserName = 'DBText15'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DEBITO'
              DataPipeline = ppMovtoDia
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 3175
              mmLeft = 137054
              mmTop = 0
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText30: TppDBText
              UserName = 'DBText16'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'CREDITO'
              DataPipeline = ppMovtoDia
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 3175
              mmLeft = 158486
              mmTop = 0
              mmWidth = 16933
              BandType = 4
            end
            object ppDBText31: TppDBText
              UserName = 'DBText17'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = ppMovtoDia
              DisplayFormat = '#,0.00;-#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 3175
              mmLeft = 177271
              mmTop = 0
              mmWidth = 19844
              BandType = 4
            end
            object ppDBText27: TppDBText
              UserName = 'DBText27'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'DATA_CONCILIACAO'
              DataPipeline = ppMovtoDia
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = []
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 3175
              mmLeft = 20902
              mmTop = 0
              mmWidth = 17992
              BandType = 4
            end
          end
          object ppSummaryBand4: TppSummaryBand
            AlignToBottom = False
            mmBottomOffset = 0
            mmHeight = 13229
            mmPrintPosition = 0
            object ppLabel33: TppLabel
              UserName = 'Label17'
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
              mmLeft = 138377
              mmTop = 529
              mmWidth = 7408
              BandType = 7
            end
            object ppLine8: TppLine
              UserName = 'Line4'
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              Weight = 0.750000000000000000
              mmHeight = 1588
              mmLeft = 138377
              mmTop = 0
              mmWidth = 59002
              BandType = 7
            end
            object ppDBCalc3: TppDBCalc
              UserName = 'DBCalc1'
              HyperlinkColor = clBlue
              Border.BorderPositions = []
              Border.Color = clBlack
              Border.Style = psSolid
              Border.Visible = False
              Border.Weight = 1.000000000000000000
              DataField = 'SALDO'
              DataPipeline = ppMovtoDia
              DisplayFormat = '$#,0.00;-$#,0.00'
              Ellipsis = False
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clBlack
              Font.Name = 'Arial'
              Font.Size = 8
              Font.Style = [fsBold]
              TextAlignment = taRightJustified
              Transparent = True
              DataPipelineName = 'ppMovtoDia'
              mmHeight = 3440
              mmLeft = 177536
              mmTop = 265
              mmWidth = 19844
              BandType = 7
            end
          end
        end
      end
    end
    object ppGroup1: TppGroup
      BreakName = 'DATA'
      DataPipeline = ppExtratoMovimento
      GroupFileSettings.NewFile = False
      GroupFileSettings.EmailFile = False
      KeepTogether = True
      OutlineSettings.CreateNode = True
      StartOnOddPage = False
      UserName = 'Group1'
      mmNewColumnThreshold = 0
      mmNewPageThreshold = 0
      DataPipelineName = 'ppExtratoMovimento'
      NewFile = False
      object ppGroupHeaderBand1: TppGroupHeaderBand
        mmBottomOffset = 0
        mmHeight = 0
        mmPrintPosition = 0
      end
      object ppGroupFooterBand1: TppGroupFooterBand
        HideWhenOneDetail = False
        mmBottomOffset = 0
        mmHeight = 9260
        mmPrintPosition = 0
        object ppLabel8: TppLabel
          UserName = 'Label8'
          HyperlinkColor = clBlue
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Caption = 'Saldo Dia: '
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          Transparent = True
          mmHeight = 3440
          mmLeft = 136525
          mmTop = 2646
          mmWidth = 14817
          BandType = 5
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
          DataField = 'SALDO'
          DataPipeline = ppExtratoMovimento
          DisplayFormat = '$#,0.00;-$#,0.00'
          Ellipsis = False
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Name = 'Arial'
          Font.Size = 8
          Font.Style = [fsBold]
          TextAlignment = taRightJustified
          Transparent = True
          DataPipelineName = 'ppExtratoMovimento'
          mmHeight = 3175
          mmLeft = 178065
          mmTop = 2910
          mmWidth = 19050
          BandType = 5
          GroupNo = 0
        end
        object ppLine2: TppLine
          UserName = 'Line2'
          Border.BorderPositions = []
          Border.Color = clBlack
          Border.Style = psSolid
          Border.Visible = False
          Border.Weight = 1.000000000000000000
          Weight = 0.750000000000000000
          mmHeight = 1588
          mmLeft = 136525
          mmTop = 1588
          mmWidth = 59002
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
  object ppExtratoMovimento: TppDBPipeline
    DataSource = dsExtratoMovimento
    UserName = 'ExtratoMovimento'
    Left = 105
    Top = 36
    object ppExtratoMovimentoppField1: TppField
      FieldAlias = 'DOCUMENTO'
      FieldName = 'DOCUMENTO'
      FieldLength = 0
      DisplayWidth = 0
      Position = 0
    end
    object ppExtratoMovimentoppField2: TppField
      FieldAlias = 'COD_DOC'
      FieldName = 'COD_DOC'
      FieldLength = 3
      DisplayWidth = 3
      Position = 1
    end
    object ppExtratoMovimentoppField3: TppField
      FieldAlias = 'HISTORICO'
      FieldName = 'HISTORICO'
      FieldLength = 108
      DisplayWidth = 108
      Position = 2
    end
    object ppExtratoMovimentoppField4: TppField
      FieldAlias = 'TIPO'
      FieldName = 'TIPO'
      FieldLength = 1
      DisplayWidth = 1
      Position = 3
    end
    object ppExtratoMovimentoppField5: TppField
      FieldAlias = 'DATA'
      FieldName = 'DATA'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 4
    end
    object ppExtratoMovimentoppField6: TppField
      FieldAlias = 'DATA_CONC'
      FieldName = 'DATA_CONC'
      FieldLength = 0
      DataType = dtDate
      DisplayWidth = 10
      Position = 5
    end
    object ppExtratoMovimentoppField7: TppField
      Alignment = taRightJustify
      FieldAlias = 'DEBITO'
      FieldName = 'DEBITO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 6
    end
    object ppExtratoMovimentoppField8: TppField
      Alignment = taRightJustify
      FieldAlias = 'CREDITO'
      FieldName = 'CREDITO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 7
    end
    object ppExtratoMovimentoppField9: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO'
      FieldName = 'SALDO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 8
    end
    object ppExtratoMovimentoppField10: TppField
      Alignment = taRightJustify
      FieldAlias = 'VALOR'
      FieldName = 'VALOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 9
    end
    object ppExtratoMovimentoppField11: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO_ANTERIOR'
      FieldName = 'SALDO_ANTERIOR'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 10
    end
    object ppExtratoMovimentoppField12: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO_DIA_CREDITO'
      FieldName = 'SALDO_DIA_CREDITO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 11
    end
    object ppExtratoMovimentoppField13: TppField
      Alignment = taRightJustify
      FieldAlias = 'SALDO_DIA_DEBITO'
      FieldName = 'SALDO_DIA_DEBITO'
      FieldLength = 4
      DataType = dtDouble
      DisplayWidth = 19
      Position = 12
    end
  end
  object dsExtratoMovimento: TDataSource
    DataSet = QryExtratoMovimento
    Left = 140
    Top = 36
  end
  object QryExtratoMovimento: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    Active = True
    SQL.Strings = (
      ''
      
        'select * from  PCD_CTB_EXTRATO_BANCARIO(:cnpj,:conta,:data1,:dat' +
        'a2,:tipo_mov)')
    Left = 246
    Top = 33
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data1'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tipo_mov'
        ParamType = ptUnknown
      end>
    object QryExtratoMovimentoDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."DOCUMENTO"'
    end
    object QryExtratoMovimentoCOD_DOC: TIBStringField
      FieldName = 'COD_DOC'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."COD_DOC"'
      Size = 3
    end
    object QryExtratoMovimentoHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."HISTORICO"'
      Size = 108
    end
    object QryExtratoMovimentoTIPO: TIBStringField
      FieldName = 'TIPO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."TIPO"'
      FixedChar = True
      Size = 1
    end
    object QryExtratoMovimentoDATA: TDateField
      FieldName = 'DATA'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."DATA"'
    end
    object QryExtratoMovimentoDATA_CONC: TDateField
      FieldName = 'DATA_CONC'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."DATA_CONC"'
    end
    object QryExtratoMovimentoDEBITO: TIBBCDField
      FieldName = 'DEBITO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."DEBITO"'
      Precision = 18
      Size = 4
    end
    object QryExtratoMovimentoCREDITO: TIBBCDField
      FieldName = 'CREDITO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."CREDITO"'
      Precision = 18
      Size = 4
    end
    object QryExtratoMovimentoSALDO: TIBBCDField
      FieldName = 'SALDO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."SALDO"'
      Precision = 18
      Size = 4
    end
    object QryExtratoMovimentoVALOR: TIBBCDField
      FieldName = 'VALOR'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."VALOR"'
      Precision = 18
      Size = 4
    end
    object QryExtratoMovimentoSALDO_ANTERIOR: TIBBCDField
      FieldName = 'SALDO_ANTERIOR'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."SALDO_ANTERIOR"'
      Precision = 18
      Size = 4
    end
    object QryExtratoMovimentoSALDO_DIA_CREDITO: TIBBCDField
      FieldName = 'SALDO_DIA_CREDITO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."SALDO_DIA_CREDITO"'
      Precision = 18
      Size = 4
    end
    object QryExtratoMovimentoSALDO_DIA_DEBITO: TIBBCDField
      FieldName = 'SALDO_DIA_DEBITO'
      Origin = '"PCD_CTB_EXTRATO_BANCARIO"."SALDO_DIA_DEBITO"'
      Precision = 18
      Size = 4
    end
  end
  object qryMovFuturos: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ctb.data, ctb.documento, ctb.cod_doc, ctb.historico,'
      'case ctb.tipo'
      ' when '#39'D'#39' then ctb.valor'
      ' when '#39'C'#39' then 0'
      'end DEBITO,'
      'case ctb.tipo'
      ' when '#39'D'#39' then 0'
      ' when '#39'C'#39' then ctb.valor'
      'end CREDITO,'
      'case ctb.tipo'
      ' when '#39'D'#39' then (ctb.valor * -1)'
      ' when '#39'C'#39' then ctb.valor'
      'end SALDO'
      'from ctb_movimento_contabil ctb'
      
        'where  ctb.cnpj = :cnpj and ctb.conta = :conta and (ctb.data  > ' +
        ':data2) and ctb.data_conciliacao is null'
      'order by ctb.data, ctb.codigo')
    Left = 246
    Top = 65
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object qryMovFuturosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object qryMovFuturosDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DOCUMENTO"'
    end
    object qryMovFuturosCOD_DOC: TIBStringField
      FieldName = 'COD_DOC'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."COD_DOC"'
      FixedChar = True
      Size = 3
    end
    object qryMovFuturosHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."HISTORICO"'
      Size = 100
    end
    object qryMovFuturosDEBITO: TFloatField
      FieldName = 'DEBITO'
      ProviderFlags = []
    end
    object qryMovFuturosCREDITO: TFloatField
      FieldName = 'CREDITO'
      ProviderFlags = []
    end
    object qryMovFuturosSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = []
    end
  end
  object ppMovtoFuturo: TppDBPipeline
    DataSource = dsMovtoFuturo
    UserName = 'ppMovtoFuturo'
    Left = 105
    Top = 68
  end
  object dsMovtoFuturo: TDataSource
    DataSet = qryMovFuturos
    Left = 140
    Top = 65
  end
  object qryMovNConciliados: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      'select ctb.data, ctb.documento, ctb.cod_doc, ctb.historico,'
      'case ctb.tipo'
      ' when '#39'D'#39' then ctb.valor'
      ' when '#39'C'#39' then 0'
      'end DEBITO,'
      'case ctb.tipo'
      ' when '#39'D'#39' then 0'
      ' when '#39'C'#39' then ctb.valor'
      'end CREDITO,'
      'case ctb.tipo'
      ' when '#39'D'#39' then (ctb.valor * -1)'
      ' when '#39'C'#39' then ctb.valor'
      'end SALDO'
      'from ctb_movimento_contabil ctb'
      
        'where  ctb.cnpj = :cnpj and ctb.conta = :conta and (ctb.data  <=' +
        ' :data2) and ctb.data_conciliacao is null'
      'order by ctb.data, ctb.codigo')
    Left = 246
    Top = 97
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data2'
        ParamType = ptUnknown
      end>
    object qryMovNConciliadosDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object qryMovNConciliadosDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DOCUMENTO"'
    end
    object qryMovNConciliadosCOD_DOC: TIBStringField
      FieldName = 'COD_DOC'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."COD_DOC"'
      FixedChar = True
      Size = 3
    end
    object qryMovNConciliadosHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."HISTORICO"'
      Size = 100
    end
    object qryMovNConciliadosDEBITO: TFloatField
      FieldName = 'DEBITO'
      ProviderFlags = []
    end
    object qryMovNConciliadosCREDITO: TFloatField
      FieldName = 'CREDITO'
      ProviderFlags = []
    end
    object qryMovNConciliadosSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = []
    end
  end
  object ppMovtoNConciliados: TppDBPipeline
    DataSource = dsMovtosNConciliados
    UserName = 'ppMovtoNConciliados'
    Left = 105
    Top = 97
  end
  object dsMovtosNConciliados: TDataSource
    DataSet = qryMovNConciliados
    Left = 140
    Top = 97
  end
  object qryMovDia: TIBQuery
    Database = DmApp.Database
    Transaction = DmApp.Transaction
    SQL.Strings = (
      
        'select ctb.data, ctb.data_conciliacao, ctb.documento, ctb.cod_do' +
        'c, ctb.historico,'
      'case ctb.tipo'
      ' when '#39'D'#39' then ctb.valor'
      ' when '#39'C'#39' then 0'
      'end DEBITO,'
      'case ctb.tipo'
      ' when '#39'D'#39' then 0'
      ' when '#39'C'#39' then ctb.valor'
      'end CREDITO,'
      'case ctb.tipo'
      ' when '#39'D'#39' then (ctb.valor * -1)'
      ' when '#39'C'#39' then ctb.valor'
      'end SALDO'
      'from ctb_movimento_contabil ctb'
      
        'where  ctb.cnpj = :cnpj and ctb.conta = :conta and ctb.data = :d' +
        'ata'
      'order by ctb.data, ctb.codigo')
    Left = 246
    Top = 129
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cnpj'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'conta'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'data'
        ParamType = ptUnknown
      end>
    object qryMovDiaDATA: TDateField
      FieldName = 'DATA'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA"'
    end
    object qryMovDiaDATA_CONCILIACAO: TDateField
      FieldName = 'DATA_CONCILIACAO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DATA_CONCILIACAO"'
    end
    object qryMovDiaDOCUMENTO: TIBStringField
      FieldName = 'DOCUMENTO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."DOCUMENTO"'
    end
    object qryMovDiaCOD_DOC: TIBStringField
      FieldName = 'COD_DOC'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."COD_DOC"'
      FixedChar = True
      Size = 3
    end
    object qryMovDiaHISTORICO: TIBStringField
      FieldName = 'HISTORICO'
      Origin = '"CTB_MOVIMENTO_CONTABIL"."HISTORICO"'
      Size = 100
    end
    object qryMovDiaDEBITO: TFloatField
      FieldName = 'DEBITO'
      ProviderFlags = []
    end
    object qryMovDiaCREDITO: TFloatField
      FieldName = 'CREDITO'
      ProviderFlags = []
    end
    object qryMovDiaSALDO: TFloatField
      FieldName = 'SALDO'
      ProviderFlags = []
    end
  end
  object ppMovtoDia: TppDBPipeline
    DataSource = dsMovtoDia
    UserName = 'ppMovtoDia'
    Left = 105
    Top = 129
  end
  object dsMovtoDia: TDataSource
    DataSet = qryMovDia
    Left = 140
    Top = 129
  end
  object dsApp: TDataSource
    DataSet = DmApp.QryParceiro
    Left = 134
    Top = 161
  end
  object ppAppRepresentante: TppDBPipeline
    DataSource = dsApp
    UserName = 'ppAppRepresentante'
    Left = 103
    Top = 161
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
