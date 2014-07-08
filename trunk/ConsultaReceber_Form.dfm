object FrmConsultaReceber: TFrmConsultaReceber
  Left = 282
  Top = 129
  Width = 625
  Height = 473
  BorderIcons = [biSystemMenu]
  Caption = 'Rel. Consulta Contas '#224' Receber'
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
    Width = 609
    Height = 435
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
      Top = 142
      Width = 502
      Height = 12
      Shape = bsTopLine
    end
    object LblTitulo: TcxLabel
      Left = 14
      Top = 8
      Caption = 'Rel. Consulta Contas '#224' Receber'
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
      Left = 43
      Top = 73
      Caption = 'Cliente'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 45
      Top = 46
      Caption = 'Op'#231#227'o'
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
    object pnlBottom: TPanel
      Left = 2
      Top = 400
      Width = 605
      Height = 33
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 4
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
        TabOrder = 3
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
        Left = 443
        Top = 5
        Width = 75
        Height = 25
        Caption = '&Ok'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
        OnClick = ActPreviewExecute
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
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        State = cbChecked
        TabOrder = 0
        OnEnter = EdTipoEnter
        OnExit = CkImpExit
        OnKeyDown = EdCodigoKeyDown
      end
      object CkVend: TCheckBox
        Left = 104
        Top = 8
        Width = 124
        Height = 17
        Caption = 'Imprimir Vendedor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8404992
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 1
        OnEnter = EdTipoEnter
        OnExit = CkImpExit
        OnKeyDown = EdCodigoKeyDown
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
      TabOrder = 2
      OnEnter = EdTipoEnter
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
      TabOrder = 3
      OnEnter = EdTipoEnter
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
      TabOrder = 1
      OnEnter = EdTipoEnter
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
    object EdTipo: TdxPickEdit
      Left = 85
      Top = 39
      Width = 155
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
      OnEnter = EdTipoEnter
      OnExit = EdTipoExit
      OnKeyDown = EdCodigoKeyDown
      DropDownListStyle = True
      Items.Strings = (
        'Lancamento'
        'Vencimento')
      CanDeleteText = True
      Sorted = True
    end
    object RdArqMorto: TRadioGroup
      Left = 424
      Top = 94
      Width = 178
      Height = 43
      Caption = 'Arq. Morto'
      Columns = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Items.Strings = (
        'Sim'
        'N'#227'o'
        'Ambos    ')
      ParentFont = False
      TabOrder = 5
    end
    object GRID: TdxDBGrid
      Left = 6
      Top = 172
      Width = 598
      Height = 237
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CODIGO'
      ShowSummaryFooter = True
      SummaryGroups = <>
      SummarySeparator = ', '
      BorderStyle = bsNone
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
      object GRIDSELECIONADO: TdxDBGridCheckColumn
        Caption = 'S'
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SELECIONADO'
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'N'
      end
      object GRIDCODIGO: TdxDBGridMaskColumn
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GRIDPESSOA_FJ: TdxDBGridMaskColumn
        Width = 46
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESSOA_FJ'
      end
      object GRIDVALOR: TdxDBGridMaskColumn
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object GRIDPARCIAL: TdxDBGridColumn
        Caption = 'Vlr. Recebido'
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VLR_PARCIAL'
      end
      object GRIDTOTAL: TdxDBGridColumn
        Caption = 'Vlr. Total'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Total'
        SummaryFooterFormat = '###,##0.00'
        SummaryType = cstSum
        SummaryFormat = '###,##0.00'
      end
      object GRIDJUROSPARC: TdxDBGridColumn
        Caption = 'Jrs. Parcial'
        Width = 72
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS_PARCIAL'
        SummaryFooterType = cstSum
        SummaryFooterField = 'JUROS_PARCIAL'
        SummaryFooterFormat = '###,##0.00'
      end
      object GRIDJUROSCALC: TdxDBGridColumn
        Caption = '(Juros+Multa)'
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Juros_Calculadors'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Juros_Calculadors'
        SummaryFooterFormat = '###,##0.00'
        SummaryType = cstSum
        SummaryFormat = '###,##0.00'
      end
      object GRIDTOTAL_NOMINAL: TdxDBGridColumn
        Caption = 'Total Geral'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total_Nominal'
        SummaryFooterType = cstSum
        SummaryFooterField = 'Total_Nominal'
        SummaryFooterFormat = '###,##0.00'
        SummaryType = cstSum
        SummaryFormat = '###,##0.00'
      end
      object GRIDJUROS: TdxDBGridColumn
        Caption = 'Jrs. Recebidos'
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS_REC'
      end
      object GRIDDESCONTOS: TdxDBGridColumn
        Caption = 'Vlr. Descto.'
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
      end
      object GRIDVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencto.'
        Sorted = csDown
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_VENCTO'
      end
      object GRIDDOCUMENTO: TdxDBGridMaskColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTO'
      end
      object GRIDPARCELA: TdxDBGridMaskColumn
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object GRIDATRASO: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATRASO'
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
      object GRIDTIPO: TdxDBGridColumn
        Width = 54
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO_DOCTO'
      end
      object GRIDCOBRADOR: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COBRADOR'
      end
      object GRIDARQ_MORTO: TdxDBGridMaskColumn
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ARQ_MORTO'
      end
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
    object ActPreview: TAction
      Tag = 1
      Caption = 'OK'
      OnExecute = ActPreviewExecute
    end
  end
  object DSource: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.VerReceber
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
    Left = 168
    Top = 112
  end
end
