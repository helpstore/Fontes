object FrmFiltrarRecConvenioBaixa: TFrmFiltrarRecConvenioBaixa
  Left = 305
  Top = 157
  Width = 618
  Height = 481
  BorderIcons = [biSystemMenu]
  Caption = 'Rel. de Contas Recebidas p/ Conv'#234'nio'
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
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlclient: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 454
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
      Caption = 'Rel. de Contas Recebidas p/ Conv'#234'nio'
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
      Left = 49
      Top = 73
      Caption = 'Cliente'
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
    object Label4: TcxLabel
      Left = 10
      Top = 44
      Caption = 'Loc.  Cobran'#231'a'
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 423
      Width = 606
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 5
      object Bevel1: TBevel
        Left = 15
        Top = 0
        Width = 502
        Height = 2
        Shape = bsTopLine
      end
      object BtnFechar: TcxButton
        Left = 523
        Top = 4
        Width = 75
        Height = 25
        Action = ActFechar
        Caption = '&Fechar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 4
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
      object BtnOk: TcxButton
        Left = 441
        Top = 4
        Width = 75
        Height = 25
        Action = ActImprimir
        Caption = '&Ok'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Glyph.Data = {
          DE010000424DDE01000000000000760000002800000024000000120000000100
          0400000000006801000000000000000000001000000000000000000000000000
          80000080000000808000800000008000800080800000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333333333333333330000333333333333333333333333F33333333333
          00003333344333333333333333388F3333333333000033334224333333333333
          338338F3333333330000333422224333333333333833338F3333333300003342
          222224333333333383333338F3333333000034222A22224333333338F338F333
          8F33333300003222A3A2224333333338F3838F338F33333300003A2A333A2224
          33333338F83338F338F33333000033A33333A222433333338333338F338F3333
          0000333333333A222433333333333338F338F33300003333333333A222433333
          333333338F338F33000033333333333A222433333333333338F338F300003333
          33333333A222433333333333338F338F00003333333333333A22433333333333
          3338F38F000033333333333333A223333333333333338F830000333333333333
          333A333333333333333338330000333333333333333333333333333333333333
          0000}
        NumGlyphs = 2
      end
      object CkImp: TCheckBox
        Left = 16
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
        TabOrder = 0
        OnKeyDown = EdCodigoKeyDown
      end
      object CkFolha: TCheckBox
        Left = 112
        Top = 8
        Width = 65
        Height = 17
        Caption = '&Quebra'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnKeyDown = EdCodigoKeyDown
      end
      object ANDA: TProgressBar
        Left = 264
        Top = 8
        Width = 169
        Height = 16
        TabOrder = 5
        Visible = False
      end
      object CkRazao: TCheckBox
        Left = 184
        Top = 8
        Width = 65
        Height = 17
        Caption = '&Raz'#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnKeyDown = EdCodigoKeyDown
      end
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
      KeyField = 'CODIGO'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
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
      OnCustomDrawCell = GRIDCustomDrawCell
      object GRIDCODIGO: TdxDBGridMaskColumn
        Width = 23
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GRIDPESSOA_FJ: TdxDBGridMaskColumn
        Width = 42
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESSOA_FJ'
      end
      object GRIDNOME_RAZAO: TdxDBGridMaskColumn
        Width = 226
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GRIDVENCIMENTO: TdxDBGridDateColumn
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_VENCTO'
      end
      object GRIDVLR_BAIXA: TdxDBGridColumn
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VLR_BAIXA'
        SummaryFooterType = cstSum
        SummaryFooterField = 'VLR_BAIXA'
        SummaryFooterFormat = '###,##0.00'
        SummaryFormat = '###,##0.00'
      end
      object GRIDDOCUMENTO: TdxDBGridMaskColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTO'
      end
      object GRIDVALOR: TdxDBGridMaskColumn
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object GRIDPARCELA: TdxDBGridMaskColumn
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object GRIDFONE: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE'
      end
      object GRIDHISTORICO: TdxDBGridMaskColumn
        Width = 364
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object GRIDLANCAMENTO: TdxDBGridDateColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_LANCTO'
      end
      object GRIDVLR_PARCIAL: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VLR_PARCIAL'
      end
      object GRIDTOTAL: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object GRIDJUROS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS_REC'
      end
      object GRIDDESCONTOS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
      end
      object GRIDTIPO: TdxDBGridColumn
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO_DOCTO'
      end
      object GRIDColumn16: TdxDBGridColumn
        Caption = 'Conveniado'
        Width = 304
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMECONVENIADO'
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 2
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
    object CmbLocal: TdxLookupEdit
      Left = 85
      Top = 40
      Width = 212
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
      OnEnter = EdClienteInicialEnter
      OnExit = EdClienteInicialExit
      OnKeyDown = EdCodigoKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'CODIGO'
      ListSource = dslocalcobranca
      LookupKeyValue = Null
    end
    object CmbTipoDocto: TdxLookupEdit
      Left = 304
      Top = 40
      Width = 129
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
      OnEnter = EdClienteInicialEnter
      OnExit = EdClienteInicialExit
      OnKeyDown = EdCodigoKeyDown
      ClearKey = 46
      ListFieldName = 'NOME'
      CanDeleteText = True
      KeyFieldName = 'SIGLA'
      ListSource = DsTipoDoc
      LookupKeyValue = Null
    end
  end
  object Actions: TActionList
    Left = 204
    Top = 225
    object ActFechar: TAction
      Caption = 'ActFechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
    object ActImprimir: TAction
      Tag = 1
      Caption = 'Imprimir'
      OnExecute = ActImprimirExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.VerRecebidasConvenio
    Left = 120
    Top = 224
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
    TestarPorta = True
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
  object dslocalcobranca: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.Local_Cobranca
    Left = 272
    Top = 168
  end
  object DsTipoDoc: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.SelTipoDocto
    Left = 272
    Top = 224
  end
end
