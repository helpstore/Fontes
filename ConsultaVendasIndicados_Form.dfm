object FrmConsultaVendasIndicados: TFrmConsultaVendasIndicados
  Left = 96
  Top = 71
  BorderStyle = bsDialog
  Caption = 'Consultas de  Vendas Por Indicados'
  ClientHeight = 440
  ClientWidth = 625
  Color = clWhite
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poMainFormCenter
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 625
    Height = 440
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object b2: TBevel
      Left = 8
      Top = 35
      Width = 174
      Height = 2
      Shape = bsTopLine
    end
    object Label3: TcxLabel
      Left = 213
      Top = 80
      Caption = 'Data Inicial'
      ParentFont = False
      Transparent = True
    end
    object Label1: TcxLabel
      Left = 381
      Top = 80
      Caption = 'Data Final'
      ParentFont = False
      Transparent = True
    end
    object LblTitulo: TcxLabel
      Left = 6
      Top = 8
      Caption = 'Consulta de Vendas por Indicados'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 26
      Top = 47
      Caption = 'Cliente'
      ParentFont = False
      Transparent = True
    end
    object Total: TcxLabel
      Left = 41
      Top = 378
      Caption = 'Total'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 160
      Top = 378
      Caption = 'Desc/Acres'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 313
      Top = 378
      Caption = 'Vlr Liquido'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 459
      Top = 378
      Caption = 'Bonifica'#231#245'es'
      ParentFont = False
      Transparent = True
    end
    object Ini: TdxDateEdit
      Left = 285
      Top = 74
      Width = 90
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
      OnEnter = cmbVendedorEnter
      OnExit = IniExit
      OnKeyDown = cmbPessoaKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Fim: TdxDateEdit
      Left = 445
      Top = 74
      Width = 90
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
      OnEnter = cmbVendedorEnter
      OnExit = FimExit
      OnKeyDown = cmbPessoaKeyDown
      Date = -700000.000000000000000000
      DateValidation = True
      UseEditMask = True
      StoredValues = 4
    end
    object Panel2: TPanel
      Left = 2
      Top = 398
      Width = 621
      Height = 40
      Align = alBottom
      BevelInner = bvRaised
      BevelOuter = bvLowered
      TabOrder = 4
      object RzBitBtn3: TcxButton
        Left = 521
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
        Left = 8
        Top = 13
        Width = 281
        Height = 16
        TabOrder = 2
      end
      object BtnImprimir: TcxButton
        Left = 425
        Top = 7
        Width = 91
        Height = 25
        Cursor = crHandPoint
        Action = ActImprimir
        Cancel = True
        Caption = '&Imprimir'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        Glyph.Data = {
          66010000424D6601000000000000760000002800000014000000140000000100
          040000000000F000000000000000000000001000000000000000000000000000
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
    object RzBitBtn2: TcxButton
      Left = 541
      Top = 72
      Width = 63
      Height = 25
      Cursor = crHandPoint
      Action = ActPreview
      Caption = '&Ok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      Glyph.Data = {
        76010000424D7601000000000000760000002800000020000000100000000100
        04000000000000010000130B0000130B00001000000000000000000000000000
        800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        33033333333333333F7F3333333333333000333333333333F777333333333333
        000333333333333F777333333333333000333333333333F77733333333333300
        033333333FFF3F777333333700073B703333333F7773F77733333307777700B3
        33333377333777733333307F8F8F7033333337F333F337F3333377F8F9F8F773
        3333373337F3373F3333078F898F870333337F33F7FFF37F333307F99999F703
        33337F377777337F3333078F898F8703333373F337F33373333377F8F9F8F773
        333337F3373337F33333307F8F8F70333333373FF333F7333333330777770333
        333333773FF77333333333370007333333333333777333333333}
      NumGlyphs = 2
    end
    object GRID: TdxDBGrid
      Left = 8
      Top = 104
      Width = 606
      Height = 265
      Bands = <
        item
        end>
      DefaultLayout = False
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
      TabOrder = 5
      AutoExpandOnSearch = False
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DS_FatVendasIndicados
      Filter.Criteria = {00000000}
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'MS Sans Serif'
      HeaderFont.Style = []
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoNotHideColumn]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      object GRIDCODIGO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GRIDDATA: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object GRIDFECHADA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FECHADA'
      end
      object GRIDHISTORICO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HISTORICO'
      end
      object GRIDPESSOA_RAZAO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PESSOA_RAZAO'
      end
      object GRIDFORMA_PGTO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FORMA_PGTO'
      end
      object GRIDNUM_NF: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUM_NF'
      end
      object GRIDNUM_CUPOM: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUM_CUPOM'
      end
      object GRIDDESC_ACRES: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_ACRES'
      end
      object GRIDENTRADA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object GRIDDINHEIRO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DINHEIRO'
      end
      object GRIDCHEQUE: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHEQUE'
      end
      object GRIDCARTAO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARTAO'
      end
      object GRIDTICKET: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TICKET'
      end
      object GRIDTOTAL: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTAL'
      end
      object GRIDVLRLIQUIDO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VLRLIQUIDO'
      end
      object GRIDVENDEDO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENDEDO'
      end
      object GRIDNOME_VENDEDOR: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME_VENDEDOR'
      end
      object GRIDPORCENTAGEM: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PORCENTAGEM'
      end
      object GRIDBONIFICACAO: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Bonificacao'
      end
    end
    object cmbVendedor: TdxLookupEdit
      Left = 72
      Top = 43
      Width = 533
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
      OnEnter = cmbVendedorEnter
      OnExit = cmbVendedorExit
      OnKeyDown = cmbPessoaKeyDown
      ListFieldName = 'NOME_RAZAO'
      KeyFieldName = 'PESSOA_FJ'
      ListSource = DsCliente
      LookupKeyValue = Null
    end
    object Total_Geral: TdxEdit
      Left = 74
      Top = 371
      Width = 80
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      Alignment = taRightJustify
      StoredValues = 1
    end
    object Total_Desconto: TdxEdit
      Left = 229
      Top = 371
      Width = 80
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 7
      Alignment = taRightJustify
      StoredValues = 1
    end
    object Total_Liquido: TdxEdit
      Left = 375
      Top = 371
      Width = 80
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 8
      Alignment = taRightJustify
      StoredValues = 1
    end
    object EdBonificacao: TdxEdit
      Left = 533
      Top = 371
      Width = 80
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 9
      Alignment = taRightJustify
      StoredValues = 1
    end
  end
  object Actions: TActionList
    Left = 432
    Top = 8
    object ActPreview: TAction
      Tag = 1
      Caption = '&Imprimir'
      OnExecute = ActPreviewExecute
    end
    object ActImprimir: TAction
      Caption = 'Imprimir'
      ShortCut = 116
      OnExecute = ActImprimirExecute
    end
  end
  object DsCliente: TDataSource
    DataSet = DMRelatorios.SelCliente
    Left = 372
    Top = 200
  end
  object DS_FatVendasIndicados: TDataSource
    AutoEdit = False
    DataSet = DMRelatorios.VendasIndicados
    Left = 376
    Top = 144
  end
  object PRINT: TRDprint
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
    OpcoesPreview.CaptionPreview = 'Visuaizar Impress'#227'o'
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
    Acentuacao = SemAcento
    CaptionSetup = 'Configurar Impres'#227'o'
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
    Left = 272
    Top = 144
  end
end
