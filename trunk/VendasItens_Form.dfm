object FrmVendasItens: TFrmVendasItens
  Left = 310
  Top = 181
  BorderStyle = bsDialog
  Caption = ' Itens da Venda '
  ClientHeight = 309
  ClientWidth = 872
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
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
    Top = 268
    Width = 872
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Shape2: TShape
      Left = 726
      Top = 2
      Width = 144
      Height = 37
      Align = alRight
      Pen.Color = clBtnShadow
    end
    object Label7: TcxLabel
      Left = 380
      Top = 6
      Caption = 'Qtde de '#205'tens'
      ParentFont = False
      Transparent = True
    end
    object LblContagem: TcxLabel
      Left = 479
      Top = 7
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 359
      Top = 22
      Caption = 'Qtde de Produtos'
      ParentFont = False
      Transparent = True
    end
    object LblItens: TcxLabel
      Left = 479
      Top = 23
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 599
      Top = 11
      Caption = 'Total'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 523
      Top = 7
      Caption = 'Peso'
      ParentFont = False
      Transparent = True
    end
    object lblpeso: TcxLabel
      Left = 573
      Top = 8
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 508
      Top = 23
      Caption = 'Volume'
      ParentFont = False
      Transparent = True
    end
    object lblvolume: TcxLabel
      Left = 573
      Top = 24
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 235
      Top = 6
      Caption = 'Trocar CFOP ( F6 )'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 217
      Top = 23
      Caption = 'Complemento ( F11 )'
      ParentFont = False
      Transparent = True
    end
    object LblTotal: TcxLabel
      Left = 815
      Top = 13
      Caption = '0,00'
      ParentColor = False
      ParentFont = False
      Transparent = True
    end
    object btnSalvar: TcxButton
      Left = 8
      Top = 8
      Width = 90
      Height = 25
      Action = ActSalvar
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnEnter = btnSalvarEnter
      OnExit = btnSalvarExit
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
    object btnCancelar: TcxButton
      Left = 98
      Top = 8
      Width = 90
      Height = 25
      Action = ActCancelar
      Cancel = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnEnter = btnSalvarEnter
      OnExit = btnSalvarExit
      Glyph.Data = {
        DE010000424DDE01000000000000760000002800000024000000120000000100
        0400000000006801000000000000000000001000000000000000000000000000
        80000080000000808000800000008000800080800000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
        333333333333333333333333000033338833333333333333333F333333333333
        0000333911833333983333333388F333333F3333000033391118333911833333
        38F38F333F88F33300003339111183911118333338F338F3F8338F3300003333
        911118111118333338F3338F833338F3000033333911111111833333338F3338
        3333F8330000333333911111183333333338F333333F83330000333333311111
        8333333333338F3333383333000033333339111183333333333338F333833333
        00003333339111118333333333333833338F3333000033333911181118333333
        33338333338F333300003333911183911183333333383338F338F33300003333
        9118333911183333338F33838F338F33000033333913333391113333338FF833
        38F338F300003333333333333919333333388333338FFF830000333333333333
        3333333333333333333888330000333333333333333333333333333333333333
        0000}
      NumGlyphs = 2
    end
  end
  object pnlClient: TPanel
    Left = 0
    Top = 0
    Width = 872
    Height = 268
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object Panel2: TPanel
      Left = 2
      Top = 2
      Width = 868
      Height = 61
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TcxLabel
        Left = 7
        Top = 10
        Caption = 'Produto'
        ParentFont = False
        Transparent = True
      end
      object Label10: TcxLabel
        Left = 582
        Top = 10
        Caption = 'CFOP'
        ParentFont = False
        Transparent = True
      end
      object Label5: TcxLabel
        Left = 517
        Top = 37
        Caption = 'Desc.(%)'
        ParentFont = False
        Transparent = True
      end
      object Label4: TcxLabel
        Left = 383
        Top = 37
        Caption = 'Desc.(R$)'
        ParentFont = False
        Transparent = True
      end
      object Label3: TcxLabel
        Left = 246
        Top = 37
        Caption = 'Unit'#225'rio'
        ParentFont = False
        Transparent = True
      end
      object Label11: TcxLabel
        Left = 129
        Top = 38
        Caption = 'Un'
        ParentFont = False
        Transparent = True
      end
      object Label2: TcxLabel
        Left = 9
        Top = 37
        Caption = 'Qtdade'
        ParentFont = False
        Transparent = True
      end
      object edProduto: TdxDBEdit
        Left = 47
        Top = 5
        Width = 101
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
        OnEnter = edProdutoEnter
        OnExit = edProdutoExit
        OnKeyDown = edProdutoKeyDown
        CharCase = ecUpperCase
        DataField = 'SPRODUTO'
        DataSource = DataSource
      end
      object EDGRADE: TdxDBEdit
        Left = 147
        Top = 5
        Width = 49
        Enabled = False
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
        OnEnter = EDGRADEEnter
        OnExit = edProdutoExit
        OnKeyDown = edProdutoKeyDown
        CharCase = ecUpperCase
        DataField = 'GRADE'
        DataSource = DataSource
      end
      object EDNUMERO: TdxDBEdit
        Left = 195
        Top = 5
        Width = 58
        Enabled = False
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
        OnEnter = edProdutoEnter
        OnKeyDown = edProdutoKeyDown
        CharCase = ecUpperCase
        DataField = 'NUMERO'
        DataSource = DataSource
      end
      object dxDBEdit1: TdxDBEdit
        Left = 256
        Top = 5
        Width = 321
        Enabled = False
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
        OnKeyDown = edProdutoKeyDown
        DataField = 'Nome_Produto'
        DataSource = DataSource
      end
      object EdNatureza: TdxDBEdit
        Left = 612
        Top = 4
        Width = 48
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 4
        DataField = 'CFOP'
        DataSource = DataSource
      end
      object btnBusca: TcxButton
        Left = 660
        Top = 5
        Width = 57
        Height = 23
        Action = ActLookUP
        TabOrder = 12
        TabStop = False
      end
      object edPrcTotal: TdxDBEdit
        Left = 643
        Top = 32
        Width = 75
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 11
        TabStop = False
        OnKeyDown = edProdutoKeyDown
        DataField = 'Total'
        DataSource = DataSource
        ReadOnly = True
        StoredValues = 64
      end
      object dxDBCalcEdit2: TdxDBCalcEdit
        Left = 566
        Top = 32
        Width = 77
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 10
        OnEnter = edQtdadeEnter
        OnExit = edtPctDesconto
        OnKeyDown = edProdutoKeyDown
        DataField = 'PORC_DESC'
        DataSource = DataSource
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
      object dxDBCalcEdit1: TdxDBCalcEdit
        Left = 430
        Top = 32
        Width = 73
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 9
        OnEnter = edQtdadeEnter
        OnExit = edtDesconto
        OnKeyDown = edProdutoKeyDown
        DataField = 'DESCONTO'
        DataSource = DataSource
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
      object edPrcUnit: TdxDBCalcEdit
        Left = 287
        Top = 32
        Width = 90
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 8
        OnEnter = edQtdadeEnter
        OnExit = edPrcUnitExit
        OnKeyDown = edProdutoKeyDown
        DataField = 'PRC_UNITARIO'
        DataSource = DataSource
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
      object CmbSubUnidade: TdxDBLookupEdit
        Left = 206
        Top = 32
        Width = 37
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
        Style.HotTrack = True
        Style.Shadow = False
        TabOrder = 7
        OnEnter = edQtdadeEnter
        OnExit = CmbSubUnidadeExit
        OnKeyDown = edProdutoKeyDown
        DataField = 'SUBUNIDADE'
        DataSource = DataSource
        ReadOnly = False
        ClearKey = 46
        ListFieldName = 'UNIDADES'
        Revertable = True
        KeyFieldName = 'UNIDADES'
        ListSource = DsSubUnidade
        LookupKeyValue = Null
        StoredValues = 64
      end
      object cmbUnidade: TdxDBLookupEdit
        Left = 147
        Top = 32
        Width = 59
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
        Style.HotTrack = True
        Style.Shadow = False
        TabOrder = 6
        OnEnter = edQtdadeEnter
        OnExit = cmbUnidadeExit
        OnKeyDown = edProdutoKeyDown
        DataField = 'UNIDADE'
        DataSource = DataSource
        ReadOnly = False
        ClearKey = 46
        ListFieldName = 'SIGLA'
        Revertable = True
        KeyFieldName = 'SIGLA'
        ListSource = DsUnidade
        LookupKeyValue = Null
        StoredValues = 64
      end
      object edQtdade: TdxDBCalcEdit
        Left = 47
        Top = 32
        Width = 80
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        TabOrder = 5
        OnEnter = edQtdadeEnter
        OnExit = edQtdadeExit
        OnKeyDown = edProdutoKeyDown
        DataField = 'QUANTIDADE'
        DataSource = DataSource
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
    end
    object pnlServico: TPanel
      Left = 2
      Top = 63
      Width = 868
      Height = 64
      Align = alTop
      BevelOuter = bvNone
      TabOrder = 1
      Visible = False
      object EdServico: TdxDBMemo
        Left = 9
        Top = 5
        Width = 708
        Style.BorderColor = clBtnShadow
        Style.BorderStyle = xbsSingle
        Style.ButtonStyle = btsSimple
        Style.HotTrack = True
        TabOrder = 0
        OnEnter = EdServicoEnter
        OnExit = cmbUnidadeExit
        CharCase = ecUpperCase
        DataField = 'SERVICO'
        DataSource = DataSource
        Height = 55
      end
    end
    object GridItens: TcxGrid
      Left = 2
      Top = 127
      Width = 868
      Height = 139
      Align = alClient
      TabOrder = 2
      object GridItensTV: TcxGridDBBandedTableView
        OnKeyDown = edProdutoKeyDown
        NavigatorButtons.ConfirmDelete = False
        DataController.DataSource = DataSource
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsBehavior.IncSearch = True
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.MultiSelect = True
        OptionsView.Footer = True
        OptionsView.GroupByBox = False
        OptionsView.GroupFooters = gfAlwaysVisible
        OptionsView.BandHeaders = False
        Bands = <
          item
          end>
        object GridItensTVCNPJ: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CNPJ'
          Visible = False
          Width = 70
          Position.BandIndex = 0
          Position.ColIndex = 0
          Position.RowIndex = 0
        end
        object GridItensTVCODIGO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODIGO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 1
          Position.RowIndex = 0
        end
        object GridItensTVSEQUENCIA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SEQUENCIA'
          Width = 57
          Position.BandIndex = 0
          Position.ColIndex = 2
          Position.RowIndex = 0
        end
        object GridItensTVQUANTIDADE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QUANTIDADE'
          Position.BandIndex = 0
          Position.ColIndex = 7
          Position.RowIndex = 0
        end
        object GridItensTVPRC_CUSTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRC_CUSTO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 8
          Position.RowIndex = 0
        end
        object GridItensTVICM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ICM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 9
          Position.RowIndex = 0
        end
        object GridItensTVICM_SUBS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ICM_SUBS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 10
          Position.RowIndex = 0
        end
        object GridItensTVIPI: TcxGridDBBandedColumn
          DataBinding.FieldName = 'IPI'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 11
          Position.RowIndex = 0
        end
        object GridItensTVTotal: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Total'
          Position.BandIndex = 0
          Position.ColIndex = 13
          Position.RowIndex = 0
        end
        object GridItensTVPeso_Total: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Peso_Total'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 14
          Position.RowIndex = 0
        end
        object GridItensTVVOLUME: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VOLUME'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 15
          Position.RowIndex = 0
        end
        object GridItensTVPESO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PESO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 16
          Position.RowIndex = 0
        end
        object GridItensTVVolume_Total: TcxGridDBBandedColumn
          DataBinding.FieldName = 'Volume_Total'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 17
          Position.RowIndex = 0
        end
        object GridItensTVDESCONTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'DESCONTO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 18
          Position.RowIndex = 0
        end
        object GridItensTVPORC_DESC: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PORC_DESC'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 19
          Position.RowIndex = 0
        end
        object GridItensTVUNIDADE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UNIDADE'
          Width = 55
          Position.BandIndex = 0
          Position.ColIndex = 6
          Position.RowIndex = 0
        end
        object GridItensTVPRC_UNIT_ORIGINAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRC_UNIT_ORIGINAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 20
          Position.RowIndex = 0
        end
        object GridItensTVNOME_PRODUTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_PRODUTO'
          Width = 215
          Position.BandIndex = 0
          Position.ColIndex = 4
          Position.RowIndex = 0
        end
        object GridItensTVALIQUOTA: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALIQUOTA'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 21
          Position.RowIndex = 0
        end
        object GridItensTVPRODUTOFIS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUTOFIS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 22
          Position.RowIndex = 0
        end
        object GridItensTVNOME_FIS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_FIS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 23
          Position.RowIndex = 0
        end
        object GridItensTVSUBUNIDADE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SUBUNIDADE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 24
          Position.RowIndex = 0
        end
        object GridItensTVORIGEM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ORIGEM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 25
          Position.RowIndex = 0
        end
        object GridItensTVCTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 26
          Position.RowIndex = 0
        end
        object GridItensTVCTIE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CTIE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 27
          Position.RowIndex = 0
        end
        object GridItensTVREDUCAO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'REDUCAO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 28
          Position.RowIndex = 0
        end
        object GridItensTVFRACIONADO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'FRACIONADO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 29
          Position.RowIndex = 0
        end
        object GridItensTVVENDEDOR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'VENDEDOR'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 30
          Position.RowIndex = 0
        end
        object GridItensTVMENSAGEM_REDUCAO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'MENSAGEM_REDUCAO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 31
          Position.RowIndex = 0
        end
        object GridItensTVBASECALCULOICM: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BASECALCULOICM'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 32
          Position.RowIndex = 0
        end
        object GridItensTVBASECALCULOSUBSTITUICAO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'BASECALCULOSUBSTITUICAO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 33
          Position.RowIndex = 0
        end
        object GridItensTVALIQUOTA_EST: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALIQUOTA_EST'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 34
          Position.RowIndex = 0
        end
        object GridItensTVALIQUOTA_INT: TcxGridDBBandedColumn
          DataBinding.FieldName = 'ALIQUOTA_INT'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 35
          Position.RowIndex = 0
        end
        object GridItensTVCFOP: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CFOP'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 36
          Position.RowIndex = 0
        end
        object GridItensTVCOMPLEMENTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'COMPLEMENTO'
          Visible = False
          Width = 183
          Position.BandIndex = 0
          Position.ColIndex = 5
          Position.RowIndex = 0
        end
        object GridItensTVSERVICO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SERVICO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 37
          Position.RowIndex = 0
        end
        object GridItensTVNUMERO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NUMERO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 38
          Position.RowIndex = 0
        end
        object GridItensTVGRADE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GRADE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 39
          Position.RowIndex = 0
        end
        object GridItensTVPRC_UNITARIO_FIS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRC_UNITARIO_FIS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 40
          Position.RowIndex = 0
        end
        object GridItensTVQUANTIDADE_FIS: TcxGridDBBandedColumn
          DataBinding.FieldName = 'QUANTIDADE_FIS'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 41
          Position.RowIndex = 0
        end
        object GridItensTVTOTAL_FISCAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'TOTAL_FISCAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 42
          Position.RowIndex = 0
        end
        object GridItensTVLOTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'LOTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 43
          Position.RowIndex = 0
        end
        object GridItensTVCODIGO_LOTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'CODIGO_LOTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 44
          Position.RowIndex = 0
        end
        object GridItensTVUTILIZA_LOTE: TcxGridDBBandedColumn
          DataBinding.FieldName = 'UTILIZA_LOTE'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 45
          Position.RowIndex = 0
        end
        object GridItensTVGRADE1: TcxGridDBBandedColumn
          DataBinding.FieldName = 'GRADE1'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 46
          Position.RowIndex = 0
        end
        object GridItensTVNOME_COR: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_COR'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 47
          Position.RowIndex = 0
        end
        object GridItensTVNOME_MATERIAL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_MATERIAL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 48
          Position.RowIndex = 0
        end
        object GridItensTVNOME_PERFIL: TcxGridDBBandedColumn
          DataBinding.FieldName = 'NOME_PERFIL'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 49
          Position.RowIndex = 0
        end
        object GridItensTVPRD_SERVICO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRD_SERVICO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 50
          Position.RowIndex = 0
        end
        object GridItensTVPRC_UNITARIO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRC_UNITARIO'
          Width = 110
          Position.BandIndex = 0
          Position.ColIndex = 12
          Position.RowIndex = 0
        end
        object GridItensTVPRODUTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'PRODUTO'
          Width = 85
          Position.BandIndex = 0
          Position.ColIndex = 3
          Position.RowIndex = 0
        end
        object GridItensTVSPRODUTO: TcxGridDBBandedColumn
          DataBinding.FieldName = 'SPRODUTO'
          Visible = False
          Position.BandIndex = 0
          Position.ColIndex = 51
          Position.RowIndex = 0
        end
      end
      object GridItensLV: TcxGridLevel
        GridView = GridItensTV
      end
    end
  end
  object DataSource: TDataSource
    DataSet = FrmVendas.Vendas_Itens
    OnStateChange = DataSourceStateChange
    Left = 472
    Top = 176
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelProduto
    Left = 504
    Top = 176
  end
  object Actions: TActionList
    Left = 440
    Top = 176
    object ActLookUP: TAction
      Caption = 'Localizar Produtos'
      Enabled = False
      ShortCut = 119
      Visible = False
      OnExecute = ActLookUPExecute
    end
    object ActSalvar: TAction
      Caption = 'Salvar'
      ShortCut = 121
      OnExecute = ActSalvarExecute
    end
    object ActCancelar: TAction
      Caption = '&Cancelar'
      ShortCut = 27
      OnExecute = ActCancelarExecute
    end
    object ActInserir: TAction
      Caption = 'Inserir ( Ins )'
      ShortCut = 45
      OnExecute = ActInserirExecute
    end
    object ActNovoProduto: TAction
      Caption = 'Novo Produto'
      ShortCut = 115
      OnExecute = ActNovoProdutoExecute
    end
    object ActSimilar: TAction
      Caption = 'Produtos Similarares'
      ShortCut = 114
      OnExecute = ActSimilarExecute
    end
    object ActNovoCfop: TAction
      Caption = 'Alterar CFOP'
      ShortCut = 117
      OnExecute = ActNovoCfopExecute
    end
    object ActComplemento: TAction
      Caption = 'Complemento'
      ShortCut = 122
      OnExecute = ActComplementoExecute
    end
    object ActlocalizarGrade: TAction
      Caption = 'Localizar Grade'
      OnExecute = ActlocalizarGradeExecute
    end
    object ActLocalizarNumero: TAction
      Caption = 'Localizar N'#250'mero'
      OnExecute = ActLocalizarNumeroExecute
    end
    object ActConfCampos: TAction
      Tag = 1
      Caption = 'Configurar Campos'
      OnExecute = ActConfCamposExecute
    end
  end
  object DsUnidade: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelUnidade
    Left = 536
    Top = 176
  end
  object DsSubUnidade: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelSubUnidade
    Left = 568
    Top = 176
  end
  object PopupGrid: TcxGridPopupMenu
    Grid = GridItens
    PopupMenus = <>
    Left = 80
    Top = 184
  end
  object stgVendasItens: TcxPropertiesStore
    Components = <
      item
        Component = GridItensTVALIQUOTA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVALIQUOTA_EST
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVALIQUOTA_INT
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVBASECALCULOICM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVBASECALCULOSUBSTITUICAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCFOP
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCNPJ
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCODIGO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCODIGO_LOTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCOMPLEMENTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVCTIE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVDESCONTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVFRACIONADO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVGRADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVGRADE1
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVICM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVICM_SUBS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVIPI
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVLOTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVMENSAGEM_REDUCAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_COR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_FIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_MATERIAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_PERFIL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNOME_PRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVNUMERO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVORIGEM
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPESO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPeso_Total
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPORC_DESC
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_CUSTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_UNIT_ORIGINAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_UNITARIO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRC_UNITARIO_FIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRD_SERVICO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVPRODUTOFIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVQUANTIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVQUANTIDADE_FIS
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVREDUCAO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSEQUENCIA
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSERVICO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSPRODUTO
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVSUBUNIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVTotal
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVTOTAL_FISCAL
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVUNIDADE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVUTILIZA_LOTE
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVVENDEDOR
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end
      item
        Component = GridItensTVVOLUME
        Properties.Strings = (
          'AlternateCaption'
          'BestFitMaxWidth'
          'Caption'
          'DataBinding'
          'DateTimeGrouping'
          'FakeComponentLink1'
          'FakeComponentLink2'
          'FakeComponentLink3'
          'FooterAlignmentHorz'
          'GroupIndex'
          'GroupSummaryAlignment'
          'HeaderAlignmentHorz'
          'HeaderAlignmentVert'
          'HeaderGlyph'
          'HeaderGlyphAlignmentHorz'
          'HeaderGlyphAlignmentVert'
          'MinWidth'
          'Name'
          'Options'
          'Position'
          'Properties'
          'PropertiesClassName'
          'RepositoryItem'
          'SortIndex'
          'SortOrder'
          'Styles'
          'Summary'
          'Tag'
          'Visible'
          'VisibleForCustomization'
          'Width')
      end>
    StorageName = 'c:\Sistemas\HelpStore\FILTROS\stgVendasItens.ini'
    Left = 192
    Top = 200
  end
end
