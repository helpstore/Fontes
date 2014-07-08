object FrmEntradasItens: TFrmEntradasItens
  Left = 544
  Top = 187
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsDialog
  Caption = ' Itens de Entrada '
  ClientHeight = 373
  ClientWidth = 610
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 336
    Width = 610
    Height = 37
    Align = alBottom
    BevelInner = bvRaised
    BevelOuter = bvLowered
    TabOrder = 1
    object btnSalvar: TcxButton
      Left = 6
      Top = 6
      Width = 90
      Height = 25
      Caption = '&Salvar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = btnSalvarClick
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
      Left = 96
      Top = 6
      Width = 90
      Height = 25
      Cancel = True
      Caption = '&Cancelar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnCancelarClick
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
  object PNLCLIENTE: TPanel
    Left = 0
    Top = 0
    Width = 610
    Height = 336
    Align = alClient
    BevelInner = bvRaised
    BevelOuter = bvLowered
    Color = clWhite
    TabOrder = 0
    object Shape1: TShape
      Left = 319
      Top = 123
      Width = 1
      Height = 166
      Pen.Color = clBtnShadow
    end
    object Shape2: TShape
      Left = 504
      Top = 27
      Width = 1
      Height = 247
      Pen.Color = clBtnShadow
    end
    object Label1: TcxLabel
      Left = 48
      Top = 32
      Caption = 'Produto'
      ParentFont = False
      Transparent = True
    end
    object Label2: TcxLabel
      Left = 50
      Top = 82
      Caption = 'Qtdade'
      ParentFont = False
      Transparent = True
    end
    object Label3: TcxLabel
      Left = 27
      Top = 106
      Caption = 'Prc. Unit'#225'rio'
      ParentFont = False
      Transparent = True
    end
    object Label4: TcxLabel
      Left = 32
      Top = 274
      Caption = 'Perc. Lucro'
      ParentFont = False
      Transparent = True
    end
    object Label5: TcxLabel
      Left = 10
      Top = 298
      Caption = 'Pre'#231'o Sugerido '
      ParentFont = False
      Transparent = True
    end
    object Label7: TcxLabel
      Left = 5
      Top = 250
      Caption = 'Custo Precificado'
      ParentFont = False
      Transparent = True
    end
    object Label8: TcxLabel
      Left = 20
      Top = 130
      Caption = 'Aliq. Icms/Vlr.'
      ParentFont = False
      Transparent = True
    end
    object Label9: TcxLabel
      Left = 11
      Top = 178
      Caption = 'Vlr. Icms Subst.'
      ParentFont = False
      Transparent = True
    end
    object Label10: TcxLabel
      Left = 18
      Top = 202
      Caption = 'Ipi NF %/Prod'
      ParentFont = False
      Transparent = True
    end
    object Label13: TcxLabel
      Left = 355
      Top = 158
      Caption = 'Taxas'
      ParentFont = False
      Transparent = True
    end
    object Label14: TcxLabel
      Left = 334
      Top = 181
      Caption = 'Descontos'
      ParentFont = False
      Transparent = True
    end
    object Label15: TcxLabel
      Left = 330
      Top = 205
      Caption = 'Embalagem'
      ParentFont = False
      Transparent = True
    end
    object Label16: TcxLabel
      Left = 358
      Top = 229
      Caption = 'Frete'
      ParentFont = False
      Transparent = True
    end
    object Label17: TcxLabel
      Left = 345
      Top = 251
      Caption = 'Seguros'
      ParentFont = False
      Transparent = True
    end
    object Label6: TcxLabel
      Left = 53
      Top = 226
      Caption = 'Vlr. IPI'
      ParentFont = False
      Transparent = True
    end
    object Label11: TcxLabel
      Left = 209
      Top = 32
      Caption = 'Unidade'
      ParentFont = False
      Transparent = True
    end
    object Label18: TcxLabel
      Left = 410
      Top = 32
      Caption = 'Lote'
      ParentFont = False
      Transparent = True
    end
    object Label19: TcxLabel
      Left = 512
      Top = 135
      Caption = 'Vendedor'
      ParentFont = False
      Transparent = True
    end
    object Label20: TcxLabel
      Left = 512
      Top = 173
      Caption = 'Custos Vari'#225'veis'
      ParentFont = False
      Transparent = True
    end
    object Label21: TcxLabel
      Left = 512
      Top = 210
      Caption = 'Propaganda'
      ParentFont = False
      Transparent = True
    end
    object Label22: TcxLabel
      Left = 512
      Top = 248
      Caption = 'Descontos'
      ParentFont = False
      Transparent = True
    end
    object Label23: TcxLabel
      Left = 24
      Top = 8
      Caption = 'C'#243'd. Interno'
      ParentFont = False
      Transparent = True
    end
    object Label25: TcxLabel
      Left = 525
      Top = 33
      Caption = 'Ctrl + G'#13#10'Nova Grade'
      ParentFont = False
      Transparent = True
    end
    object Label26: TcxLabel
      Left = 345
      Top = 82
      Caption = 'Sec'
      ParentFont = False
      Transparent = True
    end
    object Label27: TcxLabel
      Left = 52
      Top = 58
      Caption = 'Origem'
      ParentFont = False
      Transparent = True
    end
    object Label12: TcxLabel
      Left = 5
      Top = 154
      Caption = 'Redu'#231#227'o ICMS %'
      ParentFont = False
      Transparent = True
    end
    object Label24: TcxLabel
      Left = 319
      Top = 107
      Caption = 'Total Item'
      ParentFont = False
      Transparent = True
    end
    object edProduto: TdxDBEdit
      Left = 94
      Top = 27
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
      TabOrder = 1
      OnEnter = edProdutoEnter
      OnExit = edProdutoExit
      OnKeyDown = edProdutoKeyDown
      CharCase = ecUpperCase
      DataField = 'PRODUTO'
      DataSource = DataSource
    end
    object edQtdade: TdxDBEdit
      Left = 94
      Top = 77
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
      TabOrder = 5
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'QUANTIDADE'
      DataSource = DataSource
    end
    object edPrcUnit: TdxDBCalcEdit
      Left = 94
      Top = 101
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
      TabOrder = 6
      OnEnter = edProdutoEnter
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
    object edPrcVenda: TdxDBCalcEdit
      Left = 94
      Top = 293
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
      TabOrder = 23
      OnEnter = edProdutoEnter
      OnExit = edPrcVendaExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'PRC_VENDA'
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
    object edPrcCusto: TdxDBCalcEdit
      Left = 94
      Top = 245
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
      TabOrder = 21
      OnEnter = edProdutoEnter
      OnKeyDown = edProdutoKeyDown
      DataField = 'PRC_CUSTO'
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
    object edPrcVendaAnt: TdxDBEdit
      Left = 207
      Top = 293
      Width = 105
      Hint = #218'ltimo Pre'#231'o de Venda'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 24
      TabStop = False
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'PRC_VENDA_ANT'
      DataSource = DataSource
      ReadOnly = True
      StoredValues = 64
    end
    object edAliqIcms: TdxDBEdit
      Left = 94
      Top = 125
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
      TabOrder = 8
      OnEnter = edProdutoEnter
      OnExit = edPrcUnitExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'ICM'
      DataSource = DataSource
    end
    object edVlrIcms: TdxDBEdit
      Left = 207
      Top = 125
      Width = 105
      Hint = 'Vlr. ICMS Unit'#225'rio'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      ParentShowHint = False
      ShowHint = True
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 9
      TabStop = False
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'VLR_ICM'
      DataSource = DataSource
    end
    object edVlrIcmsSub: TdxDBEdit
      Left = 94
      Top = 173
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
      TabOrder = 12
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'ICM_SUBS'
      DataSource = DataSource
    end
    object edIpiNF: TdxDBEdit
      Left = 94
      Top = 197
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
      TabOrder = 13
      OnEnter = edProdutoEnter
      OnExit = edPrcUnitExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'IPI'
      DataSource = DataSource
    end
    object edIpiProduto: TdxDBEdit
      Left = 207
      Top = 197
      Width = 105
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      Style.ButtonStyle = btsSimple
      TabOrder = 14
      TabStop = False
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'IPI_PRODUTO'
      DataSource = DataSource
      ReadOnly = True
      StoredValues = 64
    end
    object edTaxas: TdxDBCalcEdit
      Left = 386
      Top = 152
      Width = 113
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
      TabOrder = 16
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'TAXAS'
      DataSource = DataSource
      ReadOnly = True
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
      StoredValues = 64
    end
    object edDescontos: TdxDBCalcEdit
      Left = 386
      Top = 176
      Width = 113
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
      TabOrder = 17
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'DESCONTOS'
      DataSource = DataSource
      ReadOnly = True
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
      StoredValues = 64
    end
    object edEmbalagem: TdxDBCalcEdit
      Left = 386
      Top = 200
      Width = 113
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
      TabOrder = 18
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'EMBALAGEM'
      DataSource = DataSource
      ReadOnly = True
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
      StoredValues = 64
    end
    object edFrete: TdxDBCalcEdit
      Left = 386
      Top = 224
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
      TabOrder = 19
      OnEnter = edProdutoEnter
      OnExit = edFreteExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'FRETE'
      DataSource = DataSource
      ReadOnly = False
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
      StoredValues = 64
    end
    object edSeguros: TdxDBCalcEdit
      Left = 386
      Top = 248
      Width = 113
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
      TabOrder = 20
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'SEGURO'
      DataSource = DataSource
      ReadOnly = True
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
      StoredValues = 64
    end
    object btnBusca: TcxButton
      Left = 517
      Top = 3
      Width = 76
      Height = 23
      Action = ActBuscarProduto
      Caption = 'Cadastrar F4'
      TabOrder = 4
      TabStop = False
    end
    object edVlrIPI: TdxDBEdit
      Left = 94
      Top = 221
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
      TabOrder = 15
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'VLR_IPI'
      DataSource = DataSource
    end
    object edPrcTotal: TdxDBEdit
      Left = 368
      Top = 101
      Width = 130
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
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'PRC_TOTAL'
      DataSource = DataSource
      ReadOnly = True
      StoredValues = 64
    end
    object cmbUnidade: TdxDBLookupEdit
      Left = 251
      Top = 27
      Width = 158
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
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'UNIDADE'
      DataSource = DataSource
      ListFieldName = 'SIGLA;NOME'
      KeyFieldName = 'SIGLA'
      ListSource = dsUnidades
      LookupKeyValue = Null
    end
    object edNomeProduto: TdxDBEdit
      Left = 144
      Top = 3
      Width = 355
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      Style.BorderColor = clBtnShadow
      Style.BorderStyle = xbsSingle
      TabOrder = 25
      DataField = 'NOME_PRODUTO'
      DataSource = DataSource
    end
    object edtMargemLucro: TdxDBCalcEdit
      Left = 94
      Top = 269
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
      TabOrder = 22
      OnEnter = edProdutoEnter
      OnExit = edtMargemLucroExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'PERC_LUCRO'
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
      Left = 433
      Top = 27
      Width = 66
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
      TabOrder = 26
      TabStop = False
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'LOTE'
      DataSource = DataSource
      ReadOnly = True
      StoredValues = 64
    end
    object EdPropaganda: TdxEdit
      Left = 512
      Top = 222
      Width = 81
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
      TabOrder = 27
      Alignment = taRightJustify
      StoredValues = 1
    end
    object EdDesconto: TdxEdit
      Left = 512
      Top = 260
      Width = 81
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
      TabOrder = 28
      Alignment = taRightJustify
      StoredValues = 1
    end
    object EdVendedor: TdxEdit
      Left = 512
      Top = 147
      Width = 81
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
      TabOrder = 29
      Alignment = taRightJustify
      StoredValues = 1
    end
    object EdCustoVariavel: TdxEdit
      Left = 512
      Top = 185
      Width = 81
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
      TabOrder = 30
      Alignment = taRightJustify
      StoredValues = 1
    end
    object dxDBEdit2: TdxDBEdit
      Left = 94
      Top = 3
      Width = 51
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
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'SECUNDARIO'
      DataSource = DataSource
    end
    object dxDBCalcEdit2: TdxDBCalcEdit
      Left = 207
      Top = 101
      Width = 105
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
      OnEnter = edProdutoEnter
      OnExit = dxDBCalcEdit2Exit
      OnKeyDown = edProdutoKeyDown
      DataField = 'PRC_UNITARIO_DOLAR'
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
    object dxDBEdit4: TdxDBEdit
      Left = 369
      Top = 77
      Width = 130
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
      TabOrder = 31
      TabStop = False
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'SECUNDARIO'
      DataSource = DataSource
      ReadOnly = True
      StoredValues = 64
    end
    object EdOrigem: TdxPickEdit
      Left = 94
      Top = 52
      Width = 190
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
      OnExit = dxDBCalcEdit2Exit
      OnKeyDown = edProdutoKeyDown
      DropDownListStyle = True
      Items.Strings = (
        'Ind'#250'stria'
        'Distribuidor'
        'Constru'#231#227'o'
        #211'leo')
      CanDeleteText = True
    end
    object dxDBEdit3: TdxDBEdit
      Left = 94
      Top = 149
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
      TabOrder = 10
      OnEnter = edProdutoEnter
      OnExit = edVlrIPIExit
      OnKeyDown = edProdutoKeyDown
      DataField = 'REDUCAO'
      DataSource = DataSource
    end
  end
  object DataSource: TDataSource
    DataSet = DMEntradas.Entradas_Itens
    OnUpdateData = DataSourceUpdateData
    Left = 176
    Top = 8
  end
  object Actions: TActionList
    Left = 420
    Top = 112
    object ActBuscarProduto: TAction
      Caption = 'Buscar F4'
      ShortCut = 115
      OnExecute = ActBuscarProdutoExecute
    end
    object ActGrades: TAction
      Caption = 'Grades'
      ShortCut = 16455
      OnExecute = ActGradesExecute
    end
  end
  object dsUnidades: TDataSource
    AutoEdit = False
    DataSet = DMEntradas.SelUnidade
    Left = 352
    Top = 48
  end
  object DsSubUnidade: TDataSource
    AutoEdit = False
    DataSet = DMEntradas.SelSubUnidade
    Left = 319
    Top = 48
  end
end
