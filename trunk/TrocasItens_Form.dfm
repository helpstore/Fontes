object FrmTrocasItens: TFrmTrocasItens
  Left = 219
  Top = 227
  BorderStyle = bsDialog
  Caption = ' Itens da Troca'
  ClientHeight = 361
  ClientWidth = 779
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
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
      Left = 255
      Top = 7
      Caption = 'Contagem de '#205'tens'
      ParentFont = False
      Transparent = True
    end
    object LblContagem: TcxLabel
      Left = 412
      Top = 8
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 452
      Top = 7
      Caption = 'N'#186' de '#205'tens'
      ParentFont = False
      Transparent = True
    end
    object LblItens: TcxLabel
      Left = 548
      Top = 8
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 619
      Top = 7
      Caption = 'Total'
      ParentFont = False
      Transparent = True
    end
    object LblTotal: TcxLabel
      Left = 678
      Top = 8
      Caption = '0,00'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 336
      Top = 23
      Caption = 'Peso'
      ParentFont = False
      Transparent = True
    end
    object lblpeso: TcxLabel
      Left = 412
      Top = 24
      Caption = '0'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 473
      Top = 23
      Caption = 'Volume'
      ParentFont = False
      Transparent = True
    end
    object lblvolume: TcxLabel
      Left = 548
      Top = 24
      Caption = '0'
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
      Left = 288
      Top = 42
      Caption = 'Unit'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 394
      Top = 41
      Caption = 'Descto'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 506
      Top = 41
      Caption = '%'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 99
      Top = 42
      Caption = 'Marca'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 718
      Top = 42
      Caption = 'E/S'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 599
      Top = 42
      Caption = 'Total'
      ParentFont = False
      Transparent = True
    end
    object edProduto: TdxDBEdit
      Left = 52
      Top = 10
      Width = 108
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
    object edQtdade: TdxDBEdit
      Left = 52
      Top = 37
      Width = 45
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
      DataField = 'QUANTIDADE'
      DataSource = DataSource
      OnChange = edQtdadeChange
    end
    object edPrcUnit: TdxDBCalcEdit
      Left = 308
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
    object dxDBEdit1: TdxDBEdit
      Left = 262
      Top = 10
      Width = 507
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
      OnEnter = edProdutoEnter
      OnExit = dxDBEdit1Exit
      OnKeyDown = edProdutoKeyDown
      DataField = 'Nome_Produto'
      DataSource = DataSource
    end
    object GridItens: TdxDBGrid
      Left = 7
      Top = 64
      Width = 762
      Height = 249
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'PRODUTO'
      SummaryGroups = <>
      SummarySeparator = ', '
      TabOrder = 10
      OnKeyDown = GridItensKeyDown
      DataSource = DataSource
      Filter.Criteria = {00000000}
      LookAndFeel = lfFlat
      OptionsCustomize = []
      OptionsDB = [edgoCancelOnExit, edgoCanNavigation, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoRowSelect, edgoUseBitmap]
      object GridItensPRODUTO: TdxDBGridMaskColumn
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRODUTO'
      end
      object GridItensNome_Produto: TdxDBGridLookupColumn
        TabStop = False
        Width = 320
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Nome_Produto'
      end
      object GridItensQUANTIDADE: TdxDBGridMaskColumn
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QUANTIDADE'
      end
      object GridItensDesconto: TdxDBGridColumn
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCONTO'
      end
      object GridItensPRC_UNITARIO: TdxDBGridMaskColumn
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRC_UNITARIO'
      end
      object GridItensTotal: TdxDBGridColumn
        Width = 78
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Total'
      end
      object GridItensEntradas: TdxDBGridColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
      end
    end
    object dxDBCalcEdit1: TdxDBCalcEdit
      Left = 428
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
      Left = 520
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
    object dxDBEdit5: TdxDBEdit
      Left = 131
      Top = 37
      Width = 150
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
      TabOrder = 5
      OnEnter = edProdutoEnter
      OnExit = edProdutoExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'MARCA'
      DataSource = DataSource
    end
    object CmbTipo: TdxDBPickEdit
      Left = 737
      Top = 37
      Width = 32
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      Style.ButtonTransparence = ebtNone
      Style.HotTrack = True
      TabOrder = 9
      OnEnter = dxDBCalcEdit2Enter
      OnExit = CmbTipoExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'TIPO'
      DataSource = DataSource
      PopupBorder = pbFlat
      Items.Strings = (
        'E'
        'S')
    end
    object dxDBEdit2: TdxDBEdit
      Left = 627
      Top = 37
      Width = 81
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
      OnEnter = edQtdadeEnter
      OnExit = edQtdadeExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'Total'
      DataSource = DataSource
    end
    object edtGrade: TdxDBEdit
      Left = 159
      Top = 10
      Width = 42
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
      OnEnter = edProdutoEnter
      OnKeyDown = edProdutoKeyDown
      CharCase = ecUpperCase
      DataField = 'GRADE'
      DataSource = DataSource
    end
    object edtNumero: TdxDBEdit
      Left = 200
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
  end
  object DataSource: TDataSource
    AutoEdit = False
    DataSet = DmVendas.Trocas_Itens
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
    object ActExcluir: TAction
      Caption = 'Excluir'
      ShortCut = 46
      OnExecute = ActExcluirExecute
    end
    object actLocalizarGrade: TAction
      Caption = 'actLocalizarGrade'
      OnExecute = actLocalizarGradeExecute
    end
    object actLocalizarNumero: TAction
      Caption = 'actLocalizarNumero'
      OnExecute = actLocalizarNumeroExecute
    end
  end
end
