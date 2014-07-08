object FrmFiltrarPagasData: TFrmFiltrarPagasData
  Left = 185
  Top = 130
  Width = 636
  Height = 507
  BorderIcons = [biSystemMenu, biMaximize]
  Caption = 'Rel. Contas Pagas p/Data'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 628
    Height = 480
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clHighlightText
    TabOrder = 0
    object Bevel3: TBevel
      Left = 15
      Top = 34
      Width = 502
      Height = 2
      Shape = bsTopLine
    end
    object Bevel4: TBevel
      Left = 17
      Top = 99
      Width = 502
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 14
      Top = 8
      Caption = 'Rel. Contas Pagas p/Data'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 439
      Top = 46
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 444
      Top = 73
      Caption = 'Data Final'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 21
      Top = 73
      Caption = 'Fornecedor'
      ParentFont = False
      Transparent = True
    end
    object LBLCLIENTE: TcxLabel
      Left = 149
      Top = 70
      AutoSize = False
      Caption = '  '
      ParentFont = False
      Transparent = True
      Height = 17
      Width = 284
    end
    object GRID: TdxDBGrid
      Left = 10
      Top = 103
      Width = 591
      Height = 306
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PESSOA_FJ'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DSource
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object GRIDDATA: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_EMISSAO'
      end
      object GRIDPESSOA_FJ: TdxDBGridMaskColumn
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESSOA_FJ'
      end
      object GRIDNOME_RAZAO: TdxDBGridMaskColumn
        Width = 248
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GRIDVALOR: TdxDBGridMaskColumn
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object GRIDDOCUMENTO: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTO'
      end
      object GRIDHISTORICO: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object GRIDTOTAL: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
    end
    object DATAINICIAL: TdxDateEdit
      Left = 501
      Top = 40
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
      OnEnter = EdClienteInicialEnter
      OnExit = DataInicialExit
      OnKeyDown = EdCodigoKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object DATAFINAL: TdxDateEdit
      Left = 501
      Top = 67
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
      TabOrder = 2
      OnEnter = EdClienteInicialEnter
      OnExit = DataFinalExit
      OnKeyDown = EdCodigoKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object EdClienteInicial: TdxButtonEdit
      Left = 85
      Top = 67
      Width = 60
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
      OnEnter = EdClienteInicialEnter
      OnExit = EdClienteInicialExit
      OnKeyDown = EdCodigoKeyDown
      EditMask = '######;1; '
      Text = '      '
      Buttons = <
        item
          Default = True
        end>
      ClickKey = 40
      OnButtonClick = EdClienteInicialButtonClick
      StoredValues = 4
      ExistButtons = True
    end
    object Panel2: TPanel
      Left = 2
      Top = 446
      Width = 624
      Height = 32
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      DesignSize = (
        624
        32)
      object BtnOk: TcxButton
        Left = 459
        Top = 4
        Width = 77
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
        Left = 540
        Top = 4
        Width = 77
        Height = 25
        Cursor = crHandPoint
        Action = ActFechar
        Anchors = [akRight, akBottom]
        Cancel = True
        Caption = 'Fechar'
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
      object CkImp: TCheckBox
        Left = 8
        Top = 8
        Width = 82
        Height = 17
        Caption = '&Impressora'
        Checked = True
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 2
        OnKeyDown = EdCodigoKeyDown
      end
    end
  end
  object Actions: TActionList
    Left = 204
    Top = 233
    object ActFechar: TAction
      Caption = 'ActFechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActOk: TAction
      Caption = 'OK'
      OnExecute = ActOkExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.Baixas_Pagar
    Left = 120
    Top = 232
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
    CaptionSetup = ' Configurar Impress'#227'o'
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
    OnNewPage = IMPRESSORANewPage
    OnBeforeNewPage = IMPRESSORABeforeNewPage
    Left = 120
    Top = 168
  end
end
