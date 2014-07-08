object FrmOrcamentosItens: TFrmOrcamentosItens
  Left = 102
  Top = 220
  BorderStyle = bsDialog
  Caption = ' Itens do Or'#231'amento '
  ClientHeight = 361
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 320
    Width = 779
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label7: TcxLabel
      Left = 303
      Top = 7
      Caption = 'Contagem de '#205'tens'
      ParentFont = False
      Transparent = True
    end
    object LblContagem: TcxLabel
      Left = 460
      Top = 8
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 500
      Top = 7
      Caption = 'N'#186' de '#205'tens'
      ParentFont = False
      Transparent = True
    end
    object LblItens: TcxLabel
      Left = 596
      Top = 8
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 667
      Top = 7
      Caption = 'Total'
      ParentFont = False
      Transparent = True
    end
    object LblTotal: TcxLabel
      Left = 726
      Top = 8
      Caption = '0,00'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 384
      Top = 23
      Caption = 'Peso'
      ParentFont = False
      Transparent = True
    end
    object lblpeso: TcxLabel
      Left = 460
      Top = 24
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 521
      Top = 23
      Caption = 'Volume'
      ParentFont = False
      Transparent = True
    end
    object lblvolume: TcxLabel
      Left = 596
      Top = 24
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 202
      Top = 23
      Caption = 'Pe'#231'as ( F7 )'
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
    Width = 779
    Height = 320
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
    object Label1: TcxLabel
      Left = 12
      Top = 15
      Caption = 'Produto'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 14
      Top = 42
      Caption = 'Qtdade'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 383
      Top = 42
      Caption = 'Unit'#225'rio'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 510
      Top = 40
      Caption = 'Desconto'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 633
      Top = 40
      Caption = 'Porc. Desc.'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 383
      Top = 81
      Caption = 'Unit'#225'rio'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 121
      Top = 42
      Caption = 'Marca'
      ParentFont = False
      Transparent = True
    end
    object Label15: TcxLabel
      Left = 121
      Top = 80
      Caption = 'Marca'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 736
      Top = 63
      Caption = 'Total'
      ParentFont = False
      Transparent = True
    end
    object edProduto: TdxDBEdit
      Left = 52
      Top = 10
      Width = 113
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
      DataField = 'PRODUTO'
      DataSource = DataSource
    end
    object edQtdade: TdxDBEdit
      Left = 52
      Top = 37
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
      TabOrder = 4
      OnEnter = edQtdadeEnter
      OnExit = edQtdadeExit
      OnKeyDown = edProdutoKeyDown
      CharCase = ecUpperCase
      DataField = 'QUANTIDADE'
      DataSource = DataSource
    end
    object edPrcUnit: TdxDBCalcEdit
      Left = 425
      Top = 37
      Width = 82
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 6
      OnEnter = edPrcUnitEnter
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
    object edPrcTotal: TdxDBEdit
      Left = 686
      Top = 76
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
    object dxDBEdit1: TdxDBEdit
      Left = 272
      Top = 10
      Width = 489
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
      OnEnter = edProdutoEnter
      OnExit = dxDBEdit1Exit
      OnKeyDown = edProdutoKeyDown
      CharCase = ecUpperCase
      DataField = 'Nome_Produto'
      DataSource = DataSource
    end
    object dxDBCalcEdit1: TdxDBCalcEdit
      Left = 558
      Top = 37
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
      TabOrder = 7
      OnEnter = dxDBCalcEdit1Enter
      OnExit = dxDBCalcEdit1Exit
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
    object dxDBCalcEdit2: TdxDBCalcEdit
      Left = 690
      Top = 37
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
      TabOrder = 8
      OnEnter = dxDBCalcEdit2Enter
      OnExit = dxDBCalcEdit2Exit
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
    object dxDBEdit2: TdxDBEdit
      Left = 511
      Top = 76
      Width = 45
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
      TabOrder = 12
      OnEnter = dxDBEdit2Enter
      OnExit = edQtdadeExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'UNIDADE'
      DataSource = DataSource
    end
    object edPrcUnit_2: TdxDBCalcEdit
      Left = 425
      Top = 76
      Width = 82
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
      OnEnter = edPrcUnitEnter
      OnExit = edPrcUnit_2Exit
      OnKeyDown = edProdutoKeyDown
      DataField = 'PRC_UNITARIO_2'
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
    object dxDBEdit5: TdxDBEdit
      Left = 156
      Top = 37
      Width = 220
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
      OnEnter = edProdutoEnter
      OnExit = edProdutoExit
      OnKeyDown = edProdutoKeyDown
      CharCase = ecUpperCase
      DataField = 'MARCA'
      DataSource = DataSource
    end
    object dxDBEdit6: TdxDBEdit
      Left = 156
      Top = 75
      Width = 220
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
      OnEnter = edProdutoEnter
      OnExit = edProdutoExit
      OnKeyDown = edProdutoKeyDown
      CharCase = ecUpperCase
      DataField = 'MARCA_2'
      DataSource = DataSource
    end
    object EDGRADE: TdxDBEdit
      Left = 165
      Top = 10
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
      Left = 213
      Top = 10
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
    object GridItens: TdxDBGrid
      Left = 2
      Top = 104
      Width = 775
      Height = 214
      TabStop = False
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PRODUTO'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'CODIGO'
              SummaryType = cstCount
            end
            item
              SummaryField = 'TOTAL'
              SummaryFormat = '###,##0.00'
              SummaryType = cstSum
            end
            item
              ColumnName = 'GRIDVLR_TOTAL'
              SummaryField = 'VLR_TOTAL'
              SummaryFormat = '###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'sgFaturamento'
        end>
      SummarySeparator = ', '
      Align = alBottom
      BorderStyle = bsNone
      TabOrder = 13
      DataSource = DataSource
      Filter.Criteria = {00000000}
      GroupNodeColor = 15977833
      LookAndFeel = lfFlat
      OptionsBehavior = [edgoAutoSearch, edgoAutoSort, edgoImmediateEditor, edgoMultiSort, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks, edgoUseLocate]
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      ShowRowFooter = True
      object GridItensPRODUTO: TdxDBGridMaskColumn
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUTO'
      end
      object GridItensNOME_PRODUTO: TdxDBGridMaskColumn
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME_PRODUTO'
      end
      object GridItensCOMPLEMENTO: TdxDBGridMaskColumn
        Width = 191
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COMPLEMENTO'
      end
      object GridItensGRADE: TdxDBGridMaskColumn
        Width = 45
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRADE'
      end
      object GridItensNUMERO: TdxDBGridMaskColumn
        Width = 43
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMERO'
      end
      object GridItensQUANTIDADE: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object GridItensPRC_UNIT_ORIGINAL: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRC_UNIT_ORIGINAL'
      end
      object GridItensDESCONTO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
      object GridItensPRC_UNITARIO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRC_UNITARIO'
      end
      object GridItensTotal: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object GridItensQTDE_FATURADA: TdxDBGridMaskColumn
        Width = 81
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDE_FATURADA'
      end
      object GridItensSaldo: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Saldo'
      end
    end
  end
  object DataSource: TDataSource
    DataSet = FrmOrcamentos.Orcamentos_Itens
    OnStateChange = DataSourceStateChange
    Left = 328
    Top = 152
  end
  object dsProdutos: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelProduto
    Left = 408
    Top = 152
  end
  object ActLista: TActionList
    Left = 240
    Top = 152
    object ActLookUP: TAction
      Caption = 'Localizar Produtos'
      ShortCut = 119
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
    object ActCadastro: TAction
      Caption = 'Cadastro'
      ShortCut = 115
      OnExecute = ActCadastroExecute
    end
    object ActPecas: TAction
      Caption = 'Pe'#231'as'
      ShortCut = 118
    end
    object ActLocalizarGrade: TAction
      Caption = 'ActLocalizarGrade'
      OnExecute = ActLocalizarGradeExecute
    end
  end
  object stgFrmOrcamentosItens: TcxPropertiesStore
    Components = <
      item
        Component = GridItens
        Properties.Strings = (
          'Align'
          'Anchors'
          'ArrowsColor'
          'AutoExpandOnSearch'
          'AutoSearchColor'
          'AutoSearchTextColor'
          'BandColor'
          'BandFont'
          'BandMaxRowCount'
          'BandRowCount'
          'Bands'
          'BorderStyle'
          'Color'
          'Constraints'
          'Ctl3D'
          'Cursor'
          'CustomizingRowCount'
          'DataSource'
          'DblClkExpanding'
          'DefaultFields'
          'DefaultLayout'
          'DefaultRowHeight'
          'DragCursor'
          'DragMode'
          'Enabled'
          'Filter'
          'FixedBandLineColor'
          'FixedBandLineWidth'
          'Font'
          'GridLineColor'
          'GrIndicatorWidth'
          'GroupNodeColor'
          'GroupNodeTextColor'
          'GroupPanelColor'
          'GroupPanelFontColor'
          'HeaderColor'
          'HeaderFont'
          'HeaderMinRowCount'
          'HeaderPanelMaxRowCount'
          'HeaderPanelRowCount'
          'Height'
          'HelpContext'
          'HideFocusRect'
          'HideSelection'
          'HideSelectionColor'
          'HideSelectionTextColor'
          'HighlightColor'
          'HighlightTextColor'
          'Hint'
          'IndentDesc'
          'IniFileName'
          'IniSectionName'
          'KeyField'
          'Left'
          'LookAndFeel'
          'MaxRowLineCount'
          'Name'
          'Options'
          'OptionsBehavior'
          'OptionsCustomize'
          'OptionsDB'
          'OptionsEx'
          'OptionsView'
          'ParentColor'
          'ParentCtl3D'
          'ParentFont'
          'ParentShowHint'
          'PartialLoad'
          'PartialLoadBufferCount'
          'PopupMenu'
          'PreviewFieldName'
          'PreviewFont'
          'PreviewLines'
          'PreviewMaxLength'
          'RegistryPath'
          'RowFooterColor'
          'RowFooterTextColor'
          'RowSeparatorLineWidth'
          'ScrollBars'
          'ShowBands'
          'ShowGrid'
          'ShowGroupPanel'
          'ShowHeader'
          'ShowHiddenInCustomizeBox'
          'ShowHint'
          'ShowNewItemRow'
          'ShowPreviewGrid'
          'ShowRowFooter'
          'ShowSummaryFooter'
          'SimpleCustomizeBox'
          'SummaryGroups'
          'SummarySeparator'
          'TabOrder'
          'TabStop'
          'Tag'
          'Top'
          'UseBookmarks'
          'Visible'
          'WaitForExpandNodeTime'
          'Width')
      end
      item
        Component = GridItensCOMPLEMENTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensDESCONTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensGRADE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensNOME_PRODUTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensNUMERO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensPRC_UNIT_ORIGINAL
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensPRC_UNITARIO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensPRODUTO
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensQTDE_FATURADA
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensQUANTIDADE
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'EditMask'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'IgnoreMaskBlank'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensSaldo
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end
      item
        Component = GridItensTotal
        Properties.Strings = (
          'Alignment'
          'BandIndex'
          'Caption'
          'CharCase'
          'ColIndex'
          'Color'
          'DisableCaption'
          'DisableCustomizing'
          'DisableDragging'
          'DisableEditor'
          'DisableFilter'
          'DisableGrouping'
          'FieldName'
          'Font'
          'GroupIndex'
          'HeaderAlignment'
          'HeaderGlyph'
          'HeaderMaxLineCount'
          'MaxLength'
          'MinWidth'
          'Name'
          'OEMConvert'
          'PasswordChar'
          'ReadOnly'
          'RowIndex'
          'Sizing'
          'SortBySummary'
          'Sorted'
          'SummaryField'
          'SummaryFooterField'
          'SummaryFooterFormat'
          'SummaryFooterType'
          'SummaryFormat'
          'SummaryGroupName'
          'SummaryType'
          'TabStop'
          'Tag'
          'VertAlignment'
          'Visible'
          'Width')
      end>
    StorageName = 'stgFrmOrcamentosItens'
    Left = 457
    Top = 160
  end
end
