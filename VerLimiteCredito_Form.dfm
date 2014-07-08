object FrmLimiteCredito: TFrmLimiteCredito
  Left = 44
  Top = 70
  BorderIcons = []
  BorderStyle = bsSingle
  Caption = ' Consulta Pendências '
  ClientHeight = 441
  ClientWidth = 690
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  FormStyle = fsStayOnTop
  OldCreateOrder = False
  Position = poScreenCenter
  Visible = True
  OnClose = FormClose
  OnResize = FormResize
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlForm: TPanel
    Left = 0
    Top = 0
    Width = 690
    Height = 441
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clHighlightText
    TabOrder = 0
    object Shape6: TShape
      Left = 524
      Top = 167
      Width = 93
      Height = 22
      Brush.Color = clBtnFace
      Pen.Color = clBtnShadow
    end
    object Bevel3: TBevel
      Left = 10
      Top = 34
      Width = 502
      Height = 2
      Shape = bsTopLine
    end
    object LblTitulo: TRxLabel
      Left = 11
      Top = 8
      Width = 109
      Height = 23
      Caption = 'Pendências'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -19
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clSilver
      ShadowPos = spRightBottom
    end
    object LBLCLIENTE: TRxLabel
      Left = 128
      Top = 16
      Width = 313
      Height = 13
      AutoSize = False
      Caption = '  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ShadowColor = clSilver
      ShadowPos = spRightBottom
    end
    object Label1: TcxLabel
Transparent = True
      Left = 12
      Top = 39
      Width = 43
      Height = 13
      Alignment = taRightJustify
      Caption = 'Faturas'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBLTOTALFATURA: TcxLabel
Transparent = True
      Left = 582
      Top = 169
      Width = 28
      Height = 16
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape1: TShape
      Left = 524
      Top = 355
      Width = 93
      Height = 22
      Brush.Color = clBtnFace
      Pen.Color = clBtnShadow
    end
    object LBLTOTALRECEBER: TcxLabel
Transparent = True
      Left = 582
      Top = 359
      Width = 28
      Height = 16
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Shape2: TShape
      Left = 524
      Top = 381
      Width = 93
      Height = 22
      Brush.Color = clBtnFace
      Pen.Color = clBtnShadow
    end
    object Label5: TcxLabel
Transparent = True
      Left = 12
      Top = 185
      Width = 47
      Height = 13
      Alignment = taRightJustify
      Caption = 'Receber'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LBLGERAL: TcxLabel
Transparent = True
      Left = 582
      Top = 385
      Width = 28
      Height = 16
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object pnlBottom: TPanel
      Left = 2
      Top = 410
      Width = 686
      Height = 29
      Align = alBottom
      BevelOuter = bvNone
      TabOrder = 0
      object Bevel1: TBevel
        Left = 15
        Top = 0
        Width = 502
        Height = 2
        Shape = bsTopLine
      end
      object BtnFechar: TcxButton
        Left = 443
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
      object BtnImprimir: TcxButton
        Left = 11
        Top = 4
        Width = 86
        Height = 25
        Action = ActFechar
        Caption = 'Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = BtnImprimirClick
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000010000000000000000000
          8000008000000080800080000000800080008080000080808000C0C0C0000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
          DDDDDDDD0000DDDDDDDDDDDDDDDDDDDD0000DD000DDDDDDDDDD000DD0000D000
          000000000000000D0000D0F8888888888888880D0000D0F8888888888888880D
          0000D0F8888888822899880D0000D0FFFFFFFFFFFFFFFF0D0000D70077777777
          7777007D0000DDD00000000000000DDD0000DDD00FFFFFFFFFF00DDD0000DDDD
          0F00000000F0DDDD0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00000000F0DDDD
          0000DDDD0FFFFFFFFFF0DDDD0000DDDD0F00FFFFFFF0DDDD0000DDDD0FFFFFFF
          FFF0DDDD0000DDDD000000000000DDDD0000DDDDDDDDDDDDDDDDDDDD0000DDDD
          DDDDDDDDDDDDDDDD0000}
      end
    end
    object GRIDFATURA: TdxDBGrid
      Left = 11
      Top = 55
      Width = 511
      Height = 130
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CODIGO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DsFatura
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
      object GRIDFATURACODIGO: TdxDBGridMaskColumn
        Sorted = csUp
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GRIDFATURAVENCIMENTO: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object GRIDFATURAVALOR: TdxDBGridMaskColumn
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object GRIDFATURAHISTORICO: TdxDBGridMaskColumn
        Width = 364
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object GRIDFATURALANCAMENTO: TdxDBGridDateColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object GRIDFATURATOTAL: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object GRIDFATURAJUROS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS'
      end
      object GRIDFATURADESCONTOS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
    end
    object GRIDRECEBER: TdxDBGrid
      Left = 11
      Top = 200
      Width = 511
      Height = 204
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'CODIGO'
      SummaryGroups = <>
      SummarySeparator = ', '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DsReceber
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
      object GRIDRECEBERCODIGO: TdxDBGridMaskColumn
        Width = 39
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GRIDRECEBERVENCIMENTO: TdxDBGridDateColumn
        Caption = 'Vencimento'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_VENCTO'
      end
      object GRIDRECEBERDOCUMENTO: TdxDBGridMaskColumn
        Width = 110
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DOCTO'
      end
      object GRIDRECEBERVALOR: TdxDBGridMaskColumn
        Width = 103
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object GRIDRECEBERPARCELA: TdxDBGridMaskColumn
        Width = 40
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARCELA'
      end
      object GRIDRECEBERFONE: TdxDBGridMaskColumn
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE'
      end
      object GRIDRECEBERHISTORICO: TdxDBGridMaskColumn
        Width = 364
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object GRIDRECEBERLANCAMENTO: TdxDBGridDateColumn
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DT_LANCTO'
      end
      object GRIDRECEBERVLR_PARCIAL: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VLR_PARCIAL'
      end
      object GRIDRECEBERTOTAL: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object GRIDRECEBERJUROS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'JUROS_REC'
      end
      object GRIDRECEBERDESCONTOS: TdxDBGridColumn
        Width = 118
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTOS'
      end
    end
  end
  object Actions: TActionList
    Left = 340
    Top = 121
    object ActFechar: TAction
      Caption = 'ActFechar'
      ShortCut = 27
      OnExecute = ActFecharExecute
    end
  end
  object DsFatura: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.VerFatura
    Left = 400
    Top = 128
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
    OpcoesPreview.CaptionPreview = 'Visualizar Impressão'
    OpcoesPreview.PreviewZoom = 115
    OpcoesPreview.CorPapelPreview = clWhite
    OpcoesPreview.CorLetraPreview = clBlack
    OpcoesPreview.Preview = True
    OpcoesPreview.BotaoSetup = Ativo
    OpcoesPreview.BotaoImprimir = Ativo
    OpcoesPreview.BotaoGravar = Ativo
    OpcoesPreview.BotaoLer = Ativo
    Autor = Deltress
    About = 'RDprint 3.0f - Registrado'
    Acentuacao = Transliterate
    CaptionSetup = ' Configurar Impressão'
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
    Left = 216
    Top = 128
  end
  object Storage: TFormStorage
    Options = []
    StoredProps.Strings = (
      'GRIDFATURACODIGO.ColIndex'
      'GRIDFATURACODIGO.Width'
      'GRIDFATURAHISTORICO.ColIndex'
      'GRIDFATURALANCAMENTO.ColIndex'
      'GRIDFATURAVALOR.ColIndex'
      'GRIDFATURAVENCIMENTO.ColIndex'
      'GRIDFATURAHISTORICO.Width'
      'GRIDFATURALANCAMENTO.Width'
      'GRIDFATURAVALOR.Width'
      'GRIDFATURAVENCIMENTO.Width'
      'GRIDFATURATOTAL.ColIndex'
      'GRIDFATURATOTAL.Width'
      'GRIDFATURAJUROS.ColIndex'
      'GRIDFATURAJUROS.Width'
      'GRIDFATURADESCONTOS.Width'
      'GRIDFATURADESCONTOS.ColIndex'
      'GRIDRECEBERCODIGO.ColIndex'
      'GRIDRECEBERDESCONTOS.ColIndex'
      'GRIDRECEBERDOCUMENTO.ColIndex'
      'GRIDRECEBERFONE.ColIndex'
      'GRIDRECEBERHISTORICO.ColIndex'
      'GRIDRECEBERJUROS.ColIndex'
      'GRIDRECEBERLANCAMENTO.CharCase'
      'GRIDRECEBERPARCELA.ColIndex'
      'GRIDRECEBERLANCAMENTO.ColIndex'
      'GRIDRECEBERTOTAL.ColIndex'
      'GRIDRECEBERVALOR.ColIndex'
      'GRIDRECEBERVENCIMENTO.CharCase'
      'GRIDRECEBERVENCIMENTO.ColIndex'
      'GRIDRECEBERVLR_PARCIAL.ColIndex'
      'GRIDRECEBERCODIGO.Width'
      'GRIDRECEBERDESCONTOS.Width'
      'GRIDRECEBERDOCUMENTO.Width'
      'GRIDRECEBERFONE.Width'
      'GRIDRECEBERHISTORICO.Width'
      'GRIDRECEBERJUROS.Width'
      'GRIDRECEBERLANCAMENTO.Width'
      'GRIDRECEBERPARCELA.Width'
      'GRIDRECEBERTOTAL.Width'
      'GRIDRECEBERVALOR.Width'
      'GRIDRECEBERVENCIMENTO.Width'
      'GRIDRECEBERVLR_PARCIAL.Width'
      'IMPRESSORA.Impressora'
      'IMPRESSORA.PortaComunicacao')
    StoredValues = <>
    Left = 282
    Top = 125
  end
  object DsReceber: TDataSource
    AutoEdit = False
    DataSet = DmFinanceiro.VerReceber
    Left = 464
    Top = 128
  end
end
