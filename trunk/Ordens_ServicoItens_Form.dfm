object FrmVendasItens: TFrmVendasItens
  Left = 3
  Top = 125
  BorderStyle = bsDialog
  Caption = ' Itens da Venda '
  ClientHeight = 310
  ClientWidth = 728
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
    Top = 269
    Width = 728
    Height = 41
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object Label7: TcxLabel
Transparent = True
      Left = 325
      Top = 6
      Width = 108
      Height = 13
      Alignment = taRightJustify
      Caption = 'Contagem de Ítens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblContagem: TcxLabel
Transparent = True
      Left = 482
      Top = 7
      Width = 7
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TcxLabel
Transparent = True
      Left = 504
      Top = 6
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nº de Ítens'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblItens: TcxLabel
Transparent = True
      Left = 600
      Top = 7
      Width = 7
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TcxLabel
Transparent = True
      Left = 619
      Top = 6
      Width = 29
      Height = 13
      Alignment = taRightJustify
      Caption = 'Total'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object LblTotal: TcxLabel
Transparent = True
      Left = 678
      Top = 7
      Width = 24
      Height = 13
      Alignment = taRightJustify
      Caption = '0,00'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label9: TcxLabel
Transparent = True
      Left = 406
      Top = 23
      Width = 27
      Height = 13
      Alignment = taRightJustify
      Caption = 'Peso'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblpeso: TcxLabel
Transparent = True
      Left = 482
      Top = 24
      Width = 7
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label12: TcxLabel
Transparent = True
      Left = 525
      Top = 23
      Width = 42
      Height = 13
      Alignment = taRightJustify
      Caption = 'Volume'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblvolume: TcxLabel
Transparent = True
      Left = 600
      Top = 24
      Width = 7
      Height = 13
      Alignment = taRightJustify
      Caption = '0'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label13: TcxLabel
Transparent = True
      Left = 197
      Top = 13
      Width = 100
      Height = 13
      Alignment = taRightJustify
      Caption = 'Trocat CFOP ( F9 )'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object btnSalvar: TcxButton
      Left = 8
      Top = 8
      Width = 90
      FrameFlat = True
      Caption = '&Salvar'
      Color = clMenu
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      HighlightColor = clInfoBk
      ParentColor = False
      ParentFont = False
       
       
      TabOrder = 0
      TextStyle = tsNormal
      OnEnter = btnSalvarEnter
      OnExit = btnSalvarExit
      Action = ActSalvar
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
      Cancel = True
      FrameFlat = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
       
       
      TabOrder = 1
      TextStyle = tsNormal
      OnEnter = btnSalvarEnter
      OnExit = btnSalvarExit
      Action = ActCancelar
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
    Width = 728
    Height = 269
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
Transparent = True
      Left = 7
      Top = 15
      Width = 38
      Height = 13
      Caption = 'Produto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label2: TcxLabel
Transparent = True
      Left = 9
      Top = 42
      Width = 36
      Height = 13
      Caption = 'Qtdade'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label3: TcxLabel
Transparent = True
      Left = 246
      Top = 42
      Width = 37
      Height = 13
      Caption = 'Unitário'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label4: TcxLabel
Transparent = True
      Left = 383
      Top = 42
      Width = 45
      Height = 13
      Caption = 'Desconto'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label5: TcxLabel
Transparent = True
      Left = 511
      Top = 42
      Width = 55
      Height = 13
      Caption = 'Porc. Desc.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label11: TcxLabel
Transparent = True
      Left = 108
      Top = 43
      Width = 13
      Height = 13
      Caption = 'Un'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TcxLabel
Transparent = True
      Left = 587
      Top = 15
      Width = 17
      Height = 13
      Alignment = taRightJustify
      Caption = 'Nat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8404992
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
    end
    object edProduto: TdxDBEdit
      Left = 47
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
      Left = 47
      Top = 37
      Width = 54
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
      OnEnter = edQtdadeEnter
      OnExit = edQtdadeExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'QUANTIDADE'
      DataSource = DataSource
    end
    object edPrcUnit: TdxDBCalcEdit
      Left = 287
      Top = 37
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
      TabOrder = 6
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
    object btnBusca: TcxButton
      Left = 655
      Top = 10
      Width = 63
      Height = 23
      FrameFlat = True
      Caption = 'Buscar F8'
      Color = clBtnFace
      ParentColor = False
      TabOrder = 11
      TabStop = False
      Action = ActLookUP
    end
    object edPrcTotal: TdxDBEdit
      Left = 643
      Top = 37
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
      TabOrder = 9
      TabStop = False
      OnKeyDown = edProdutoKeyDown
      DataField = 'Total'
      DataSource = DataSource
      ReadOnly = True
      StoredValues = 64
    end
    object dxDBEdit1: TdxDBEdit
      Left = 159
      Top = 10
      Width = 422
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
      OnKeyDown = edProdutoKeyDown
      DataField = 'Nome_Produto'
      DataSource = DataSource
    end
    object dxDBCalcEdit1: TdxDBCalcEdit
      Left = 430
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
      OnEnter = edQtdadeEnter
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
      Left = 566
      Top = 37
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
      TabOrder = 8
      OnEnter = edQtdadeEnter
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
    object cmbUnidade: TdxDBLookupEdit
      Left = 127
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
      Style.Edges = [edgLeft, edgTop, edgRight, edgBottom]
      Style.HotTrack = True
      Style.Shadow = False
      TabOrder = 4
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
    object CmbSubUnidade: TdxDBLookupEdit
      Left = 195
      Top = 37
      Width = 47
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
      TabOrder = 5
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
    object GridItens: TDBGrid
      Left = 4
      Top = 64
      Width = 719
      Height = 197
      TabStop = False
      BorderStyle = bsNone
      DataSource = DataSource
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 10
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clBlack
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'PRODUTO'
          Width = 84
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'NOME_PRODUTO'
          Width = 249
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'QUANTIDADE'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PRC_UNITARIO'
          Width = 62
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'DESCONTO'
          Width = 56
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Total'
          Width = 62
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'ICM'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'IPI'
          Width = 39
          Visible = True
        end
        item
          Color = clMenu
          Expanded = False
          FieldName = 'VOLUME'
          Width = 52
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'PESO'
          Width = 43
          Visible = True
        end>
    end
    object EdNatureza: TdxDBEdit
      Left = 607
      Top = 10
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
      TabOrder = 2
      DataField = 'CFOP'
      DataSource = DataSource
    end
  end
  object DataSource: TDataSource
    DataSet = DmVendas.Vendas_Itens
    Left = 312
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
      OnExecute = ActSimilarExecute
    end
    object ActNovoCfop: TAction
      Caption = 'Alterar CFOP'
      ShortCut = 120
      OnExecute = ActNovoCfopExecute
    end
  end
  object DsUnidade: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelUnidade
    Left = 488
    Top = 152
  end
  object DsSubUnidade: TDataSource
    AutoEdit = False
    DataSet = DmVendas.SelSubUnidade
    Left = 488
    Top = 104
  end
end
